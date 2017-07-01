#define SAVE_REGS H_SAVE_REGS
#define RESTORE_REGS H_RESTORE_REGS

#define H_SAVE_REGS \
  push %rdi; \
  push %rbp; \
  push %rbx; \
  push %r12; \
  push %r13; \
  push %r14; \
  push %r15; \
  sub $8, %rsp; \
  stmxcsr 4(%rsp); \
  fnstcw (%rsp);

#define H_RESTORE_REGS \
  fldcw (%rsp); \
  ldmxcsr 4(%rsp); \
  add $8, %rsp; \
  pop %r15; \
  pop %r14; \
  pop %r13; \
  pop %r12; \
  pop %rbx; \
  pop %rbp; \
  pop %rdi;

#define L_SAVE_REGS \
  sub $4, %rsp; \
  stmxcsr (%rsp);

#define L_RESTORE_REGS \
  ldmxcsr (%rsp); \
  add $4, %rsp;

.globl _swapstack_s
_swapstack_s:
  SAVE_REGS
  mov %rsp, (%rdi)
  mov (%rsi), %rsp
  RESTORE_REGS
  ret

.globl _makestack_s
_makestack_s: 
  mov %rdx, %r12
  mov %rcx, %r13

  SAVE_REGS
  mov %rsp, (%rdi)
  mov (%rsi), %rsp

  push %rdx
  push %rcx

  mov %rdi, %rax
  mov %rsi, %rdi
  mov %rax, %rsi
  call _swapstack_s
  
  //another world
  pop %rdi
  pop %r12
  call *%r12

  hlt
  
