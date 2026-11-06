#source: plt-got-mixed.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .got.plt
# The reserved words (GOT[0] = _DYNAMIC) and the slot of foo (GOT[3],
# initially PLT[0]) follow the data slot of v1, at 0x5004.

[^:]*:\s+file format elf32-.*arc

Contents of section \.got\.plt:
 5004 00400000 00000000 00000000 00200000 .*
