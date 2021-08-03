```c
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

struct triangle
{
    int a;
    int b;
    int c;
};

typedef struct triangle triangle;
float area(triangle tri)
{
    float result, p;
    p = (tri.a + tri.b + tri.c)/2.0;
    result = p * (p - tri.a) * (p - tri.b) * (p - tri.c);
    return result;
}

void insert_sort(float *arr, triangle *tr, int n)
{
    int i = 1;
    while (i < n)
    {
        int j = i;
        while ((j > 0) && (arr[j -1] > arr[j]))
        {
            int temp = arr[j];
            arr[j] = arr[j-1];
            arr[j-1] = temp;
            
            triangle temp2 = tr[j];
            tr[j] = tr[j-1];
            tr[j-1] = temp2;

            j--;
        }
    i++;
    }
}

void sort_by_area(triangle *tr, int n) {
    /**
    * Sort an array a of the length n
    */
    int i;
    float a;
    float out_list[n];
    for (i= 0; i < n; i++)
    {
        a = area(tr[i]);
        out_list[i] = a;
    }

    insert_sort(out_list, tr, n);

    //printf("\n");
    //for (int i = 0; i < n; i++) {
    //    printf("%d %d %d\n", tr[i].a, tr[i].b, tr[i].c);
    //    printf("%f\n", out_list[i]);
    }


int main()
{
    int n;
    scanf("%d", &n);
    triangle *tr = malloc(n * sizeof(triangle));
    for (int i = 0; i < n; i++) {
        scanf("%d%d%d", &tr[i].a, &tr[i].b, &tr[i].c);
    }
    sort_by_area(tr, n);
    for (int i = 0; i < n; i++) {
        printf("%d %d %d\n", tr[i].a, tr[i].b, tr[i].c);
    }
    return 0;
}
```