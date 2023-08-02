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
	push	{r11, lr}           @ 压栈 保存r11和lr寄存器的值
	.setfp	r11, sp
	mov	r11, sp                 @ r11 = sp  保存栈顶指针地址
	.pad	#48
	sub	sp, sp, #48             @ sp = sp - 48 分配栈空间
	ldr	r0, .LCPI0_0            @ r0 = .LCPI0_0 偏移地址
.LPC0_0:
	add	r0, pc, r0              @ r0 = pc + r0  pc就是基地址 r0偏移量 执行命令后的结果就是绝对地址
	mov	r1, #0                  @ r1 = 0 赋值为0
	str	r1, [r11, #-4]          @ 将r1值写入到地址为r11-4的内存中
	mov	r1, #89                 @ r1 = 89 赋值为89   int num1 = 89;
	str	r1, [r11, #-8]          @ 将r1值写入到地址为r11-8的内存中
	mov	r1, #100                @ r1 = 100 赋值为100   int num2 = 100;
	str	r1, [r11, #-12]         @ 将r1值写入到地址为r11-12的内存中
	ldr	r1, [r11, #-8]          @ 将r11-8得到的地址，取出地址里面存放的数据给r1
	ldr	r2, [r11, #-12]         @ 将r11-12得到的地址，取出地址里面存放的数据给r2
	add	r1, r1, r2              @ r1 = r1 + r2
	ldr	r2, .LCPI0_1            @ r2 = .LCPI0_1 偏移地址
.LPC0_1:
	add	r2, pc, r2              @ r2 = pc + r2  pc就是基地址 r2偏移量 执行命令后的结果就是绝对地址
	str	r0, [r11, #-16]         @ 4-byte Spill 保存r0寄存器的值 存储到地址为r11-16内存里面
	mov	r0, r2                  @ r0 = r2
	str	r2, [r11, #-20]         @ 4-byte Spill 保存r2寄存器的值 存储到地址为r11-20内存里面
	bl	printf                  @ bl 调用函数指令 call 这里就是调用printf函数
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	sub	r1, r1, r2
	ldr	r2, [r11, #-20]         @ 4-byte Reload
	str	r0, [sp, #24]           @ 4-byte Spill 保存printf函数返回值
	mov	r0, r2
	bl	printf
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	mul	r1, r1, r2
	ldr	r2, [r11, #-20]         @ 4-byte Reload
	str	r0, [sp, #20]           @ 4-byte Spill 保存printf函数返回值
	mov	r0, r2
	bl	printf
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	__aeabi_idiv
	ldr	r1, [r11, #-20]         @ 4-byte Reload
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-12]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	__aeabi_idivmod
	ldr	r2, [r11, #-16]         @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r2
	bl	printf
	movw	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.LCPI0_1:
	.long	.L.str-(.LPC0_1+8)
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
