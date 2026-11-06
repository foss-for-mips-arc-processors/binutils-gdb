#source: plt-branches.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# R_ARC_S21H_PCREL_PLT (bne), R_ARC_S21W_PCREL_PLT (blne),
# R_ARC_S25H_PCREL_PLT (b), R_ARC_S25W_PCREL_PLT (bl) and R_ARC_PLT32
# (add r0,pcl,foo@plt) are all L+A-P, with L the PLT entry of foo at 0x2020
# (see plt-shared-01-pltsize).  For the add, P - PCL is 0, since the insn is
# 4 byte aligned, so the immediate is 0x2020 - 0x3010 = -0xff0.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sbne\s+-4064\s+;2020 <.*>
\s+3004:\s+[0-9a-f ]+\sblne\s+-4068\s+;2020 <.*>
\s+3008:\s+[0-9a-f ]+\sb\s+-4072\s+;2020 <.*>
\s+300c:\s+[0-9a-f ]+\sbl\s+-4076\s+;2020 <.*>
\s+3010:\s+[0-9a-f ]+\sadd\s+r0,pcl,0xfffff010\s+;2020 <.*>
