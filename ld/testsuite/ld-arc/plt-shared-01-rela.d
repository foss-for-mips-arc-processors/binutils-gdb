#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# ABI 4.2.4: .rela.plt has one R_ARC_JMP_SLOT per PLT entry and the offset
# of the relocation is the address of the associated GOT slot.  The first
# slot after the three reserved ones is _GLOBAL_OFFSET_TABLE_[3], that is
# 0x5000 + 3 * 4.

Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+500c +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +foo \+ 0
