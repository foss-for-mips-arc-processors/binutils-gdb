	.cpu archs
	.text
	.global v1
	.global v2
	.global caller
	.type caller,@function
caller:
	ld	r0,[pcl,@v1@gotpc]
	ld	r1,[pcl,@v2@gotpc]
	ld	r2,[pcl,@v1@gotpc]
