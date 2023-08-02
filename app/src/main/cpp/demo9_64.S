	.text               @ .text表示代码段 可执行区域
	.file	"demo.cpp"  @ 源文件
	.globl	main                    // -- Begin function main
	.p2align	2       @ 对齐方式 2字节
	.type	main,@function  @ main 是一个函数
main:                                   // @main
	.cfi_startproc              @ .表示注释或伪指令 辅助理解汇编指令
// %bb.0:                               // %entry
	sub	sp, sp, #32             @ 分配内存空间 sp = sp - 32
	stp	x29, x30, [sp, #16]     @ stp 压栈 写 将x29、x30等寄存器值压入栈
	add	x29, sp, #16            @ x29寄存器保存压入数据后的栈位置
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #0                  @ 赋值指令 w0 = 0 w表示的是64位寄存器中的低32位
	mov	w8, #24                 @ 赋值指令 w8 = 24
	mov	w9, #36                 @ 赋值指令 w9 = 36
	mov	w10, #2                 @ 赋值指令 w10 = 2
	adrp	x1, .L.str          @ adrp x表示是64位寄存器
	add	x1, x1, :lo12:.L.str    @ 第二个参数 x1 = x1 + :lo12:.L.str
	adrp	x2, .L.str.1        @ adrp
	add	x2, x2, :lo12:.L.str.1  @ 第三个参数 x2 = x2 + :lo12:.L.str.1
	stur	wzr, [x29, #-4]
	str	w8, [sp, #8]            @ str 写
	str	w9, [sp, #4]
	ldr	w8, [sp, #8]            @ ldr 读
	ldr	w9, [sp, #4]
	add	w3, w8, w9              @ 第四个参数 w3 = w8 + w9 = 24 + 36
	str	w0, [sp]                @ str 写 将w0值写入到sp地址里面
	mov	w0, w10                 @ 第一个参数 w0 = w10 w0值由0变成2
	bl	__android_log_print     @ call 调用子程序 有参数时需要提前准备参数
	ldr	w8, [sp]                @ ldr 读 取出sp地址里面存放的数据给w8
	mov	w0, w8                  @ 赋值指令 w0 = w8
	ldp	x29, x30, [sp, #16]     @ ldp 出栈 读
	add	sp, sp, #32             @ 释放栈空间 sp = sp +32
	ret                         @ ret 函数结束位置
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1    @ 字符串数据统一放到.rodata区域
.L.str:
	.asciz	"ke.yijincc.com"
	.size	.L.str, 15

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"add: %d"
	.size	.L.str.1, 8


	.ident	"clang version 9.0.1 "      @ 编译器版本信息
	.section	".note.GNU-stack","",@progbits  @ 编译器相关的
