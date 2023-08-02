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
	sub	sp, sp, #80             // =80      sp = sp - 80 分配内存 申请栈空间
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill 压栈 x30就是lr寄存器 x30就是保存函数调用位置下一条指令地址
	add	x29, sp, #64            // =64  x29用来保存压栈地址
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x8, sp, #32             // =32      x8 = sp + 32
	stur	wzr, [x29, #-4]
	mov	x0, x8
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	_ZN7StudentC2Ev         @ 调用构造方法
.Ltmp0:
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	_ZN7Student6setAgeEv    @ 调用setAge函数
.Ltmp1:
	b	.LBB0_1
.LBB0_1:                                // %invoke.cont
.Ltmp2:
	add	x0, sp, #32             // =32
	bl	_ZN7Student6getAgeEv    @ 调用getAge函数
.Ltmp3:
	str	w0, [sp, #4]            // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:                                // %invoke.cont1
	ldr	w8, [sp, #4]            // 4-byte Folded Reload
	str	w8, [sp, #16]
	ldr	w3, [sp, #16]
.Ltmp4:
	mov	w0, #5
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	__android_log_print
.Ltmp5:
	b	.LBB0_3
.LBB0_3:                                // %invoke.cont2
	stur	wzr, [x29, #-4]
	add	x0, sp, #32             // =32
	bl	_ZN7StudentD2Ev         @ 析构函数
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.LBB0_4:                                // %lpad
.Ltmp6:
                                        // kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	add	x0, sp, #32             // =32
	bl	_ZN7StudentD2Ev
// %bb.5:                               // %eh.resume
	ldr	x0, [sp, #24]
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
	.uleb128 .Ltmp5-.Ltmp0          //   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0   //     jumps to .Ltmp6
	.byte	0                       //   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0   // >> Call Site 2 <<
	.uleb128 .Lfunc_end0-.Ltmp5     //   Call between .Ltmp5 and .Lfunc_end0
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
	adrp	x8, _ZTV7Student
	add	x8, x8, :lo12:_ZTV7Student
	mov	x9, #16
	add	x8, x8, x9
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end1:
	.size	_ZN7StudentC2Ev, .Lfunc_end1-_ZN7StudentC2Ev
                                        // -- End function

	.section	.text._ZN7Student6setAgeEv,"axG",@progbits,_ZN7Student6setAgeEv,comdat
	.weak	_ZN7Student6setAgeEv    // -- Begin function _ZN7Student6setAgeEv
	.p2align	2
	.type	_ZN7Student6setAgeEv,@function
_ZN7Student6setAgeEv:                   // @_ZN7Student6setAgeEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16 分配栈空间
	mov	w8, #24
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	add	sp, sp, #16             // =16 释放栈空间
	ret
.Lfunc_end2:
	.size	_ZN7Student6setAgeEv, .Lfunc_end2-_ZN7Student6setAgeEv
                                        // -- End function

	.section	.text._ZN7Student6getAgeEv,"axG",@progbits,_ZN7Student6getAgeEv,comdat
	.weak	_ZN7Student6getAgeEv    // -- Begin function _ZN7Student6getAgeEv
	.p2align	2
	.type	_ZN7Student6getAgeEv,@function
_ZN7Student6getAgeEv:                   // @_ZN7Student6getAgeEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end3:
	.size	_ZN7Student6getAgeEv, .Lfunc_end3-_ZN7Student6getAgeEv
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
.Lfunc_end4:
	.size	_ZN7StudentD2Ev, .Lfunc_end4-_ZN7StudentD2Ev
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

	.type	_ZTV7Student,@object    // @_ZTV7Student
	.section	.data.rel.ro._ZTV7Student,"aGw",@progbits,_ZTV7Student,comdat
	.weak	_ZTV7Student
	.p2align	3
_ZTV7Student:
	.xword	0
	.xword	_ZTI7Student
	.xword	_ZN7Student6setAgeEv
	.xword	_ZN7Student6getAgeEv
	.size	_ZTV7Student, 32

	.type	_ZTS7Student,@object    // @_ZTS7Student
	.section	.rodata._ZTS7Student,"aG",@progbits,_ZTS7Student,comdat
	.weak	_ZTS7Student
_ZTS7Student:
	.asciz	"7Student"
	.size	_ZTS7Student, 9

	.type	_ZTI7Student,@object    // @_ZTI7Student
	.section	.data.rel.ro._ZTI7Student,"aGw",@progbits,_ZTI7Student,comdat
	.weak	_ZTI7Student
	.p2align	3
_ZTI7Student:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTS7Student
	.size	_ZTI7Student, 16

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
