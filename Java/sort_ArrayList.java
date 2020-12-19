import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

class sort_arraylist{

  public static void main(String[] args){


    Random rand = new Random();

    int rand_int = rand.nextInt(101);

    System.out.println(rand_int);

    ArrayList<Integer> numList = new ArrayList<Integer>();

    for (int i=0; i<50; i++){
      int next_num = rand.nextInt(1001);
      numList.add(next_num);
    }

    System.out.println(numList);

    Collections.sort(numList);

    System.out.println(numList);
  }
}