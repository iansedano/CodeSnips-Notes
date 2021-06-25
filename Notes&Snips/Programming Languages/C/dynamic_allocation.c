/*

Dynamic allocation in memory allows things like linked lists.
Also allows us to store data without knowing initially
what size the data will be.
Allows changing the size of an array.


There are 4 library functions defined under the <stdlib.h> header file

malloc() // memory allocation
calloc() // contiguous allocation
free() // deallocate memory
realloc() // re allocate memory

*/

// MALLOC

ptr = (cast-type*) malloc(byte-size)

ptr = (int*) malloc(100 * sizeof(int));

// size of int is 4 bytes, so this will allocate 400 bytes.
// it will return a pointer to the first address of the 400 bytes.

