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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"hilindaxinchaocanhatoilatranducbodaygdiuwh54841618j"
	.ascii	"adjiwwiudua4956161\000"
	.align	2
.LC1:
	.ascii	"so ki tu: %d\012\000"
	.align	2
.LC2:
	.ascii	"Ket qua: \011 %d \011 %d \011 %d\000"
	.align	2
.LC3:
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
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r3, .L5+8
.LPIC0:
	add	r3, pc
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ands	r3, #0
	adds	r3, #1
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r3, [r7, #8]
	cmp	r3, #10
	ble	.L3
	ldr	r3, [r7, #20]
	addw	r3, r3, #1402
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	movw	r2, #1402
	mul	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, #1200
	str	r3, [r7, #32]
	ldr	r1, [r7, #20]
	ldr	r3, .L5+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, .L5+16
.LPIC2:
	add	r0, pc
	bl	printf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L5
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #40]
	ldrd	r2, [r7, #40]
	ldr	r1, .L5+20
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ands	r3, #0
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	3
.L5:
	.word	0
	.word	1093567616
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
