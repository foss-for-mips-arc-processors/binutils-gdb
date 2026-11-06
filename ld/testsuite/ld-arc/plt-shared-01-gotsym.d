#source: plt-shared-01.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: -sW
# ABI 4.2.2: _GLOBAL_OFFSET_TABLE_ is the start of the table whose first
# word is the address of _DYNAMIC.

#...
 +[0-9]+: 0+5000 +0 +OBJECT +LOCAL +DEFAULT +[A-Z0-9]+ +_GLOBAL_OFFSET_TABLE_
#...
