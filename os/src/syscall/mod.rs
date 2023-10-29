//! Implementation of syscalls
//!
//! The single entry point to all system calls, [`syscall()`], is called
//! whenever userspace wishes to perform a system call using the `ecall`
//! instruction. In this case, the processor raises an 'Environment call from
//! U-mode' exception, which is handled as one of the cases in
//! [`crate::trap::trap_handler`].
//!
//! For clarity, each single syscall is implemented as its own function, named
//! `sys_` then the name of the syscall. You can find functions like this in
//! submodules, and you should also implement syscalls this way.

/// write syscall
const SYSCALL_WRITE: usize = 64;
/// exit syscall
const SYSCALL_EXIT: usize = 93;
/// yield syscall
const SYSCALL_YIELD: usize = 124;
/// gettime syscall
const SYSCALL_GET_TIME: usize = 169;
/// taskinfo syscall
const SYSCALL_TASK_INFO: usize = 410;

mod fs;
mod process;

use crate::{config::MAX_SYSCALL_NUM, sync::UPSafeCell};
use fs::*;
use lazy_static::*;
use process::*;

/// An array for sys call times
pub struct SycCallCount {
    sys_call_count: UPSafeCell<[u32; MAX_SYSCALL_NUM]>,
}

impl SycCallCount {
    fn get_current(&self) -> [u32; MAX_SYSCALL_NUM] {
        self.sys_call_count.exclusive_access().clone()
    }

    fn default() -> Self {
        unsafe {
            let arr = [0; MAX_SYSCALL_NUM];
            Self {
                sys_call_count: UPSafeCell::new(arr),
            }
        }
    }

    fn increase(&self, id: usize) {
        let mut arr_ptr = self.sys_call_count.exclusive_access();
        let item = arr_ptr.get_mut(id).unwrap();
        *item += 1;
    }
}

lazy_static! {
    /// Global variable: SYS_CALL_COUNT
    pub static ref SYS_CALL_COUNT: SycCallCount = SycCallCount::default();
}

/// handle syscall exception with `syscall_id` and other arguments
pub fn syscall(syscall_id: usize, args: [usize; 3]) -> isize {
    SYS_CALL_COUNT.increase(syscall_id);
    match syscall_id {
        SYSCALL_WRITE => sys_write(args[0], args[1] as *const u8, args[2]),
        SYSCALL_EXIT => sys_exit(args[0] as i32),
        SYSCALL_YIELD => sys_yield(),
        SYSCALL_GET_TIME => sys_get_time(args[0] as *mut TimeVal, args[1]),
        SYSCALL_TASK_INFO => sys_task_info(args[0] as *mut TaskInfo),
        _ => panic!("Unsupported syscall_id: {}", syscall_id),
    }
}
