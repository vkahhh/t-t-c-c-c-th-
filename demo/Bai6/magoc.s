	.file	"magoc.c"
	.text
	.globl	DEC_10
	.section	.rodata
	.align 4
	.type	DEC_10, @object
	.size	DEC_10, 4
DEC_10:
	.long	10
.LC0:
	.string	"%d\n"
	.align 8
.LC1:
	.string	"Tong cac so thuan nghich co 6 chu so la: %d"
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
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$100000, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	isThuanNghich
	testl	%eax, %eax
	je	.L3
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$999999, -4(%rbp)
	jle	.L4
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	isThuanNghich
	.type	isThuanNghich, @function
isThuanNghich:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$128, %rsp
	movl	%edi, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -104(%rbp)
.L7:
	movl	$10, %esi
	movl	-104(%rbp), %ecx
	leal	1(%rcx), %eax
	movl	%eax, -104(%rbp)
	movl	-116(%rbp), %eax
	cltd
	idivl	%esi
	movslq	%ecx, %rax
	movl	%edx, -96(%rbp,%rax,4)
	movl	$10, %esi
	movl	-116(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jg	.L7
	movl	$0, -100(%rbp)
	jmp	.L8
.L11:
	movl	-100(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	-104(%rbp), %eax
	subl	-100(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L9
	movl	$0, %eax
	jmp	.L12
.L9:
	addl	$1, -100(%rbp)
.L8:
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -100(%rbp)
	jl	.L11
	movl	$1, %eax
.L12:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	isThuanNghich, .-isThuanNghich
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
