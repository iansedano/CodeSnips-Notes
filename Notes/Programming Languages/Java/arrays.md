```java
public class arrays{
  public static void main(String[] args) {

    // Arrays are not resizeable in Java! For those, use ArrayList

    String[] cars = {"Volvo", "Ford", "Vauxhall", "Fiat", "Tesla"};

    int[] evens = {2,4,6,8,10};

    System.out.println(cars[2] + " " + evens[3]);

    cars[0] = "Porsche";

    System.out.println(cars); // [Ljava.lang.String;@1db9742

    for (byte i = 0; i < cars.length; i++) {
      System.out.println(cars[i]);
    }

    for (String car : cars){
      System.out.println("\t" + car);
    }


    int[][] matrix = {{1,2,3},{4,5,6}}
  }
}
```