import java.util.ArrayList;
import java.util.Random;

public class counting_cows_1{
  public static void main(String[] args){

    int n = 10;
    ArrayList<Integer> cows = new ArrayList<Integer>();

    cows.add(0);

    System.out.println(cows);

    for (int i=0; i<n; i++){
      int howManyCows = cows.size();
      System.out.println("howmany " + howManyCows);
      for (int cow=0; cow<howManyCows; cow++){
        System.out.println("cow " + cow);
        int cowAge = cows.get(cow);
        System.out.println("cowage " + cowAge);
        cows.set(cow, (cowAge + 1));
        System.out.println("cowage after set " + cows.get(cow));
        if (cowAge >= 2) {
          cows.add(0);
        }
      }
    }

    System.out.println(cows.size());

  }
}