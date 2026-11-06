#source: got-gotpc.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .text
# add gp,pcl,_GLOBAL_OFFSET_TABLE_@gotpc computes the address of the GOT.
# The ABI (4.2.2) says that it is _GLOBAL_OFFSET_TABLE_ (0x5008 here, the
# start of .got.plt), but ld yields the start of .got (0x5000, see
# got-got32-data), which is 0x5000 - 0x3008 = 0x1ff8 from the PCL.

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.text:

0+3000 <caller>:
\s+3000:\s+[0-9a-f ]+\sld\s+r0,\[pcl,0x2000\]\s+;5000 <.*>
\s+3008:\s+[0-9a-f ]+\sadd\s+gp,pcl,0x1ff8\s+;5000 <.*>
