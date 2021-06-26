```c
int prices[5] = { 1, 2, 3, 4, 5 };

int size = sizeof prices / sizeof prices[0];

printf("%u", size); /* 5 */
```