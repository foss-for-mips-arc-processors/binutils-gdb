# ABI 4.2.3: the link editor places the address of the PLT entry of a
# function defined in a shared object in the st_value of its (undefined)
# dynamic symbol.

Symbol table '\.dynsym' contains [0-9]+ entries:
 +Num: +Value +Size Type +Bind +Vis +Ndx Name
#...
 +[0-9]+: 0+2020 +0 +FUNC +GLOBAL +DEFAULT +UND +foo
#...
