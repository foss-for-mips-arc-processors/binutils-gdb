#source: got-hidden.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -rW
# A hidden global symbol is relocated with R_ARC_RELATIVE.  The ABI says
# B + A and that the field is discarded, but glibc (sysdeps/arc/dl-machine.h)
# does *slot += load address and ignores the addend, so ld keeps the value
# in the slot (see got-hidden-got) and uses the addend 0.

Relocation section '\.rela\.dyn' at offset 0x[0-9a-f]+ contains 1 entry:
 +Offset +Info +Type +Sym\. Value +Symbol's Name \+ Addend
0+5000 +0*38 +R_ARC_RELATIVE +0
