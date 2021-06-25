#include <stdio.h>

int main() {
  int average;
  int grades[3];

  grades[0] = 80;
  grades[1] = 85;
  grades[2] = 90;

  average = (grades[0] + grades[1] + grades[2]) / 3;
  printf("The average of the 3 grades is: %d", average);

  return 0;
}


// initializing empty array [] creates size automatically
char name[] = "John Smith"; // empty [] creates array size automatically

//

// This is valid

#define MONTHS 12
int array[MONTHS];

// This is not (in most compilers)

const int MONTHS = 12;
int array[MONTHS];


//

// Demonstrates relationship between addresses and
// elements of arrays of different data types

#include <stdio.h>

// Declare a counter and three arrays
int ctr;
short array_s[10];
float array_f[10];
double array_d[10];

int main (void)
{
    // print table heading

    printf("\t\tShort\t\t\tFloat\t\t\tDouble");

    printf("\n================================");
    printf("==================================");

    // print address of each array element

    for (ctr = 0; ctr < 10; ctr++)
        printf("\nElement %d: \t%ld\t\t%ld\t\t%ld", ctr,
            &array_s[ctr], &array_f[ctr], &array_d[ctr]);

    printf("\n================================");
    printf("==================================\n");

    return 0;
}

/* OUTPUT

                Short                   Float                   Double
==================================================================
Element 0:      93856360403024          93856360403072          93856360403136
Element 1:      93856360403026          93856360403076          93856360403144
Element 2:      93856360403028          93856360403080          93856360403152
Element 3:      93856360403030          93856360403084          93856360403160
Element 4:      93856360403032          93856360403088          93856360403168
Element 5:      93856360403034          93856360403092          93856360403176
Element 6:      93856360403036          93856360403096          93856360403184
Element 7:      93856360403038          93856360403100          93856360403192
Element 8:      93856360403040          93856360403104          93856360403200
Element 9:      93856360403042          93856360403108          93856360403208
==================================================================

Note how short increments by 2
Float by 4
Double by 8

*/
