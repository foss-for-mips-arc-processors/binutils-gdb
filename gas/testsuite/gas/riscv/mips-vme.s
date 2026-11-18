	.attribute arch, "rv64imafdcv"
	# xmipsvme
	.option push
	.option arch, +xmipsvme

	csrr x1,mips.mtype
	csrw mips.mtype,x2

	mips.vopuu.avv m0,v8,v0
	mips.vopuu.avv m0,v8,v16
	mips.vopuu.avv m0,v24,v16
	mips.vopuu.avv m4,v24,v16

	mips.vopus.avv m0,v8,v0
	mips.vopus.avv m0,v8,v16
	mips.vopus.avv m0,v24,v16
	mips.vopus.avv m4,v24,v16

	mips.vopsu.avv m0,v8,v0
	mips.vopsu.avv m0,v8,v16
	mips.vopsu.avv m0,v24,v16
	mips.vopsu.avv m4,v24,v16

	mips.vopss.avv m0,v8,v0
	mips.vopss.avv m0,v8,v16
	mips.vopss.avv m0,v24,v16
	mips.vopss.avv m4,v24,v16

	mips.vopuuh.avv m0,v8,v0
	mips.vopuuh.avv m0,v8,v16
	mips.vopuuh.avv m0,v24,v16
	mips.vopuuh.avv m4,v24,v16

	mips.vopush.avv m0,v8,v0
	mips.vopush.avv m0,v8,v16
	mips.vopush.avv m0,v24,v16
	mips.vopush.avv m4,v24,v16

	mips.vopsuh.avv m0,v8,v0
	mips.vopsuh.avv m0,v8,v16
	mips.vopsuh.avv m0,v24,v16
	mips.vopsuh.avv m4,v24,v16

	mips.vopssh.avv m0,v8,v0
	mips.vopssh.avv m0,v8,v16
	mips.vopssh.avv m0,v24,v16
	mips.vopssh.avv m4,v24,v16

	mips.vmacuu.avx m0,v8,x0
	mips.vmacuu.avx m0,v8,x16
	mips.vmacuu.avx m0,v24,x16
	mips.vmacuu.avx m4,v24,x16

	mips.vmacus.avx m0,v8,x0
	mips.vmacus.avx m0,v8,x16
	mips.vmacus.avx m0,v24,x16
	mips.vmacus.avx m4,v24,x16

	mips.vmacsu.avx m0,v8,x0
	mips.vmacsu.avx m0,v8,x16
	mips.vmacsu.avx m0,v24,x16
	mips.vmacsu.avx m4,v24,x16

	mips.vmacss.avx m0,v8,x0
	mips.vmacss.avx m0,v8,x16
	mips.vmacss.avx m0,v24,x16
	mips.vmacss.avx m4,v24,x16

	mips.vmacuuh.avx m0,v8,x0
	mips.vmacuuh.avx m0,v8,x16
	mips.vmacuuh.avx m0,v24,x16
	mips.vmacuuh.avx m4,v24,x16

	mips.vmacush.avx m0,v8,x0
	mips.vmacush.avx m0,v8,x16
	mips.vmacush.avx m0,v24,x16
	mips.vmacush.avx m4,v24,x16

	mips.vmacsuh.avx m0,v8,x0
	mips.vmacsuh.avx m0,v8,x16
	mips.vmacsuh.avx m0,v24,x16
	mips.vmacsuh.avx m4,v24,x16

	mips.vmacssh.avx m0,v8,x0
	mips.vmacssh.avx m0,v8,x16
	mips.vmacssh.avx m0,v24,x16
	mips.vmacssh.avx m4,v24,x16

	mips.vfcvt.v.a v19,x20
	mips.vfcvt.v.a v20,x20
	mips.vfcvt.v.a v20,x21

	mips.vnsra.v.a v19,x20,x21
	mips.vnsra.v.a v20,x20,x21
	mips.vnsra.v.a v20,x21,x21
	mips.vnsra.v.a v20,x21,x22

	mips.vmv.v.a v18,x19
	mips.vmv.v.a v18,x20
	mips.vmv.v.a v19,x20

	mips.vmv.a.v x15,v16
	mips.vmv.a.v x15,v17
	mips.vmv.a.v x16,v17

	mips.azero.a m0
	mips.azero.a m4
	mips.azero.a m8
	mips.azero.a m12

	mips.adiscard

	mips.msetmtype x5,x4
	mips.msetmtype x4,x5
	mips.msetmtype x6,x5
	mips.msetmtype x5,x6

	mips.msetnl x5,x6,0
	mips.msetnl x5,x6,1
	mips.msetnl x5,x6,2
	mips.msetnl x5,x6,3

	mips.msetml x7,x8,0
	mips.msetml x9,x10,1
	mips.msetml x11,x12,2
	mips.msetml x13,x14,3

	mips.msetkl x7,x8
	mips.msetkl x9,x10
	mips.msetkl x11,x12
	mips.msetkl x13,x14

	.option pop
