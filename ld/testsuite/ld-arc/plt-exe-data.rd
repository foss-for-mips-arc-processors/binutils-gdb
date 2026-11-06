# R_ARC_COPY: the offset is in a writable segment (here .bss, 0x8000) and
# the symbol exists both in the executable and in the shared object.

Relocation section '\.rela\.dyn' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+8000 +[0-9a-f]+ +R_ARC_COPY +0+8000 +var \+ 0
