#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# R_ARC_S25W_PCREL_PLT is L+A-P (>>2), where L is the address of the PLT
# entry of foo.  With a 32 byte PLT[0] that entry is at 0x2020, so the bl
# at 0x3000 has a displacement of 0x2020 - 0x3000 = -4064.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sbl\s+-4064\s+;2020 <.*>
