# 1.编程作业
## 1.1 跟随文档修改内核
跟随文档编写代码即可, 其实给出的`bootloader`已经是被修改成适配`rCore`的版本了, 不需要进行自己的修改, 此处简单说明文档中没有直接给出的代码修改部分:
- 思路
> `bootloader`其实就是我们`lab1`中修改栈布局的完善版本, 只需要将我们在`lab1`中自己修改的代码换成对`bootloader`的函数调用即可
- 具体步骤
1. 调用`ElfLoader::new`和`init_stack`完成栈的内存初始化
2. 将返回的栈底值填充`trap_cx`, 注意`app_init_context`也需要填充
   
## 1.2 添加系统调用使`hellostd `正常运行
### 1.2.1 完成ioctl
通过文档修改后首先输出的是:
```bash
Unsupported syscall_id: 29
```
查阅[此处](https://jborza.com/post/2021-05-11-riscv-linux-syscalls/)可知缺少系统调用`ioctl`的实现
1. `ioctl`是什么?
> ioctl（Input/Output Control）是一个在Unix和Unix-like系统上的系统调用，用于控制设备的底层参数。它允许用户程序通过文件描述符对设备进行各种控制操作
2. 原型和使用方式
- 原型
    ```c
    int ioctl(int fd, unsigned long request, ...);
    /*
    fd: 打开的文件描述符，指向需要进行控制的设备。
    request: 一个表示控制请求的无符号长整型。这个参数指定了具体的操作，如设置参数、获取状态等。
    ...: 零个或多个可选的参数，取决于具体的控制请求。
    */
    ```
- `Linux`下使用案例:
    ```c
    struct winsize ws;

    // 获取终端窗口大小
    struct winsize ws;
    if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1) {
        perror("ioctl(TIOCGWINSZ) error");
        exit(EXIT_FAILURE);
    }
    ```
3. 实现方式
可以看出, `rCore`并不支持以上类似的功能, 一次该系统调用只需要返回 `0` 即可

### 1.2.2 完成writev
上一步完成后, 运行输出:
```bash
Unsupported syscall_id: 66
```
查阅[此处](https://jborza.com/post/2021-05-11-riscv-linux-syscalls/)可知缺少系统调用`writev`的实现
1. `writev`是什么?
如果熟悉`Linux`系统编程的话对这个系统调用很熟悉, 其被`writev`函数调用, 起作用就是将多个不连续的缓冲区打包一次进行写入, `readv`的思路也是一样的。其意义在于减少系统调用的开销。

2. 原型和使用方式
- 原型
    ```c
    ssize_t writev(int fd, const struct iovec *iov, int iovcnt);

    struct iovec {
    void  *iov_base; // 缓冲区的起始地址
    size_t iov_len;  // 缓冲区的长度
    };
    ```
- `Linux`下使用案例
    ```c
    // 定义两个缓冲区
    char buffer1[] = "Hello, ";
    char buffer2[] = "writev!\n";
    // 定义iovec结构数组
    struct iovec iov[2];
    iov[0].iov_base = buffer1;
    iov[0].iov_len = strlen(buffer1);
    iov[1].iov_base = buffer2;
    iov[1].iov_len = strlen(buffer2);
    // 打开文件描述符
    int fd = open("output.txt", O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    // 使用writev写入数据
    ssize_t bytes_written = writev(fd, iov, 2);
    ```
3. 实现方式
- 思路
  由于已经实现了`sys_write`, 而`sys_writev`就是将多个缓冲区打包在一起.因此只需要连续调用`sys_write`即可
- 具体步骤
  1. 循环获取每一个`iov`的地址, 需要通过`translated_refmut`转化
  2. 每一个`iov`地址的第一个参数是缓冲区地址, 第二个参数是缓冲区长度, 同样通过`translated_refmut`转化
  3. 获取到上2个参数后调用`sys_write`
  4. 若`sys_write`返回-1, 则直接返回, 否则对`sys_write`进行累加并在循环结束后返回
> PS
此处我的视线是直接操作指针, 但如果后续还需实现更多有关`iovec`的系统调用时, 最后单独定义一个结构体, 并对该结构体实现相应的读写方法

### 1.2.3 实现exit_group
上一步完成后, 运行输出:
```bash
Unsupported syscall_id: 94
```
查阅[此处](https://jborza.com/post/2021-05-11-riscv-linux-syscalls/)可知缺少系统调用`exit_group`的实现
1. `exit_group`是什么?
exit_group 是一个系统调用，它会终止所有线程和进程，并返回一个退出状态。它与 exit 的区别在于它会终止整个进程组，而不仅仅是调用线程或进程。
2. 原型和使用方式
- 原型
    ```c
    void exit_group(int status);
    ```
- 使用方式
    ```c
    #include <linux/unistd.h>

    int main() {
        // ... 进程的其他工作 ...

        exit_group(0);

        // 这段代码不会执行，因为 exit_group 已经终止了整个进程
        // ...

        return 0;
    }
    ```
3. 实现方式
显而易见, 由于`rCore`不支持进程组, 因此只需要转移给`exit`即可

### 1.2.4 结果
完成以上修改后, 运行`hellostd`, 得到如下结果:<br>
![img](./img/lab1-result.png)<br>

# 2 问答作业
1. 查询标志位定义。
> 标准的 waitpid 调用的结构是 pid_t waitpid(pid_t pid, int *_Nullable wstatus, int options);。其中的 options 参数分别有哪些可能（只要列出不需要解释），用 int 的 32 个 bit 如何表示？

- **`options`包括**:
- `WNOHANG`：如果没有任何子进程终止或停止，`waitpid` 立即返回而不阻塞。如果指定了这个选项，且子进程的状态没有发生变化，`waitpid` 返回 0。
- `WUNTRACED`：等待任何已经停止的子进程返回。停止是指子进程收到了一个暂停信号（通常是 `SIGSTOP`）而进入了停止状态。
- `WCONTINUED`：等待任何已经继续执行的子进程返回。继续执行是指子进程从停止状态转为运行状态。
- `WSTOPPED`：它是一个被废弃的宏，不应该在新的代码中使用。使用 `WIFSTOPPED` 替代。
- `WEXITED`：如果子进程正常终止，`waitpid` 返回。可以与 `WIFEXITED` 结合使用。
- `WEXITSTATUS`：用于获取正常终止的子进程的退出状态，需与 `WIFEXITED` 结合使用。
- `WIFEXITED`：如果子进程正常终止，返回一个非零值。可以与 `WEXITSTATUS` 结合使用。
- `WIFSIGNALED`：如果子进程因为信号而终止，返回一个非零值。
- `WIFSTOPPED`：如果子进程当前处于停止状态，返回一个非零值。可以与 `WSTOPSIG` 结合使用。
- `WIFCONTINUED`：如果子进程继续运行，返回一个非零值。
- `WSTOPSIG`：用于获取导致子进程停止的信号编号，需与 `WIFSTOPPED` 结合使用。


> 用 int 的 32 个 bit 如何表示?

由于其对应的整型只有一个位被设置为1, 因此可以通过按位或（`|`）操作组合