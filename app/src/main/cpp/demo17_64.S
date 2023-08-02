	.text
	.file	"demo.cpp"
	.globl	_Z9algorithmii          // -- Begin function _Z9algorithmii
	.p2align	2
	.type	_Z9algorithmii,@function
_Z9algorithmii:                         // @_Z9algorithmii
// %bb.0:                               // %entry
	sub	sp, sp, #32             @ 申请栈空间
	str	w0, [sp, #28]           @ 将传进来的第一个参数写入到栈里面 w0 = 2
	str	w1, [sp, #24]           @ 将传进来的第二个参数写入到栈里面 w1 = 3
	str	wzr, [sp, #20]          @ 0
	ldr	w8, [sp, #28]           @ w8 = 2
	ldr	w9, [sp, #24]           @ w9 = 3
	eor	w8, w8, w9              @ w8 = 2 ^ 3
	str	w8, [sp, #28]           @ 将运算后的结果写入到地址sp+#28位置
	ldr	w8, [sp, #28]           @ w8 = 1
	ldr	w9, [sp, #24]           @ w9 = 3
	eor	w8, w8, w9              @ w8 = 1 ^ 3
	str	w8, [sp, #24]           @ 将运算后的结果写入到地址sp+#24位置
	ldr	w8, [sp, #28]           @ w8 = 1
	ldr	w9, [sp, #24]           @ w9 = 2
	eor	w8, w8, w9              @ w8 = 1 ^ 2
	str	w8, [sp, #28]           @ 将运算后的结果写入到地址sp+#28位置
	ldr	w8, [sp, #28]           @ w8 = 3
	ldr	w9, [sp, #24]           @ w9 = 2
	eor	w8, w8, w9              @ w8 = 3 ^ 2
	str	w8, [sp, #16]           @ 将运算后的结果写入到地址sp+#16位置
	ldr	w8, [sp, #28]           @ w8 = 3
	ldr	w9, [sp, #24]           @ w9 = 2
	and	w8, w8, w9              @ w8 = 3 & 2   and 且
	str	w8, [sp, #12]           @ 将运算后的结果写入到地址sp+#12置
	ldr	w8, [sp, #12]           @ w8 = 2
	lsl	w8, w8, #1              @ w8 = 2 * 2 = 4
	str	w8, [sp, #12]           @ 将运算后的结果写入到地址sp+#12置
	ldr	w8, [sp, #16]           @ w8 = 1
	ldr	w9, [sp, #12]           @ w9 = 4
	eor	w8, w8, w9              @ w8 = 1 ^ 4
	str	w8, [sp, #8]            @ 将运算后的结果写入到地址sp+#8置
	ldr	w8, [sp, #16]           @ w8 = 1
	ldr	w9, [sp, #12]           @ w9 = 4
	and	w8, w8, w9              @ w8 = 1 & 4
	str	w8, [sp, #4]            @ 将运算后的结果写入到地址sp+#4置
	ldr	w8, [sp, #4]            @ w8 = 0
	lsl	w8, w8, #1              @ w8 = 0
	str	w8, [sp, #4]            @ 将运算后的结果写入到地址sp+#4置
	ldr	w8, [sp, #4]            @ w8 = 0
	cbnz	w8, .LBB0_2         @ cbnz 目的寄存器不等于0则跳转到.LBB0_2
// %bb.1:                               // %if.then
	ldr	w8, [sp, #8]            @ w8 = 5
	mov	w9, #4543               @ w9 = 4543
	add	w8, w8, w9              @ w8 = 5 + 4543
	str	w8, [sp, #20]           @ 将运算后的结果写入到地址sp+#20位置
.LBB0_2:                                // %if.end
	ldr	w0, [sp, #20]           @ w0 = 4548
	add	sp, sp, #32             @ 释放栈空间
	ret                         @ 执行ret指令 函数结束
.Lfunc_end0:
	.size	_Z9algorithmii, .Lfunc_end0-_Z9algorithmii
                                        // -- End function
	.globl	text02                  // -- Begin function text02
	.p2align	2
	.type	text02,@function
text02:                                 // @text02
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #2      @ 第一个参数
	mov	w8, #3
	adrp	x9, num
	add	x9, x9, :lo12:num
	adrp	x10, .L.str
	add	x10, x10, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	adrp	x11, .L.str.2
	add	x11, x11, :lo12:.L.str.2
	adrp	x12, .L.str.3
	add	x12, x12, :lo12:.L.str.3
	mov	w1, w8      @ 第二个参数
	stur	w8, [x29, #-16]         // 4-byte Folded Spill
	stur	x9, [x29, #-24]         // 8-byte Folded Spill
	str	x10, [sp, #32]          // 8-byte Folded Spill
	str	x2, [sp, #24]           // 8-byte Folded Spill
	str	x11, [sp, #16]          // 8-byte Folded Spill
	str	x12, [sp, #8]           // 8-byte Folded Spill
	bl	_Z9algorithmii      @ algorithm(2,3)
	stur	w0, [x29, #-4]  @ w0 返回值
	ldur	x9, [x29, #-24] @ num        // 8-byte Folded Reload
	ldr	w8, [x9]            @ num的值
	ldur	w13, [x29, #-4] @ key
	eor	w8, w8, w13         @ eor 异或指令 W8 ^ w13
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	ldur	w13, [x29, #-4] @ key
	eor	w8, w8, w13         @ eor
	stur	w8, [x29, #-12]
	ldr	w3, [x9]
	ldur	w0, [x29, #-16]         // 4-byte Folded Reload
	ldr	x1, [sp, #32]           // 8-byte Folded Reload
	ldr	x2, [sp, #24]           // 8-byte Folded Reload
	bl	__android_log_print
	ldur	w3, [x29, #-8]
	ldur	w8, [x29, #-16]         // 4-byte Folded Reload
	mov	w0, w8
	ldr	x1, [sp, #32]           // 8-byte Folded Reload
	ldr	x2, [sp, #16]           // 8-byte Folded Reload
	bl	__android_log_print
	ldur	w3, [x29, #-12]
	ldur	w8, [x29, #-16]         // 4-byte Folded Reload
	mov	w0, w8
	ldr	x1, [sp, #32]           // 8-byte Folded Reload
	ldr	x2, [sp, #8]            // 8-byte Folded Reload
	bl	__android_log_print
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end1:
	.size	text02, .Lfunc_end1-text02
	.cfi_endproc
                                        // -- End function

	.type	num,@object             // @num
	.data
	.globl	num
	.p2align	2
num:
	.word	54321                   // 0xd431
	.size	num, 4

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ke.yijincc.com"
	.size	.L.str, 15

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"\345\212\240\345\257\206\345\211\215\357\274\232%d\n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"\345\212\240\345\257\206\345\220\216\345\200\274\357\274\232%d\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"\350\247\243\345\257\206\345\220\216\345\200\274\357\274\232%d\n"
	.size	.L.str.3, 19


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
