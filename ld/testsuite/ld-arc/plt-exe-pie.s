	.cpu archs
	.text
	.global __start
	.type __start,@function
__start:
	bl	@foo@plt
	ld	r0,[pcl,@var@gotpc]
