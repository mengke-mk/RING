#include <iostream>
#include <vector>
using namespace std;

enum class SyncMode{ 
  blocking, async
};
const SyncMode async = SyncMode::async;
const SyncMode blocking = SyncMode::blocking;


template<SyncMode S, typename F>
struct Specializer {};

// async call
template <typename F>
struct Specializer<SyncMode::async, F>{
  static void call(int core_id, F f, void(F::*mf)() const){
    std::cout << " This is a async void-return version." << std::endl;
    f();
  }
  template<typename T>
  static std::vector<T> call(int core_id, F f, T (F::*mf)() const){
    std::cout << " This is a async T-return version." << std::endl;
    std::vector<T> ret;
    ret.push_back(f());
    return ret;
  }
};

// blocking call
template <typename F>
struct Specializer<SyncMode::blocking,F>{
  static void call(int core_id, F f, void(F::*mf)() const){
    std::cout << " This is a blocking void-return version" << std::endl;
    f();
  }

  template <typename T> 
  static auto call(int core_id, F f, T (F::*mf)() const) -> T{
    std::cout << " This is a blocking T-return version." << std::endl;
    return f();
  }
};

// API that expose to users.
template<SyncMode S = SyncMode::blocking, typename F>
auto call(int core_id, F f) -> decltype(Specializer<S,F>::call(core_id, f, &F::operator())){
  return Specializer<S,F>::call(core_id, f, &F::operator());
}

int main(){
  auto lmd1 = []{ return 1; };
  auto lmd2 = []{ std::cout << "hello" << std::endl; };


  auto r1 = call<async>(1, lmd1);
  std::cout << r1[0] << std::endl;
  call<async>(1, lmd2);

  auto r2 = call(1, lmd1);
  std::cout << r2 << std::endl;
  call(1, lmd2);

  return 0;
}
