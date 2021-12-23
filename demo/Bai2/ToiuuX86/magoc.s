	.file	"magoc.c"
	.text
	.section	.rodata
.LC0:
	.string	"Cac so chan la: "
.LC1:
	.string	" %d, "
.LC2:
	.string	"Cac so le la:"
.LC3:
	.string	" %d,"
.LC5:
	.string	"\ntime: %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movl	$1000, -28(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$0, -32(%rbp)
	jmp	.L2
.L4:
	movl	-32(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	addl	$1, -32(%rbp)
.L2:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L4
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -32(%rbp)
	jmp	.L5
.L7:
	movl	-32(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L6
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	addl	$1, -32(%rbp)
.L5:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L7
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
