// Strings are array of characters
// Pointers are used

char * name = "John Smith"; // this creates read-only string (pointer notation)

char name[] = "John Smith"; // empty [] creates array size automatically

// above string, though 10 characters long, array length = 11
// because of termination character = 0 at end of string

int length = strlen(name);
printf("%d\n", length); // prints 10

char nameo[] = "John Smite";

int same = strncmp(name, nameo, 5); // FALSE
printf("%d\n", same); // prints 3 because nameo is "less" than name

//

char combined[] = strncat(name, nameo, 1);
printf("%s\n", combined); // Prints "JohnSmithJ"

combined = strncat(name, nameo, 20);
printf("%s\n", combined); // Prints "JohnSmithJJ"

printf("%s\n", name); // Prints "John SmithJJohnSmite"


///


#include <stdio.h>
#include <string.h>

int main() {
  char * first_name = "John";
  char last_name[] = "Doe";
  char name[100];

  last_name[0] = 'B';
  sprintf(name, "%s %s", first_name, last_name);
  if (strncmp(name, "John Boe", 100) == 0) {
      printf("Done!\n");
  }
  name[0]='\0';
  strncat(name,first_name,4);
  strncat(name,last_name,20);
  printf("%s\n",name);
  return 0;
}

// OUTPUT
// Done!
// JohnBoe