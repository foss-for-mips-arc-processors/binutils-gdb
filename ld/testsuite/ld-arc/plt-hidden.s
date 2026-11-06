	.cpu archs
	.text
	.global caller
	.type caller,@function
caller:
	bl	@foo@plt
	.global foo
	.hidden foo
	.type foo,@function
foo:
	nop
