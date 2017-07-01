#include <iostream>
#include <thread>
#include <random>

#include <numa.h>
#include <mpi.h>


#define RDTSC(val) do {			                          \
    uint64_t __a,__d;					                        \
    asm volatile("rdtsc" : "=a" (__a), "=d" (__d));		\
    (val) = ((uint64_t)__a) | (((uint64_t)__d)<<32);	\
  } while(0)

static inline uint64_t rdtsc() {
  uint64_t val;
  RDTSC(val);
  return val;
}


void basic(){
  if( numa_available()<0 )
    std::cout << "System does not support Numa API!" << std::endl;

  auto threads = numa_num_configured_cpus();
  auto sockets = numa_num_configured_nodes();

  auto threads_per_sockets = threads / sockets;
  std::cout << "threads : " << threads << std::endl
            << "sockets : " << sockets << std::endl
            << "threads_per_sockets : " << threads_per_sockets << std::endl;
  size_t size = 1<<20;
  void* mem = numa_alloc_onnode(size, 0); 
  if(mem == NULL)
    std::cout << "could not allocate memory on node 0" << std::endl;

  numa_free(mem, size);

  if(numa_run_on_node(0)!=0){
    std::cout << "could not assign current thread to node 0 " << std::endl;
  }
}

int main(){
  size_t size = 1<<30;
  void* mem = numa_alloc_onnode(size, 0); 

  std::thread t1([mem]{
    
    // set affinity
    numa_run_on_node(0);
    int * w = (int*) mem;

    uint64_t s = rdtsc();
    int max = (1l<<28);
    for(int i = 0 ; i < max ; i++){
      int j = random() % max;
      w[j] = i;
    }
    uint64_t e = rdtsc();

    std::cout << e-s << std::endl;
  });

  t1.join();
  return 0;
}
