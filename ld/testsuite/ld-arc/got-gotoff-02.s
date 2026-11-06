	.cpu archs
	.text
	.global v1
	.global caller
	.type caller,@function
caller:
	ld	r0,[pcl,@v1@gotpc]
	add	r1,gp,@dat@gotoff
	add	r2,gp,@fn@gotoff
fn:
	nop
	.data
	.align 4
dat:
	.word	2
