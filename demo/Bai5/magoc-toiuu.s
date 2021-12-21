	.file	"magoc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d x "
.LC1:
	.string	"%d"
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
	subq	$432, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10000000, -428(%rbp)
	movl	$2, -424(%rbp)
	movl	$0, -420(%rbp)
	jmp	.L2
.L4:
	#movl	-428(%rbp), %eax
	leal	-428(%rbp), %rax
	cltd
	idivl	-424(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	#movl	-428(%rbp), %eax
	leal	-428(%rbp), %rax
	cltd
	idivl	-424(%rbp)
	movl	%eax, -428(%rbp)
	#movl	-420(%rbp), %eax
	leal	-420(%rbp), %rax
	leal	1(%rax), %edx
	movl	%edx, -420(%rbp)
	cltq
	movl	-424(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	jmp	.L2
.L3:
	addl	$1, -424(%rbp)
.L2:
	cmpl	$1, -428(%rbp)
	jg	.L4
	cmpl	$0, -420(%rbp)
	jne	.L5
	#movl	-420(%rbp), %eax
	leal	-420(%rbp), %rax
	leal	1(%rax), %edx
	movl	%edx, -420(%rbp)
	cltq
	movl	-428(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
.L5:
	movl	$0, -424(%rbp)
	jmp	.L6
.L7:
	#movl	-424(%rbp), %eax
	leal	-424(%rbp), %rax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl    %eax, %eax 
	call	printf@PLT
	addl	$1, -424(%rbp)
.L6:
	#movl	-420(%rbp), %eax
	leal	-420(%rbp), %rax
	subl	$1, %eax
	cmpl	%eax, -424(%rbp)
	jl	.L7
	#movl	-420(%rbp), %eax
	leal	-420(%rbp), %rax
	subl	$1, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	xorl    %eax, %eax 
	call	printf@PLT
	xorl    %eax, %eax 
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	movq   %rbp, %rsp  
	popq   %rbp 

	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
