#source: plt-hidden.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# foo is defined in the shared object and is hidden, so it cannot be
# preempted, so bl foo@plt is a plain PC-relative call to 0x3004.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sbl\s+4\s+;3004 <foo>
#...
