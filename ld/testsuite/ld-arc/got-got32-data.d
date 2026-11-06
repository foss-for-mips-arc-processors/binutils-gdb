#source: got-got32.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .data
# G is the offset of the slot from the GOT base used by R_ARC_GOT32.  The
# ABI (4.2.2) says that this base is _GLOBAL_OFFSET_TABLE_ (GOT[0] ==
# _DYNAMIC), but ld uses the start of .got, i.e. the first data slot, and
# the _GLOBAL_OFFSET_TABLE_ symbol is at the start of .got.plt, behind the
# data slots.  The base is only used through R_ARC_GOTPC, R_ARC_GOTOFF and
# R_ARC_GOT32, which agree with each other (checked at run time under QEMU),
# so this is a documentation difference and not a bug.
# The slots of v1 and v2 are at 0x5000 and 0x5004, so G is 0 and 4; the
# third word has an addend of 4.

[^:]*:\s+file format elf32-.*arc

Contents of section \.data:
 7000 00000000 04000000 08000000 .*
