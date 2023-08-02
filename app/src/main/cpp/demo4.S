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
	.globl	_Z3addiiiiisc           @ -- Begin function _Z3addiiiiisc
	.p2align	2
	.type	_Z3addiiiiisc,%function
	.code	32                      @ @_Z3addiiiiisc
_Z3addiiiiisc:
	.fnstart
@ %bb.0:                                @ %entry
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#20
	sub	sp, sp, #20
	ldr	r12, [r11, #16]
	ldr	lr, [r11, #12]
	ldr	r4, [r11, #8]
	str	r0, [r11, #-12]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	strh	lr, [sp, #2]
	strb	r12, [sp, #1]
	ldr	r0, [r11, #-12]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	ldr	r1, [sp, #4]
	add	r0, r0, r1
	ldr	r1, [r11, #8]
	add	r0, r0, r1
	ldrsh	r1, [sp, #2]
	add	r0, r0, r1
	ldrb	r1, [sp, #1]
	add	r0, r0, r1
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end0:
	.size	_Z3addiiiiisc, .Lfunc_end0-_Z3addiiiiisc
	.cantunwind
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
	.pad	#32
	sub	sp, sp, #32
	movw	r0, #0
	str	r0, [r11, #-4]
	movw	r0, #1
	movw	r1, #2
	movw	r2, #3
	movw	r3, #4
	movw	r12, #5
	str	r12, [sp]
	movw	r12, #6
	sxth	r12, r12
	str	r12, [sp, #4]
	movw	r12, #65
	and	r12, r12, #255
	str	r12, [sp, #8]
	bl	_Z3addiiiiisc
	ldr	r1, .LCPI1_0
.LPC1_0:
	add	r1, pc, r1
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-12]         @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [r11, #-12]         @ 4-byte Reload
	bl	printf
	movw	r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	.L.str-(.LPC1_0+8)
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
