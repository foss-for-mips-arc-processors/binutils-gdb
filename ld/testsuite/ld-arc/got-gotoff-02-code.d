#source: got-gotoff-02.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# The GOT base for R_ARC_GOTOFF is the start of .got (0x5000, see
# got-got32-data); the ABI says _GLOBAL_OFFSET_TABLE_ (0x5004 here).
# dat is 0x7000 and fn is 0x3018:
# 0x7000 - 0x5000 = 0x2000 and 0x3018 - 0x5000 = -0x1fe8.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sld\s+r0,\[pcl,0x2000\]\s+;5000 <.*>
\s+3008:\s+[0-9a-f ]+\sadd\s+r1,gp,0x2000
\s+3010:\s+[0-9a-f ]+\sadd\s+r2,gp,0xffffe018
#...
