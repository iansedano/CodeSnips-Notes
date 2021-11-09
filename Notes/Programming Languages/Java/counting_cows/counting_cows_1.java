import java.util.ArrayList;
import java.util.Random;

class counting_cows{
  public static void main(String[] args){

    int n = 10;
    ArrayList<Integer> cows = new ArrayList<Integer>();

    cows.add(1);


    for (int i=0; i<n; i++){
      int howManyCows = cows.size();
      for (int cow=0; cow<howManyCows; cow++){
        int cowAge = cows.get(cow);
        cows.set(cow, (cowAge + 1));
        if (cowAge >= 2) {
          cows.add(1);
        }
      }
      System.out.println(cows);
    }

    System.out.println(cows.size());

  }
}