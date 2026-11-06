#source: plt-branches.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# Five references to foo share one PLT entry and one JMP_SLOT.

Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+500c +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +foo \+ 0
