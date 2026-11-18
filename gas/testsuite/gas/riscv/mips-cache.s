	.attribute arch, "rv64imafdcv"
	# xmipscache
	.option push
	.option arch, +xmipscache

	mips.dld	x1,x2
	mips.dld	x1,x3
	mips.dld	x2,x3

	mips.dsd	x4,x5
	mips.dsd	x4,x6
	mips.dsd	x5,x6

	mips.iii.l1	x6
	mips.iii.l1	x7

	mips.iii.l2	x7
	mips.iii.l2	x8

	mips.iii.all	x8
	mips.iii.all	x9

	mips.ipfl.l1	x9
	mips.ipfl.l1	x10

	mips.ihu.l1	x10
	mips.ihu.l1	x11

	mips.ipfl.l2	x11
	mips.ipfl.l2	x12

	mips.hi.all	x12
	mips.hi.all	x13

	mips.dpfl.l1	x13
	mips.dpfl.l1	x14

	mips.dpfl.l2	x14
	mips.dpfl.l2	x15

	mips.dhu.l1	x15
	mips.dhu.l1	x16

	mips.dii.l1	x16
	mips.dii.l1	x17

	mips.dii.l2	x17
	mips.dii.l2	x18

	mips.dii.all	x18
	mips.dii.all	x19

	mips.diwi.all	x19
	mips.diwi.all	x20

	mips.diw.all	x20
	mips.diw.all	x21

	mips.ipf.l1	x21
	mips.ipf.l1	x22

	mips.ipf.l2	x22
	mips.ipf.l2	x23

	mips.ihi.l1	x23
	mips.ihi.l1	x24

	mips.dpf.l1	x24
	mips.dpf.l1	x25

	mips.dpf.l2	x25
	mips.dpf.l2	x26

	mips.dpfw.l1	x26
	mips.dpfw.l1	x27

	mips.dpfw.l2	x27
	mips.dpfw.l2	x28

	mips.dpfz.l1	x28
	mips.dpfz.l1	x29

	mips.dpfz.l2	x29
	mips.dpfz.l2	x30

	mips.dhi.all	x30
	mips.dhi.all	x31

	mips.dhi.l1	x31
	mips.dhi.l1	x0

	mips.dhwi.all	x0
	mips.dhwi.all	x1

	mips.dhwi.l1	x1
	mips.dhwi.l1	x2

	mips.dhw.all	x2
	mips.dhw.all	x3

	mips.dhw.l1	x3
	mips.dhw.l1	x4

	.option pop
