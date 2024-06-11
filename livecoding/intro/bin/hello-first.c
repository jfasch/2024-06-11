#include "hello.h"
#include "hello-name.h"

#include <DemoConfig.h>

#include <stdio.h>


int main(int argc, char** argv)
{
    printf("Major: %d, Minor: %d, FOO: %s \n", DEMO_MAJOR, DEMO_MINOR, FOO);

    hello();
    if (argc == 2)
        hello_name(argv[1]);
    return 0;
}
