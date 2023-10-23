use bitflags::*;

/// The max signal number
pub const MAX_SIG: usize = 31;

bitflags! {
    /// Signal flags
    pub struct SignalFlags: u32 {
        /// Default signal handling
        const SIGDEF = 1;
        /// Hangup
        const SIGHUP = 1 << 1;
        /// Interrupt
        const SIGINT = 1 << 2;
        /// Quit
        const SIGQUIT = 1 << 3;
        /// Illegal instruction
        const SIGILL = 1 << 4;
        /// Trace/breakpoint trap
        const SIGTRAP = 1 << 5;
        /// Abort
        const SIGABRT = 1 << 6;
        /// Bus error
        const SIGBUS = 1 << 7;
        /// Floating point exception
        const SIGFPE = 1 << 8;
        /// Kill
        const SIGKILL = 1 << 9;
        /// User-defined signal 1
        const SIGUSR1 = 1 << 10;
        /// Segmentation fault
        const SIGSEGV = 1 << 11;
        /// User-defined signal 2
        const SIGUSR2 = 1 << 12;
        /// Broken pipe
        const SIGPIPE = 1 << 13;
        /// Alarm clock
        const SIGALRM = 1 << 14;
        /// Termination
        const SIGTERM = 1 << 15;
        /// Stack fault
        const SIGSTKFLT = 1 << 16;
        /// Child stopped or terminated
        const SIGCHLD = 1 << 17;
        /// Continue
        const SIGCONT = 1 << 18;
        /// Stop, unblockable
        const SIGSTOP = 1 << 19;
        /// Stop signal
        const SIGTSTP = 1 << 20;
        /// Terminal input for background process
        const SIGTTIN = 1 << 21;
        /// Terminal output for background process
        const SIGTTOU = 1 << 22;
        /// Urgent condition on socket
        const SIGURG = 1 << 23;
        /// CPU time limit exceeded
        const SIGXCPU = 1 << 24;
        /// File size limit exceeded
        const SIGXFSZ = 1 << 25;
        /// Virtual timer expired
        const SIGVTALRM = 1 << 26;
        /// Profiling timer expired
        const SIGPROF = 1 << 27;
        /// Window size change
        const SIGWINCH = 1 << 28;
        /// I/O possible
        const SIGIO = 1 << 29;
        /// Power failure
        const SIGPWR = 1 << 30;
        /// Bad system call
        const SIGSYS = 1 << 31;
    }
}

impl SignalFlags {
    /// Check if there is an error in the signal flags
    pub fn check_error(&self) -> Option<(i32, &'static str)> {
        if self.contains(Self::SIGINT) {
            Some((-2, "Killed, SIGINT=2"))
        } else if self.contains(Self::SIGILL) {
            Some((-4, "Illegal Instruction, SIGILL=4"))
        } else if self.contains(Self::SIGABRT) {
            Some((-6, "Aborted, SIGABRT=6"))
        } else if self.contains(Self::SIGFPE) {
            Some((-8, "Erroneous Arithmetic Operation, SIGFPE=8"))
        } else if self.contains(Self::SIGKILL) {
            Some((-9, "Killed, SIGKILL=9"))
        } else if self.contains(Self::SIGSEGV) {
            Some((-11, "Segmentation Fault, SIGSEGV=11"))
        } else {
            // warn!("[kernel] signalflags check_error  {:?}", self);
            None
        }
    }
}
