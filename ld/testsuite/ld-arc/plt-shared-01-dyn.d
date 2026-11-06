#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -dW
# ABI 4.2.1: DT_PLTGOT is the address of the first byte of the PLT,
# DT_JMPREL/DT_PLTREL/DT_PLTRELSZ describe .rela.plt.  One PLT entry
# needs one 12 byte Elf32_Rela.

Dynamic section at offset 0x[0-9a-f]+ contains [0-9]+ entries:
 +Tag +Type +Name/Value
#...
 0x0*3 \(PLTGOT\) +0x2000
 0x0*2 \(PLTRELSZ\) +12 \(bytes\)
 0x0*14 \(PLTREL\) +RELA
 0x0*17 \(JMPREL\) +0x[0-9a-f]+
#...
