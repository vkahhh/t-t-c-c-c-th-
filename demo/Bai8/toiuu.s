	.file	"toiuu.c"
	.text
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	10
	.text
	.globl	tong
	.type	tong, @function
tong:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L3
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	tong, .-tong
	.globl	tongGiaiThua
	.type	tongGiaiThua, @function
tongGiaiThua:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movq	$0, -16(%rbp)
	movq	$1, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L6
.L7:
	movl	-20(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	addl	$1, -20(%rbp)
.L6:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L7
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	tongGiaiThua, .-tongGiaiThua
	.section	.rodata
.LC1:
	.string	"Tong tu 1 den %d l\303\240 %d.\n"
	.align 8
.LC2:
	.string	"Tong giai thua tu 1! den %d! la %ld. \n"
	.align 8
.LC3:
	.string	"Ket qua cac bieu thuc y v\303\240 z: \t %d \t %d \n"
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
	subq	$32, %rsp
	movl	$1468796, -24(%rbp)
	movl	$4894179, -20(%rbp)
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	tong
	movl	%eax, -16(%rbp)
	movl	n(%rip), %eax
	movl	%eax, %edi
	call	tongGiaiThua
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L10
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %eax
	addl	$456, %eax
	movl	%eax, -32(%rbp)
	jmp	.L11
.L10:
	cvtsi2sd	-12(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.L11:
	movl	n(%rip), %eax
	movl	-16(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	n(%rip), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
