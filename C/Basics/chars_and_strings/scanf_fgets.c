// https://stackoverflow.com/questions/1247989/how-do-you-allow-spaces-to-be-entered-using-scanf

/*
People (and especially beginners) should never use scanf("%s") or gets()
or any other functions that do not have buffer overflow protection,
unless you know for certain that the input will always be of a specific format
(and perhaps not even then).

Remember than scanf stands for "scan formatted"
and there's precious little less formatted than
user-entered data. It's ideal if you have total
control of the input data format but generally
unsuitable for user input.

Use fgets() (which has buffer overflow protection)
to get your input into a string and sscanf() to
evaluate it. Since you just want what the user
entered without parsing, you don't really need
sscanf() in this case anyway:

*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Maximum name size + 1. */

#define MAX_NAME_SZ 256

int main(int argC, char *argV[]) {

    /* Allocate memory and check if okay. */
    char *name = malloc(MAX_NAME_SZ);
    if (name == NULL) {
        printf("No memory\n");
        return 1;
    }

    /* Ask user for name. */
    printf("What is your name? ");

    /* Get the name, with size limit. */
    fgets(name, MAX_NAME_SZ, stdin);

    /* Remove trailing newline, if there. */
    if ((strlen(name) > 0) && (name[strlen (name) - 1] == '\n'))
        name[strlen (name) - 1] = '\0';

    /* Say hello. */

    printf("Hello %s. Nice to meet you.\n", name);

    /* Free memory and exit. */
    free (name);
    return 0;
}