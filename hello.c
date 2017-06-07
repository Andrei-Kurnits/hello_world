#include <stdio.h>

extern const char goodbye[];

int main(int argc, char **argv)
{
        printf("Hello world from HELLO.C\n");
        printf("%s\n", goodbye);
        return 0;
}