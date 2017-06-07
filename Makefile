.PHONY: all clean libs

all: hello_world

libs: libgoodbye.a libhello.a

hello_world: hello.o libgoodbye.a libhello.a
	gcc -o hello_world hello.o -L. -lgoodbye -lhello
	
hello.o: hello.c
	gcc -c hello.c
	
libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o
	
libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c
	
libhello.a: libhello.o
	ar cr libhello.a libhello.o
	
libhello.o: libhello.c
	gcc -c libhello.c
	
clean:
	rm *.o *.a *.so hello_world