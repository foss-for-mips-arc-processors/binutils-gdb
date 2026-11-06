#source: got-static.s
#as: -mcpu=archs -EL
#ld: -static -EL -T plt-got.ld
#objdump: -d -j .text
# In a static link the GOT slot is addressed with the same PC-relative
# displacement (0x5000 - 0x3000 = 0x2000).

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <__start>:
\s+3000:\s+[0-9a-f ]+\sld\s+r0,\[pcl,0x2000\]\s+;5000 <.*>
