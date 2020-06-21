// Program that sleeps

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void sleep(int nbr_seconds);

int main()
{
    int ctr;
    int wait = 13;

    // Pause for a number of seconds. Print a dot
    // for each second waited.

    printf("Delay for %d seconds\n", wait);
    printf(">");

    for (ctr=1; ctr <= wait; ctr++)
    {
        printf(".");        // print a dot
        fflush(stdout);     // force to print on buffered machines
        sleep( (int) 1);    // pause for 1 second
    }

    printf("Done!\n");
    return 0;
}

void sleep(int nbr_seconds)
{
    clock_t goal;

    goal = (nbr_seconds * CLOCKS_PER_SEC) + clock();

    while ( goal > clock() )
    {
        ;  // loop
    }
}