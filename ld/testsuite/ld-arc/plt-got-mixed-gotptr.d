#source: plt-got-mixed.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .plt --start-address=0x2014 --stop-address=0x2018
# The word at PLT[0] + 20 is the address of _GLOBAL_OFFSET_TABLE_, which
# is where GOT[0] is, not the start of .got.  The data slot of v1 is the
# only content of .got (0x5000), so the symbol is at 0x5004.

[^:]*:\s+file format elf32-.*arc

Contents of section \.plt:
 2014 04500000 .*
