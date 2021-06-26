```java
public class Casting {

    public static void main(String[] args) {

        int time = 22;

        if (time < 10) {
            System.out.println("Good morning.");
        } else if (time < 20) {
            System.out.println("Good day.");
        } else {
            System.out.println("Good evening.");
        }

        String result = (time < 18) ? "Good day." : "Good Evening.";

        System.out.println(result);

    }

}

```