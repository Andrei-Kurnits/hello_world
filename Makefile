.PHONY: all clean

all: hello_world

hello_world: hello.o
	gcc -o hello_world hello.o
	
hello.o:
	gcc -c -o hello.o hello.c
	
	
clean:
	rm *.o hello_world