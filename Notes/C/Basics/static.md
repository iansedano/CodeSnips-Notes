```c
/*

By default variables are local to the scope where they are defined.

Static increses their scope to the file containing them.

*/

#include <stdio.h>

int runner() {
    static int count = 0;
    count++;
    return count;
}

int main()
{
    printf("%d ", runner());
    printf("%d ", runner());
    return 0;
}



/*

by default, functions are GLOBAL. Static is used with function to reduce its scope to the file.

*/

static void myfunc(void) {
    printf("I do nothing in the world");
}


///

#include <stdio.h>
int sum (int num) {
   static int sum = 0;
   sum += num;
   return sum;
}

int main() {
    printf("%d ",sum(55));
    printf("%d ",sum(45));
    printf("%d ",sum(50));
    return 0;
}

// outputs 55 100 150


```