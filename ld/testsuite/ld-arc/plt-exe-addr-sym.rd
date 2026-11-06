# ABI 4.2.3: so that function addresses compare equal, the address of foo
# is that of its PLT entry, both in the code and in st_value.

Symbol table '\.dynsym' contains [0-9]+ entries:
 +Num: +Value +Size Type +Bind +Vis +Ndx Name
#...
 +[0-9]+: 0+2020 +0 +FUNC +GLOBAL +DEFAULT +UND +foo
#...
