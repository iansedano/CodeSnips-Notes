
int i;

for (i = 0; i < 10; i++) {
    printf(%d\n, i);
}

// OUTPUT
/*
0
1
2
3
4
5
6
7
8
9
*/

int array[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
int sum = 0;
int i;

for (i = 0; i < 10; i++) {
    sum += array[i];
}

printf("Sum of the array is %d\n", sum); // output => Sum of the array is 55

//

#include <stdio.h>

int main() {
  int array[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
  int factorial = 1;
  int i;

  for (i=0;i<10;i++) {
    factorial *= array[i];
  }

  printf("10! is %d.\n", factorial);
}

// OUTPUT "10! is 3628800."
