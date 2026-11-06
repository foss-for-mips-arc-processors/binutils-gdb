#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .plt --start-address=0x2020 --stop-address=0x2030
# ABI 4.2.4: every PLT entry is 16 bytes:
#   ld  r12,[pcl,func@gotpc]
#   j.d [r12]
#   mov r12,pcl
# With a 32 byte PLT[0] the first entry starts at 0x2020 and loads the
# first function slot, 0x500c (0x500c - 0x2020 = 0x2fec).

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.plt:

0+2020 <.*>:
\s+2020:\s+[0-9a-f ]+\sld\s+r12,\[pcl,0x2fec\]\s+;500c <.*>
\s+2028:\s+[0-9a-f ]+\sj\.d\s+\[r12\]
\s+202c:\s+[0-9a-f ]+\smov\s+r12,pcl
