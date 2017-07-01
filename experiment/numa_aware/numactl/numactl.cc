#include <iostream>
#include <mpi.h>
#include <numa.h>

int main(int argc, char* argv[]){
  MPI_Init(&argc, &argv);

  int rank;
	int node;
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	if(numa_run_on_node(0)) node = 0;
	else node = 1;
  std::cout << "I'am " << rank << " on node " << node << std::endl;
  MPI_Finalize();
  return 0;
}
