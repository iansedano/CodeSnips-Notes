#include <stdio.h>

int a, b;

int main(void)
{
    a = b = 5;

    printf("\nPost  Pre");
    printf("\n%d   %d", a--, --b);
    printf("\n%d   %d", a--, --b);
    printf("\n%d   %d", a--, --b);
    printf("\n%d   %d", a--, --b);
    printf("\n%d   %d\n", a--, --b);

    return 0;
}

/*OUTPUT

Post  Pre
5     4
4     3
3     2
2     1
1     0

/*