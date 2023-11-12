//! 一个简化的 ELF 加载器，只负责生成初始用户栈
//! 修改自 https://github.com/scPointer/maturin/tree/master/kernel/src/loaders
#[allow(unused)]
mod flags;
#[allow(unused)]
use flags::*;
mod init_info;
use init_info::InitInfo;
mod init_stack;
use init_stack::InitStack;

use alloc::{
    string::{String, ToString},
    vec::Vec,
};

use crate::config::PAGE_SIZE;
use crate::mm::translated_byte_buffer;

use xmas_elf::{
    header,
    program::Type,
    ElfFile,
};

/// ELF 文件加载器
pub struct ElfLoader<'a> {
    elf: ElfFile<'a>,
}

impl<'a> ElfLoader<'a> {
    /// 基于 ELF 文件构建新的 loader
    pub fn new(elf_data: &'a [u8]) -> Result<Self, &str> {
        let elf = ElfFile::new(elf_data).unwrap();
        // 检查类型
        if elf.header.pt1.class() != header::Class::SixtyFour {
            return Err("32-bit ELF is not supported on the riscv64".into());
        }
        match elf.header.pt2.machine().as_machine() {
            #[cfg(target_arch = "riscv64")]
            header::Machine::Other(0xF3) => {}
            _ => return Err("invalid ELF arch".into()),
        };
        Ok(Self { elf })
    }
    /// 初始化用户栈，并返回用户栈栈顶
    ///
    /// 这里会把 argc 存在用户栈顶， argv 存在栈上第二个元素，**且用 usize(64位) 存储**，即相当于：
    ///
    /// argc = *sp;
    ///
    /// argv = *(sp+8);
    pub fn init_stack(
        &self,
        memory_token: usize,
        stack_top: usize,
        args: Vec<String>,
    ) -> usize {
        // 先获取起始位置。
        // 虽然比较繁琐，但因为之后对 VmArea 的处理涉及这个基地址，所以需要提前获取
        let elf_base_vaddr = if let Some(header) = self
            .elf
            .program_iter()
            .find(|ph| ph.get_type() == Ok(Type::Load) && ph.offset() == 0)
        {
            // 找到第一段指示的地址
            let phdr = header.virtual_addr() as usize;
            error!("phdr = {:x}, off {:x}", phdr, self.elf.header.pt2.ph_offset());
            // 如果是 0，如 libc.so，则需要放到一个非零的合法地址。此处规定从某个特定位置开始往后找。
            // 这样设置是因为，动态库运行时可能会mmap实际的用户程序且指定 MAP_FIXED，
            // 而用户程序的地址一般较低。为了让它们直接尽可能不冲突，所以会放到稍高的地址
            if phdr != 0 {
                phdr
            } else {
                0
            }
        } else {
            //return Err(OSError::Loader_PhdrNotFound);
            // 自行构造的测例(rcore/初赛)可能会出现这种情况，而且也没有 phdr 段，此时认为 base addr = 0
            0
        };

        let info = InitInfo {
            args: {
                let mut new_args = Vec::new();
                for i in args.iter() {
                    let arg = i.to_string();
                    new_args.push(arg);
                }
                new_args
            },
            envs: {
                Vec::new()
            },
            auxv: {
                use alloc::collections::btree_map::BTreeMap;
                let mut map = BTreeMap::new();
                
                map.insert(
                    AT_PHDR,
                    elf_base_vaddr + self.elf.header.pt2.ph_offset() as usize,
                );
                
                map.insert(AT_PHENT, self.elf.header.pt2.ph_entry_size() as usize);
                map.insert(AT_PHNUM, self.elf.header.pt2.ph_count() as usize);
                // AT_RANDOM 比较特殊，要求指向栈上的 16Byte 的随机子串。因此这里的 0 只是占位，在之后序列化时会特殊处理
                map.insert(AT_RANDOM, 0);
                map.insert(AT_PAGESZ, PAGE_SIZE);
                
                map
            },
        };

        info!("info {:#?}", info);
        let init_stack = info.serialize(stack_top);
        debug!("init user proc: stack len {}", init_stack.len());
        let stack_top = stack_top - init_stack.len();
        let stack = translated_byte_buffer(memory_token, stack_top as *const u8, init_stack.len());
        // 接下来要把 init_stack 复制到 stack 上
        let mut pos = 0;
        for page in stack {
            let len = page.len();
            page.copy_from_slice(&init_stack[pos..pos + len]);
            pos += len;
        }
        assert!(pos == init_stack.len());
        stack_top
    }
}
