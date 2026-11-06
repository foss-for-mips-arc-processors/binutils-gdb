	.cpu archs
	.text
	.global v1
	.global caller
	.type caller,@function
caller:
	ld	r0,[pcl,@v1@gotpc]
	add	gp,pcl,_GLOBAL_OFFSET_TABLE_@gotpc
