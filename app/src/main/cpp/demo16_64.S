	.text
	.file	"demo.cpp"
	.globl	text01                  // -- Begin function text01
	.p2align	2
	.type	text01,@function
text01:                                 // @text01
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x29, x30, [sp, #-16]!   // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #96             // =96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str    @ qianyu
	mov	x9, #-1
	mov	w0, #2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	stur	w0, [x29, #-52]         // 4-byte Folded Spill
	mov	x0, x8
	stur	x9, [x29, #-64]         // 8-byte Folded Spill
	stur	x1, [x29, #-72]         // 8-byte Folded Spill
	stur	x2, [x29, #-80]         // 8-byte Folded Spill
	bl	strlen                  @ strlen 返回字符串长度
                                        // kill: def $w0 killed $w0 killed $x0
	stur	w0, [x29, #-12]
	ldur	w10, [x29, #-12]
	mov	w8, w10
	mov	x9, sp
	stur	x9, [x29, #-24]
	ldur	x9, [x29, #-64]         // 8-byte Folded Reload
	mul	x11, x8, x9
	mov	x12, sp
	add	x11, x12, x11
	and	x11, x11, #0xfffffffffffffff0
	mov	sp, x11
	stur	x8, [x29, #-32]
	ldur	w3, [x29, #-12]
	ldur	w0, [x29, #-52]         // 4-byte Folded Reload
	ldur	x1, [x29, #-72]         // 8-byte Folded Reload
	ldur	x2, [x29, #-80]         // 8-byte Folded Reload
	stur	x11, [x29, #-88]        // 8-byte Folded Spill
	bl	__android_log_print
	stur	wzr, [x29, #-36]
.LBB0_1:                                // %for.cond
                                        // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-12]
	cmp	w8, w9
	b.ge	.LBB0_4
// %bb.2:                               // %for.body
                                        //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-36]
	add	x8, x8, x9
	ldrb	w10, [x8]
	ldur	w11, [x29, #-12]
	ldur	w12, [x29, #-36]
	subs	w11, w11, w12
	subs	w11, w11, #1            // =1
	mov	w8, w11
	sxtw	x8, w8
	ldur	x9, [x29, #-88]         // 8-byte Folded Reload
	add	x8, x9, x8
	strb	w10, [x8]
// %bb.3:                               // %for.inc
                                        //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-36]
	b	.LBB0_1
.LBB0_4:                                // %for.end
	mov	w0, #2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	ldur	x3, [x29, #-88]         // 8-byte Folded Reload
	bl	__android_log_print
	ldur	x8, [x29, #-24]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16     // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	text01, .Lfunc_end0-text01
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"qianyu"
	.size	.L.str, 7

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"ke.yijincc.com"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"%d\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"\345\217\215\350\275\254\345\220\216\347\232\204\345\255\227\347\254\246\344\270\262:%s\n"
	.size	.L.str.3, 26


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
