/* Demonstrates function recursion
*  Calculates factorial */

#include <stdio.h>

unsigned int f, x;
unsigned int factorial(unsigned int a);

main()
{
    puts("Enter and integer value between 1 and 8: ");
    scanf("%d", &x);

    if(x > 8 || x < 1)
    {
        printf("Only values from 1 to 8 are acceptable.\n");
    }
    else
    {
        f = factorial(x);
        printf("%u factorial equals %u\n", x, f);
    }
    return 0;
}

unsigned int factorial(unsigned int a)
{
    if (a == 1)
        return 1;
    else
    {
        a *= factorial(a-1);
        return a;
    }
}
