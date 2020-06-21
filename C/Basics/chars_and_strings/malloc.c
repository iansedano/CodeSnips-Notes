char *message = "Hello";

char message[] = "Hello";

// MALLOC is memory allocation.

/*

Malloc returns an address and return type is a pointer to void
A pointer to type void is compatible with all data types.
Memory allocated by Malloc can be used to store any of C's Data Types

*/

#include <stdlib.h>

void *malloc(size_t size);

/*
Malloc allocates memory that is the number of bytes in "size"

If unable to allocate the memory required, it returns NULL.
So always check it!

*/


#include <stdlib.h>
#include <stdio.h>

int main(void)
{
    // allocate mem for 100 char string

    char *str;
    str = (char *) malloc(100);
    if (str == NULL)
    {
        printf("Not enough memory to allocate buffer\n");
        exit(1);
    }
    printf("String was allocated!\n");
    return 0;
}

///

// allocate mem for array of 50 int
int *numbers;
numbers = (int *) malloc(50 * sizeof(int));

// allocate mem for arr of 10 float
float *numbers;
numbers = (float *) malloc(10 * sizeof(float));

////


#include <stdio.h>
#include <stdlib.h>

char count, *ptr, *p;

int main(void)
{
    // Allocate block of 35 bytes

    ptr = malloc(35 * sizeof(char));

    if (ptr == NULL)
    {
        puts("Memory allocation error.");
        return 1;
    }

    // Fill string with sequential ascii values

    // p is pointer used to step through string
    // ptr should remain pointed at beginning

    p = ptr;

    for (countr = 65; count <91 ; count++)
        *p++ = count;

    *p = '\0'; // adding terminating character

    puts(ptr);
    free(ptr);

    return 0;
}