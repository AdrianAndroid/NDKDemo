	.text
	.file	"demo.cpp"
	.globl	_Z5orderPii             // -- Begin function _Z5orderPii
	.p2align	2
	.type	_Z5orderPii,@function
_Z5orderPii:                            // @_Z5orderPii
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x0, [x29, #-8]      @ int类型数组
	stur	w1, [x29, #-12]     @ 数组长度
	str	wzr, [sp, #16]          @ 0
	str	x8, [sp]                @ 将x8写入到栈顶
.LBB0_1:                                // %for.cond
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1              // =1
	cmp	w8, w9
	b.ge	.LBB0_10
// %bb.2:                               // %for.body
                                        //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
.LBB0_3:                                // %for.cond1
                                        //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1              // =1
	ldr	w10, [sp, #16]
	subs	w9, w9, w10
	cmp	w8, w9
	b.ge	.LBB0_8
// %bb.4:                               // %for.body5
                                        //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	mov	x10, #4
	mul	x9, x10, x9
	add	x8, x8, x9
	ldr	w11, [x8]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	mul	x9, x10, x9
	add	x8, x8, x9
	ldr	w12, [x8, #4]
	cmp	w11, w12
	b.le	.LBB0_6
// %bb.5:                               // %if.then
                                        //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	mov	x10, #4
	mul	x9, x10, x9
	add	x8, x8, x9
	ldr	w11, [x8]
	str	w11, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	mul	x9, x10, x9
	add	x8, x8, x9
	ldr	w11, [x8, #4]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	mul	x9, x10, x9
	add	x8, x8, x9
	str	w11, [x8]
	ldr	w11, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	mul	x9, x10, x9
	add	x8, x8, x9
	str	w11, [x8, #4]
.LBB0_6:                                // %if.end
                                        //   in Loop: Header=BB0_3 Depth=2
// %bb.7:                               // %for.inc
                                        //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1              // =1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_8:                                // %for.end
                                        //   in Loop: Header=BB0_1 Depth=1
// %bb.9:                               // %for.inc20
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1              // =1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_10:                               // %for.end22
	mov	w0, #4
	ldr	x1, [sp]                // 8-byte Folded Reload
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	__android_log_print
	str	wzr, [sp, #16]
.LBB0_11:                               // %for.cond23
                                        // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	cmp	w8, w9
	b.ge	.LBB0_16
// %bb.12:                              // %for.body25
                                        //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #16]
	mov	w9, #5
	sdiv	w10, w8, w9
	mul	w9, w10, w9
	subs	w8, w8, w9
	cbnz	w8, .LBB0_14
// %bb.13:                              // %if.then27
                                        //   in Loop: Header=BB0_11 Depth=1
	mov	w0, #4
	ldr	x1, [sp]                // 8-byte Folded Reload
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	__android_log_print
.LBB0_14:                               // %if.end29
                                        //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	mov	x10, #4
	mul	x9, x10, x9
	add	x8, x8, x9
	ldr	w3, [x8]
	mov	w0, #4
	ldr	x1, [sp]                // 8-byte Folded Reload
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	__android_log_print
// %bb.15:                              // %for.inc33
                                        //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1              // =1
	str	w8, [sp, #16]
	b	.LBB0_11
.LBB0_16:                               // %for.end35
	mov	w0, #4
	ldr	x1, [sp]                // 8-byte Folded Reload
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	__android_log_print
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end0:
	.size	_Z5orderPii, .Lfunc_end0-_Z5orderPii
	.cfi_endproc
                                        // -- End function
	.globl	text03                  // -- Begin function text03
	.p2align	2
	.type	text03,@function
text03:                                 // @text03
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #10
	adrp	x1, .L__const.text03.sum
	add	x1, x1, :lo12:.L__const.text03.sum  @ 第二个参数 数据
	mov	x2, #40         @ 第三个参数 长度
	add	x9, sp, #20             // =20
	stur	w8, [x29, #-4]
	mov	x0, x9          @ 第一个参数 地址
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	memcpy          @ 拷贝数据
	ldur	w1, [x29, #-4] @ 第二个参数
	ldr	x0, [sp, #8]       @ 第一个参数
	bl	_Z5orderPii        @ 冒泡排序
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end1:
	.size	text03, .Lfunc_end1-text03
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ke.yijincc.com"
	.size	.L.str, 15

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"\346\216\222\345\272\217\345\220\216\347\232\204\346\225\260\347\273\204\344\270\272:"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"%4d"
	.size	.L.str.3, 4

	.type	.L__const.text03.sum,@object // @__const.text03.sum
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.text03.sum:
	.word	1                       // 0x1
	.word	3                       // 0x3
	.word	8                       // 0x8
	.word	2                       // 0x2
	.word	4                       // 0x4
	.word	9                       // 0x9
	.word	0                       // 0x0
	.word	5                       // 0x5
	.word	7                       // 0x7
	.word	6                       // 0x6
	.size	.L__const.text03.sum, 40


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
