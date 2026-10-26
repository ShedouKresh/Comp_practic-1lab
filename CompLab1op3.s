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
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
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
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L2
	movl	$1, %ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L5:
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	testl	%edx, %edx
	je	.L7
	addl	$1, %ebx
	cmpl	%ecx, %ebx
	jle	.L5
.L2:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%ebx, %edx
	leaq	.LC3(%rip), %rcx
	addl	$1, %ebx
	call	printf
	movl	44(%rsp), %ecx
	cmpl	%ecx, %ebx
	jle	.L5
	jmp	.L2
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev4, Built by MSYS2 project) 16.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
