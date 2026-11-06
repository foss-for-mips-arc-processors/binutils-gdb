#source: plt-shared-02.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -SW
# 3 reserved words and 3 function slots: 0x18 bytes.

There are [0-9]+ section headers, starting at offset 0x[0-9a-f]+:

Section Headers:
#...
 +\[ *[0-9]+\] \.got\.plt +PROGBITS +0+5000 +[0-9a-f]+ 0+18 00 +WA +0 +0 +4
#...
