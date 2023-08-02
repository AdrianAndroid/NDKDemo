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
	push	{r11, lr}       @ 压栈
	.setfp	r11, sp
	mov	r11, sp             @ 赋值
	.pad	#16
	sub	sp, sp, #16         @ 减法运算
	ldr	r0, .LCPI0_0        @ .LCPI0_0表示地址 查找对应字符串 偏移量指向TAG "ke.yijincc.com" 静态分析
.LPC0_0:
	add	r1, pc, r0          @ 加法运算 基于pc寻址 pc基地址 pc+r0 得到就是一个绝对地址 指向 "ke.yijincc.com"
	ldr	r0, .LCPI0_1        @ .LCPI0_1 "add: %d"
.LPC0_1:
	add	r2, pc, r0          @ 加法运算
	movw	r0, #0
	str	r0, [r11, #-4]
	movw	r0, #24
	str	r0, [sp, #8]
	movw	r0, #36
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r3, [sp, #4]
	add	r3, r0, r3
	movw	r0, #2
	bl	__android_log_print
	movw	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}           @ 当执行这条指令时 会将lr寄存器值赋值给pc寄存器 使其能跳转回回去
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.LCPI0_1:
	.long	.L.str.1-(.LPC0_1+8)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"ke.yijincc.com"
	.size	.L.str, 15

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"add: %d"
	.size	.L.str.1, 8


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
