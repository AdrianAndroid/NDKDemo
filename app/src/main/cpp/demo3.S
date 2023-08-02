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
	.globl	_Z3addii                @ -- Begin function _Z3addii
	.p2align	2
	.type	_Z3addii,%function
	.code	32                      @ @_Z3addii
_Z3addii:               @ add函数
	.fnstart
@ %bb.0:                                @ %entry
	.pad	#8
	sub	sp, sp, #8      @ sp = sp - 8 分配栈空间
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1      @ add 加法指令 后面两个操作数相加，放到最左边寄存器里面 r0 = r0 + r1
	add	sp, sp, #8      @ sp = sp + 8 释放栈空间
	bx	lr              @ b是跳转指令 x状态寄存器cpsr lr寄存器存储的是当前函数调用位置的下一条指令
.Lfunc_end0:
	.size	_Z3addii, .Lfunc_end0-_Z3addii
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
	push	{r11, lr}       @ push 表示压栈意思 将花括号里面的寄存器的值存储到栈里面 压栈顺序从右向左边
	.setfp	r11, sp
	mov	r11, sp             @ mov 是赋值指令 将右边的值赋值给左边 r11 = sp 将sp值保存到r11寄存器里面
	.pad	#16
	sub	sp, sp, #16         @ sub 是减法指令 将后面两个参数进行减法运算，然后将结果给到最左边寄存器 sp = sp -16 分配栈空间
	movw	r0, #0          @ movw 是赋值指令 将右边的值赋值给左边 r0 = 0
	str	r0, [r11, #-4]      @ str指令含义就是写入数据，将寄存器里面的数据写入内存，也是就是栈里面 r11是一个地址，叫做基地址 在次基础上做加减操作 (r11-4)得到一个地址，将r0值存储到这个地址里面 中括号里面存放是一个地址，中括号里面都是做加法操作
	movw	r0, #50         @ movw 是赋值指令 将右边的值赋值给左边 r0 = 50
	str	r0, [sp, #8]        @ sp是基地址，在次基础上做加减操作 (sp+8)得到一个地址，将r0值存储到这个地址里面
	movw	r0, #100        @ movw 是赋值指令 将右边的值赋值给左边 r0 = 100
	str	r0, [sp, #4]        @ sp是基地址，在次基础上做加减操作 (sp+4)得到一个地址，将r0值存储到这个地址里面
	ldr	r0, [sp, #8]        @ ldr含义就是读取内存里面的数据，存放到对应的寄存器 r0就是num1
	ldr	r1, [sp, #4]        @ r1就是num2
	                        @ 当我们调用函数时，默认会使用r0-r3四个寄存器来存储对应的参数 一个函数参数大于四个，剩余参数通过栈来存储, 返回值默认存储在r0
	bl	_Z3addii            @ b跳转指令 l指的是lr寄存器 lr会存储当前调用位置的下一条指令地址 带链接跳转指令 add(num1,num2);
	movw	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}       @ pop 表示出栈意思 将栈里面的数据依次弹出到对应寄存器  出栈顺序是从左到右 pc用来控制程序执行流程
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cantunwind
	.fnend
                                        @ -- End function

	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",%progbits
