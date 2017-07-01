#include <iostream>
#include <thread>

thread_local int thread_id;

int main(){
  std::thread t[6];
  for(int i = 0 ; i < 6 ; ++i){
    t[i] = std::thread([i]{
        thread_id = i;
        std::cout << thread_id << std::endl;
    });
  }

  for(int i = 0 ; i < 6 ; ++i){
    t[i].join();
  }
  return 0;
}
