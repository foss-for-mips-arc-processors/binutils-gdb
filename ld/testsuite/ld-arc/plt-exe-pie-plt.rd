# PIE: function call through the PLT: GOT slot 3 follows the single data
# slot and the three reserved words: 0x5004 + 3 * 4 = 0x5010.
#...
Relocation section '\.rela\.plt' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+5010 +[0-9a-f]+ +R_ARC_JMP_SLOT +0+2020 +foo \+ 0
#...
