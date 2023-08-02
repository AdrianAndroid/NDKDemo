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
	.pad	#16
	sub	sp, sp, #16         @ sub
	movw	r0, #0          @ movw
	str	r0, [r11, #-4]      @ str
	movw	r0, #10         @ movw
	str	r0, [sp, #8]        @ str
	ldr	r0, [sp, #8]        @ ldr
	cmp	r0, #15             @ cmp是比较指令，不会改变寄存器值 但是会影响状态寄存器值 cpsr r0 = 10
	blt	.LBB0_2             @ b是跳转指令 lt条件 满足条件则跳转.LBB0_2
@ %bb.1:                                @ %if.then
	add	r0, r0, #5
    ldr	r0, [sp, #8]
	str	r0, [sp, #8]
	b	.LBB0_3             @ b 无条件跳转指令
.LBB0_2:                                @ %if.else
	ldr	r0, [sp, #8]        @ ldr 读取内存里面数据
	sub	r0, r0, #5          @ sub 减法操作 r0 = r0 -5 = 10 -5 = 5
	str	r0, [sp, #8]        @ str 将寄存器值写入内存
.LBB0_3:                                @ %if.end
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	ldr	r1, [sp, #8]
	bl	printf
	movw	r1, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.4:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"num: %d"
	.size	.L.str, 8


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
