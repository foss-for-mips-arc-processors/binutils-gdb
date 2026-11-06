#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .plt --stop-address=0x2014
# ABI 4.2.4: PLT[0] starts with
#   ld r11,[pcl,(GOT+4)@gotpc]
#   ld r10,[pcl,(GOT+8)@gotpc]
#   j  [r10]
# GOT is 0x5000, so the loads read 0x5004 and 0x5008.  Only the three
# instructions are checked here, see plt-shared-01-gotptr for the word
# that follows them.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.plt:

0+2000 <\.plt>:
\s+2000:\s+[0-9a-f ]+\sld\s+r11,\[pcl,0x[0-9a-f]+\]\s+;5004 <.*>
\s+2008:\s+[0-9a-f ]+\sld\s+r10,\[pcl,0x[0-9a-f]+\]\s+;5008 <.*>
\s+2010:\s+[0-9a-f ]+\sj\s+\[r10\]
