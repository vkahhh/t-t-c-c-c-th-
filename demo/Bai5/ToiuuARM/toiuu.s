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
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d x \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	1
	.global	phanTichSoNguyen
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	phanTichSoNguyen, %function
phanTichSoNguyen:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #424
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	ldr	r4, .L9
.LPIC0:
	add	r4, pc
	ldr	r3, .L9+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #420]
	add	r3, r7, #12
	movs	r2, #2
	str	r2, [r3]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	b	.L2
.L4:
	adds	r2, r7, #4
	add	r3, r7, #12
	ldr	r2, [r2]
	ldr	r1, [r3]
	mov	r0, r2
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	bne	.L3
	adds	r5, r7, #4
	adds	r3, r7, #4
	add	r2, r7, #12
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	add	r2, r7, #16
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #20
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r1, [r2, r3, lsl #2]
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L2
.L3:
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldr	r2, [r2]
	str	r2, [r3]
.L2:
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #1
	bgt	.L4
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5
	add	r3, r7, #16
	ldr	r3, [r3]
	add	r2, r7, #16
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #20
	adds	r1, r7, #4
	ldr	r1, [r1]
	str	r1, [r2, r3, lsl #2]
.L5:
	add	r3, r7, #12
	movs	r2, #0
	str	r2, [r3]
	b	.L6
.L7:
	add	r3, r7, #20
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r3, .L9+8
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L6:
	add	r3, r7, #16
	ldr	r3, [r3]
	subs	r3, r3, #1
	add	r2, r7, #12
	ldr	r2, [r2]
	cmp	r2, r3
	blt	.L7
	add	r3, r7, #16
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #20
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r3, .L9+12
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	nop
	ldr	r3, .L9+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #420]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L8
	bl	__stack_chk_fail(PLT)
.L8:
	add	r7, r7, #424
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.size	phanTichSoNguyen, .-phanTichSoNguyen
	.section	.rodata
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
	str	r0, [r7, #4]
	movw	r3, #38528
	movt	r3, 152
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	phanTichSoNguyen(PLT)
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L13
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #16]
	ldrd	r2, [r7, #16]
	ldr	r1, .L13+8
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	3
.L13:
	.word	0
	.word	1093567616
	.word	.LC2-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
