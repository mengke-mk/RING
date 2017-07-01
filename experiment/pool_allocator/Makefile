all: pool_allocator.o main.o
	g++ -std=c++11 main.o pool_allocator.o -o test
main.o:
	g++ -std=c++11 -c main.cc -o main.o
pool_allocator.o:
	g++ -std=c++11 -c pool_allocator.cc -o pool_allocator.o
clean:
	rm -f test
	rm -f *.o
