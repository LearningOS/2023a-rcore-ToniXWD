//! Types related to task management & Functions for completely changing TCB

use super::id::TaskUserRes;
use super::{kstack_alloc, KernelStack, ProcessControlBlock, TaskContext};
use crate::trap::TrapContext;
use crate::{mm::PhysPageNum, sync::UPSafeCell};
use alloc::sync::{Arc, Weak};
use alloc::vec::Vec;
use alloc::vec;

use core::cell::RefMut;

/// Task control block structure
pub struct TaskControlBlock {
    /// immutable
    pub process: Weak<ProcessControlBlock>,
    /// Kernel stack corresponding to PID
    pub kstack: KernelStack,
    /// mutable
    inner: UPSafeCell<TaskControlBlockInner>,
}

impl TaskControlBlock {
    /// Get the mutable reference of the inner TCB
    pub fn inner_exclusive_access(&self) -> RefMut<'_, TaskControlBlockInner> {
        self.inner.exclusive_access()
    }
    /// Get the address of app's page table
    pub fn get_user_token(&self) -> usize {
        let process = self.process.upgrade().unwrap();
        let inner = process.inner_exclusive_access();
        inner.memory_set.token()
    }
}

pub struct TaskControlBlockInner {
    /// 用户态的线程代码执行需要的信息
    pub res: Option<TaskUserRes>,
    /// The physical page number of the frame where the trap context is placed
    pub trap_cx_ppn: PhysPageNum,
    /// Save task context
    pub task_cx: TaskContext,

    /// Maintain the execution status of the current process
    pub task_status: TaskStatus,
    /// It is set when active exit or execution error occurs
    pub exit_code: Option<i32>,
    /// m_allocation
    pub m_allocation: Vec<usize>,
    /// s_allocation
    pub s_allocation: Vec<usize>,
    /// m_need
    pub m_need: Vec<usize>,
    /// s_need
    pub s_need: Vec<usize>,
}

impl TaskControlBlockInner {
    pub fn get_trap_cx(&self) -> &'static mut TrapContext {
        self.trap_cx_ppn.get_mut()
    }

    #[allow(unused)]
    fn get_status(&self) -> TaskStatus {
        self.task_status
    }

    /// increase.m_allocation
    pub fn adjust_m_allocation(&mut self, target_id: usize, num: usize) {
        let desired_length = target_id + 1; // 指定的长度
        if self.m_allocation.len() < desired_length {
            self.m_allocation.resize(desired_length, 0);
        }
        self.m_allocation[target_id] += num;
    }

    /// increase.s_allocation
    pub fn adjust_s_allocation(&mut self, target_id: usize, num: usize) {
        let desired_length = target_id + 1; // 指定的长度
        if self.s_allocation.len() < desired_length {
            self.s_allocation.resize(desired_length, 0);
        }
        self.s_allocation[target_id] += num;
    }

    /// increase.m_need
    pub fn adjust_m_need(&mut self, target_id: usize, num: usize) {
        let desired_length = target_id + 1; // 指定的长度
        if self.m_need.len() < desired_length {
            self.m_need.resize(desired_length, 0);
        }
        self.m_need[target_id] += num;
    }

    /// increase.s_need
    pub fn adjust_s_need(&mut self, target_id: usize, num: usize) {
        let desired_length = target_id + 1; // 指定的长度
        if self.s_need.len() < desired_length {
            self.s_need.resize(desired_length, 0);
        }
        self.s_need[target_id] += num;
    }
}

impl TaskControlBlock {
    /// Create a new task
    pub fn new(
        process: Arc<ProcessControlBlock>,
        ustack_base: usize,
        alloc_user_res: bool,
    ) -> Self {
        let res = TaskUserRes::new(Arc::clone(&process), ustack_base, alloc_user_res);
        let trap_cx_ppn = res.trap_cx_ppn();
        let kstack = kstack_alloc();
        let kstack_top = kstack.get_top();

        let process_inner = process.inner_exclusive_access();
        
        Self {
            process: Arc::downgrade(&process),
            kstack,
            inner: unsafe {
                UPSafeCell::new(TaskControlBlockInner {
                    res: Some(res),
                    trap_cx_ppn,
                    task_cx: TaskContext::goto_trap_return(kstack_top),
                    task_status: TaskStatus::Ready,
                    exit_code: None,
                    m_allocation: vec![0;process_inner.mutex_list.len()],
                    s_allocation: vec![0;process_inner.semaphore_list.len()],
                    m_need: vec![0;process_inner.mutex_list.len()],
                    s_need: vec![0;process_inner.semaphore_list.len()],
                })
            },
        }
    }
}

#[derive(Copy, Clone, PartialEq)]
/// The execution status of the current process
pub enum TaskStatus {
    /// ready to run
    Ready,
    /// running
    Running,
    /// blocked
    Blocked,
}
