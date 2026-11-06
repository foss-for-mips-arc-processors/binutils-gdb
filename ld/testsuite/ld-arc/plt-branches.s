	.cpu archs
	.text
	.global foo
	.type foo,@function
	.global caller
	.type caller,@function
caller:
	bne	@foo@plt
	blne	@foo@plt
	b	@foo@plt
	bl	@foo@plt
	add	r0,pcl,@foo@plt
