	.file	"magoc.c"
	.text
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	10
	.text
	.globl	tongPhanSo
	.type	tongPhanSo, @function
tongPhanSo:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	cvtss2sd	-8(%rbp), %xmm1
	cvtsi2sd	-4(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L3
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	tongPhanSo, .-tongPhanSo
	.globl	tong
	.type	tong, @function
tong:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L6
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	tong, .-tong
	.section	.rodata
.LC2:
	.string	"Loi tinh toan"
.LC3:
	.string	"%f \t "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -16(%rbp)
	jmp	.L9
.L13:
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	tong
	movl	%eax, -12(%rbp)
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	tongPhanSo
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	cvtsi2ss	-16(%rbp), %xmm1
	cvtsi2ss	-12(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L10
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jne	.L10
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L10:
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L12:
	addl	$1, -16(%rbp)
.L9:
	cmpl	$4999, -16(%rbp)
	jle	.L13
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
