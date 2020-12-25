/*

Pointers are variables

used for:
* Strings
* Dynamic Memory allocation
* Sending function arguments by reference
* Building complex data structures
* Pointing to functions
* Building special data structures (trees, tries etc)

A pointer is a simple integer variable that holds a MEMORY ADDRESS

*/

char *name = "John";

/*

1. Allocates a local (stack) variable called "name" - which is a pointer to a single character.
2. It causes the string "John" to appear somewhere in memory.
3. It initializes the "name" argument to point to where the "J" character resides.

It will go over the string until it reaches the "null" character noted as "\0"

*/


/*
DEREFERENCING

This is a bit of a confusing name, because what it refers to
is the act of "unfolding a reference" - or following where a reference
points to.

Accesing the first item in an array i.e
array[0]
is the same as dereferencing a pointer


The & operator (address of operator) can be used:
*/

int a = 1;

int *pointer_to_a = &a;

printf("The value a is %d\n", a);

// $ The value a is 1

printf("The value of a is also %d\n", *pointer_to_a);

// $ The value of a is also 1

// Can also reassign value

*pointer_to_a += 1;


//

#include <stdio.h>

int main() {
  int n = 10;

  int *pointer_to_n = &n;

  *pointer_to_n += 1;

  /* testing code */
  if (pointer_to_n != &n) return 1;
  if (*pointer_to_n != 11) return 1;

  printf("Done!\n");
  return 0;
}

// Output => Done!


//////

int i; 
int k, *ip; // integer and pointer

ip = &i; // & reference operator. ip is pointer/address to i.
printf("%d\n", ip); // OUTPUT XXX
printf("%p\n", ip); // OUTPUT 0x55ea19d098c8 - varies between systems...
i = 100;
k = *ip; // * deference operator - gets value of reference
printf("%p\n", k); // OUTPUT XXX
printf("%d\n", k); // OUTPUT 100
k = k + 2;
i = *(&k);
*(&k) = 200;
printf("%d\n", k); // OUTPUT 102
printf("%d\n", i); // OUTPUT 102



///

int x[6];

x == &x[0]


///

#include <stdio.h>

void update(int *a,int *b) {
    int sum, diff;
    sum = *a + *b;
    diff = abs(*a - *b);
    *a = sum;
    *b = diff;
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}