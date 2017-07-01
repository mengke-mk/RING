all:
	g++ -std=c++11 -g -O2 -o ucontext ucontext.cc
	g++ -std=c++11 -g -O3 -fno-inline-functions -mno-red-zone -o context.o -c context.S
	g++ -std=c++11 -g -O3 -fno-inline-functions -mno-red-zone -o fcontext fcontext.cc context.h context.o

clean:
	rm -f ucontext
	rm -f fcontext

