/*

Usually functions are passed values.
Which usually means that a copy is made
and passed into the function.

Yet if you pass a reference, no copy is made,
and you could manipulate the value directly.

Might this be where a lot of memory management,
can be made?

*/


/*

For example,

If you wanted to make a function that increments one
WITHOUT returning a new value
but MODIFYING the variable that was passed.

*/


void addone(int * n) {
    (*n)++;
}

int i;

i = 0

printf("%i\n", i); // OUTPUT 0

addone(i); // OUTPUT :22:8 NULL pointer dereference
addone(&i); // passing it a pointer

printf("%i\n", i); // OUTPUT 1


//

// POINTERS TO STRUCTURES

/*

Likewise if we have a  function that increments the x and y of a point
we can send a pointer to a function.

*/

void move(point * p) {
    (*p).x++;
    (*p).y++;
}

// There exists a shorthand for the above

void move(point * p) {
    p->x++;
    p->y++;
}


// EXAMPLES
//

#include <stdio.h>

typedef struct {
  char * name;
  int age;
} person;

/* function declaration */
void birthday(person * p);

/* write your function here */

void birthday(person * p){
    p->age++;
}


int main() {
  person john;
  john.name = "John";
  john.age = 27;

  printf("%s is %d years old.\n", john.name, john.age);
  birthday(&john);
  printf("Happy birthday! %s is now %d years old.\n", john.name, john.age);

  return 0;
}

//

#include <stdio.h>

typedef struct {
        int x;
        int y;
} point;

void increment(point * p);

void increment(point * p) {
        p->x++;
        p->y++;
}

int main() {
        point p;
        p.x = 1;
        p.y = 1;

        printf("%d %d\n", p.x, p.y);
        increment(&p);
        printf("%d %d\n", p.x, p.y);
        return 0;
}
