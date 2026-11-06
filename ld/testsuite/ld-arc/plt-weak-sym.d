#source: plt-weak.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#readelf: --dyn-syms -W
# The symbol stays weak and undefined in .dynsym.

Symbol table '\.dynsym' contains [0-9]+ entries:
 +Num: +Value +Size Type +Bind +Vis +Ndx Name
#...
 +[0-9]+: 0+ +0 +FUNC +WEAK +DEFAULT +UND +foo
#...
