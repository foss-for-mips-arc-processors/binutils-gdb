#source: plt-weak.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# A call to a weak undefined function still goes through the PLT.

Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+500c +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +foo \+ 0
