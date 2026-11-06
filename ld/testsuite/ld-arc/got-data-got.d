#source: got-data.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .got.plt
# The reserved words are present even though there is no PLT:
# GOT[0] = _DYNAMIC (0x4000), GOT[1] = GOT[2] = 0.  They follow the two
# data slots, _GLOBAL_OFFSET_TABLE_ is 0x5008.

[^:]*:\s+file format elf32-.*arc

Contents of section \.got\.plt:
 5008 00400000 00000000 00000000 .*
