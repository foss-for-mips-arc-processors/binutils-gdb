	.cpu archs
	.text
	.global caller
	.type caller,@function
caller:
	add	r0,gp,@dat@gotoff
	add	r1,gp,@fn@gotoff
fn:
	nop
	.data
	.align 4
dat:
	.word	2
