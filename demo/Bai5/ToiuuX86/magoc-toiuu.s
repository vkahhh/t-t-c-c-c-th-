	.file	"magoc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d x "
.LC1:
	.string	"%d"
.LC3:
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
	subq	$480, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	clock@PLT
	movq	%rax, -440(%rbp)
	movl	$10000000, -452(%rbp)
	movl	$2, -448(%rbp)
	movl	$0, -444(%rbp)
	jmp	.L2
.L4:
	movl	-452(%rbp), %eax
	cltd
	idivl	-448(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-452(%rbp), %eax
	cltd
	idivl	-448(%rbp)
	movl	%eax, -452(%rbp)
	movl	-444(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -444(%rbp)
	cltq
	movl	-448(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	jmp	.L2
.L3:
	addl	$1, -448(%rbp)
.L2:
	cmpl	$1, -452(%rbp)
	jg	.L4
	cmpl	$0, -444(%rbp)
	jne	.L5
	movl	-444(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -444(%rbp)
	cltq
	movl	-452(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
.L5:
	movl	$0, -448(%rbp)
	jmp	.L6
.L7:
	movl	-448(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	addl	$1, -448(%rbp)
.L6:
	movl	-444(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -448(%rbp)
	jl	.L7
	movl	-444(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	call	clock@PLT
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	subq	-440(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -472(%rbp)
	movsd	-472(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	movq   %rbp, %rsp    #leave
	popq   %rbp 		#leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
