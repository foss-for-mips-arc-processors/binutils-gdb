#source: plt-shared-02.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# ABI 4.2.4: .rela.plt entry N applies to PLT entry N and describes GOT
# slot 3 + N.  The ABI does not say in which order the functions are
# assigned to the entries, so the names are not checked.

Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 3 entries:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+500c +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +f[123] \+ 0
0+5010 +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +f[123] \+ 0
0+5014 +[0-9a-f]+ +R_ARC_JMP_SLOT +[0-9a-f]+ +f[123] \+ 0
