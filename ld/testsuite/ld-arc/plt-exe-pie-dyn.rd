# PIE: data in a shared object is reached through a GOT slot filled by
# R_ARC_GLOB_DAT (first slot of .got, 0x5000).
#...
Relocation section '\.rela\.dyn' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+5000 +[0-9a-f]+ +R_ARC_GLOB_DAT +0+ +var \+ 0
#...
