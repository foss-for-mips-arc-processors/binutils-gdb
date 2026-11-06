	.cpu archs
	.text
	.global caller
	.type caller,@function
caller:
	ld	r0,[pcl,@hid@gotpc]
	.data
	.align 4
	.word	1
	.global hid
	.hidden hid
hid:
	.word	2
