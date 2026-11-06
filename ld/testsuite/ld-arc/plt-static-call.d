#source: plt-static.s
#as: -mcpu=archs -EL
#ld: -static -EL -T plt-got.ld
#objdump: -d -j .text
# Without dynamic linking L is just S: bl foo@plt calls foo directly.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <__start>:
\s+3000:\s+[0-9a-f ]+\sbl\s+4\s+;3004 <foo>
#...
