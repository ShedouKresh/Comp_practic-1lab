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
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	44(%rsp), %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	44(%rsp), %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jle	.L2
	movl	$1, %ebx
	leaq	.LC3(%rip), %rsi
	jmp	.L4
	.p2align 5
.L3:
	addl	$1, %ebx
	movl	44(%rsp), %eax
	cmpl	%ebx, %eax
	jl	.L2
.L4:
	cltd
	idivl	%ebx
	testl	%edx, %edx
	jne	.L3
	movl	%ebx, %edx
	movq	%rsi, %rcx
	call	printf
	jmp	.L3
.L2:
	movl	$0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev4, Built by MSYS2 project) 16.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
