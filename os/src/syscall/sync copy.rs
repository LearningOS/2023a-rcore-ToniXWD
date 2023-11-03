use crate::sync::{Condvar, Mutex, MutexBlocking, MutexSpin, Semaphore};
use crate::task::{block_current_and_run_next, current_process, current_task};
use crate::timer::{add_timer, get_time_ms};
use alloc::sync::Arc;
use alloc::vec;
/// sleep syscall
pub fn sys_sleep(ms: usize) -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_sleep",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let expire_ms = get_time_ms() + ms;
    let task = current_task().unwrap();
    add_timer(expire_ms, task);
    block_current_and_run_next();
    0
}
/// mutex create syscall
pub fn sys_mutex_create(blocking: bool) -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_mutex_create",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mutex: Option<Arc<dyn Mutex>> = if !blocking {
        Some(Arc::new(MutexSpin::new()))
    } else {
        Some(Arc::new(MutexBlocking::new()))
    };
    let mut process_inner = process.inner_exclusive_access();
    if let Some(id) = process_inner
        .mutex_list
        .iter()
        .enumerate()
        .find(|(_, item)| item.is_none())
        .map(|(id, _)| id)
    {
        process_inner.mutex_list[id] = mutex;

        //sync all tasks
        process_inner.mutex_avail[id] = 1;

        for tid in 0..process_inner.tasks.len() {
            let task = process_inner.get_task(tid);
            let mut task_inner = task.inner_exclusive_access();
            task_inner.mutex_alloc[id] = 0;
            task_inner.mutex_need[id] = 0;
        }

        id as isize
    } else {
        process_inner.mutex_list.push(mutex);

        process_inner.mutex_avail.push(1);

        // sync all task
        for tid in 0..process_inner.tasks.len() {
            let task = process_inner.get_task(tid);
            let mut task_inner = task.inner_exclusive_access();
            task_inner.mutex_alloc.push(0);
            task_inner.mutex_need.push(0);
        }

        process_inner.mutex_list.len() as isize - 1
    }
}
/// mutex lock syscall
pub fn sys_mutex_lock(mutex_id: usize) -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_mutex_lock",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    let task = current_task().unwrap();
    let mut task_inner = task.inner_exclusive_access();
    task_inner.mutex_need[mutex_id] += 1;
    drop(task_inner);

    if process_inner.deadlock_detect {
        //
        let mut work = process_inner.mutex_avail.clone();
        let n = process_inner.tasks.len();
        let mut finish = vec![false; n];

        loop {
            let mut flag = false;
            for tid in 0..n {
                let task = process_inner.get_task(tid);
                let task_inner = task.inner_exclusive_access();
                if finish[tid] == false {
                    let a = work.iter().enumerate().any(|(mutex_id, mutex_remain)| {
                        task_inner.mutex_need[mutex_id] > *mutex_remain
                    });

                    if !a {
                        finish[tid] = true;
                        for (mutex_id, source) in work.iter_mut().enumerate() {
                            *source += task_inner.mutex_alloc[mutex_id];
                        }
                        flag = true;
                    }
                }
            }
            if flag == false {
                break;
            }
        }

        for i in &finish {
            debug!("{}", i)
        }

        let task = current_task().unwrap();
        let mut task_inner = task.inner_exclusive_access();
        if finish.iter().any(|x| *x == false) {
            task_inner.mutex_need[mutex_id] -= 1;
            return -0xDEAD;
        }

        // loop {
        //     if let Some((tid, Some(task_tcb))) =
        //         process_inner.tasks.iter().enumerate().find(|(tid, tcb)| {
        //             let task = tcb.as_ref().unwrap();
        //             let task_inner = task.inner_exclusive_access();
        //             debug!("last mutex:{}", work[mutex_id]);
        //             if task_inner.exit_code.is_some() {
        //                 finish[*tid] = true;
        //                 false
        //             } else {
        //                 if finish[task_inner.res.as_ref().unwrap().tid] {
        //                     false
        //                 } else {
        //                     task_inner.mutex_need[mutex_id] <= work[mutex_id]
        //                 }
        //             }
        //         })
        //     {
        //         let task_inner = task_tcb.inner_exclusive_access();
        //         work[mutex_id] += task_inner.mutex_alloc[mutex_id];
        //         finish[tid] = true;
        //     } else {
        //         break;
        //     }
        // }
        // for tid in 0..n {
        //     if finish[tid] == false && process_inner.tasks[tid].is_some() {
        //         return -0xDEAD;
        //     }
        // }
    }

    let mut task_inner = task.inner_exclusive_access();
    process_inner.mutex_avail[mutex_id] -= 1;
    task_inner.mutex_alloc[mutex_id] += 1;
    task_inner.mutex_need[mutex_id] -= 1;
    drop(task_inner);
    drop(task);
    let mutex = Arc::clone(process_inner.mutex_list[mutex_id].as_ref().unwrap());
    drop(process_inner);
    drop(process);
    mutex.lock();
    0
}
/// mutex unlock syscall
pub fn sys_mutex_unlock(mutex_id: usize) -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_mutex_unlock",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    let mutex = Arc::clone(process_inner.mutex_list[mutex_id].as_ref().unwrap());

    process_inner.mutex_avail[mutex_id] += 1;

    let task = current_task().unwrap();
    let mut task_inner = task.inner_exclusive_access();
    task_inner.mutex_alloc[mutex_id] -= 1;

    drop(task_inner);
    drop(task);
    drop(process_inner);
    drop(process);
    mutex.unlock();
    0
}
/// semaphore create syscall
pub fn sys_semaphore_create(res_count: usize) -> isize {
    debug!(
        "kernel:pid[{}] tid[{}] sys_semaphore_create",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    let id = if let Some(id) = process_inner
        .semaphore_list
        .iter()
        .enumerate()
        .find(|(_, item)| item.is_none())
        .map(|(id, _)| id)
    {
        process_inner.semaphore_list[id] = Some(Arc::new(Semaphore::new(res_count)));
        process_inner.sem_avail[id] = res_count;

        for tid in 0..process_inner.tasks.len() {
            let task = process_inner.get_task(tid);
            let mut task_inner = task.inner_exclusive_access();
            task_inner.sem_alloc[id] = 0;
            task_inner.sem_need[id] = 0;
        }

        id
    } else {
        process_inner
            .semaphore_list
            .push(Some(Arc::new(Semaphore::new(res_count))));

        process_inner.sem_avail.push(res_count);
        // sync all task
        for tid in 0..process_inner.tasks.len() {
            let task = process_inner.get_task(tid);
            let mut task_inner = task.inner_exclusive_access();
            task_inner.sem_alloc.push(0);
            task_inner.sem_need.push(0);
        }

        process_inner.semaphore_list.len() - 1
    };
    debug!("{:#?}", &process_inner.sem_avail);
    id as isize
}
/// semaphore up syscall
pub fn sys_semaphore_up(sem_id: usize) -> isize {
    debug!(
        "kernel:pid[{}] tid[{}] sys_semaphore_up",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    let sem = Arc::clone(process_inner.semaphore_list[sem_id].as_ref().unwrap());

    process_inner.sem_avail[sem_id] += 1;

    let task = current_task().unwrap();
    let mut task_inner = task.inner_exclusive_access();
    task_inner.sem_alloc[sem_id] -= 1;
    drop(task_inner);
    drop(task);

    debug!("{:#?}", &process_inner.sem_avail);
    drop(process_inner);
    sem.up();
    0
}
/// semaphore down syscall
pub fn sys_semaphore_down(sem_id: usize) -> isize {
    debug!(
        "kernel:pid[{}] tid[{}] sys_semaphore_down",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    let task = current_task().unwrap();
    let mut task_inner = task.inner_exclusive_access();

    task_inner.sem_need[sem_id] += 1;
    drop(task_inner);

    if process_inner.deadlock_detect {
        //
        let mut work = process_inner.sem_avail.clone();
        let n = process_inner.tasks.len();
        let mut finish = vec![false; n];

        loop {
            let mut flag = false;
            for tid in 0..n {
                let task = process_inner.get_task(tid);
                let task_inner = task.inner_exclusive_access();
                if finish[tid] == false {
                    let a = work
                        .iter()
                        .enumerate()
                        .any(|(sem_id, sem_remain)| task_inner.sem_need[sem_id] > *sem_remain);

                    if !a {
                        finish[tid] = true;
                        for (sem_id, source) in work.iter_mut().enumerate() {
                            *source += task_inner.sem_alloc[sem_id];
                        }
                        flag = true;
                    }
                }
            }
            if flag == false {
                break;
            }
        }

        let task = current_task().unwrap();
        let mut task_inner = task.inner_exclusive_access();
        if finish.iter().any(|x| *x == false) {
            task_inner.sem_need[sem_id] -= 1;
            return -0xDEAD;
        }
    }

    if process_inner.sem_avail[sem_id] > 0 {
        process_inner.sem_avail[sem_id] -= 1;
        let mut task_inner = task.inner_exclusive_access();
        task_inner.sem_alloc[sem_id] += 1;
        task_inner.sem_need[sem_id] -= 1;
    }
    drop(task);
    debug!("{:#?}", &process_inner.sem_avail);
    let sem = Arc::clone(process_inner.semaphore_list[sem_id].as_ref().unwrap());
    drop(process_inner);
    sem.down();
    0
}
/// condvar create syscall
pub fn sys_condvar_create() -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_condvar_create",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    let id = if let Some(id) = process_inner
        .condvar_list
        .iter()
        .enumerate()
        .find(|(_, item)| item.is_none())
        .map(|(id, _)| id)
    {
        process_inner.condvar_list[id] = Some(Arc::new(Condvar::new()));
        id
    } else {
        process_inner
            .condvar_list
            .push(Some(Arc::new(Condvar::new())));
        process_inner.condvar_list.len() - 1
    };
    id as isize
}
/// condvar signal syscall
pub fn sys_condvar_signal(condvar_id: usize) -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_condvar_signal",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let process_inner = process.inner_exclusive_access();
    let condvar = Arc::clone(process_inner.condvar_list[condvar_id].as_ref().unwrap());
    drop(process_inner);
    condvar.signal();
    0
}
/// condvar wait syscall
pub fn sys_condvar_wait(condvar_id: usize, mutex_id: usize) -> isize {
    trace!(
        "kernel:pid[{}] tid[{}] sys_condvar_wait",
        current_task().unwrap().process.upgrade().unwrap().getpid(),
        current_task()
            .unwrap()
            .inner_exclusive_access()
            .res
            .as_ref()
            .unwrap()
            .tid
    );
    let process = current_process();
    let process_inner = process.inner_exclusive_access();
    let condvar = Arc::clone(process_inner.condvar_list[condvar_id].as_ref().unwrap());
    let mutex = Arc::clone(process_inner.mutex_list[mutex_id].as_ref().unwrap());
    drop(process_inner);
    condvar.wait(mutex);
    0
}
/// enable deadlock detection syscall
///
/// YOUR JOB: Implement deadlock detection, but might not all in this syscall
pub fn sys_enable_deadlock_detect(enabled: usize) -> isize {
    trace!("kernel: sys_enable_deadlock_detect");
    let process = current_process();
    let mut process_inner = process.inner_exclusive_access();
    if enabled == 1 {
        process_inner.deadlock_detect = true;
    } else if enabled == 0 {
        process_inner.deadlock_detect = false;
    } else {
        return -1;
    }

    0
}
