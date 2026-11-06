# An executable that calls a function of a shared object: ABI 4.2.4, the
# call goes through a PLT entry and .rela.plt has an R_ARC_JMP_SLOT whose
# symbol value is the address of the PLT entry (ABI 4.2.3), which follows
# the 32 byte PLT[0]: 0x2020.

Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+500c +[0-9a-f]+ +R_ARC_JMP_SLOT +0+2020 +foo \+ 0
