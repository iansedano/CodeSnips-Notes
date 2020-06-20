#define BOOL char
#define FALSE 0
#define TRUE 1

// https://stackoverflow.com/questions/1921539/using-boolean-values-in-c
// From best to worse: 

// Option 1 (C99)
#include <stdbool.h>

// Option 2
typedef enum { false, true } bool;

// Option 3
typedef int bool;
enum { false, true };

// Option 4
typedef int bool;
#define true 1
#define false 0

/*
Explanation

Option 1 will work only if you use C99 and it's the
"standard way" to do it. Choose this if possible.
Options 2, 3 and 4 will have in practice the same
identical behavior. #2 and #3 don't use #defines
though, which in my opinion is better.

If you are undecided, go with #1!
*/