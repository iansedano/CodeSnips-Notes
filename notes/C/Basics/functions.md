```c
/*

In C, arguments are copied by value to functions...

we cannot change the arguments to affect their value outside of the function

Functions must be defined BEFORE

*/

/* This is correct way to declare*/

int foo(int bar);

int main() {
    /* calling foo from main */
    printf("The value of foo is %d", foo(1));
}

int foo(int bar) {
    return bar + 1;
}



// Functions that do not return a value:

void moo() {
    printf("moo");
}


///

#include <stdio.h>

/* function declaration */
void print_big(int number);

int main() {
  int array[] = { 1, 11, 2, 22, 3, 33 };
  int i;
  for (i = 0; i < 6; i++) {
    print_big(array[i]);
  }
  return 0;
}

void print_big(int number) {
    if (number > 10) {
        printf("%d is big\n", number);
    }
}

// OUTPUT
/*

11 is big
22 is big
33 is big

*/


//


```