/* Linker script that gives the ARC PLT and GOT tests a fixed layout which
   does not depend on the target's default linker script.  All addresses
   used by the expected output files of those tests were computed by hand
   from this layout and from the ARCv2 ABI.

     0x1000  dynamic linking tables (.hash .dynsym .dynstr .rela.*)
     0x2000  .plt
     0x3000  .text
     0x4000  .dynamic
     0x5000  .got (data slots), immediately followed by .got.plt
             (reserved slots and PLT slots)
     0x7000  .data
     0x8000  .bss  */
OUTPUT_ARCH(arc)
ENTRY(__start)
SECTIONS
{
  . = 0x1000;
  .hash     : { *(.hash) }
  .gnu.hash : { *(.gnu.hash) }
  .dynsym   : { *(.dynsym) }
  .dynstr   : { *(.dynstr) }
  .rela.dyn : { *(.rela.dyn) }
  .rela.plt : { *(.rela.plt) }
  . = 0x2000;
  .plt      : { *(.plt) }
  . = 0x3000;
  .text     : { *(.text .text.*) }
  . = 0x4000;
  .dynamic  : { *(.dynamic) }
  . = 0x5000;
  .got      : { *(.got) }
  .got.plt  : { *(.got.plt) }
  . = 0x7000;
  .data     : { *(.data .data.*) }
  . = 0x8000;
  .bss      : { *(.dynbss) *(.bss .bss.*) *(COMMON) }
}
