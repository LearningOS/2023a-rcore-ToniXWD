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
/// read syscall
const SYSCALL_READ: usize = 63;
/// write syscall
const SYSCALL_WRITE: usize = 64;
/// exit syscall
const SYSCALL_EXIT: usize = 93;
/// yield syscall
const SYSCALL_YIELD: usize = 124;
/// setpriority syscall
const SYSCALL_SET_PRIORITY: usize = 140;
/// gettime syscall
const SYSCALL_GET_TIME: usize = 169;
/// getpid syscall
const SYSCALL_GETPID: usize = 172;
/// sbrk syscall
const SYSCALL_SBRK: usize = 214;
/// munmap syscall
const SYSCALL_MUNMAP: usize = 215;
/// fork syscall
const SYSCALL_FORK: usize = 220;
/// exec syscall
const SYSCALL_EXEC: usize = 221;
/// mmap syscall
const SYSCALL_MMAP: usize = 222;
/// waitpid syscall
const SYSCALL_WAITPID: usize = 260;
/// spawn syscall
const SYSCALL_SPAWN: usize = 400;
/// taskinfo syscall
const SYSCALL_TASK_INFO: usize = 410;

mod fs;
mod process;

use fs::*;
use process::*;
/// handle syscall exception with `syscall_id` and other arguments
pub fn syscall(syscall_id: usize, args: [usize; 3]) -> isize {
    match syscall_id {
        SYSCALL_READ => sys_read(args[0], args[1] as *const u8, args[2]),
        SYSCALL_WRITE => sys_write(args[0], args[1] as *const u8, args[2]),
        SYSCALL_EXIT => sys_exit(args[0] as i32),
        SYSCALL_YIELD => sys_yield(),
        SYSCALL_GETPID => sys_getpid(),
        SYSCALL_FORK => sys_fork(),
        SYSCALL_EXEC => sys_exec(args[0] as *const u8),
        SYSCALL_WAITPID => sys_waitpid(args[0] as isize, args[1] as *mut i32),
        SYSCALL_GET_TIME => sys_get_time(args[0] as *mut TimeVal, args[1]),
        SYSCALL_TASK_INFO => sys_task_info(args[0] as *mut TaskInfo),
        SYSCALL_MMAP => sys_mmap(args[0], args[1], args[2]),
        SYSCALL_MUNMAP => sys_munmap(args[0], args[1]),
        SYSCALL_SBRK => sys_sbrk(args[0] as i32),
        SYSCALL_SPAWN => sys_spawn(args[0] as *const u8),
        SYSCALL_SET_PRIORITY => sys_set_priority(args[0] as isize),
        _ => panic!("Unsupported syscall_id: {}", syscall_id),
    }
}
