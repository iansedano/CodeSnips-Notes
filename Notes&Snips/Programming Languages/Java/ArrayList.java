import java.util.ArrayList;

class arrayList{
  public static void main(String[] args){

    ArrayList<Integer> evens = new ArrayList<Integer>();

    for (int i=0; i<1000; i++){
      if (i % 2 == 0){
        evens.add(i);
      }
    }

    System.out.println(evens);

    System.out.println(evens.size());
    System.out.println(evens.get(10));

    evens.set(0, 1000);

    System.out.println(evens.get(0));

    evens.remove(0);

    System.out.println(evens.get(0));

    for (int i : evens){
      if (i % 10 == 0){
        System.out.println(i);
      }
    }

    evens.clear();

    System.out.println(evens);

  }
}