	.file	"toiuu.c"
	.text
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	100000
	.section	.rodata
.LC0:
	.string	"n la so chan"
.LC1:
	.string	"n la so le"
	.text
	.globl	KiemTraChanLe
	.type	KiemTraChanLe, @function
KiemTraChanLe:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.L2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L4
.L2:
	leaq	.LC1(%rip), %rdi
	xorl %eax, %eax 
	call	printf@PLT
.L4:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	KiemTraChanLe, .-KiemTraChanLe
	.globl	isPrimeNumber
	.type	isPrimeNumber, @function
isPrimeNumber:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L6
	xorl 	%eax, %eax
	jmp	.L7
.L6:
	cvtsi2sd	-20(%rbp), %xmm0
	call	sqrt@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L8
.L10:
	movl	-20(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L9
	xorl 	%eax, %eax
	jmp	.L7
.L9:
	addl	$1, -8(%rbp)
.L8:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L10
	#movl	$1, %eax :5byte
	xor 	%eax, %eax #3 byte
	inc	%eax
.L7:
	movq   %rbp, %rsp 
popq  %rbp 

	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align 8
.LC2:
	.string	"Tat ca cac so nguyen to nho hon %d la: \n"
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
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	KiemTraChanLe
	movl	n(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	xorl 	%eax, %eax 
	call	printf@PLT
	movl	n(%rip), %eax
	cmpl	$1, %eax
	jle	.L12
	movl	$2, %esi
	leaq	.LC3(%rip), %rdi
	xorl 	%eax, %eax 
	call	printf@PLT
.L12:
	movl	$3, -4(%rbp)
	jmp	.L13
.L15:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	isPrimeNumber
	cmpl	$1, %eax
	jne	.L14
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax 
	call	printf@PLT
.L14:
	addl	$2, -4(%rbp)
.L13:
	movl	n(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L15
	xorl	%eax, %eax 
	movq   %rbp, %rsp    
	popq   %rbp 

	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
