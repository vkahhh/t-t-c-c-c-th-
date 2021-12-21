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
	subq	$32, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L2
.L3:
	movl	-24(%rbp), %eax
	addl	%eax, -32(%rbp)
	addl	$1, -28(%rbp)
.L2:
	cmpl	$10, -28(%rbp)
	jle	.L3
	movl	-24(%rbp), %eax
	addl	$1402, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	imull	$1402, %eax, %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1200, %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
