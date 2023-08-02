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
	sub	sp, sp, #96             // =96  申请栈空间
	stp	x29, x30, [sp, #80]     // 16-byte Folded Spill 压栈
	add	x29, sp, #80            // =80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str    @ 字符串 x1
	add	x8, sp, #40             // =40      x8 = sp + 40
	stur	wzr, [x29, #-4]     @ 写入内存
	mov	x0, x8                  @ x0 = x8
	str	x1, [sp, #16]           // 8-byte Folded Spill 写入内存
	str	x8, [sp, #8]            // 8-byte Folded Spill 写入内存
	bl	_ZN4StudC2Ev            @ bl 调用子程序
.Ltmp0:
	ldr	x0, [sp, #8]            // 8-byte Folded Reload 读取内存
	ldr	x1, [sp, #16]           // 8-byte Folded Reload 读取内存
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc @ stud.name
.Ltmp1:
	b	.LBB0_1                 @ 无条件跳转
.LBB0_1:                                // %invoke.cont
	add	x8, sp, #40             // =40      x8 = sp + 40
	mov	w9, #18                 @ w9 = 18
	str	w9, [sp, #64]           @ 写入内存
	mov	w9, #65                 @ w9 = 65
	strh	w9, [x8, #28]       @ 写入内存
	mov	x0, x8                  @ x0 = x8
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv @ .c_str()
	ldr	w4, [sp, #64]           @ 读取内存  第五个参数
	ldrh	w5, [sp, #68]       @ 读取内存  第六个参数
.Ltmp2:
	mov	w9, #3                  @ w9 = 3
	str	x0, [sp]                // 8-byte Folded Spill  写入内存
	mov	w0, w9                  @ w0 = w9 = 3 第一个参数
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1  @ x1 第二个参数
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2  @ x2 第三个参数
	ldr	x3, [sp]                // 8-byte Folded Reload 第四个参数
	bl	__android_log_print
.Ltmp3:
	b	.LBB0_2
.LBB0_2:                                // %invoke.cont5
	stur	wzr, [x29, #-4]     @ 写入内存
	add	x0, sp, #40             // =40      x0 = sp + 40
	bl	_ZN4StudD2Ev            @ bl 调用子程序
	ldur	w0, [x29, #-4]      @ 读取内存数据到w0
	ldp	x29, x30, [sp, #80]     // 16-byte Folded Reload 出栈
	add	sp, sp, #96             // =96 释放栈内存
	ret                         @ 函数执行到这里就结束了
.LBB0_3:                                // %lpad
.Ltmp4:
                                        // kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #32]
	str	w1, [sp, #28]
	add	x0, sp, #40             // =40
	bl	_ZN4StudD2Ev
// %bb.4:                               // %eh.resume
	ldr	x0, [sp, #32]
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
	.section	.text._ZN4StudC2Ev,"axG",@progbits,_ZN4StudC2Ev,comdat
	.weak	_ZN4StudC2Ev            // -- Begin function _ZN4StudC2Ev
	.p2align	2
	.type	_ZN4StudC2Ev,@function
_ZN4StudC2Ev:                           // @_ZN4StudC2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end1:
	.size	_ZN4StudC2Ev, .Lfunc_end1-_ZN4StudC2Ev
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end2:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc, .Lfunc_end2-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end3:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv, .Lfunc_end3-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv
                                        // -- End function
	.section	.text._ZN4StudD2Ev,"axG",@progbits,_ZN4StudD2Ev,comdat
	.weak	_ZN4StudD2Ev            // -- Begin function _ZN4StudD2Ev
	.p2align	2
	.type	_ZN4StudD2Ev,@function
_ZN4StudD2Ev:                           // @_ZN4StudD2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end4:
	.size	_ZN4StudD2Ev, .Lfunc_end4-_ZN4StudD2Ev
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 156, DW.ref.__gxx_personality_v0
	.cfi_lsda 28, .Lexception1
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
.Ltmp5:
	mov	x0, x8
	str	x8, [sp]                // 8-byte Folded Spill
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
.Ltmp6:
	b	.LBB5_1
.LBB5_1:                                // %invoke.cont
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.LBB5_2:                                // %terminate.lpad
.Ltmp7:
	bl	__clang_call_terminate
.Lfunc_end5:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev, .Lfunc_end5-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception1:
	.byte	255                     // @LPStart Encoding = omit
	.byte	156                     // @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       // Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp5-.Lfunc_begin1   // >> Call Site 1 <<
	.uleb128 .Ltmp6-.Ltmp5          //   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1   //     jumps to .Ltmp7
	.byte	1                       //   On action: 1
.Lcst_end1:
	.byte	1                       // >> Action Record 1 <<
                                        //   Catch TypeInfo 1
	.byte	0                       //   No further actions
	.p2align	2
                                        // >> Catch TypeInfos <<
	.xword	0                       // TypeInfo 1
.Lttbase0:
	.p2align	2
                                        // -- End function
	.section	.text._ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv,"axG",@progbits,_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv,comdat
	.weak	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv // -- Begin function _ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
	.p2align	2
	.type	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv,@function
_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv: // @_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                // 8-byte Folded Spill
	bl	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end6:
	.size	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv, .Lfunc_end6-_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
	.cfi_endproc
                                        // -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  // -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	2
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 // @__clang_call_terminate
// %bb.0:
	str	x30, [sp, #-16]!        // 8-byte Folded Spill
	bl	__cxa_begin_catch
	bl	_ZSt9terminatev
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
.LBB8_1:                                // %for.cond
                                        // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	cmp	w8, #3                  // =3
	b.hs	.LBB8_4
// %bb.2:                               // %for.body
                                        //   in Loop: Header=BB8_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #12]
	mov	w10, w9
	mov	x11, #8
	mul	x10, x11, x10
	add	x8, x8, x10
	str	xzr, [x8]
// %bb.3:                               // %for.inc
                                        //   in Loop: Header=BB8_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1              // =1
	str	w8, [sp, #12]
	b	.LBB8_1
.LBB8_4:                                // %for.end
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end8:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, .Lfunc_end8-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv
                                        // -- End function
	.section	.text._ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev,"axG",@progbits,_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev,comdat
	.hidden	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev // -- Begin function _ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	.weak	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	.p2align	2
	.type	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev,@function
_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev: // @_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	str	x30, [sp, #16]          // 8-byte Folded Spill
	mov	x2, #24
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #0
	bl	memset
	ldr	x30, [sp, #16]          // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end9:
	.size	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev, .Lfunc_end9-_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
                                        // -- End function
	.section	.text._ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev,"axG",@progbits,_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev,comdat
	.hidden	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev // -- Begin function _ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	.weak	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	.p2align	2
	.type	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev,@function
_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev: // @_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk19allocatorIcEC2Ev
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end10:
	.size	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev, .Lfunc_end10-_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
                                        // -- End function
	.section	.text._ZNSt6__ndk19allocatorIcEC2Ev,"axG",@progbits,_ZNSt6__ndk19allocatorIcEC2Ev,comdat
	.hidden	_ZNSt6__ndk19allocatorIcEC2Ev // -- Begin function _ZNSt6__ndk19allocatorIcEC2Ev
	.weak	_ZNSt6__ndk19allocatorIcEC2Ev
	.p2align	2
	.type	_ZNSt6__ndk19allocatorIcEC2Ev,@function
_ZNSt6__ndk19allocatorIcEC2Ev:          // @_ZNSt6__ndk19allocatorIcEC2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end11:
	.size	_ZNSt6__ndk19allocatorIcEC2Ev, .Lfunc_end11-_ZNSt6__ndk19allocatorIcEC2Ev
                                        // -- End function
	.section	.text._ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv,"axG",@progbits,_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv,comdat
	.hidden	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv // -- Begin function _ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.weak	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.p2align	2
	.type	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv,@function
_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: // @_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end12:
	.size	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv, .Lfunc_end12-_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
                                        // -- End function
	.section	.text._ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv,"axG",@progbits,_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv,comdat
	.hidden	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv // -- Begin function _ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.weak	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.p2align	2
	.type	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv,@function
_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: // @_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end13:
	.size	_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, .Lfunc_end13-_ZNSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev,comdat
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
// %bb.0:                               // %entry
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	stur	x8, [x29, #-16]         // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, .LBB14_1
	b	.LBB14_2
.LBB14_1:                               // %if.then
	ldur	x0, [x29, #-16]         // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	str	x0, [sp, #24]           // 8-byte Folded Spill
	mov	x0, x8
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	str	x0, [sp, #16]           // 8-byte Folded Spill
	mov	x0, x8
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
	ldr	x1, [sp, #24]           // 8-byte Folded Reload
	str	x0, [sp, #8]            // 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #16]           // 8-byte Folded Reload
	ldr	x2, [sp, #8]            // 8-byte Folded Reload
	bl	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
.LBB14_2:                               // %if.end
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end14:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, .Lfunc_end14-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldrb	w8, [x0]
	mov	w9, w8
	tst	x9, #0x1
	cset	w8, ne
	mov	w10, #1
	and	w8, w8, w10
	mov	w0, w8
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end15:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, .Lfunc_end15-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
                                        // -- End function
	.section	.text._ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm,"axG",@progbits,_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm,comdat
	.hidden	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm // -- Begin function _ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
	.weak	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
	.p2align	2
	.type	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm,@function
_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm: // @_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	_ZNSt6__ndk19allocatorIcE10deallocateEPcm
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end16:
	.size	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm, .Lfunc_end16-_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end17:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, .Lfunc_end17-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x0, [x0, #16]
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end18:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, .Lfunc_end18-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	mov	x8, #-2
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x8, [sp]                // 8-byte Folded Spill
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x8, [x0]
	ldr	x9, [sp]                // 8-byte Folded Reload
	and	x0, x8, x9
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end19:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, .Lfunc_end19-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv,"axG",@progbits,_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv,comdat
	.hidden	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv // -- Begin function _ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.weak	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.p2align	2
	.type	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv,@function
_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: // @_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end20:
	.size	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv, .Lfunc_end20-_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv,"axG",@progbits,_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv,comdat
	.hidden	_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv // -- Begin function _ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.weak	_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.p2align	2
	.type	_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv,@function
_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: // @_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end21:
	.size	_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, .Lfunc_end21-_ZNKSt6__ndk122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
                                        // -- End function
	.section	.text._ZNSt6__ndk19allocatorIcE10deallocateEPcm,"axG",@progbits,_ZNSt6__ndk19allocatorIcE10deallocateEPcm,comdat
	.hidden	_ZNSt6__ndk19allocatorIcE10deallocateEPcm // -- Begin function _ZNSt6__ndk19allocatorIcE10deallocateEPcm
	.weak	_ZNSt6__ndk19allocatorIcE10deallocateEPcm
	.p2align	2
	.type	_ZNSt6__ndk19allocatorIcE10deallocateEPcm,@function
_ZNSt6__ndk19allocatorIcE10deallocateEPcm: // @_ZNSt6__ndk19allocatorIcE10deallocateEPcm
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 156, DW.ref.__gxx_personality_v0
	.cfi_lsda 28, .Lexception2
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, #1
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x9, [sp, #8]
	mul	x1, x9, x8
.Ltmp11:
	mov	x2, x8
	bl	_ZNSt6__ndk119__libcpp_deallocateEPvmm
.Ltmp12:
	b	.LBB22_1
.LBB22_1:                               // %invoke.cont
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.LBB22_2:                               // %terminate.lpad
.Ltmp13:
	bl	__clang_call_terminate
.Lfunc_end22:
	.size	_ZNSt6__ndk19allocatorIcE10deallocateEPcm, .Lfunc_end22-_ZNSt6__ndk19allocatorIcE10deallocateEPcm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table22:
.Lexception2:
	.byte	255                     // @LPStart Encoding = omit
	.byte	156                     // @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                       // Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp11-.Lfunc_begin2  // >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp11        //   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin2  //     jumps to .Ltmp13
	.byte	1                       //   On action: 1
.Lcst_end2:
	.byte	1                       // >> Action Record 1 <<
                                        //   Catch TypeInfo 1
	.byte	0                       //   No further actions
	.p2align	2
                                        // >> Catch TypeInfos <<
	.xword	0                       // TypeInfo 1
.Lttbase1:
	.p2align	2
                                        // -- End function
	.section	.text._ZNSt6__ndk119__libcpp_deallocateEPvmm,"axG",@progbits,_ZNSt6__ndk119__libcpp_deallocateEPvmm,comdat
	.hidden	_ZNSt6__ndk119__libcpp_deallocateEPvmm // -- Begin function _ZNSt6__ndk119__libcpp_deallocateEPvmm
	.weak	_ZNSt6__ndk119__libcpp_deallocateEPvmm
	.p2align	2
	.type	_ZNSt6__ndk119__libcpp_deallocateEPvmm,@function
_ZNSt6__ndk119__libcpp_deallocateEPvmm: // @_ZNSt6__ndk119__libcpp_deallocateEPvmm
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end23:
	.size	_ZNSt6__ndk119__libcpp_deallocateEPvmm, .Lfunc_end23-_ZNSt6__ndk119__libcpp_deallocateEPvmm
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm,"axG",@progbits,_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm,comdat
	.hidden	_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm // -- Begin function _ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm
	.weak	_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm
	.p2align	2
	.type	_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm,@function
_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm: // @_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end24:
	.size	_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm, .Lfunc_end24-_ZNSt6__ndk117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm,"axG",@progbits,_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm,comdat
	.weak	_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm // -- Begin function _ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm
	.p2align	2
	.type	_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm,@function
_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm: // @_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk117_DeallocateCaller9__do_callEPv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end25:
	.size	_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm, .Lfunc_end25-_ZNSt6__ndk117_DeallocateCaller27__do_deallocate_handle_sizeEPvm
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk117_DeallocateCaller9__do_callEPv,"axG",@progbits,_ZNSt6__ndk117_DeallocateCaller9__do_callEPv,comdat
	.weak	_ZNSt6__ndk117_DeallocateCaller9__do_callEPv // -- Begin function _ZNSt6__ndk117_DeallocateCaller9__do_callEPv
	.p2align	2
	.type	_ZNSt6__ndk117_DeallocateCaller9__do_callEPv,@function
_ZNSt6__ndk117_DeallocateCaller9__do_callEPv: // @_ZNSt6__ndk117_DeallocateCaller9__do_callEPv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZdlPv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end26:
	.size	_ZNSt6__ndk117_DeallocateCaller9__do_callEPv, .Lfunc_end26-_ZNSt6__ndk117_DeallocateCaller9__do_callEPv
                                        // -- End function
	.section	.text._ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv,"axG",@progbits,_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv,comdat
	.hidden	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv // -- Begin function _ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
	.weak	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
	.p2align	2
	.type	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv,@function
_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv: // @_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end27:
	.size	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv, .Lfunc_end27-_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
                                        // -- End function
	.section	.text._ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv,"axG",@progbits,_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv,comdat
	.hidden	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv // -- Begin function _ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
	.weak	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
	.p2align	2
	.type	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv,@function
_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv: // @_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end28:
	.size	_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv, .Lfunc_end28-_ZNSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc,comdat
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x0, [sp, #24]           // 8-byte Folded Spill
	mov	x0, x8
	str	x1, [sp, #16]           // 8-byte Folded Spill
	bl	_ZNSt6__ndk111char_traitsIcE6lengthEPKc
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	str	x0, [sp, #8]            // 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]           // 8-byte Folded Reload
	ldr	x2, [sp, #8]            // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end29:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc, .Lfunc_end29-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm,comdat
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp]                // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	cmp	x8, x9
	b.lo	.LBB30_2
// %bb.1:                               // %if.then
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	bl	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	add	x1, sp, #23             // =23
	mov	w10, #0
	strb	w10, [sp, #23]
	mov	x0, x8
	bl	_ZNSt6__ndk111char_traitsIcE6assignERcRKc
	ldur	x1, [x29, #-24]
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm
	ldur	x1, [x29, #-24]
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm
	b	.LBB30_3
.LBB30_2:                               // %if.else
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	str	x0, [sp, #8]
	ldr	x1, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x2, x8, x9
	ldr	x3, [sp, #8]
	ldr	x5, [sp, #8]
	ldur	x6, [x29, #-24]
	ldur	x7, [x29, #-16]
	ldr	x0, [sp]                // 8-byte Folded Reload
	mov	x4, #0
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc
.LBB30_3:                               // %if.end
	ldr	x0, [sp]                // 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end30:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm, .Lfunc_end30-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk111char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt6__ndk111char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt6__ndk111char_traitsIcE6lengthEPKc // -- Begin function _ZNSt6__ndk111char_traitsIcE6lengthEPKc
	.p2align	2
	.type	_ZNSt6__ndk111char_traitsIcE6lengthEPKc,@function
_ZNSt6__ndk111char_traitsIcE6lengthEPKc: // @_ZNSt6__ndk111char_traitsIcE6lengthEPKc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	strlen
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end31:
	.size	_ZNSt6__ndk111char_traitsIcE6lengthEPKc, .Lfunc_end31-_ZNSt6__ndk111char_traitsIcE6lengthEPKc
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #16]           // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, .LBB32_1
	b	.LBB32_2
.LBB32_1:                               // %cond.true
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
	b	.LBB32_3
.LBB32_2:                               // %cond.false
	mov	x8, #23
	str	x8, [sp, #8]            // 8-byte Folded Spill
.LBB32_3:                               // %cond.end
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	subs	x0, x8, #1              // =1
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end32:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv, .Lfunc_end32-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv
                                        // -- End function
	.section	.text._ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_,"axG",@progbits,_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_,comdat
	.hidden	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_ // -- Begin function _ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	.weak	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	.p2align	2
	.type	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_,@function
_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_: // @_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end33:
	.size	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_, .Lfunc_end33-_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #16]           // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, .LBB34_1
	b	.LBB34_2
.LBB34_1:                               // %cond.true
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
	b	.LBB34_3
.LBB34_2:                               // %cond.false
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
.LBB34_3:                               // %cond.end
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end34:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, .Lfunc_end34-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
                                        // -- End function
	.section	.text._ZNSt6__ndk111char_traitsIcE4moveEPcPKcm,"axG",@progbits,_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm,comdat
	.weak	_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm // -- Begin function _ZNSt6__ndk111char_traitsIcE4moveEPcPKcm
	.p2align	2
	.type	_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm,@function
_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm: // @_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm
// %bb.0:                               // %entry
	sub	sp, sp, #64             // =64
	str	x30, [sp, #48]          // 8-byte Folded Spill
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB35_2
// %bb.1:                               // %cond.true
	ldr	x8, [sp, #40]
	str	x8, [sp, #16]           // 8-byte Folded Spill
	b	.LBB35_3
.LBB35_2:                               // %cond.false
	ldr	x8, [sp, #40]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	mov	x0, x8
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	memmove
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	str	x8, [sp, #16]           // 8-byte Folded Spill
.LBB35_3:                               // %cond.end
	ldr	x8, [sp, #16]           // 8-byte Folded Reload
	mov	x0, x8
	ldr	x30, [sp, #48]          // 8-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end35:
	.size	_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm, .Lfunc_end35-_ZNSt6__ndk111char_traitsIcE4moveEPcPKcm
                                        // -- End function
	.section	.text._ZNSt6__ndk111char_traitsIcE6assignERcRKc,"axG",@progbits,_ZNSt6__ndk111char_traitsIcE6assignERcRKc,comdat
	.weak	_ZNSt6__ndk111char_traitsIcE6assignERcRKc // -- Begin function _ZNSt6__ndk111char_traitsIcE6assignERcRKc
	.p2align	2
	.type	_ZNSt6__ndk111char_traitsIcE6assignERcRKc,@function
_ZNSt6__ndk111char_traitsIcE6assignERcRKc: // @_ZNSt6__ndk111char_traitsIcE6assignERcRKc
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldrb	w9, [x8]
	ldr	x8, [sp, #8]
	strb	w9, [x8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end36:
	.size	_ZNSt6__ndk111char_traitsIcE6assignERcRKc, .Lfunc_end36-_ZNSt6__ndk111char_traitsIcE6assignERcRKc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, .LBB37_1
	b	.LBB37_2
.LBB37_1:                               // %if.then
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
	b	.LBB37_3
.LBB37_2:                               // %if.else
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
.LBB37_3:                               // %if.end
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end37:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm, .Lfunc_end37-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeEm
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end38:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm, .Lfunc_end38-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE27__invalidate_iterators_pastEm
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #16]           // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, .LBB39_1
	b	.LBB39_2
.LBB39_1:                               // %cond.true
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
	b	.LBB39_3
.LBB39_2:                               // %cond.false
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
.LBB39_3:                               // %cond.end
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end39:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv, .Lfunc_end39-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc,comdat
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #192            // =192
	stp	x29, x30, [sp, #176]    // 16-byte Folded Spill
	add	x29, sp, #176           // =176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	x5, [x29, #-48]
	stur	x6, [x29, #-56]
	stur	x7, [x29, #-64]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #40]           // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv
	stur	x0, [x29, #-72]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-72]
	ldur	x10, [x29, #-16]
	subs	x9, x9, x10
	subs	x9, x9, #1              // =1
	cmp	x8, x9
	b.ls	.LBB40_2
// %bb.1:                               // %if.then
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv
.LBB40_2:                               // %if.end
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-72]
	mov	x10, #2
	udiv	x9, x9, x10
	subs	x9, x9, #16             // =16
	cmp	x8, x9
	b.hs	.LBB40_4
// %bb.3:                               // %cond.true
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	add	x0, sp, #80             // =80
	str	x8, [sp, #80]
	ldur	x8, [x29, #-16]
	mov	x9, #2
	mul	x8, x9, x8
	add	x1, sp, #72             // =72
	str	x8, [sp, #72]
	bl	_ZNSt6__ndk13maxImEERKT_S3_S3_
	ldr	x0, [x0]
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
	str	x0, [sp, #32]           // 8-byte Folded Spill
	b	.LBB40_5
.LBB40_4:                               // %cond.false
	ldur	x8, [x29, #-72]
	subs	x8, x8, #1              // =1
	str	x8, [sp, #32]           // 8-byte Folded Spill
.LBB40_5:                               // %cond.end
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	str	x8, [sp, #88]
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	ldr	x8, [sp, #88]
	add	x1, x8, #1              // =1
	bl	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
	str	x0, [sp, #64]
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB40_7
// %bb.6:                               // %if.then14
	ldr	x0, [sp, #64]
	bl	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	ldur	x8, [x29, #-80]
	str	x0, [sp, #24]           // 8-byte Folded Spill
	mov	x0, x8
	bl	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	ldur	x2, [x29, #-40]
	ldr	x1, [sp, #24]           // 8-byte Folded Reload
	str	x0, [sp, #16]           // 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm
.LBB40_7:                               // %if.end18
	ldur	x8, [x29, #-56]
	cbz	x8, .LBB40_9
// %bb.8:                               // %if.then20
	ldr	x0, [sp, #64]
	bl	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	ldur	x8, [x29, #-40]
	add	x0, x0, x8
	ldur	x1, [x29, #-64]
	ldur	x2, [x29, #-56]
	bl	_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm
.LBB40_9:                               // %if.end23
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	cbz	x8, .LBB40_11
// %bb.10:                              // %if.then27
	ldr	x0, [sp, #64]
	bl	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	ldur	x8, [x29, #-40]
	add	x8, x0, x8
	ldur	x9, [x29, #-56]
	add	x0, x8, x9
	ldur	x8, [x29, #-80]
	str	x0, [sp, #8]            // 8-byte Folded Spill
	mov	x0, x8
	bl	_ZNSt6__ndk116__to_raw_pointerIcEEPT_S2_
	ldur	x8, [x29, #-40]
	add	x8, x0, x8
	ldur	x9, [x29, #-48]
	add	x1, x8, x9
	ldr	x2, [sp, #56]
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm
.LBB40_11:                              // %if.end35
	ldur	x8, [x29, #-16]
	add	x8, x8, #1              // =1
	cmp	x8, #23                 // =23
	b.eq	.LBB40_13
// %bb.12:                              // %if.then38
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	ldur	x1, [x29, #-80]
	ldur	x8, [x29, #-16]
	add	x2, x8, #1              // =1
	bl	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
.LBB40_13:                              // %if.end41
	ldr	x1, [sp, #64]
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
	ldr	x8, [sp, #88]
	add	x1, x8, #1              // =1
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-56]
	add	x8, x8, x9
	ldr	x9, [sp, #56]
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	ldur	x1, [x29, #-32]
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-32]
	add	x0, x8, x9
	add	x1, sp, #55             // =55
	mov	w10, #0
	strb	w10, [sp, #55]
	bl	_ZNSt6__ndk111char_traitsIcE6assignERcRKc
	ldp	x29, x30, [sp, #176]    // 16-byte Folded Reload
	add	sp, sp, #192            // =192
	ret
.Lfunc_end40:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc, .Lfunc_end40-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	mov	x8, #1
	add	x0, x0, x8
	bl	_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end41:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, .Lfunc_end41-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
                                        // -- End function
	.section	.text._ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc,"axG",@progbits,_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc,comdat
	.hidden	_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc // -- Begin function _ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc
	.weak	_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc
	.p2align	2
	.type	_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc,@function
_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc: // @_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk19addressofIcEEPT_RS1_
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end42:
	.size	_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc, .Lfunc_end42-_ZNSt6__ndk114pointer_traitsIPcE10pointer_toERc
                                        // -- End function
	.section	.text._ZNSt6__ndk19addressofIcEEPT_RS1_,"axG",@progbits,_ZNSt6__ndk19addressofIcEEPT_RS1_,comdat
	.hidden	_ZNSt6__ndk19addressofIcEEPT_RS1_ // -- Begin function _ZNSt6__ndk19addressofIcEEPT_RS1_
	.weak	_ZNSt6__ndk19addressofIcEEPT_RS1_
	.p2align	2
	.type	_ZNSt6__ndk19addressofIcEEPT_RS1_,@function
_ZNSt6__ndk19addressofIcEEPT_RS1_:      // @_ZNSt6__ndk19addressofIcEEPT_RS1_
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end43:
	.size	_ZNSt6__ndk19addressofIcEEPT_RS1_, .Lfunc_end43-_ZNSt6__ndk19addressofIcEEPT_RS1_
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	str	x8, [x0, #8]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end44:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, .Lfunc_end44-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #1
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	strb	w8, [x0]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end45:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, .Lfunc_end45-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x0, [x0, #8]
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end46:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, .Lfunc_end46-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldrb	w8, [x0]
	asr	w8, w8, #1
	mov	w9, w8
	sxtw	x0, w9
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end47:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, .Lfunc_end47-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	bl	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #16             // =16
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end48:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, .Lfunc_end48-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.weak	_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv // -- Begin function _ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv
	.p2align	2
	.type	_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv: // @_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x0, [sp, #8]
	mov	x0, x8
	bl	_ZNSt6__ndk120__throw_length_errorEPKc
.Lfunc_end49:
	.size	_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end49-_ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cmp	x8, #23                 // =23
	b.hs	.LBB50_2
// %bb.1:                               // %if.then
	mov	x8, #22
	stur	x8, [x29, #-8]
	b	.LBB50_5
.LBB50_2:                               // %if.end
	ldr	x8, [sp, #16]
	add	x0, x8, #1              // =1
	bl	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
	subs	x8, x0, #1              // =1
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cmp	x8, #23                 // =23
	b.ne	.LBB50_4
// %bb.3:                               // %if.then2
	ldr	x8, [sp, #8]
	add	x8, x8, #1              // =1
	str	x8, [sp, #8]
.LBB50_4:                               // %if.end3
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
.LBB50_5:                               // %return
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end50:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, .Lfunc_end50-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
                                        // -- End function
	.section	.text._ZNSt6__ndk13maxImEERKT_S3_S3_,"axG",@progbits,_ZNSt6__ndk13maxImEERKT_S3_S3_,comdat
	.hidden	_ZNSt6__ndk13maxImEERKT_S3_S3_ // -- Begin function _ZNSt6__ndk13maxImEERKT_S3_S3_
	.weak	_ZNSt6__ndk13maxImEERKT_S3_S3_
	.p2align	2
	.type	_ZNSt6__ndk13maxImEERKT_S3_S3_,@function
_ZNSt6__ndk13maxImEERKT_S3_S3_:         // @_ZNSt6__ndk13maxImEERKT_S3_S3_
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldrb	w2, [sp, #15]
	bl	_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end51:
	.size	_ZNSt6__ndk13maxImEERKT_S3_S3_, .Lfunc_end51-_ZNSt6__ndk13maxImEERKT_S3_S3_
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m,"axG",@progbits,_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m,comdat
	.hidden	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m // -- Begin function _ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
	.weak	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
	.p2align	2
	.type	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m,@function
_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m: // @_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, #0
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	mov	x2, x8
	bl	_ZNSt6__ndk19allocatorIcE8allocateEmPKv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end52:
	.size	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m, .Lfunc_end52-_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end53:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv, .Lfunc_end53-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__invalidate_all_iteratorsEv
                                        // -- End function
	.section	.text._ZNSt6__ndk111char_traitsIcE4copyEPcPKcm,"axG",@progbits,_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm,comdat
	.weak	_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm // -- Begin function _ZNSt6__ndk111char_traitsIcE4copyEPcPKcm
	.p2align	2
	.type	_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm,@function
_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm: // @_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm
// %bb.0:                               // %entry
	sub	sp, sp, #64             // =64
	str	x30, [sp, #48]          // 8-byte Folded Spill
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB54_2
// %bb.1:                               // %cond.true
	ldr	x8, [sp, #40]
	str	x8, [sp, #16]           // 8-byte Folded Spill
	b	.LBB54_3
.LBB54_2:                               // %cond.false
	ldr	x8, [sp, #40]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	mov	x0, x8
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	memcpy
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	str	x8, [sp, #16]           // 8-byte Folded Spill
.LBB54_3:                               // %cond.end
	ldr	x8, [sp, #16]           // 8-byte Folded Reload
	mov	x0, x8
	ldr	x30, [sp, #48]          // 8-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end54:
	.size	_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm, .Lfunc_end54-_ZNSt6__ndk111char_traitsIcE4copyEPcPKcm
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	str	x8, [x0, #16]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end55:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, .Lfunc_end55-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm,comdat
	.hidden	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	mov	x8, #1
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x9, [sp, #16]
	orr	x8, x8, x9
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	_ZNSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end56:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, .Lfunc_end56-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
                                        // -- End function
	.section	.text._ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_,"axG",@progbits,_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_,comdat
	.hidden	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ // -- Begin function _ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_
	.weak	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_
	.p2align	2
	.type	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_,@function
_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_: // @_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	ldrb	w0, [sp, #7]
	bl	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end57:
	.size	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_, .Lfunc_end57-_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end58:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, .Lfunc_end58-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
                                        // -- End function
	.section	.text._ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_,"axG",@progbits,_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_,comdat
	.hidden	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_ // -- Begin function _ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_
	.weak	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_
	.p2align	2
	.type	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_,@function
_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_: // @_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	sturb	w0, [x29, #-1]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	_ZNKSt6__ndk19allocatorIcE8max_sizeEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end59:
	.size	_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_, .Lfunc_end59-_ZNSt6__ndk116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_
                                        // -- End function
	.section	.text._ZNKSt6__ndk19allocatorIcE8max_sizeEv,"axG",@progbits,_ZNKSt6__ndk19allocatorIcE8max_sizeEv,comdat
	.hidden	_ZNKSt6__ndk19allocatorIcE8max_sizeEv // -- Begin function _ZNKSt6__ndk19allocatorIcE8max_sizeEv
	.weak	_ZNKSt6__ndk19allocatorIcE8max_sizeEv
	.p2align	2
	.type	_ZNKSt6__ndk19allocatorIcE8max_sizeEv,@function
_ZNKSt6__ndk19allocatorIcE8max_sizeEv:  // @_ZNKSt6__ndk19allocatorIcE8max_sizeEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	mov	x8, #-1
	str	x0, [sp, #8]
	mov	x0, x8
	add	sp, sp, #16             // =16
	ret
.Lfunc_end60:
	.size	_ZNKSt6__ndk19allocatorIcE8max_sizeEv, .Lfunc_end60-_ZNKSt6__ndk19allocatorIcE8max_sizeEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv,"axG",@progbits,_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv,comdat
	.hidden	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv // -- Begin function _ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
	.weak	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
	.p2align	2
	.type	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv,@function
_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv: // @_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end61:
	.size	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv, .Lfunc_end61-_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv,"axG",@progbits,_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv,comdat
	.hidden	_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv // -- Begin function _ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
	.weak	_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
	.p2align	2
	.type	_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv,@function
_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv: // @_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end62:
	.size	_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv, .Lfunc_end62-_ZNKSt6__ndk122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
                                        // -- End function
	.section	.text._ZNSt6__ndk120__throw_length_errorEPKc,"axG",@progbits,_ZNSt6__ndk120__throw_length_errorEPKc,comdat
	.hidden	_ZNSt6__ndk120__throw_length_errorEPKc // -- Begin function _ZNSt6__ndk120__throw_length_errorEPKc
	.weak	_ZNSt6__ndk120__throw_length_errorEPKc
	.p2align	2
	.type	_ZNSt6__ndk120__throw_length_errorEPKc,@function
_ZNSt6__ndk120__throw_length_errorEPKc: // @_ZNSt6__ndk120__throw_length_errorEPKc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 156, DW.ref.__gxx_personality_v0
	.cfi_lsda 28, .Lexception3
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, #16
	stur	x0, [x29, #-8]
	mov	x0, x8
	bl	__cxa_allocate_exception
	ldur	x1, [x29, #-8]
.Ltmp22:
	str	x0, [sp]                // 8-byte Folded Spill
	bl	_ZNSt12length_errorC2EPKc
.Ltmp23:
	b	.LBB63_1
.LBB63_1:                               // %invoke.cont
	ldr	x0, [sp]                // 8-byte Folded Reload
	adrp	x1, :got:_ZTISt12length_error
	ldr	x1, [x1, :got_lo12:_ZTISt12length_error]
	adrp	x2, :got:_ZNSt12length_errorD1Ev
	ldr	x2, [x2, :got_lo12:_ZNSt12length_errorD1Ev]
	bl	__cxa_throw
.LBB63_2:                               // %lpad
.Ltmp24:
                                        // kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	__cxa_free_exception
// %bb.3:                               // %eh.resume
	ldr	x0, [sp, #16]
	bl	_Unwind_Resume
.Lfunc_end63:
	.size	_ZNSt6__ndk120__throw_length_errorEPKc, .Lfunc_end63-_ZNSt6__ndk120__throw_length_errorEPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table63:
.Lexception3:
	.byte	255                     // @LPStart Encoding = omit
	.byte	255                     // @TType Encoding = omit
	.byte	1                       // Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3 // >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin3  //   Call between .Lfunc_begin3 and .Ltmp22
	.byte	0                       //     has no landing pad
	.byte	0                       //   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3  // >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22        //   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3  //     jumps to .Ltmp24
	.byte	0                       //   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin3  // >> Call Site 3 <<
	.uleb128 .Lfunc_end63-.Ltmp23   //   Call between .Ltmp23 and .Lfunc_end63
	.byte	0                       //     has no landing pad
	.byte	0                       //   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        // -- End function
	.section	.text._ZNSt12length_errorC2EPKc,"axG",@progbits,_ZNSt12length_errorC2EPKc,comdat
	.hidden	_ZNSt12length_errorC2EPKc // -- Begin function _ZNSt12length_errorC2EPKc
	.weak	_ZNSt12length_errorC2EPKc
	.p2align	2
	.type	_ZNSt12length_errorC2EPKc,@function
_ZNSt12length_errorC2EPKc:              // @_ZNSt12length_errorC2EPKc
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, :got:_ZTVSt12length_error
	ldr	x8, [x8, :got_lo12:_ZTVSt12length_error]
	mov	x9, #16
	add	x8, x8, x9
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x9
	str	x8, [sp, #8]            // 8-byte Folded Spill
	str	x9, [sp]                // 8-byte Folded Spill
	bl	_ZNSt11logic_errorC2EPKc
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	ldr	x9, [sp]                // 8-byte Folded Reload
	str	x8, [x9]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end64:
	.size	_ZNSt12length_errorC2EPKc, .Lfunc_end64-_ZNSt12length_errorC2EPKc
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm,"axG",@progbits,_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm,comdat
	.weak	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm // -- Begin function _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
	.p2align	2
	.type	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm,@function
_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm: // @_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	mov	x8, #-16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	add	x9, x9, #15             // =15
	and	x0, x9, x8
	add	sp, sp, #16             // =16
	ret
.Lfunc_end65:
	.size	_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm, .Lfunc_end65-_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
                                        // -- End function
	.section	.text._ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_,"axG",@progbits,_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_,comdat
	.hidden	_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_ // -- Begin function _ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	.weak	_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	.p2align	2
	.type	_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_,@function
_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_: // @_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #1             // =1
	sturb	w2, [x29, #-1]
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	bl	_ZNKSt6__ndk16__lessImmEclERKmS3_
	tbnz	w0, #0, .LBB66_1
	b	.LBB66_2
.LBB66_1:                               // %cond.true
	ldr	x8, [sp, #8]
	str	x8, [sp]                // 8-byte Folded Spill
	b	.LBB66_3
.LBB66_2:                               // %cond.false
	ldr	x8, [sp, #16]
	str	x8, [sp]                // 8-byte Folded Spill
.LBB66_3:                               // %cond.end
	ldr	x8, [sp]                // 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end66:
	.size	_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_, .Lfunc_end66-_ZNSt6__ndk13maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNKSt6__ndk16__lessImmEclERKmS3_,"axG",@progbits,_ZNKSt6__ndk16__lessImmEclERKmS3_,comdat
	.hidden	_ZNKSt6__ndk16__lessImmEclERKmS3_ // -- Begin function _ZNKSt6__ndk16__lessImmEclERKmS3_
	.weak	_ZNKSt6__ndk16__lessImmEclERKmS3_
	.p2align	2
	.type	_ZNKSt6__ndk16__lessImmEclERKmS3_,@function
_ZNKSt6__ndk16__lessImmEclERKmS3_:      // @_ZNKSt6__ndk16__lessImmEclERKmS3_
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	cmp	x8, x9
	cset	w10, lo
	mov	w11, #1
	and	w10, w10, w11
	mov	w0, w10
	add	sp, sp, #32             // =32
	ret
.Lfunc_end67:
	.size	_ZNKSt6__ndk16__lessImmEclERKmS3_, .Lfunc_end67-_ZNKSt6__ndk16__lessImmEclERKmS3_
                                        // -- End function
	.section	.text._ZNSt6__ndk19allocatorIcE8allocateEmPKv,"axG",@progbits,_ZNSt6__ndk19allocatorIcE8allocateEmPKv,comdat
	.hidden	_ZNSt6__ndk19allocatorIcE8allocateEmPKv // -- Begin function _ZNSt6__ndk19allocatorIcE8allocateEmPKv
	.weak	_ZNSt6__ndk19allocatorIcE8allocateEmPKv
	.p2align	2
	.type	_ZNSt6__ndk19allocatorIcE8allocateEmPKv,@function
_ZNSt6__ndk19allocatorIcE8allocateEmPKv: // @_ZNSt6__ndk19allocatorIcE8allocateEmPKv
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp]                // 8-byte Folded Spill
	bl	_ZNKSt6__ndk19allocatorIcE8max_sizeEv
	ldr	x8, [sp]                // 8-byte Folded Reload
	cmp	x8, x0
	b.ls	.LBB68_2
// %bb.1:                               // %if.then
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	_ZNSt6__ndk120__throw_length_errorEPKc
.LBB68_2:                               // %if.end
	ldr	x8, [sp, #16]
	mov	x9, #1
	mul	x0, x8, x9
	mov	x1, x9
	bl	_ZNSt6__ndk117__libcpp_allocateEmm
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end68:
	.size	_ZNSt6__ndk19allocatorIcE8allocateEmPKv, .Lfunc_end68-_ZNSt6__ndk19allocatorIcE8allocateEmPKv
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNSt6__ndk117__libcpp_allocateEmm,"axG",@progbits,_ZNSt6__ndk117__libcpp_allocateEmm,comdat
	.hidden	_ZNSt6__ndk117__libcpp_allocateEmm // -- Begin function _ZNSt6__ndk117__libcpp_allocateEmm
	.weak	_ZNSt6__ndk117__libcpp_allocateEmm
	.p2align	2
	.type	_ZNSt6__ndk117__libcpp_allocateEmm,@function
_ZNSt6__ndk117__libcpp_allocateEmm:     // @_ZNSt6__ndk117__libcpp_allocateEmm
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	_Znwm
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end69:
	.size	_ZNSt6__ndk117__libcpp_allocateEmm, .Lfunc_end69-_ZNSt6__ndk117__libcpp_allocateEmm
	.cfi_endproc
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	bl	_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end70:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv, .Lfunc_end70-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
                                        // -- End function
	.section	.text._ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_,"axG",@progbits,_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_,comdat
	.hidden	_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_ // -- Begin function _ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_
	.weak	_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_
	.p2align	2
	.type	_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_,@function
_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_: // @_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end71:
	.size	_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_, .Lfunc_end71-_ZNSt6__ndk116__to_raw_pointerIKcEEPT_S3_
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
// %bb.0:                               // %entry
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #16]           // 8-byte Folded Spill
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, .LBB72_1
	b	.LBB72_2
.LBB72_1:                               // %cond.true
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
	b	.LBB72_3
.LBB72_2:                               // %cond.false
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	str	x0, [sp, #8]            // 8-byte Folded Spill
.LBB72_3:                               // %cond.end
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end72:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, .Lfunc_end72-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x0, [x0, #16]
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end73:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, .Lfunc_end73-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
                                        // -- End function
	.section	.text._ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv,"axG",@progbits,_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv,comdat
	.hidden	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv // -- Begin function _ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.weak	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.p2align	2
	.type	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv,@function
_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: // @_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNKSt6__ndk117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	mov	x8, #1
	add	x0, x0, x8
	bl	_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end74:
	.size	_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, .Lfunc_end74-_ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
                                        // -- End function
	.section	.text._ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_,"axG",@progbits,_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_,comdat
	.hidden	_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_ // -- Begin function _ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_
	.weak	_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_
	.p2align	2
	.type	_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_,@function
_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_: // @_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_
// %bb.0:                               // %entry
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_ZNSt6__ndk19addressofIKcEEPT_RS2_
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end75:
	.size	_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_, .Lfunc_end75-_ZNSt6__ndk114pointer_traitsIPKcE10pointer_toERS1_
                                        // -- End function
	.section	.text._ZNSt6__ndk19addressofIKcEEPT_RS2_,"axG",@progbits,_ZNSt6__ndk19addressofIKcEEPT_RS2_,comdat
	.hidden	_ZNSt6__ndk19addressofIKcEEPT_RS2_ // -- Begin function _ZNSt6__ndk19addressofIKcEEPT_RS2_
	.weak	_ZNSt6__ndk19addressofIKcEEPT_RS2_
	.p2align	2
	.type	_ZNSt6__ndk19addressofIKcEEPT_RS2_,@function
_ZNSt6__ndk19addressofIKcEEPT_RS2_:     // @_ZNSt6__ndk19addressofIKcEEPT_RS2_
// %bb.0:                               // %entry
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end76:
	.size	_ZNSt6__ndk19addressofIKcEEPT_RS2_, .Lfunc_end76-_ZNSt6__ndk19addressofIKcEEPT_RS2_
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello"
	.size	.L.str, 6

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"ke.yijincc.com"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"name: %s, age: %d, sex: %d"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"basic_string"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"
	.size	.L.str.4, 68

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
