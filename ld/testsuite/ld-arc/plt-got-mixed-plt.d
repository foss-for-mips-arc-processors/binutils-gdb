#source: plt-got-mixed.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# Function slot GOT[3] = 0x5004 + 12 = 0x5010.
#...
Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+5010 +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +foo \+ 0
#...
