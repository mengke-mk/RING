	.file	"fcontext.cc"
	.text
	.type	_ZNSt14_Function_base13_Base_managerIZ4mainEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZ4mainEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB2050:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L3
	cmpl	$1, %edx
	jg	.L4
	testl	%edx, %edx
	je	.L5
.L9:
	movl	$0, %eax
	ret
.L4:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	cmpl	$2, %edx
	je	.L6
	cmpl	$3, %edx
	je	.L7
	jmp	.L2
.L5:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	movq	$_ZTIZ4mainEUlvE_, (%rdi)
	jmp	.L9
.L3:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	jmp	.L9
.L6:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	(%rsi), %rbp
	movl	$16, %edi
	call	_Znwm
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rax, (%rbx)
	jmp	.L2
.L7:
	movq	(%rdi), %rdi
	call	_ZdlPv
.L2:
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2050:
	.size	_ZNSt14_Function_base13_Base_managerIZ4mainEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZ4mainEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"-- swap in --"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"pass in [(rdi):%x] [(rsi):%x]\n"
	.text
	.align 2
	.globl	_ZN14Coro_Scheduler5trampEPv
	.type	_ZN14Coro_Scheduler5trampEPv, @function
_ZN14Coro_Scheduler5trampEPv:
.LFB1916:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$.LC0, %edi
	call	puts
	movq	4176(%rbx), %rbp
	movq	32(%rbp), %rdx
	movq	4168(%rbx), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	4168(%rbx), %r12
	leaq	32(%rbp), %rsi
	movq	%r12, %rdi
	call	_swapstack_s
	cmpq	$0, 4120(%rbx)
	jne	.L11
	call	_ZSt25__throw_bad_function_callv
.L11:
	leaq	4104(%rbx), %rdi
	call	*4128(%rbx)
	movzbl	4192(%rbx), %eax
	andl	$-5, %eax
	orl	$1, %eax
	movb	%al, 4192(%rbx)
	movq	4176(%rbx), %rbp
	movq	32(%rbp), %rdx
	movq	4168(%rbx), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	32(%rbp), %rsi
	movq	%r12, %rdi
	call	_swapstack_s
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1916:
	.size	_ZN14Coro_Scheduler5trampEPv, .-_ZN14Coro_Scheduler5trampEPv
	.align 2
	.globl	_ZN14Coro_Scheduler12_delete_coroEP9Coroutine
	.type	_ZN14Coro_Scheduler12_delete_coroEP9Coroutine, @function
_ZN14Coro_Scheduler12_delete_coroEP9Coroutine:
.LFB1911:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	call	free
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1911:
	.size	_ZN14Coro_Scheduler12_delete_coroEP9Coroutine, .-_ZN14Coro_Scheduler12_delete_coroEP9Coroutine
	.align 2
	.globl	_ZN14Coro_Scheduler10_next_coroEv
	.type	_ZN14Coro_Scheduler10_next_coroEv, @function
_ZN14Coro_Scheduler10_next_coroEv:
.LFB1912:
	.cfi_startproc
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L16
	movq	4184(%rax), %rdx
	movq	%rdx, 56(%rdi)
	movq	$0, 4184(%rax)
	subq	$1, 72(%rdi)
	ret
.L16:
	movq	$0, 64(%rdi)
	ret
	.cfi_endproc
.LFE1912:
	.size	_ZN14Coro_Scheduler10_next_coroEv, .-_ZN14Coro_Scheduler10_next_coroEv
	.align 2
	.globl	_ZN14Coro_Scheduler5awaitEv
	.type	_ZN14Coro_Scheduler5awaitEv, @function
_ZN14Coro_Scheduler5awaitEv:
.LFB1913:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp
	leaq	32(%rdi), %r12
.L20:
	movq	%rbp, %rdi
	call	_ZN14Coro_Scheduler10_next_coroEv
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L18
	movzbl	4192(%rax), %eax
	orl	$4, %eax
	andl	$-3, %eax
	movb	%al, 4192(%rbx)
	movq	%rbx, 40(%rbp)
	movb	$0, 48(%rbp)
	movq	4168(%rbx), %rdx
	movq	32(%rbp), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	4168(%rbx), %rsi
	movq	%r12, %rdi
	call	_swapstack_s
	movb	$1, 48(%rbp)
	jmp	.L20
