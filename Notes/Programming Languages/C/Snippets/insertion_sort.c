#include <stdio.h>

void insert_sort(int *a, int n)
{
    int i = 1;
    while (i < n)
    {
        int j = i;
        while ((j > 0) && (a[j -1] > a[j]))
        {
            int temp = a[j];
            a[j] = a[j-1];
            a[j-1] = temp;
            j--;
        }
    i++;
    }
}

int main(void) // test code
{
    int a[5] = {3,4,5,2,1};

    insert_sort(a, 5);

    int i;
    for (i=0; i<5; i++)
    {
        printf("%d, ", a[i]);
    }
    printf("\n");
    return 0;
}