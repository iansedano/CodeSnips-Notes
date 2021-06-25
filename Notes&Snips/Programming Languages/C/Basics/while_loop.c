int n = 0;
while (n < 10) {
    n++;
}

//

// to run forever

while (1) {
    // do something
}

//

int n = 0;

while (1) {
    n++;
    if (n == 10) {
        break;
    }
}

//

int n = 0;
while (n < 10) {
    n++;

    if (n % 2 == 1) {
        continue;
    }

    printf("The number %d is even.\n", n);
}

//

#include <stdio.h>

int main() {
    int array[] = {1, 7, 4, 5, 9, 3, 5, 11, 6, 3, 4};
    int i = 0;

    while (i < 10) {
        if (array[i] < 5) {
            i++;
            continue;
        } else if (array[i] > 10) {
            break;
        }

        printf("%d\n", array[i]);
        i++;
    }

    return 0;
}

/* OUTPUT

7
5
9
5

*/