.PHONY: all clean

all: hello_world

hello_world: hello.o libgoodbye.a
	gcc -o hello_world hello.o -L. -lgoodbye
	
hello.o:
	gcc -c hello.c
	
libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o
	
libgoodbye.o:
	gcc -c libgoodbye.c
	
clean:
	rm *.o *.a hello_world