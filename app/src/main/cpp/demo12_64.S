	.text
	.file	"demo.cpp"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #0
	mov	w8, #65
	mov	w9, #18
	mov	w10, #3
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str    @ 第二个参数
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1  @ 第三个参数
	add	x11, sp, #16            // =16
	stur	wzr, [x29, #-4]
	strh	w8, [sp, #16]
	str	w9, [sp, #20]
	strh	w8, [x11, #8]
	ldrh	w3, [sp, #16]       @ 第四个参数
	ldr	w4, [sp, #20]           @ 第五个参数
	ldrh	w5, [sp, #24]       @ 第六个参数
	str	w0, [sp, #12]           // 4-byte Folded Spill
	mov	w0, w10                 @ 第一个参数
	bl	__android_log_print
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	mov	w0, w8
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ke.yijincc.com"
	.size	.L.str, 15

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"name: %d, age: %d, sex: %d"
	.size	.L.str.1, 27


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
