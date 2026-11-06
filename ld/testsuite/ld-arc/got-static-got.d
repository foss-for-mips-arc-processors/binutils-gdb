#source: got-static.s
#as: -mcpu=archs -EL
#ld: -static -EL -T plt-got.ld
#objdump: -s -j .got
# ... and the linker fills the slot with the final address of var: 0x7000.

[^:]*:\s+file format elf32-.*arc

Contents of section \.got:
 5000 00700000 .*
