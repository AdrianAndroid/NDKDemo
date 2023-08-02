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
	push	{r11, lr}   @ r11和lr寄存器压入栈
	.setfp	r11, sp
	mov	r11, sp         @sp 栈顶指针 指向栈顶 将sp值保存到r11 r11 = sp
	.pad	#16
	sub	sp, sp, #16     @ sub 减法指令 sp = sp -16  分配栈空间
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0      @ add 加法指令 r0 = pc + r0  r0作为地址，里面存放的就是%d
	movw	r1, #0      @ r1 = 0
	str	r1, [r11, #-4]  @ r11-4得到地址，然后将r1写入到这个地址
	movw	r1, #10     @ r1 = 10    int a = 10;
	str	r1, [sp, #8]    @ sp+8得到地址，然后将r1写入到这个地址
	ldr	r1, [sp, #8]    @ sp+8得到地址，将地址里面存放数据取出来给r1  int b = a;
	str	r1, [sp, #4]    @ sp+4得到地址，然后将r1写入到这个地址
	ldr	r1, [sp, #4]    @ sp+4得到地址，将地址里面的数据取出来给r1，r1作为printf函数第二参数
	bl	printf          @ printf("%d",b); r0存储的是printf函数第一个参数
	movw	r1, #0      @ r1 = 0
	str	r0, [sp]        @ 4-byte Spill r0寄存器存储的是printf函数的返回值 将r0值写入到sp地址里面
	mov	r0, r1          @ r0 = r1  return 0; 函数执行完后默认将返回值保存到r0
	mov	sp, r11         @ sp = r11 释放栈空间 维护堆栈平衡
	pop	{r11, pc}       @ 出栈 r11 = sp pc = sp + 4 = lr
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
