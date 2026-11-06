#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -SW
# ABI 4.2.2: the GOT has three reserved words, plus one word for the
# function, so it is 0x10 bytes long.  It is never marked read-only
# (ABI 4.2.4).

There are [0-9]+ section headers, starting at offset 0x[0-9a-f]+:

Section Headers:
#...
 +\[ *[0-9]+\] \.got\.plt +PROGBITS +0+5000 +[0-9a-f]+ 0+10 00 +WA +0 +0 +4
#...
