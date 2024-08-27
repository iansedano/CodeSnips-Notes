```c
// https://stackoverflow.com/questions/8257714/how-to-convert-an-int-to-string-in-c


int num = 321;
char snum[5];

// convert 123 to string [buf]
itoa(num, snum, 10);

// print our string
printf("%s\n", snum);


//


char str[ENOUGH];
sprintf(str, "%d", 42);


//

//Where the number of characters (plus terminating char)
// in the str can be calculated using:

(int)((ceil(log10(num))+1)*sizeof(char))


//

#include <stdio.h> 
#include <stdlib.h>

int x = -42;
int length = snprintf( NULL, 0, "%d", x );
char* str = malloc( length + 1 );
snprintf( str, length + 1, "%d", x );
...
free(str);
```