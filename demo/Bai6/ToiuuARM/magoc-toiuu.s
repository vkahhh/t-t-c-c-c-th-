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
	.global	DEC_10
	.section	.rodata
	.align	2
	.type	DEC_10, %object
	.size	DEC_10, 4
DEC_10:
	.word	10
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.align	2
.LC1:
	.ascii	"Tong cac so thuan nghich co 6 chu so la: %d\000"
	.align	2
.LC2:
	.ascii	"\012time: %f\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7, #8]
	ands	r3, #0
	str	r3, [r7]
	movw	r3, #34464
	movt	r3, 1
	str	r3, [r7, #4]
	b	.L2
.L4:
	ldr	r0, [r7, #4]
	bl	isThuanNghich(PLT)
	mov	r3, r0
	tst	r3, r3
	beq	.L3
	ldr	r1, [r7, #4]
	ldr	r3, .L6+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L3:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r2, [r7, #4]
	movw	r3, #16959
	movt	r3, 15
	cmp	r2, r3
	ble	.L4
	ldr	r1, [r7]
	ldr	r3, .L6+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L6
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L6+16
.LPIC2:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	3
.L6:
	.word	0
	.word	1093567616
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.size	main, .-main
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.align	1
	.global	isThuanNghich
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	isThuanNghich, %function
isThuanNghich:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L16
.LPIC3:
	add	r4, pc
	ldr	r3, .L16+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #100]
	ands	r3, #0
	str	r3, [r7, #12]
.L9:
	ands	r2, #10
	adds	r2, #10
	ldr	r5, [r7, #12]
	adds	r3, r5, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	lsls	r3, r5, #2
	add	r1, r7, #104
	add	r3, r3, r1
	str	r2, [r3, #-84]
	movs	r3, #10
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	tst	r3, r3
	bgt	.L9
	ands	r3, #0
	str	r3, [r7, #16]
	b	.L10
.L13:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r2, [r3, #-84]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #16]
	subs	r3, r1, r3
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r1, r7, #104
	add	r3, r3, r1
	ldr	r3, [r3, #-84]
	cmp	r2, r3
	beq	.L11
	ands	r3, #0
	b	.L14
.L11:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L10:
	ldr	r3, [r7, #12]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r3, r2
	blt	.L13
	ands	r3, #0
	adds	r3, #1
.L14:
	mov	r0, r3
	ldr	r3, .L16+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #100]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	adds	r7, r7, #104
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L17:
	.align	2
.L16:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.size	isThuanNghich, .-isThuanNghich
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
