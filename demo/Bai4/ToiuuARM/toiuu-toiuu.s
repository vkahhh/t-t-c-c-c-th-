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
	.word	100000
	.section	.rodata
	.align	2
.LC0:
	.ascii	"n la so chan\000"
	.align	2
.LC1:
	.ascii	"n la so le\000"
	.text
	.align	1
	.global	KiemTraChanLe
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	KiemTraChanLe, %function
KiemTraChanLe:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L2
	ldr	r3, .L5
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L4
.L2:
	ldr	r3, .L5+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L4:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	KiemTraChanLe, .-KiemTraChanLe
	.global	__aeabi_idivmod
	.align	1
	.global	isPrimeNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	isPrimeNumber, %function
isPrimeNumber:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bgt	.L8
	movs	r3, #0
	b	.L9
.L8:
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #8]
	b	.L10
.L12:
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	bne	.L11
	movs	r3, #0
	b	.L9
.L11:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L10:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L12
	movs	r3, #1
.L9:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align	2
.LC2:
	.ascii	"Tat ca cac so nguyen to nho hon %d la: \012\000"
	.align	2
.LC3:
	.ascii	"%d \000"
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
	str	r0, [r7, #8]
	ldr	r3, .L19+8
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	KiemTraChanLe(PLT)
	ldr	r3, .L19+12
.LPIC3:
	add	r3, pc
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L19+16
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L19+20
.LPIC5:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #1
	ble	.L14
	movs	r1, #2
	ldr	r3, .L19+24
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L14:
	movs	r3, #3
	str	r3, [r7, #4]
	b	.L15
.L17:
	ldr	r0, [r7, #4]
	bl	isPrimeNumber(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L16
	ldr	r1, [r7, #4]
	ldr	r3, .L19+28
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L16:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #4]
.L15:
	ldr	r3, .L19+32
.LPIC8:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L17
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L19
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L19+36
.LPIC9:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	3
.L19:
	.word	0
	.word	1093567616
	.word	n-(.LPIC2+4)
	.word	n-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	n-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	.LC3-(.LPIC7+4)
	.word	n-(.LPIC8+4)
	.word	.LC4-(.LPIC9+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
