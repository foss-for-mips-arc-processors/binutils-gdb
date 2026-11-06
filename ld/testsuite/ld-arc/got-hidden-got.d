#source: got-hidden.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .got
# The slot holds the link-time address of hid (0x7004); R_ARC_RELATIVE adds
# the load address to it at run time.

[^:]*:\s+file format elf32-.*arc

Contents of section \.got:
 5000 04700000 .*
