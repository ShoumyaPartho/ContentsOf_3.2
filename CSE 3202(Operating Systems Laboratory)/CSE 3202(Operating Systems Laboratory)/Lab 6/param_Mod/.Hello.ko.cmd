cmd_/root/lab/param_Mod/Hello.ko := ld -r -m elf_x86_64 -T /usr/src/linux-headers-2.6.32-21-generic/scripts/module-common.lds --build-id -o /root/lab/param_Mod/Hello.ko /root/lab/param_Mod/Hello.o /root/lab/param_Mod/Hello.mod.o