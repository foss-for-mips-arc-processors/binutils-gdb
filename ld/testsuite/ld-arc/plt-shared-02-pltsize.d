#source: plt-shared-02.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -SW
# 32 + 3 * 16 = 0x50 bytes of PLT.

There are [0-9]+ section headers, starting at offset 0x[0-9a-f]+:

Section Headers:
#...
 +\[ *[0-9]+\] \.plt +PROGBITS +0+2000 +[0-9a-f]+ 0+50 00 +AX +0 +0 +4
#...
