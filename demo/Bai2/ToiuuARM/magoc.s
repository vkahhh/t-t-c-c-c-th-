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
	.ascii	"Cac so chan la: \000"
	.align	2
.LC1:
	.ascii	" %d, \000"
	.align	2
.LC2:
	.ascii	"Cac so le la:\000"
	.align	2
.LC3:
	.ascii	" %d,\000"
	.align	2
.LC4:
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
	str	r0, [r7, #4]
	mov	r3, #1000
	
	str	r3, [r7, #8]
	ldr	r3, .L9+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	;movs	r3, #0
	ands	r3, r3
	str	r3, [r7]
	b	.L2
.L4:
	ldr	r3, [r7]
	and	r3, r3, #1
	tst	r3, r3
	bne	.L3
	ldr	r1, [r7]
	ldr	r3, .L9+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L3:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L2:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L4
	ldr	r3, .L9+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ands	r3, #0
	str	r3, [r7]
	b	.L5
.L7:
	ldr	r3, [r7]
	and	r3, r3, #1
	tst	r3, r3
	beq	.L6
	ldr	r1, [r7]
	ldr	r3, .L9+20
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L6:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L5:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L7
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L9
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L9+24
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	3
.L9:
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
