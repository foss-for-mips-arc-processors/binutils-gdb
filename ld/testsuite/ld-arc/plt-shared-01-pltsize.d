#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -SW
# PLT[0] is 32 bytes: the ABI (4.2.4) counts 24, i.e. the 20 bytes of code
# plus the word with the GOT address (see plt-shared-01-gotptr), and the
# linker pads it so that the entries are 16 byte aligned.  Every entry is
# 16 bytes, so a PLT with one function is 0x30 bytes long.  The PLT is
# read-only and executable.

There are [0-9]+ section headers, starting at offset 0x[0-9a-f]+:

Section Headers:
#...
 +\[ *[0-9]+\] \.plt +PROGBITS +0+2000 +[0-9a-f]+ 0+30 00 +AX +0 +0 +4
#...
