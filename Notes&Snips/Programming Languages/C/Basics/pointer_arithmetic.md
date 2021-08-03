```c
#include <stdio.h>
#define MAX 10

int i_array[MAX] = {0,1,2,3,4,5,6,7,8,9};

int *i_ptr, count;

float f_array[MAX] = { .0, .1, .2, .3, .4, .5, .6, .7, .8, .9};

float *f_ptr;

int main(void)
{
    i_ptr = i_array;
    f_ptr = f_array;

    for (count = 0; count < MAX; count++)
        printf("%d\t%f\n", *i_ptr++, *f_ptr++);

    return 0;
}

/* OUTPUT

0       0.000000
1       0.100000
2       0.200000
3       0.300000
4       0.400000
5       0.500000
6       0.600000
7       0.700000
8       0.800000
9       0.900000


/*
```