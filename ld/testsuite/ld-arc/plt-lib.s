	.cpu archs
	.text
	.global foo
	.type foo,@function
foo:
	nop
	.global bar
	.type bar,@function
bar:
	nop
	.data
	.align 4
	.global var
	.type var,@object
	.size var,4
var:
	.word	7
