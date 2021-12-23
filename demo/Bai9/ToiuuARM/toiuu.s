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
	.global	n
	.data
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.word	10
	.text
	.align	1
	.global	tongPhanSo
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tongPhanSo, %function
tongPhanSo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #8]	@ float
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L2
.L3:
	vldr.32	s15, [r7, #8]
	vcvt.f64.f32	d6, s15
	ldr	r3, [r7, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	vmov.f64	d4, #1.0e+0
	vdiv.f64	d7, d4, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L3
	nop
	vmov.f32	s0, s15
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tongPhanSo, .-tongPhanSo
	.align	1
	.global	tong
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	tong, %function
tong:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L5
.L6:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L5:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L6
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tong, .-tong
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Loi tinh toan\000"
	.align	2
.LC1:
	.ascii	"%f \011 \000"
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7, #8]
	ldr	r3, .L14+8
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	tong(PLT)
	str	r0, [r7, #12]
	ldr	r3, .L14+12
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	tongPhanSo(PLT)
	vstr.32	s0, [r7, #16]
	ldr	r3, [r7, #12]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #16]
	vadd.f32	s15, s14, s15
	vadd.f32	s15, s15, s15
	vstr.32	s15, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L9
.L12:
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [r7, #20]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [r7, #28]
	vldr.32	s15, [r7, #28]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L10
	ldr	r3, .L14+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	b	.L11
.L10:
	vldr.32	s15, [r7, #28]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L14+20
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
.L11:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L9:
	ldr	r3, [r7, #4]
	movw	r2, #4999
	cmp	r3, r2
	ble	.L12
	bl	clock(PLT)
	str	r0, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L14
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #32]
	ldrd	r2, [r7, #32]
	ldr	r1, .L14+24
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	3
.L14:
	.word	0
	.word	1093567616
	.word	n-(.LPIC0+4)
	.word	n-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
