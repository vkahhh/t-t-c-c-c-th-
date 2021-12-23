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
	.file	"toiuu.c"
	.text
	.align	1
	.global	powern
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	powern, %function
powern:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #32
	add	r7, sp, #0
	vstr.64	d0, [r7, #8]
	str	r0, [r7, #4]
	and	r3, #0
	and	r4, #0
	movt	r4, 16368
	strd	r3, [r7, #24]
	ands	r3, #0
	adds	r3, #1
	str	r3, [r7, #20]
	b	.L2
.L3:
	vldr.64	d6, [r7, #24]
	vldr.64	d7, [r7, #8]
	vmul.f64	d7, d6, d7
	vstr.64	d7, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L3
	ldrd	r3, [r7, #24]
	vmov	d7, r3, r4
	vmov.f64	d0, d7
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	powern, .-powern
	.section	.rodata
	.align	2
.LC0:
	.ascii	"sum = %g\012\000"
	.align	2
.LC1:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7, #8]
	and	r3, #0
	and	r4, #0
	strd	r3, [r7, #16]
	ands	r3, #0
	adds	r3, #1
	str	r3, [r7, #4]
	b	.L6
.L7:
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d7, s15
	ldr	r1, [r7, #4]
	movw	r3, #52429
	movt	r3, 52428
	umull	r3, r4, r1, r3
	lsrs	r2, r4, #2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r2, r1, r3
	mov	r0, r2
	vmov.f64	d0, d7
	bl	powern(PLT)
	vmov.f64	d6, d0
	vldr.64	d7, [r7, #16]
	vadd.f64	d7, d7, d6
	vstr.64	d7, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L6:
	ldr	r2, [r7, #4]
	mov	r3, #57600
	movt	r3, 1525
	cmp	r2, r3
	bls	.L7
	ldrd	r2, [r7, #16]
	ldr	r1, .L9+8
.LPIC0:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L9
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #24]
	ldrd	r2, [r7, #24]
	ldr	r1, .L9+12
.LPIC1:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L10:
	.align	3
.L9:
	.word	0
	.word	1093567616
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
