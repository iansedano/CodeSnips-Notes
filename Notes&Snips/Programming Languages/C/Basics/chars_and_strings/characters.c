#include <stdio.h>

char c1 = 'a';
char c2 = 90;

int main(void)
{
    printf("\nAs a character, variable c1 is %c", c1);
    printf("\nAs a number, variable c1 is %d", c1);

    printf("\nAs a character, variable c2 is %c", c2);
    printf("\nAs a number, variable c2 is %d", c2);

    return 0;
}

/* OUTPUT

As a character, variable c1 is a
As a number, variable c1 is 97
As a character, variable c2 is Z
As a number, variable c2 is 90

*/


#include <stdio.h>

unsigned char mychar; // must be unsigned for extended ASCII

int main(void)
{
    for (mychar = 180; mychar < 204; mychar++)
    {
        printf("ASCII code %d is character %c\n", mychar, mychar);
    }

    return 0;
}