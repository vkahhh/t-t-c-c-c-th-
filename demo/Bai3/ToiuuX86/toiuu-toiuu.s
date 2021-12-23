	.file	"toiuu.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"hilindaxinchaocanhatoilatranducbodaygdiuwh54841618jadjiwwiudua4956161"
.LC1:
	.string	"so ki tu: %d\n"
.LC2:
	.string	"Ket qua: \t %d \t %d \t %d"
.LC4:
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
	subq	$80, %rsp
	call	clock@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L2
.L3:
	movl	-48(%rbp), %eax
	addl	%eax, -56(%rbp)
	addl	$1, -52(%rbp)
.L2:
	cmpl	$10, -52(%rbp)
	jle	.L3
	movl	-48(%rbp), %eax
	addl	$1402, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	imull	$1402, %eax, %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1200, %eax
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq   %rbp, %rsp    #leave
	popq   %rbp 		#leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
