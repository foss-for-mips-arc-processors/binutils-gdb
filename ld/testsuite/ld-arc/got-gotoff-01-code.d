#source: got-gotoff-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# Nothing needs a GOT slot, so the GOT consists of the three reserved words
# and _GLOBAL_OFFSET_TABLE_ is 0x5000.  dat is 0x7000 and fn is 0x3010:
# 0x7000 - 0x5000 = 0x2000 and 0x3010 - 0x5000 = -0x1ff0.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sadd\s+r0,gp,0x2000
\s+3008:\s+[0-9a-f ]+\sadd\s+r1,gp,0xffffe010
#...