.L18:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1913:
	.size	_ZN14Coro_Scheduler5awaitEv, .-_ZN14Coro_Scheduler5awaitEv
	.align 2
	.globl	_ZN14Coro_Scheduler15coroutine_yeildEv
	.type	_ZN14Coro_Scheduler15coroutine_yeildEv, @function
_ZN14Coro_Scheduler15coroutine_yeildEv:
.LFB1915:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	call	_ZN14Coro_Scheduler10_next_coroEv
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L22
	movq	40(%r12), %rbx
	cmpq	$0, 56(%r12)
	jne	.L24
	movq	%rbx, 56(%r12)
	jmp	.L25
.L24:
	movq	64(%r12), %rax
	movq	%rbx, 4184(%rax)
.L25:
	movq	%rbx, 64(%r12)
	movq	$0, 4184(%rbx)
	addq	$1, 72(%r12)
	movq	%rbp, 40(%r12)
	movzbl	4192(%rbx), %eax
	andl	$-5, %eax
	orl	$2, %eax
	movb	%al, 4192(%rbx)
	movzbl	4192(%rbp), %eax
	andl	$-3, %eax
	orl	$4, %eax
	movb	%al, 4192(%rbp)
	movq	4168(%rbp), %rdx
	movq	4168(%rbx), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	4168(%rbp), %rsi
	leaq	4168(%rbx), %rdi
	call	_swapstack_s
.L22:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1915:
	.size	_ZN14Coro_Scheduler15coroutine_yeildEv, .-_ZN14Coro_Scheduler15coroutine_yeildEv
	.type	_ZNSt17_Function_handlerIFvvEZ4mainEUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEZ4mainEUlvE_E9_M_invokeERKSt9_Any_data:
.LFB2049:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	movq	(%rax), %rdi
	call	_ZN14Coro_Scheduler15coroutine_yeildEv
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2049:
	.size	_ZNSt17_Function_handlerIFvvEZ4mainEUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEZ4mainEUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt8functionIFvvEEC2ERKS1_,"axG",@progbits,_ZNSt8functionIFvvEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt8functionIFvvEEC2ERKS1_
	.type	_ZNSt8functionIFvvEEC2ERKS1_, @function
_ZNSt8functionIFvvEEC2ERKS1_:
.LFB1984:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1984
	movq	$0, 16(%rdi)
	cmpq	$0, 16(%rsi)
	je	.L36
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	24(%rsi), %rdx
	movq	%rdx, 24(%rdi)
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rdi)
	movl	$2, %edx
.LEHB0:
	call	*16(%rax)
.LEHE0:
	jmp	.L29
.L33:
	movq	%rax, %rbp
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L32
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	*%rcx
.L32:
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L29:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L36:
	rep; ret
	.cfi_endproc
.LFE1984:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt8functionIFvvEEC2ERKS1_,"aG",@progbits,_ZNSt8functionIFvvEEC5ERKS1_,comdat
.LLSDA1984:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1984-.LLSDACSB1984
.LLSDACSB1984:
	.uleb128 .LEHB0-.LFB1984
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L33-.LFB1984
	.uleb128 0
	.uleb128 .LEHB1-.LFB1984
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1984:
	.section	.text._ZNSt8functionIFvvEEC2ERKS1_,"axG",@progbits,_ZNSt8functionIFvvEEC5ERKS1_,comdat
	.size	_ZNSt8functionIFvvEEC2ERKS1_, .-_ZNSt8functionIFvvEEC2ERKS1_
	.weak	_ZNSt8functionIFvvEEC1ERKS1_
	.set	_ZNSt8functionIFvvEEC1ERKS1_,_ZNSt8functionIFvvEEC2ERKS1_
	.text
	.align 2
	.globl	_ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE
	.type	_ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE, @function
_ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE:
.LFB1910:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1910
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, %rbp
	movl	$4224, %edi
