	.cpu archs
	.text
	.global foo
	.type foo,@function
	.global caller
	.type caller,@function
caller:
	bl	@foo@plt
