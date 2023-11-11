#include "syscall.h"

extern int main(int argc, char *argv[]);
extern void exit(int code);

int __start_main(long *p)
{
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
	return 0;
}
