
/*

<
>
<=
>=
&& AND
|| OR
!= NOT

*/

#include <stdio.h>

void guessNumber(int guess) {
    if (guess == 555) {
        printf("Correct. You guessed it!\n");
    } else if ( guess > 555) {
        printf("Your guess is too high.\n");
    } else {
        printf("Your guess is too low.\n");
    }
}

int main() {
    guessNumber(500);
    guessNumber(600);
    guessNumber(555);
}

//

int max_of_four(int a, int b, int c, int d) {
    if ((a > b) && (a > c) && (a > d))
    {
        return a;
    }
    else if ((b > a) && (b > c) && (b > d))
    {
        return b;
    }
    else if ((c > a) && (c > b) && (c > d))
    {
        return c;
    }
    else
    {
        return d;
    }
}