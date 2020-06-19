// Hello world without main (mainexp.c)

#include <stdio.h>

extern void _exit(register int);

int _start(){
    printf("Hello World\n");
    _exit(0);
}

// _start() sets up the environment for program execution and then calls main()

// doesnt work with make, but with gcc

/*
$ gcc mainexp.c
$ a.out
Hello World
$
*/

