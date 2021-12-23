	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
	.align	1
	.p2align 2,,3
	.global	swap
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	swap, %function
swap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r1]
	str	r2, [r0]
	str	r3, [r1]
	bx	lr
	.size	swap, .-swap
	.align	1
	.p2align 2,,3
	.global	shakersort
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	shakersort, %function
shakersort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r1, r1, lsr #31
	asr	ip, ip, #1
	cmp	ip, #0
	ble	.L16
	push	{r4, r5, r6, r7, lr}
	add	r7, r1, #1073741824
	subs	r7, r7, #2
	add	ip, ip, #1
	add	lr, r1, #-1
	#movs	r5, #1
	ands	r5, #0
	adds 	r5, #1
	add	r7, r0, r7, lsl #2
.L11:
	subs	r3, r1, r5
	subs	r2, r5, #1
	cmp	r3, r2
	ble	.L5
	adds	r6, r7, #4
	mov	r3, r0
.L7:
	ldr	r2, [r3]
	ldr	r4, [r3, #4]!
	cmp	r2, r4
	it	gt
	strdgt	r4, r2, [r3, #-4]
	cmp	r6, r3
	bne	.L7
.L5:
	sub	r3, lr, r5
	cmp	r5, r3
	bgt	.L8
	mov	r3, r7
.L10:
	ldr	r2, [r3]
	ldr	r4, [r3, #-4]!
	cmp	r2, r4
	it	lt
	strdlt	r2, r4, [r3]
	cmp	r0, r3
	bne	.L10
.L8:
	adds	r5, r5, #1
	adds	r0, r0, #4
	cmp	r5, ip
	sub	r7, r7, #4
	bne	.L11
	pop	{r4, r5, r6, r7, pc}
.L16:
	bx	lr
	.size	shakersort, .-shakersort
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L25+8
	ldr	r3, .L25+12
.LPIC8:
	add	r2, pc
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #48
	ldr	r10, [r2, r3]
	add	r5, sp, #4
	ldr	r6, .L25+16
	mov	r4, sp
	ldr	r7, .L25+20
	add	r8, sp, #40
	ldr	r3, [r10]
.LPIC9:
	add	r6, pc
.LPIC10:
	add	r7, pc
	str	r3, [sp, #44]
	bl	clock(PLT)
	mov	r9, r0
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r6, {r0, r1}
	stm	r5, {r0, r1}
	movs	r1, #10
	ands	r1, #0
	adds 	r1, #10
	add	r0, sp, #4
	bl	shakersort(PLT)
.L20:
	ldr	r2, [r4, #4]!
	mov	r1, r7
	movs	r0, #1
	bl	__printf_chk(PLT)
	cmp	r4, r8
	bne	.L20
	bl	clock(PLT)
	vldr.64	d6, .L25
	ldr	r1, .L25+24
.LPIC11:
	add	r1, pc
	sub	r9, r0, r9
	ands	r0, #1
	vmov	s15, r9	@ int
	vcvt.f64.s32	d7, s15
	vmul.f64	d7, d7, d6
	vmov	r2, r3, d7
	bl	__printf_chk(PLT)
	ldr	r2, [sp, #44]
	ldr	r3, [r10]
	ands	r0, #0
	cmp	r2, r3
	bne	.L24
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L24:
	bl	__stack_chk_fail(PLT)
.L26:
	.align	3
.L25:
	.word	2696277389
	.word	1051772663
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.word	.LC2-(.LPIC11+4)
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	43
	.word	432
	.word	36
	.word	5
	.word	6
	.word	57
	.word	94
	.word	63
	.word	3
	.word	44
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"%d \000"
.LC2:
	.ascii	"\012time: %f\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
