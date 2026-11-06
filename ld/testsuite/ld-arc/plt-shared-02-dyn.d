#source: plt-shared-02.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -dW
# Three functions need three 12 byte relocations.

Dynamic section at offset 0x[0-9a-f]+ contains [0-9]+ entries:
 +Tag +Type +Name/Value
#...
 0x0*3 \(PLTGOT\) +0x2000
 0x0*2 \(PLTRELSZ\) +36 \(bytes\)
 0x0*14 \(PLTREL\) +RELA
#...
