#include "syscall.h"

int write(int fd, const void *buf, int len)
{
    return syscall(SYS_write, fd, buf, len);
}

void exit(int code)
{
    syscall(SYS_exit, code);
}
