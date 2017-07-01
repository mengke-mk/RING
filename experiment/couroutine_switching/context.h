#ifndef _CONTEXT_H_
#define _CONTEXT_H_

#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>

struct stack_t{
  void * ss_sp;
  size_t ss_size;
  int ss_flags;
};

//40
struct ucontext_t{
  struct stack_t uc_stack;
  struct ucontext_t* uc_link;
  void* rsp;
};



static inline int setcontext(const ucontext_t *ucp){
  //TODO(mengke): not implemented
  return -1;
}

#define getcontext(ucp) \
  asm("mov %%rsp, %0" : "=r"( (ucp)->rsp )::);

void _swapstack(void** osp, void** sp)
  asm ("_swapstack_s");

static inline void swapcontext_inline(void **orsp, void** nrsp){
  asm volatile("":::"memory");
  _swapstack( orsp, nrsp );
}

inline void swapcontext(ucontext_t* oucp, ucontext_t* ucp){
  swapcontext_inline( &(oucp->rsp), &(ucp->rsp));
}

void _makestack(void ** father_sp, void** child_sp, void(*func)(void*), void* arg) 
  asm ("_makestack_s");

static inline void makecontext(ucontext_t* ucp, void(*func)(void*), void* arg){
  ucp->rsp = (void*)( (char*)ucp->uc_stack.ss_sp + ucp->uc_stack.ss_size);
  _makestack( &(ucp->uc_link->rsp), &(ucp->rsp), func, arg);
}

#endif
