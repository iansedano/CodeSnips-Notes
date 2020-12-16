// From https://www.w3schools.com/java

public class Quickstart {
    public static void main(String[] args) {
        System.out.println("Hello World");

        final int myNum = 15; // final == const
        float myFloat = 23.333f; // precision of 6/7 digits
        char myChar = 'd';
        char myOtherChar = 65; // 'A' ASCII
        boolean myBool = true;
        String myText = "Hello Worldo";
        System.out.println(myText + ", it is a fine day!");
        System.out.println(myFloat + " is a float");


        byte myByte = -127; // to 127 8bit
        short myShort = -32768; // to 32768 16bit
        int myInt = -2147483648 // to 2147483648 32bit
        long myLong = -9223372036854775808 // to 9223372036854775808 64bit
        double myDouble = 19.99d // 1.7e−308 to 1.7e+308 , precision of 15 digits

    }
}

/*
On Command Line
To compile:
javac Quickstart.java
will create Quickstart.class
To run:
java Quickstart
*/