	.cpu archs
	.text
	.global foo
	.type foo,@function
	.global v1
	.global __start
	.type __start,@function
__start:
	bl	@foo@plt
	ld	r0,[pcl,@v1@gotpc]
