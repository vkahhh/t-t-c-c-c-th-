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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Tong: %f\000"
	.align	2
.LC1:
	.ascii	"\012 trung binh cong : %f\000"
	.align	2
.LC2:
	.ascii	"Cac so chan la: \000"
	.align	2
.LC3:
	.ascii	"%d \011\000"
	.align	2
.LC4:
	.ascii	"time: %f\000"
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
	str	r0, [r7, #16]
	and	r3, #0
	str	r3, [r7, #4]	@ float
	movw	r3, #16960
	movt	r3, 15
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [r7, #4]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L3
	vldr.32	s15, [r7, #4]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L7+8
.LPIC0:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, [r7, #4]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #24]
	vldr.32	s15, [r7, #24]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L7+12
.LPIC1:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, .L7+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ands	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L6:
	ldr	r3, [r7, #12]
	and	r3, r3, #1
	tst	r3, r3
	bne	.L5
	ldr	r1, [r7, #12]
	ldr	r3, .L7+20
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L5:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L6
	bl	clock(PLT)
	str	r0, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L7
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #32]
	ldrd	r2, [r7, #32]
	ldr	r1, .L7+24
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	3
.L7:
	.word	0
	.word	1093567616
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC4-(.LPIC4+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
