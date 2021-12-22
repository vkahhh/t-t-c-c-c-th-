	.file	"magoc.c"
	.text
	.p2align 4,,15
	.globl	swap
	.type	swap, @function
swap:
.LFB23:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	(%rsi), %edx
	movl	%edx, (%rdi)
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE23:
	.size	swap, .-swap
	.p2align 4,,15
	.globl	shakersort
	.type	shakersort, @function
shakersort:
.LFB24:
	.cfi_startproc
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	testl	%eax, %eax
	jle	.L16
	leal	-3(%rsi), %r9d
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	addl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leal	-2(%rsi), %r10d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%r9d, %r11d
	leaq	4(%rdi), %rbp
	leaq	-8(%rdi), %rbx
	subl	%eax, %r11d
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L11:
	leal	1(%r10), %eax
	leal	1(%r8), %r12d
	cmpl	%r8d, %eax
	jle	.L5
	leal	1(%r9), %edx
	leaq	(%rdi,%r8,4), %rax
	addq	%r8, %rdx
	leaq	0(%rbp,%rdx,4), %rsi
	.p2align 4,,10
	.p2align 3
.L7:
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L6
	movl	%ecx, (%rax)
	movl	%edx, 4(%rax)
.L6:
	addq	$4, %rax
	cmpq	%rsi, %rax
	jne	.L7
.L5:
	cmpl	%r12d, %r10d
	jl	.L8
	movslq	%r10d, %rsi
	movl	%r9d, %edx
	salq	$2, %rsi
	salq	$2, %rdx
	leaq	-4(%rdi,%rsi), %rax
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	.p2align 4,,10
	.p2align 3
.L10:
	movl	4(%rax), %edx
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	jge	.L9
	movl	%ecx, 4(%rax)
	movl	%edx, (%rax)
.L9:
	subq	$4, %rax
	cmpq	%rax, %rsi
	jne	.L10
.L8:
	subl	$2, %r9d
	addq	$1, %r8
	subl	$1, %r10d
	cmpl	%r11d, %r9d
	jne	.L11
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	rep ret
	.cfi_endproc
.LFE24:
	.size	shakersort, .-shakersort
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%d "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC2(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	#movl	$10, %esi : 5 byte
	push    $10           
   	pop     %esi  
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movdqa	.LC0(%rip), %xmm0
	movq	%rsp, %rbx
	leaq	40(%rbx), %r12
	movq	%rbx, %rdi
	movl	$3, 32(%rsp)
	movaps	%xmm0, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movdqa	.LC1(%rip), %xmm0
	movl	$44, 36(%rsp)
	movaps	%xmm0, 16(%rsp)
	call	shakersort
	.p2align 4,,10
	.p2align 3
.L20:
	xorl	%eax, %eax
	movq	%rbp, %rsi
	#movl	$1, %edi
	push    $1           
   	pop     %edi 
	addq	$4, %rbx
	movl	-4(%rbx), %edx
	call	__printf_chk@PLT
	cmpq	%rbx, %r12
	jne	.L20
	xorl	%eax, %eax
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L24
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L24:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	43
	.long	432
	.long	36
	.long	5
	.align 16
.LC1:
	.long	6
	.long	57
	.long	94
	.long	63
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
