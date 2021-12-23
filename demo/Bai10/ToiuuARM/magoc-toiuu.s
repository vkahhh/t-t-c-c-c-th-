	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"magoc.c"
	.text
	.align	1
	.global	swap
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	swap, %function
swap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	swap, .-swap
	.align	1
	.global	shakersort
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	shakersort, %function
shakersort:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ands	r3, #0
	adds	r3, #1
	str	r3, [r7, #8]
	b	.L3
.L10:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	b	.L4
.L6:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L5
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r1, r3
	bl	swap(PLT)
.L5:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	cmp	r2, r3
	blt	.L6
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #12]
	b	.L7
.L9:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L8
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r1, r3
	bl	swap(PLT)
.L8:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L7:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L9
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L3:
	ldr	r3, [r7]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r3, r2
	ble	.L10
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	shakersort, .-shakersort
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%d \000"
	.align	2
.LC2:
	.ascii	"\012time: %f\000"
	.align	2
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
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #0
	ldr	r6, .L16+8
.LPIC0:
	add	r6, pc
	ldr	r3, .L16+12
	ldr	r3, [r6, r3]
	ldr	r3, [r3]
	str	r3, [r7, #68]
	bl	clock(PLT)
	str	r0, [r7, #8]
	ldr	r3, .L16+16
.LPIC1:
	add	r3, pc
	add	r4, r7, #28
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1}
	stm	r4, {r0, r1}
	add	r3, r7, #28
	ands	r1, #0
	adds	r1, #10
	mov	r0, r3
	bl	shakersort(PLT)
	ands	r3, #0
	str	r3, [r7, #4]
	b	.L12
.L13:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r2, r7, #72
	add	r3, r3, r2
	ldr	r3, [r3, #-44]
	mov	r1, r3
	ldr	r3, .L16+20
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L12:
	ldr	r3, [r7, #4]
	cmp	r3, #9
	ble	.L13
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L16
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L16+24
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	ldr	r3, .L16+12
	ldr	r3, [r6, r3]
	ldr	r2, [r7, #68]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L17:
	.align	3
.L16:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
