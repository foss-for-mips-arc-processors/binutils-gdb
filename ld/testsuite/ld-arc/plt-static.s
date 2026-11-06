	.cpu archs
	.text
	.global __start
	.type __start,@function
__start:
	bl	@foo@plt
	.global foo
	.type foo,@function
foo:
	nop
