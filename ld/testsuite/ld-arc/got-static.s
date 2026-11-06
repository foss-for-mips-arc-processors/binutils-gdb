	.cpu archs
	.text
	.global __start
	.type __start,@function
__start:
	ld	r0,[pcl,@var@gotpc]
	.data
	.align 4
	.global var
var:
	.word	7
