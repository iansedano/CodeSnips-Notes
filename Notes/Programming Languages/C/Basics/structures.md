```c
/*

C structures are large variables which contain variables.

Foundation for objects and classes.

*/

struct point {
    int x;
    int y;
};


struct point p;
p.x = 10;
p.y = 5;

printf("%d %d\n", p.x, p.y)

//  10 5


/*

Typedefs

Way to shorten the creation of points

*/

typedef struct {
    int x;
    int y;
} point;

// so now can just

point p;

//

// Structures can also hold pointers.

typedef struct {
    char * brand;
    int model;
} vehicle;

vehicle mycar;
mycar.brand = "Ford";
mycar.model = 2007;

//

#include <stdio.h>

/* define the person struct here using the typedef syntax */

typedef struct {
    char * name;
    int age;
} person;

int main() {
    person john;
    john.name = "John";
    john.age = 27;
    printf("%s is %d years old.", john.name, john.age);
}

// Output "John is 27 years old."
```