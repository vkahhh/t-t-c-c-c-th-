	.file	"toiuu.c"
	.text
	.section	.rodata
.LC1:
	.string	"Cac so chan la: "
.LC2:
	.string	"%d \t"
.LC3:
	.string	"Tong: %f"
.LC4:
	.string	"\n trung binh cong : %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$1000000, -8(%rbp)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$0, -16(%rbp)
	jmp	.L2
.L4:
	movl	-16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L4
	movl	$0, -12(%rbp)
	jmp	.L5
.L6:
	cvtsi2ss	-12(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -12(%rbp) ;chuyen gt 1 vao [rbp -12]
.L5:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L6
	cvtss2sd	-20(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtsi2ss	-8(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax ;5 byte
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
