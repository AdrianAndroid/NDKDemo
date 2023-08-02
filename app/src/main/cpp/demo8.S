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
	.globl	_Z4Textv                @ -- Begin function _Z4Textv
	.p2align	2
	.type	_Z4Textv,%function
	.code	32                      @ @_Z4Textv
_Z4Textv:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	movw	r0, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	str	r0, [sp, #4]
.LBB0_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #8
	bge	.LBB0_4
@ %bb.2:                                @ %for.body
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	str	r0, [sp]
@ %bb.3:                                @ %for.inc
                                        @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_4:                                @ %for.end
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	ldr	r1, [sp]
	bl	printf
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.5:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.Lfunc_end0:
	.size	_Z4Textv, .Lfunc_end0-_Z4Textv
	.fnend
                                        @ -- End function
	.globl	main                    @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	movw	r0, #0
	str	r0, [sp, #4]
	bl	_Z4Textv
	movw	r0, #0
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"sum: %d"
	.size	.L.str, 8


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
