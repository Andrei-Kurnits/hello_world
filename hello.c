#include <stdio.h>
#include "libgoodbye.h"
#include "libhello.h"


int main(int argc, char **argv)
{
        printf("%s\n", getHelloString());
        printf("%s\n", getGoodByeString());
        return 0;
}