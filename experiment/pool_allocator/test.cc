#include <iostream>
#define ALIGN_UP(x, y) \
    ((((u_int64_t)(x) & (((u_int64_t)(y))-1)) != 0) ? \
        ((void *)(((u_int64_t)(x) & (~(u_int64_t)((y)-1)))+(y))) \
        : ((void *)(x)))

int main(){
  std::cout << (size_t)ALIGN_UP(64, 64) << std::endl;
  return 0;
}

