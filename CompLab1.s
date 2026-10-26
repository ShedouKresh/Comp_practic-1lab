	.file	"CompLab1.c"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\320\235\320\260\321\202\321\203\321\200\320\260\320\273\321\214\320\275\320\276\320\265 \321\207\320\270\321\201\320\273\320\276\0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "\320\224\320\265\320\273\320\270\321\202\320\265\320\273\320\270 \321\207\320\270\321\201\320\273\320\260\0"
.LC3:
	.ascii "%d \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	call	scanf
	movl	-8(%rbp), %eax
	leaq	.LC2(%rip), %rcx
	movl	%eax, %edx
	call	printf
	movl	$1, -4(%rbp)
	jmp	.L2
.L4:
	movl	-8(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-4(%rbp), %eax
	leaq	.LC3(%rip), %rcx
	movl	%eax, %edx
	call	printf
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L4
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev4, Built by MSYS2 project) 16.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
