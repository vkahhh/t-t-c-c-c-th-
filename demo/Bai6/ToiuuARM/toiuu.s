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
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L41+8
	ldr	r2, .L41+12
.LPIC8:
	add	r3, pc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #108
	ldr	r2, [r3, r2]
	movw	r5, #34464
	ldr	r9, .L41+16
	movw	r4, #26215
	movw	r7, #16960
	movt	r5, 1
	ldr	r3, [r2]
.LPIC11:
	add	r9, pc
	str	r2, [sp, #12]
	movt	r4, 26214
	movt	r7, 15
	add	r8, sp, #16
	str	r3, [sp, #100]
	bl	clock(PLT)
	movs	r6, #0
	str	r0, [sp, #8]
.L5:
	mov	lr, r8
	mov	r3, r5
	mov	ip, #0
	mov	r10, #10
	mov	fp, r5
	mov	r0, r4
	b	.L2
.L8:
	mov	ip, r4
.L2:
	smull	r1, r2, r3, r0
	add	r4, ip, #1
	strd	r1, [sp]
	asrs	r1, r3, #31
	ldr	r2, [sp, #4]
	asrs	r5, r2, #2
	subs	r2, r5, r1
	mls	r2, r10, r2, r3
	subs	r3, r5, r1
	cmp	r3, #0
	str	r2, [lr, #4]!
	bgt	.L8
	mov	r5, fp
	mov	fp, r4
	asrs	fp, fp, #1
	mov	r4, r0
	beq	.L3
	ldr	r3, [sp, #20]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #1
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #24]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-88]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #2
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #28]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-92]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #3
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #32]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-96]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #4
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #36]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-100]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #5
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #40]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-104]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #6
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #44]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-108]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #7
	beq	.L3
	add	r2, sp, #104
	ldr	r3, [sp, #48]
	add	r2, r2, ip, lsl #2
	ldr	r2, [r2, #-112]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #8
	beq	.L3
	add	r3, sp, #104
	add	ip, r3, ip, lsl #2
	ldr	r3, [sp, #52]
	ldr	r2, [ip, #-116]
	cmp	r3, r2
	bne	.L6
	cmp	fp, #10
	bne	.L3
	ldrd	r2, r3, [sp, #56]
	cmp	r2, r3
	bne	.L6
.L3:
	movs	r0, #1
	mov	r2, r5
	mov	r1, r9
	add	r6, r6, r0
	bl	__printf_chk(PLT)
.L6:
	adds	r5, r5, #1
	cmp	r5, r7
	bne	.L5
	ldr	r1, .L41+20
	mov	r2, r6
	movs	r0, #1
.LPIC9:
	add	r1, pc
	bl	__printf_chk(PLT)
	bl	clock(PLT)
	ldr	r3, [sp, #8]
	vldr.64	d6, .L41
	ldr	r1, .L41+24
.LPIC10:
	add	r1, pc
	subs	r3, r0, r3
	movs	r0, #1
	vmov	s14, r3	@ int
	vcvt.f64.s32	d7, s14
	vmul.f64	d7, d7, d6
	vmov	r2, r3, d7
	bl	__printf_chk(PLT)
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #100]
	movs	r0, #0
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L40
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L40:
	bl	__stack_chk_fail(PLT)
.L42:
	.align	3
.L41:
	.word	2696277389
	.word	1051772663
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC2-(.LPIC11+4)
	.word	.LC0-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.size	main, .-main
	.text
	.align	1
	.p2align 2,,3
	.global	isThuanNghich
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	isThuanNghich, %function
isThuanNghich:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L71
	ldr	r2, .L71+4
.LPIC12:
	add	r3, pc
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #88
	ldr	ip, [r3, r2]
	movw	r7, #26215
	mov	r6, sp
	movt	r7, 26214
	movs	r5, #0
	mov	lr, #10
	ldr	r3, [ip]
	str	r3, [sp, #84]
	b	.L44
.L47:
	mov	r5, r4
.L44:
	smull	r2, r3, r0, r7
	asr	r8, r0, #31
	adds	r4, r5, #1
	asrs	r1, r3, #2
	sub	r3, r1, r8
	mls	r3, lr, r3, r0
	sub	r0, r1, r8
	cmp	r0, #0
	str	r3, [r6, #4]!
	bgt	.L47
	asrs	r0, r4, #1
	beq	.L65
	ldr	r2, [sp, #4]
	cmp	r3, r2
	bne	.L64
	cmp	r0, #1
	beq	.L43
	add	r3, sp, #88
	ldr	r2, [sp, #8]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-88]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #2
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #12]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-92]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #3
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #16]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-96]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #4
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #20]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-100]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #5
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #24]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-104]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #6
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #28]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-108]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #7
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #32]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-112]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #8
	beq	.L65
	add	r3, sp, #88
	ldr	r2, [sp, #36]
	add	r3, r3, r5, lsl #2
	ldr	r3, [r3, #-116]
	cmp	r2, r3
	bne	.L64
	cmp	r0, #10
	bne	.L65
	ldrd	r4, r0, [sp, #40]
	subs	r0, r4, r0
	clz	r0, r0
	lsrs	r0, r0, #5
.L43:
	ldr	r2, [sp, #84]
	ldr	r3, [ip]
	cmp	r2, r3
	bne	.L70
	add	sp, sp, #88
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L65:
	movs	r0, #1
	b	.L43
.L64:
	movs	r0, #0
	b	.L43
.L70:
	bl	__stack_chk_fail(PLT)
.L72:
	.align	2
.L71:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	__stack_chk_guard(GOT)
	.size	isThuanNghich, .-isThuanNghich
	.global	DEC_10
	.section	.rodata
	.align	2
	.type	DEC_10, %object
	.size	DEC_10, 4
DEC_10:
	.word	10
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Tong cac so thuan nghich co 6 chu so la: %d\000"
.LC1:
	.ascii	"\012time: %f\000"
	.space	2
.LC2:
	.ascii	"%d\012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
