#source: plt-shared-02.s
#as: -mcpu=archs -EL
#ld: -shared -EL -T plt-got.ld --hash-style=sysv
#objdump: -d -j .plt --start-address=0x2020 --stop-address=0x2050
# Entries are 16 bytes apart, starting at 0x2020 (32 byte PLT[0]); entry N
# loads GOT slot 3 + N: 0x500c, 0x5010 and 0x5014.  The displacements are
# slot - entry: 0x2fec, 0x2fe0 and 0x2fd4.  f1 is called twice but has just
# one entry (ABI 4.2.4: one dominant PLT entry per function).

[^:]*:\s+file format elf32-.*arc


Disassembly of section \.plt:

0+2020 <.*>:
\s+2020:\s+[0-9a-f ]+\sld\s+r12,\[pcl,0x2fec\]\s+;500c <.*>
\s+2028:\s+[0-9a-f ]+\sj\.d\s+\[r12\]
\s+202c:\s+[0-9a-f ]+\smov\s+r12,pcl
\s+2030:\s+[0-9a-f ]+\sld\s+r12,\[pcl,0x2fe0\]\s+;5010 <.*>
\s+2038:\s+[0-9a-f ]+\sj\.d\s+\[r12\]
\s+203c:\s+[0-9a-f ]+\smov\s+r12,pcl
\s+2040:\s+[0-9a-f ]+\sld\s+r12,\[pcl,0x2fd4\]\s+;5014 <.*>
\s+2048:\s+[0-9a-f ]+\sj\.d\s+\[r12\]
\s+204c:\s+[0-9a-f ]+\smov\s+r12,pcl
