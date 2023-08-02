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
	mov	w8, #24
	mov	w9, #36
	mov	w10, #40
	mov	w11, #2
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str    @ 第二个参数 x1
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1  @ 第三个参数 x2
	stur	wzr, [x29, #-4]
	stur	w8, [x29, #-8]
	stur	w9, [x29, #-12]
	str	w10, [sp, #16]
	ldur	w3, [x29, #-8]      @ 第四个参数 w3
	ldur	w4, [x29, #-12]     @ 第五个参数 w4
	ldr	w5, [sp, #16]           @ 第六个参数 w5
	str	w0, [sp, #12]           // 4-byte Folded Spill
	mov	w0, w11                 @ 第一个参数 w0 = w11 = 2
	bl	__android_log_print
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	mov	w0, w8                  @ 函数返回值默认存储到r0寄存器
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
	.asciz	"num1: %d,num2: %d, num3: %d"
	.size	.L.str.1, 28


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits


// ARM32 R0 - R3 默认用来存储函数参数 如果函数参数个数超过4个，剩余参数通过栈来存储  函数返回值默认存储到R0
// ARM64 W0 - W7 或 X0-X7 默认用来存储函数参数 如果函数参数个数超过8个，剩余参数通过栈来存储 函数返回值默认存储到到W0或X0
