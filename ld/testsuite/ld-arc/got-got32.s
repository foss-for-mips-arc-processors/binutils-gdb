	.cpu archs
	.text
	.global caller
	.type caller,@function
caller:
	nop
	.data
	.align 4
	.global v1
	.global v2
	.reloc	., R_ARC_GOT32, v1
	.word	0
	.reloc	., R_ARC_GOT32, v2
	.word	0
	.reloc	., R_ARC_GOT32, v2+4
	.word	0
