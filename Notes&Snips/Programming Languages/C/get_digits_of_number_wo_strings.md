```c
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
    
    int n, nt = 10564;

    
    int l[5]; // for 5 digit number...
    int i;
    int modulo = 10;
    int temp;

    for (i=0; i<5; i++){
        temp = nt % modulo;
        temp = temp / (modulo / 10);
        l[i] = temp;

        nt -= l[i] * (modulo / 10);
        modulo *= 10;
    }

    int sum = 0;
    for (i=0; i<5; i++){
        sum += l[i];
    }

    printf("%d",sum);
    return 0;
}
```