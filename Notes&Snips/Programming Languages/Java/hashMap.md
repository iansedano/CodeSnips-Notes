```java
import java.util.HashMap;

public class hashMap {
  public static void main(String[] args) {
    HashMap<Integer,String> people = new HashMap<Integer, String>();

    people.put(5623, "John");
    people.put(5234, "Penelope");

    System.out.println(people); // {5234=Penelope, 5623=John}

    String love = people.get(5234);
    System.out.println(love); // "Penelope"

    people.remove(5623);

    System.out.println(people.size()); // 1

    people.put(2313, "Martin");
    people.put(4513, "Miriam");
    people.put(2343, "Cathy");
    people.put(2353, "Rick");

    for (int i : people.keySet()) {
      System.out.println(i);
    }

    for (String i : people.values()) {
      System.out.println(i);
    }
  }
}
```