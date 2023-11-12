#include "syscall.h"

extern int write(int fd, const void *buf, int len);
extern void exit(int code);

int main(int argc, char *argv[]) {
    char greeting[11] = "my name is ";
    char error[15] = "Incorrect argc\n";
    
    if (argc != 1) {
        write(1, error, 15);
        return 1;
    }
    int len = 0;
    while(argv[0][len] != 0) {
        len++;
    }
    write(1, greeting, 11);
    write(1, argv[0], len);
    return 0;
}