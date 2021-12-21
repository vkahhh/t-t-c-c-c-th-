	.file	"magoc.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Tong cac so thuan nghich co 6 chu so la: %d"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$100000, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	$1717986919, %ebp
	xorl	%ebx, %ebx
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%r13d, %ecx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ecx, %eax
	movl	%esi, %edi
	imull	%ebp
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leal	(%rdx,%rdx,4), %edx
	addl	%edx, %edx
	subl	%edx, %ecx
	movl	%ecx, -4(%r12,%rsi,4)
	addq	$1, %rsi
	testl	%eax, %eax
	movl	%ecx, %edx
	movl	%eax, %ecx
	jg	.L2
	movl	%edi, %eax
	sarl	%eax
	je	.L3
	cmpl	%edx, (%rsp)
	jne	.L6
	cmpl	$1, %eax
	je	.L3
	leal	-2(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 4(%rsp)
	jne	.L6
	cmpl	$2, %eax
	je	.L3
	leal	-3(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 8(%rsp)
	jne	.L6
	cmpl	$3, %eax
	je	.L3
	leal	-4(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 12(%rsp)
	jne	.L6
	cmpl	$4, %eax
	je	.L3
	leal	-5(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 16(%rsp)
	jne	.L6
	cmpl	$5, %eax
	je	.L3
	leal	-6(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 20(%rsp)
	jne	.L6
	cmpl	$6, %eax
	je	.L3
	leal	-7(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 24(%rsp)
	jne	.L6
	cmpl	$7, %eax
	je	.L3
	leal	-8(%rdi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %esi
	cmpl	%esi, 28(%rsp)
	jne	.L6
	cmpl	$8, %eax
	je	.L3
	subl	$9, %edi
	movslq	%edi, %rdi
	movl	(%rsp,%rdi,4), %edi
	cmpl	%edi, 32(%rsp)
	jne	.L6
	cmpl	$10, %eax
	jne	.L3
	movl	40(%rsp), %eax
	cmpl	%eax, 36(%rsp)
	jne	.L6
.L3:
	leaq	.LC1(%rip), %rsi
	movl	%r13d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	addl	$1, %ebx
	call	__printf_chk@PLT
.L6:
	addl	$1, %r13d
	cmpl	$1000000, %r13d
	jne	.L5
	leaq	.LC0(%rip), %rsi
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	88(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L40
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L40:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	isThuanNghich
	.type	isThuanNghich, @function
isThuanNghich:
.LFB24:
	.cfi_startproc
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movl	$1, %ecx
	movl	$1717986919, %r8d
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r9
	.p2align 4,,10
	.p2align 3
.L42:
	movl	%edi, %eax
	movl	%ecx, %esi
	imull	%r8d
	movl	%edi, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leal	(%rdx,%rdx,4), %edx
	addl	%edx, %edx
	subl	%edx, %edi
	movl	%edi, -4(%r9,%rcx,4)
	addq	$1, %rcx
	testl	%eax, %eax
	movl	%edi, %edx
	movl	%eax, %edi
	jg	.L42
	movl	%esi, %eax
	sarl	%eax
	je	.L62
	cmpl	(%rsp), %edx
	jne	.L61
	cmpl	$1, %eax
	je	.L41
	leal	-2(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 4(%rsp)
	jne	.L61
	cmpl	$2, %eax
	je	.L62
	leal	-3(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 8(%rsp)
	jne	.L61
	cmpl	$3, %eax
	je	.L62
	leal	-4(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 12(%rsp)
	jne	.L61
	cmpl	$4, %eax
	je	.L62
	leal	-5(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 16(%rsp)
	jne	.L61
	cmpl	$5, %eax
	je	.L62
	leal	-6(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 20(%rsp)
	jne	.L61
	cmpl	$6, %eax
	je	.L62
	leal	-7(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 24(%rsp)
	jne	.L61
	cmpl	$7, %eax
	je	.L62
	leal	-8(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%rsp,%rdx,4), %ecx
	cmpl	%ecx, 28(%rsp)
	jne	.L61
	cmpl	$8, %eax
	je	.L62
	subl	$9, %esi
	movslq	%esi, %rsi
	movl	(%rsp,%rsi,4), %esi
	cmpl	%esi, 32(%rsp)
	jne	.L61
	cmpl	$10, %eax
	jne	.L62
	movl	40(%rsp), %eax
	cmpl	%eax, 36(%rsp)
	sete	%al
	movzbl	%al, %eax
.L41:
	movq	88(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L68
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L61:
	xorl	%eax, %eax
	jmp	.L41
.L68:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	isThuanNghich, .-isThuanNghich
	.globl	DEC_10
	.section	.rodata
	.align 4
	.type	DEC_10, @object
	.size	DEC_10, 4
DEC_10:
	.long	10
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
