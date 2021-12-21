	.file	"magoc.c"
	.text
	.globl	powern
	.type	powern, @function
powern:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movl	%edi, -28(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L2
.L3:
	movsd	-8(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jbe	.L3
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	powern, .-powern
	.section	.rodata
.LC2:
	.string	"sum = %g\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L6
.L9:
	movl	-12(%rbp), %ecx
	movl	$-858993459, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	-12(%rbp), %edx
	testq	%rdx, %rdx
	js	.L7
	cvtsi2sdq	%rdx, %xmm0
	jmp	.L8
.L7:
	movq	%rdx, %rcx
	shrq	%rcx
	andl	$1, %edx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
.L8:
	movl	%eax, %edi
	call	powern
	movapd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L6:
	cmpl	$100000000, -12(%rbp)
	jbe	.L9
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
