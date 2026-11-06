#source: got-data.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# R_ARC_GOTPC32 is GOT + G + A - P, that is the PC-relative address of the
# slot, i.e. 0x5000 - 0x3000, 0x5004 - 0x3008 and 0x5000 - 0x3010.  The second
# reference to v1 reuses its slot.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sld\s+r0,\[pcl,0x2000\]\s+;5000 <.*>
\s+3008:\s+[0-9a-f ]+\sld\s+r1,\[pcl,0x1ffc\]\s+;5004 <.*>
\s+3010:\s+[0-9a-f ]+\sld\s+r2,\[pcl,0x1ff0\]\s+;5000 <.*>
