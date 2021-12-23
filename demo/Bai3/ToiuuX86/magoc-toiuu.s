	.file	"magoc.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"hilindaxinchaocanhatoilatranducbodaygdiuwh54841618jadjiwwiudua4956161"
.LC1:
	.string	"so ki tu: %zu\n"
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
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	call	clock@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -64(%rbp)
	jmp	.L2
.L3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	addl	$1, -64(%rbp)
.L2:
	cmpl	$10, -64(%rbp)
	jle	.L3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1402, %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	imull	$1402, %eax, %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	imull	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1200, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	xorl %eax, %eax 
	call	printf@PLT
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	xorl %eax, %eax 
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	xorl %eax, %eax 
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
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