.LEHB2:
	call	_Znwm
	movq	%rax, %rbx
	movq	$0, 4120(%rax)
	movq	$0, (%rax)
	movq	$0, 4088(%rax)
	leaq	8(%rax), %rdi
	andq	$-8, %rdi
	movq	%rax, %rcx
	subq	%rdi, %rcx
	addl	$4096, %ecx
	shrl	$3, %ecx
	movl	%ecx, %ecx
	movl	$0, %eax
	rep; stosq
	movq	$0, 4096(%rbx)
	movq	$0, 4176(%rbx)
	movq	$0, 4184(%rbx)
	movb	$0, 4192(%rbx)
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	call	_ZNSt8functionIFvvEEC1ERKS1_
.LEHE2:
	movq	$0, 4096(%rbx)
	movq	%rsp, %rsi
	leaq	32(%rsp), %rdi
.LEHB3:
	call	_ZNSt8functionIFvvEEC1ERKS1_
.LEHE3:
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	4104(%rbx), %rsi
	movq	4112(%rbx), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rax, 4104(%rbx)
	movq	%rdx, 4112(%rbx)
	movq	48(%rsp), %rdx
	movq	4120(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	%rdx, 4120(%rbx)
	movq	56(%rsp), %rdx
	movq	4128(%rbx), %rcx
	movq	%rcx, 56(%rsp)
	movq	%rdx, 4128(%rbx)
	testq	%rax, %rax
	je	.L38
	movl	$3, %edx
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	call	*%rax
.L38:
	movq	$0, (%rbx)
	movq	$0, 4088(%rbx)
	leaq	8(%rbx), %rdi
	andq	$-8, %rdi
	movq	%rbx, %rcx
	subq	%rdi, %rcx
	addl	$4096, %ecx
	shrl	$3, %ecx
	movl	%ecx, %ecx
	movl	$0, %eax
	rep; stosq
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.L43
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rax
	jmp	.L43
.L42:
	movq	%rax, %rbx
	movq	16(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L41
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rcx
.L41:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L43:
	movq	%rbx, %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1910:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1910:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1910-.LLSDACSB1910
.LLSDACSB1910:
	.uleb128 .LEHB2-.LFB1910
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1910
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L42-.LFB1910
	.uleb128 0
	.uleb128 .LEHB4-.LFB1910
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1910:
	.text
	.size	_ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE, .-_ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE
	.section	.rodata.str1.1
.LC2:
	.string	"-- before swap --"
.LC3:
	.string	"-- after swap --"
	.text
	.align 2
	.globl	_ZN14Coro_Scheduler16coroutine_createESt8functionIFvvEE
	.type	_ZN14Coro_Scheduler16coroutine_createESt8functionIFvvEE, @function
_ZN14Coro_Scheduler16coroutine_createESt8functionIFvvEE:
.LFB1914:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1914
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %rbp
	movq	%rsp, %rdi
.LEHB5:
	call	_ZNSt8functionIFvvEEC1ERKS1_
.LEHE5:
	movq	%rsp, %rsi
	movq	%rbp, %rdi
.LEHB6:
	call	_ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE
.LEHE6:
	movq	%rax, %rbx
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.L46
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rax
.L46:
	movq	%rbx, 4136(%rbx)
	movq	$4096, 4144(%rbx)
	movl	$0, 4152(%rbx)
	movq	%rbp, 4160(%rbx)
	orb	$2, 4192(%rbx)
	movq	%rbp, 4096(%rbx)
	cmpb	$0, 48(%rbp)
	je	.L47
	movq	%rbp, 4176(%rbx)
	jmp	.L48
.L47:
	movq	40(%rbp), %rax
	addq	$4136, %rax
	movq	%rax, 4176(%rbx)
.L48:
	leaq	4096(%rbx), %rax
	movq	%rax, 4168(%rbx)
	leaq	4168(%rbx), %r13
	leaq	32(%rbp), %rdi
	movq	%rbx, %rcx
	movl	$_ZN14Coro_Scheduler5trampEPv, %edx
	movq	%r13, %rsi
.LEHB7:
	call	_makestack_s
	movl	$.LC2, %edi
	call	puts
	movq	4176(%rbx), %r12
	movq	4168(%rbx), %rdx
	movq	32(%r12), %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	32(%r12), %rdi
	movq	%r13, %rsi
	call	_swapstack_s
	movl	$.LC3, %edi
	call	puts
.LEHE7:
	cmpq	$0, 56(%rbp)
	jne	.L49
	movq	%rbx, 56(%rbp)
	jmp	.L50
.L49:
	movq	64(%rbp), %rax
	movq	%rbx, 4184(%rax)
.L50:
	movq	%rbx, 64(%rbp)
	movq	$0, 4184(%rbx)
	addq	$1, 72(%rbp)
	jmp	.L54
.L53:
	movq	%rax, %rbx
	movq	16(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L52
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rcx
.L52:
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L54:
	addq	$40, %rsp
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
	.cfi_endproc
.LFE1914:
	.section	.gcc_except_table
.LLSDA1914:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1914-.LLSDACSB1914
.LLSDACSB1914:
	.uleb128 .LEHB5-.LFB1914
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1914
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L53-.LFB1914
	.uleb128 0
	.uleb128 .LEHB7-.LFB1914
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1914
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE1914:
	.text
	.size	_ZN14Coro_Scheduler16coroutine_createESt8functionIFvvEE, .-_ZN14Coro_Scheduler16coroutine_createESt8functionIFvvEE
	.section	.rodata.str1.1
.LC4:
	.string	"fcontext-"
.LC5:
	.string	" : "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1919:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1919
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movl	$80, %edi
.LEHB9:
	call	_Znwm
.LEHE9:
	movq	%rax, %rbp
	movq	$0, 40(%rax)
	movb	$1, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movl	$0, %ebx
.L61:
	movq	$0, 16(%rsp)
	movl	$16, %edi
.LEHB10:
	call	_Znwm
.LEHE10:
	movq	%rbp, (%rax)
	movl	%ebx, 8(%rax)
	movq	%rax, (%rsp)
	movq	$_ZNSt17_Function_handlerIFvvEZ4mainEUlvE_E9_M_invokeERKSt9_Any_data, 24(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerIZ4mainEUlvE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, 16(%rsp)
	movq	%rsp, %rsi
	movq	%rbp, %rdi
.LEHB11:
	call	_ZN14Coro_Scheduler16coroutine_createESt8functionIFvvEE
.LEHE11:
	jmp	.L67
.L65:
	movq	%rax, %rbx
	movq	16(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L59
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rcx
.L59:
	movq	%rbx, %rdi
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L67:
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.L60
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rax
.L60:
	addl	$1, %ebx
	cmpl	$4, %ebx
	jne	.L61
	jmp	.L69
.L64:
	movq	%rax, %rbx
	movq	16(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L63
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rcx
.L63:
	movq	%rbx, %rdi
.LEHB13:
	call	_Unwind_Resume
.L69:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	_ZN14Coro_Scheduler5awaitEv
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r12, %rax
	movq	%rax, %rbx
	shrq	$2, %rbx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.LEHE13:
	movl	$0, %eax
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1919:
	.section	.gcc_except_table
.LLSDA1919:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1919-.LLSDACSB1919
.LLSDACSB1919:
	.uleb128 .LEHB9-.LFB1919
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB1919
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L65-.LFB1919
	.uleb128 0
	.uleb128 .LEHB11-.LFB1919
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L64-.LFB1919
	.uleb128 0
	.uleb128 .LEHB12-.LFB1919
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB1919
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE1919:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I__ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE, @function
_GLOBAL__sub_I__ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE:
.LFB2122:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2122:
	.size	_GLOBAL__sub_I__ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE, .-_GLOBAL__sub_I__ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN14Coro_Scheduler11_spawn_coroESt8functionIFvvEE
	.section	.rodata
	.type	_ZTSZ4mainEUlvE_, @object
	.size	_ZTSZ4mainEUlvE_, 14
_ZTSZ4mainEUlvE_:
	.string	"*Z4mainEUlvE_"
	.align 16
	.type	_ZTIZ4mainEUlvE_, @object
	.size	_ZTIZ4mainEUlvE_, 16
_ZTIZ4mainEUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZ4mainEUlvE_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
