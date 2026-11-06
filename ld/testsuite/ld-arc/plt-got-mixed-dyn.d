#source: plt-got-mixed.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# Function slot GOT[3] = 0x5004 + 12 and data slot 0x5000.
#...
Relocation section '\.rela\.dyn' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+5000 +[0-9a-f]+ +R_ARC_GLOB_DAT +[0-9a-f]+ +v1 \+ 0
#...
