	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"demo.cpp"
	.globl	_Z13uuid_checksumPci    @ -- Begin function _Z13uuid_checksumPci
	.p2align	2
	.type	_Z13uuid_checksumPci,%function
	.code	32                      @ @_Z13uuid_checksumPci
_Z13uuid_checksumPci:
	.fnstart
@ %bb.0:                                @ %entry
	.pad	#36
	sub	sp, sp, #36
	ldr	r2, .LCPI0_0
.LPC0_0:
	add	r2, pc, r2
	str	r0, [sp, #32]
	str	r1, [sp, #28]
	str	r2, [sp, #24]
	ldr	r0, [sp, #32]
	ldrb	r0, [r0, #24]
	ldr	r1, [sp, #32]
	strb	r0, [r1, #23]
	movw	r0, #255
	strb	r0, [sp, #23]
	movw	r0, #0
	str	r0, [sp, #16]
	str	r0, [sp, #12]
.LBB0_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #28]
	sub	r1, r1, #2
	cmp	r0, r1
	bge	.LBB0_30
@ %bb.2:                                @ %for.body
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #8
	beq	.LBB0_9
@ %bb.3:                                @ %lor.lhs.false
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_1
.LPC0_1:
	add	r0, pc, r0
	ldr	r1, .LCPI0_2
.LPC0_2:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_31
.LBB0_4:                                @ %originalBB
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_3
.LPC0_3:
	add	r0, pc, r0
	ldr	r1, .LCPI0_4
.LPC0_4:
	add	r1, pc, r1
	ldr	r2, [sp, #12]
	cmp	r2, #13
	movw	r2, #0
	moveq	r2, #1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r3, r1, #1
	mul	r1, r1, r3
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB0_31
@ %bb.5:                                @ %originalBBpart2
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	tst	r0, #1
	bne	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                @ %lor.lhs.false4
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #14
	beq	.LBB0_9
@ %bb.7:                                @ %lor.lhs.false6
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #18
	beq	.LBB0_9
@ %bb.8:                                @ %lor.lhs.false8
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #24
	bne	.LBB0_24
.LBB0_9:                                @ %if.then
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #8
	beq	.LBB0_15
@ %bb.10:                               @ %lor.lhs.false11
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_9
.LPC0_9:
	add	r0, pc, r0
	ldr	r1, .LCPI0_10
.LPC0_10:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_32
.LBB0_11:                               @ %originalBB36
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_11
.LPC0_11:
	add	r0, pc, r0
	ldr	r1, .LCPI0_12
.LPC0_12:
	add	r1, pc, r1
	ldr	r2, [sp, #12]
	cmp	r2, #13
	movw	r2, #0
	moveq	r2, #1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r3, r1, #1
	mul	r1, r1, r3
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB0_32
@ %bb.12:                               @ %originalBBpart238
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	bne	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               @ %lor.lhs.false13
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #18
	beq	.LBB0_15
@ %bb.14:                               @ %lor.lhs.false15
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #24
	bne	.LBB0_16
.LBB0_15:                               @ %if.then17
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	movw	r1, #45
	strb	r1, [r0]
	b	.LBB0_23
.LBB0_16:                               @ %if.else
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #14
	bne	.LBB0_20
@ %bb.17:                               @ %if.then20
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_13
.LPC0_13:
	add	r0, pc, r0
	ldr	r1, .LCPI0_14
.LPC0_14:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_33
.LBB0_18:                               @ %originalBB40
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_15
.LPC0_15:
	add	r0, pc, r0
	ldr	r1, .LCPI0_16
.LPC0_16:
	add	r1, pc, r1
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	movw	r3, #52
	strb	r3, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_33
@ %bb.19:                               @ %originalBBpart242
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_20:                               @ %if.end
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_17
.LPC0_17:
	add	r0, pc, r0
	ldr	r1, .LCPI0_18
.LPC0_18:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_34
.LBB0_21:                               @ %originalBB44
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_19
.LPC0_19:
	add	r0, pc, r0
	ldr	r1, .LCPI0_20
.LPC0_20:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_34
@ %bb.22:                               @ %originalBBpart246
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_23
.LBB0_23:                               @ %if.end22
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_27
.LBB0_24:                               @ %if.end23
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_5
.LPC0_5:
	add	r0, pc, r0
	ldr	r1, .LCPI0_6
.LPC0_6:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_35
.LBB0_25:                               @ %originalBB48
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_7
.LPC0_7:
	add	r0, pc, r0
	ldr	r1, .LCPI0_8
.LPC0_8:
	add	r1, pc, r1
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	ldrb	r2, [r2]
	strb	r2, [sp, #11]
	ldrb	r2, [sp, #23]
	ldrb	r3, [sp, #11]
	eor	r2, r2, r3
	strb	r2, [sp, #23]
	ldr	r2, [sp, #16]
	ldrb	r3, [sp, #11]
	add	r2, r2, r3
	str	r2, [sp, #16]
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_35
@ %bb.26:                               @ %originalBBpart260
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_27
.LBB0_27:                               @ %for.inc
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_21
.LPC0_21:
	add	r0, pc, r0
	ldr	r1, .LCPI0_22
.LPC0_22:
	add	r1, pc, r1
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_36
.LBB0_28:                               @ %originalBB62
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_23
.LPC0_23:
	add	r0, pc, r0
	ldr	r1, .LCPI0_24
.LPC0_24:
	add	r1, pc, r1
	ldr	r2, [sp, #12]
	add	r2, r2, #1
	str	r2, [sp, #12]
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	r2, r1, #1
	mul	r1, r1, r2
	and	r1, r1, #1
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	cmp	r0, #10
	movw	r0, #0
	movlt	r0, #1
	orr	r0, r1, r0
	tst	r0, #1
	beq	.LBB0_36
@ %bb.29:                               @ %originalBBpart275
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_30:                               @ %for.end
	ldrb	r0, [sp, #23]
	and	r0, r0, #15
	strb	r0, [sp, #23]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #16]
	mvn	r2, #15
	and	r1, r1, r2
	sub	r0, r0, r1
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	ldrb	r1, [sp, #23]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #32]
	strb	r0, [r1, #35]
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #16]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #32]
	strb	r0, [r1, #34]
	add	sp, sp, #36
	bx	lr
.LBB0_31:                               @ %originalBBalteredBB
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_4
.LBB0_32:                               @ %originalBB36alteredBB
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_33:                               @ %originalBB40alteredBB
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	movw	r1, #52
	strb	r1, [r0]
	b	.LBB0_18
.LBB0_34:                               @ %originalBB44alteredBB
                                        @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_21
.LBB0_35:                               @ %originalBB48alteredBB
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	ldrb	r0, [r0]
	strb	r0, [sp, #11]
	ldrb	r0, [sp, #23]
	ldrb	r1, [sp, #11]
	eor	r0, r0, r1
	strb	r0, [sp, #23]
	ldr	r0, [sp, #16]
	ldrb	r1, [sp, #11]
	add	r0, r0, r1
	str	r0, [sp, #16]
	b	.LBB0_25
.LBB0_36:                               @ %originalBB62alteredBB
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB0_28
	.p2align	2
@ %bb.37:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.LCPI0_1:
	.long	y-(.LPC0_1+8)
.LCPI0_2:
	.long	x-(.LPC0_2+8)
.LCPI0_3:
	.long	y-(.LPC0_3+8)
.LCPI0_4:
	.long	x-(.LPC0_4+8)
.LCPI0_5:
	.long	y-(.LPC0_5+8)
.LCPI0_6:
	.long	x-(.LPC0_6+8)
.LCPI0_7:
	.long	y-(.LPC0_7+8)
.LCPI0_8:
	.long	x-(.LPC0_8+8)
.LCPI0_9:
	.long	y-(.LPC0_9+8)
.LCPI0_10:
	.long	x-(.LPC0_10+8)
.LCPI0_11:
	.long	y-(.LPC0_11+8)
.LCPI0_12:
	.long	x-(.LPC0_12+8)
.LCPI0_13:
	.long	y-(.LPC0_13+8)
.LCPI0_14:
	.long	x-(.LPC0_14+8)
.LCPI0_15:
	.long	y-(.LPC0_15+8)
.LCPI0_16:
	.long	x-(.LPC0_16+8)
.LCPI0_17:
	.long	y-(.LPC0_17+8)
.LCPI0_18:
	.long	x-(.LPC0_18+8)
.LCPI0_19:
	.long	y-(.LPC0_19+8)
.LCPI0_20:
	.long	x-(.LPC0_20+8)
.LCPI0_21:
	.long	y-(.LPC0_21+8)
.LCPI0_22:
	.long	x-(.LPC0_22+8)
.LCPI0_23:
	.long	y-(.LPC0_23+8)
.LCPI0_24:
	.long	x-(.LPC0_24+8)
.Lfunc_end0:
	.size	_Z13uuid_checksumPci, .Lfunc_end0-_Z13uuid_checksumPci
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	text04                  @ -- Begin function text04
	.p2align	2
	.type	text04,%function
	.code	32                      @ @text04
text04:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	ldr	r0, .LCPI1_2
.LPC1_2:
	add	r0, pc, r0
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	bl	strlen
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	strdup
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	bl	_Z13uuid_checksumPci
	ldr	r0, .LCPI1_0
.LPC1_0:
	add	r1, pc, r0
	ldr	r0, .LCPI1_1
.LPC1_1:
	add	r2, pc, r0
	ldr	r3, [sp, #4]
	movw	r0, #3
	bl	__android_log_print
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	.L.str.4-(.LPC1_0+8)
.LCPI1_1:
	.long	.L.str.5-(.LPC1_1+8)
.LCPI1_2:
	.long	.L.str.3-(.LPC1_2+8)
.Lfunc_end1:
	.size	text04, .Lfunc_end1-text04
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"c7jkYUTAfPQ7LXIUF8GJAmybsnnEJ8OhtK6r"
	.size	.L.str.3, 37

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"yijincc"
	.size	.L.str.4, 8

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"i\357\274\232%s"
	.size	.L.str.5, 7

	.type	x,%object               @ @x
	.comm	x,4,4
	.type	y,%object               @ @y
	.comm	y,4,4

	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
