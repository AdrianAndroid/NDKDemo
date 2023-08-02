	.text
	.file	"demo.cpp"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 156, DW.ref.__gxx_personality_v0
	.cfi_lsda 28, .Lexception0
// %bb.0:                               // %entry
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #20
	adrp	x9, :got:_ZN7Student3ageE
	ldr	x9, [x9, :got_lo12:_ZN7Student3ageE]
	mov	w0, #6
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	sub	x10, x29, #16           // =16
	stur	wzr, [x29, #-4]
	str	w0, [sp, #32]           // 4-byte Folded Spill
	mov	x0, x10
	str	w8, [sp, #28]           // 4-byte Folded Spill
	str	x9, [sp, #16]           // 8-byte Folded Spill
	str	x1, [sp, #8]            // 8-byte Folded Spill
	str	x2, [sp]                // 8-byte Folded Spill
	bl	_ZN7StudentC2Ev
	ldr	w8, [sp, #28]           // 4-byte Folded Reload
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	str	w8, [x9]
	ldr	w3, [x9]
.Ltmp0:
	ldr	w0, [sp, #32]           // 4-byte Folded Reload
	ldr	x1, [sp, #8]            // 8-byte Folded Reload
	ldr	x2, [sp]                // 8-byte Folded Reload
	bl	__android_log_print
.Ltmp1:
	b	.LBB0_1
.LBB0_1:                                // %invoke.cont
	ldur	x3, [x29, #-16]
.Ltmp2:
	mov	w0, #6
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	__android_log_print
.Ltmp3:
	b	.LBB0_2
.LBB0_2:                                // %invoke.cont1
	stur	wzr, [x29, #-4]
	sub	x0, x29, #16            // =16
	bl	_ZN7StudentD2Ev
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.LBB0_3:                                // %lpad
.Ltmp4:
                                        // kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-24]
	stur	w1, [x29, #-28]
	sub	x0, x29, #16            // =16
	bl	_ZN7StudentD2Ev
// %bb.4:                               // %eh.resume
	ldur	x0, [x29, #-24]
	bl	_Unwind_Resume
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     // @LPStart Encoding = omit
	.byte	255                     // @TType Encoding = omit
	.byte	1                       // Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0   // >> Call Site 1 <<
	.uleb128 .Ltmp3-.Ltmp0          //   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0   //     jumps to .Ltmp4
	.byte	0                       //   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   // >> Call Site 2 <<
	.uleb128 .Lfunc_end0-.Ltmp3     //   Call between .Ltmp3 and .Lfunc_end0
	.byte	0                       //     has no landing pad
	.byte	0                       //   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        // -- End function
	.section	.text._ZN7StudentC2Ev,"axG",@progbits,_ZN7StudentC2Ev,comdat
	.weak	_ZN7StudentC2Ev         // -- Begin function _ZN7StudentC2Ev
	.p2align	2
	.type	_ZN7StudentC2Ev,@function
_ZN7StudentC2Ev:                        // @_ZN7StudentC2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end1:
	.size	_ZN7StudentC2Ev, .Lfunc_end1-_ZN7StudentC2Ev
                                        // -- End function
	.section	.text._ZN7StudentD2Ev,"axG",@progbits,_ZN7StudentD2Ev,comdat
	.weak	_ZN7StudentD2Ev         // -- Begin function _ZN7StudentD2Ev
	.p2align	2
	.type	_ZN7StudentD2Ev,@function
_ZN7StudentD2Ev:                        // @_ZN7StudentD2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end2:
	.size	_ZN7StudentD2Ev, .Lfunc_end2-_ZN7StudentD2Ev
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ke.yijincc.com"
	.size	.L.str, 15

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"age: %d"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"sex: %s"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"hello"
	.size	.L.str.3, 6

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0

	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
