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
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbx
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1000, -4(%rbx)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$0, -8(%rbx)
	jmp	.L2
.L4:
	movl	-8(%rbx), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-8(%rbx), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	xorl    %eax, %eax
	call	printf@PLT
.L3:
	addl	$1, -8(%rbx)
.L2:
	movl	-8(%rbx), %eax
	cmpl	-4(%rbx), %eax
	jle	.L4
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -8(%rbx)
	jmp	.L5
.L7:
	movl	-8(%rbx), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L6
	movl	-8(%rbx), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	xorl       %eax, %eax
	call	printf@PLT
.L6:
	addl	$1, -8(%rbx)
.L5:
	movl	-8(%rbx), %eax
	cmpl	-4(%rbx), %eax
	jle	.L7
	xorl     %eax, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
