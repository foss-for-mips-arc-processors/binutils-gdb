#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -s -j .plt --start-address=0x2014 --stop-address=0x2018
# The word that follows the code of PLT[0] (offset 20) holds the link-time
# address of the GOT.  The ABI (4.2.4) counts it in the 24 bytes of PLT[0]
# without describing it.  The dynamic loader needs it: DT_PLTGOT points to
# the PLT, not to the GOT, and the loader finds the GOT through this word
# to store its link map in GOT[1] and its resolver in GOT[2].  The value is
# an absolute address which the loader relocates by the load address, it
# is not covered by a dynamic relocation.  The GOT is 0x5000.

[^:]*:\s+file format elf32-.*arc

Contents of section \.plt:
 2014 00500000 .*
