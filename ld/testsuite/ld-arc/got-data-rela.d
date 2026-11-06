#source: got-data.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# Each distinct symbol gets exactly one GOT slot, filled by the dynamic
# linker through R_ARC_GLOB_DAT.  The slots are allocated in the order of
# the first reference, starting at the start of .got (0x5000).

Relocation section '\.rela\.dyn' at offset 0x[0-9a-f]+ contains 2 entries:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+5000 +[0-9a-f]+ +R_ARC_GLOB_DAT +[0-9a-f]+ +v1 \+ 0
0+5004 +[0-9a-f]+ +R_ARC_GLOB_DAT +[0-9a-f]+ +v2 \+ 0
