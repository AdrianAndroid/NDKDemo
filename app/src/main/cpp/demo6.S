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
	.globl	main                    @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}       @ push
	.setfp	r11, sp
	mov	r11, sp             @ mov
	.pad	#40
	sub	sp, sp, #40         @ sub
	movw	r0, #0          @ movw
	str	r0, [r11, #-4]      @ str 将寄存器值写入到内存
	movw	r1, #1          @ movw
	str	r1, [r11, #-8]      @ str
	movw	r1, #20         @ movw
	str	r1, [r11, #-12]     @ str
	movw	r1, #30         @ movw
	str	r1, [r11, #-16]     @ str
	str	r0, [sp, #20]       @ str
	ldr	r0, [r11, #-8]      @ ldr 读取内存数据到寄存器
	str	r0, [sp, #16]       @ str    @ 4-byte Spill
@ %bb.1:                                @ %NodeBlock12
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #3
	blt	.LBB0_4
@ %bb.2:                                @ %NodeBlock10
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #4
	blt	.LBB0_8
@ %bb.3:                                @ %LeafBlock8
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #4
	beq	.LBB0_9
	b	.LBB0_10
.LBB0_4:                                @ %NodeBlock
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #2
	bge	.LBB0_7
@ %bb.5:                                @ %LeafBlock
	ldr	r0, [sp, #16]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB0_10
@ %bb.6:                                @ %sw.bb
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	add	r0, r0, r1
	str	r0, [sp, #20]
	b	.LBB0_11
.LBB0_7:                                @ %sw.bb1
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	sub	r0, r0, r1
	str	r0, [sp, #20]
	b	.LBB0_11
.LBB0_8:                                @ %sw.bb2
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	mul	r0, r0, r1
	str	r0, [sp, #20]
.LBB0_9:                                @ %sw.bb3
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	bl	__aeabi_idiv
	str	r0, [sp, #20]
	b	.LBB0_11
.LBB0_10:                               @ %NewDefault
	b	.LBB0_11
.LBB0_11:                               @ %sw.epilog
	ldr	r0, [sp, #20]
	cmp	r0, #0
	movw	r0, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	beq	.LBB0_13
@ %bb.12:                               @ %land.rhs
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp, #12]           @ 4-byte Spill
.LBB0_13:                               @ %land.end
	ldr	r0, [sp, #12]           @ 4-byte Reload
	and	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r0, #0
	movw	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	bne	.LBB0_15
@ %bb.14:                               @ %lor.rhs
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB0_15:                               @ %lor.end
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc, r1
	and	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	printf
	movw	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.16:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"sum: "
	.size	.L.str, 6


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
