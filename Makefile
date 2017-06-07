.PHONY: all clean libs

all: hello_world

libs: libgoodbye.a libhello.so

hello_world: hello.o libgoodbye.a libhello.so
	gcc -o hello_world hello.o -L. -lgoodbye -lhello
	
hello.o: hello.c
	gcc -c hello.c
	
libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o
	
libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c
	
libhello.so: libhello.o
	gcc -shared -o libhello.so libhello.o
	
libhello.o: libhello.c
	gcc -c -fPIC libhello.c
	
clean:
	rm *.o *.a *.so hello_world