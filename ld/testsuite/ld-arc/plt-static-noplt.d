#source: plt-static.s
#as: -mcpu=archs -EL
#ld: -static -EL -T plt-got.ld
#readelf: -SW
#failif
# A static link has no PLT.

#...
 +\[ *[0-9]+\] \.(rela\.)?plt +.*
#...
