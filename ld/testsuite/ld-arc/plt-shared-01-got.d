#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .got.plt
# ABI 4.2.2/4.2.4: GOT[0] holds the address of _DYNAMIC (0x4000), GOT[1]
# and GOT[2] are reserved for the dynamic loader and GOT[3], the slot of
# the first function, initially points to PLT[0] (0x2000).

[^:]*:\s+file format elf32-.*arc

Contents of section \.got\.plt:
 5000 00400000 00000000 00000000 00200000 .*
