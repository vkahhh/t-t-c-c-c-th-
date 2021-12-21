	.file	"magoc.c"
	.text
	.globl	n
	.data
	.align 8
	.type	n, @object
	.size	n, 8
n:
	.quad	100000
	.text
	.globl	isPrimeNumber
	.type	isPrimeNumber, @function
isPrimeNumber:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$1, -24(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	cvtsi2sdq	-24(%rbp), %xmm0
	call	sqrt@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L4
.L6:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	testq	%rax, %rax
	jne	.L5
	movl	$0, %eax
	jmp	.L3
.L5:
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L6
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
.LC0:
	.string	"n la so chan"
.LC1:
	.string	"n la so le"
	.text
	.globl	KiemTraChanLe
	.type	KiemTraChanLe, @function
KiemTraChanLe:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L8
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L10
.L8:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	KiemTraChanLe, .-KiemTraChanLe
	.section	.rodata
	.align 8
.LC2:
	.string	"Tat ca cac so nguyen to nho hon %ld la: \n"
.LC3:
	.string	"%d "
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
	movq	n(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	n(%rip), %rax
	cmpq	$1, %rax
	jle	.L12
	movl	$2, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L12:
	movl	$3, -4(%rbp)
	jmp	.L13
.L15:
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	isPrimeNumber
	cmpl	$1, %eax
	jne	.L14
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L14:
	addl	$2, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	n(%rip), %rax
	cmpq	%rax, %rdx
	jl	.L15
	movq	n(%rip), %rax
	movq	%rax, %rdi
	call	KiemTraChanLe
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
