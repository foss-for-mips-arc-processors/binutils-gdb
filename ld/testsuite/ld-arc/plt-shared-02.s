	.cpu archs
	.text
	.global f1
	.type f1,@function
	.global f2
	.type f2,@function
	.global f3
	.type f3,@function
	.global caller
	.type caller,@function
caller:
	bl	@f2@plt
	bl	@f1@plt
	bl	@f3@plt
	bl	@f1@plt
