	.text
	.file	"demo.cpp"
	.globl	_Z13uuid_checksumPci    // -- Begin function _Z13uuid_checksumPci
	.p2align	2
	.type	_Z13uuid_checksumPci,@function
_Z13uuid_checksumPci:                   // @_Z13uuid_checksumPci
// %bb.0:                               // %entry
	sub	sp, sp, #80             // =80
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	mov	w9, #255
	adrp	x10, x
	add	x10, x10, :lo12:x
	adrp	x11, y
	add	x11, x11, :lo12:y
	str	x0, [sp, #72]
	str	w1, [sp, #68]
	str	x8, [sp, #56]
	ldr	x8, [sp, #72]
	ldrb	w12, [x8, #24]
	ldr	x8, [sp, #72]
	strb	w12, [x8, #23]
	strb	w9, [sp, #55]
	str	wzr, [sp, #48]
	str	wzr, [sp, #44]
	str	x10, [sp, #32]          // 8-byte Folded Spill
	str	x11, [sp, #24]          // 8-byte Folded Spill
.LBB0_1:                                // %for.cond
                                        // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #68]
	subs	w9, w9, #2              // =2
	cmp	w8, w9
	b.ge	.LBB0_28
// %bb.2:                               // %for.body
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #8                  // =8
	b.eq	.LBB0_11
// %bb.3:                               // %lor.lhs.false
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_4
	b	.LBB0_29
.LBB0_4:                                // %originalBB
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #32]           // 8-byte Folded Reload
	ldr	w10, [x9]
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	ldr	w12, [x11]
	subs	w13, w10, #1            // =1
	mul	w10, w10, w13
	mov	w13, #2
	udiv	w14, w10, w13
	mul	w13, w14, w13
	subs	w10, w10, w13
	cmp	w10, #0                 // =0
	cset	w10, eq
	cmp	w12, #10                // =10
	cset	w12, lt
	orr	w10, w10, w12
	str	w8, [sp, #20]           // 4-byte Folded Spill
	tbnz	w10, #0, .LBB0_5
	b	.LBB0_29
.LBB0_5:                                // %originalBBpart2
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]           // 4-byte Folded Reload
	cmp	w8, #13                 // =13
	b.eq	.LBB0_11
// %bb.6:                               // %lor.lhs.false4
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #14                 // =14
	b.eq	.LBB0_11
// %bb.7:                               // %lor.lhs.false6
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_8
	b	.LBB0_30
.LBB0_8:                                // %originalBB40
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #32]           // 8-byte Folded Reload
	ldr	w10, [x9]
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	ldr	w12, [x11]
	subs	w13, w10, #1            // =1
	mul	w10, w10, w13
	mov	w13, #2
	udiv	w14, w10, w13
	mul	w13, w14, w13
	subs	w10, w10, w13
	cmp	w10, #0                 // =0
	cset	w10, eq
	cmp	w12, #10                // =10
	cset	w12, lt
	orr	w10, w10, w12
	str	w8, [sp, #16]           // 4-byte Folded Spill
	tbnz	w10, #0, .LBB0_9
	b	.LBB0_30
.LBB0_9:                                // %originalBBpart242
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]           // 4-byte Folded Reload
	cmp	w8, #18                 // =18
	b.eq	.LBB0_11
// %bb.10:                              // %lor.lhs.false8
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #24                 // =24
	b.ne	.LBB0_26
.LBB0_11:                               // %if.then
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #8                  // =8
	b.eq	.LBB0_15
// %bb.12:                              // %lor.lhs.false11
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #13                 // =13
	b.eq	.LBB0_15
// %bb.13:                              // %lor.lhs.false13
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #18                 // =18
	b.eq	.LBB0_15
// %bb.14:                              // %lor.lhs.false15
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	cmp	w8, #24                 // =24
	b.ne	.LBB0_16
.LBB0_15:                               // %if.then17
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9
	mov	w10, #45
	strb	w10, [x8]
	b	.LBB0_23
.LBB0_16:                               // %if.else
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_17
	b	.LBB0_31
.LBB0_17:                               // %originalBB44
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #32]           // 8-byte Folded Reload
	ldr	w10, [x9]
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	ldr	w12, [x11]
	subs	w13, w10, #1            // =1
	mul	w10, w10, w13
	mov	w13, #2
	udiv	w14, w10, w13
	mul	w13, w14, w13
	subs	w10, w10, w13
	cmp	w10, #0                 // =0
	cset	w10, eq
	cmp	w12, #10                // =10
	cset	w12, lt
	orr	w10, w10, w12
	str	w8, [sp, #12]           // 4-byte Folded Spill
	tbnz	w10, #0, .LBB0_18
	b	.LBB0_31
.LBB0_18:                               // %originalBBpart246
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	cmp	w8, #14                 // =14
	b.ne	.LBB0_20
// %bb.19:                              // %if.then20
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9
	mov	w10, #52
	strb	w10, [x8]
.LBB0_20:                               // %if.end
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_21
	b	.LBB0_32
.LBB0_21:                               // %originalBB48
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_22
	b	.LBB0_32
.LBB0_22:                               // %originalBBpart250
                                        //   in Loop: Header=BB0_1 Depth=1
.LBB0_23:                               // %if.end23
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_24
	b	.LBB0_33
.LBB0_24:                               // %originalBB52
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	ldr	w11, [x10]
	subs	w12, w9, #1             // =1
	mul	w9, w9, w12
	mov	w12, #2
	udiv	w13, w9, w12
	mul	w12, w13, w12
	subs	w9, w9, w12
	cmp	w9, #0                  // =0
	cset	w9, eq
	cmp	w11, #10                // =10
	cset	w11, lt
	orr	w9, w9, w11
	tbnz	w9, #0, .LBB0_25
	b	.LBB0_33
.LBB0_25:                               // %originalBBpart254
                                        //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_27
.LBB0_26:                               // %if.end24
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9
	ldrb	w10, [x8]
	strb	w10, [sp, #43]
	ldrb	w10, [sp, #55]
	ldrb	w11, [sp, #43]
	eor	w10, w10, w11
	strb	w10, [sp, #55]
	ldr	w10, [sp, #48]
	ldrb	w11, [sp, #43]
	add	w10, w10, w11
	str	w10, [sp, #48]
.LBB0_27:                               // %for.inc
                                        //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1              // =1
	str	w8, [sp, #44]
	b	.LBB0_1
.LBB0_28:                               // %for.end
	ldrb	w8, [sp, #55]
	mov	w9, #15
	and	w8, w8, w9
	strb	w8, [sp, #55]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #48]
	mov	w10, #-16
	and	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #48]
	ldr	x11, [sp, #56]
	ldrb	w8, [sp, #55]
	mov	w12, w8
	add	x11, x11, x12
	ldrb	w8, [x11]
	ldr	x11, [sp, #72]
	strb	w8, [x11, #35]
	ldr	x11, [sp, #56]
	ldr	w8, [sp, #48]
	mov	w12, w8
	add	x11, x11, x12
	ldrb	w8, [x11]
	ldr	x11, [sp, #72]
	strb	w8, [x11, #34]
	add	sp, sp, #80             // =80
	ret
.LBB0_29:                               // %originalBBalteredBB
                                        //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_4
.LBB0_30:                               // %originalBB40alteredBB
                                        //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_31:                               // %originalBB44alteredBB
                                        //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_17
.LBB0_32:                               // %originalBB48alteredBB
                                        //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_21
.LBB0_33:                               // %originalBB52alteredBB
                                        //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_24
.Lfunc_end0:
	.size	_Z13uuid_checksumPci, .Lfunc_end0-_Z13uuid_checksumPci
                                        // -- End function
	.globl	text04                  // -- Begin function text04
	.p2align	2
	.type	text04,@function
text04:                                 // @text04
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	mov	w0, #3
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	stur	x8, [x29, #-8]      @ 写入x29+#-8
	ldur	x8, [x29, #-8]      @ c7jkYUTAfPQ7LXIUF8GJAmybsnnEJ8OhtK6r
	str	w0, [sp, #20]           @ 写入sp+#20
	mov	x0, x8                  @ 第一个参数 c7jkYUTAfPQ7LXIUF8GJAmybsnnEJ8OhtK6r
	str	x1, [sp, #8]            @ 写入sp+8
	str	x2, [sp]                @ 写入sp
	bl	strlen                  @ strlen
                                        // kill: def $w0 killed $w0 killed $x0
	stur	w0, [x29, #-12]     @ 写入x29+#-12 存储strlen函数返回值
	ldur	x0, [x29, #-8]      @ 第一个参数 c7jkYUTAfPQ7LXIUF8GJAmybsnnEJ8OhtK6r
	bl	strdup                  @ strdup
	str	x0, [sp, #24]           @ 写入sp+#24  存储strdup函数返回值
	ldr	x0, [sp, #24]           @ 第一个参数 字符串
	ldur	w1, [x29, #-12]     @ 第二个参数 字符串长度
	bl	_Z13uuid_checksumPci    @ _Z13uuid_checksumPci
	ldr	x3, [sp, #24]           @ 第四个参数 ?
	ldr	w0, [sp, #20]           @ 第一个参数 3
	ldr	x1, [sp, #8]            @ 第二个参数 yijincc
	ldr	x2, [sp]                @ 第三个参数 i\357\274\232%s
	bl	__android_log_print     @ 调用打印日志信息函数
	ldp	x29, x30, [sp, #48]     @ 出栈
	add	sp, sp, #64             @ 释放栈空间
	ret
.Lfunc_end1:
	.size	text04, .Lfunc_end1-text04
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"c7jkYUTAfPQ7LXIUF8GJAmybsnnEJ8OhtK6r"
	.size	.L.str.3, 37

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"yijincc"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        // @.str.5
.L.str.5:
	.asciz	"i\357\274\232%s"
	.size	.L.str.5, 7

	.type	x,@object               // @x
	.comm	x,4,4
	.type	y,@object               // @y
	.comm	y,4,4

	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
