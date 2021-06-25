int i = 5;

int *p = NULL; // initializing pointer variable

p = &i; // assigns address to pointer variable

//

*p = 123; // this dereferences p, so modifies i


//

int *p = &i; // will not work!! because tries to deref an uninitialized pointer.


//

// both of the following statements
// declare only one pointer, they are identical to compiler.

int* ptr, foo, bar;
int *ptr, foo, bar;

//This statement declares multiple pointers, which prevents using the "int*" spacing.

int *ptr1, *ptr2, *ptr3;
