#source: plt-hidden.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -SW
#failif
# No PLT and no PLT relocations are needed.

#...
 +\[ *[0-9]+\] \.(rela\.)?plt +.*
#...
