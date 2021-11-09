import java.util.Scanner;

class count_recurse{
  public static void main(String[] args){
    
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int totalCows = getChildren(n);

    System.out.println(totalCows);


  }

  static int getChildren(int age) {

    if (age >= 2) {
      int children = 0;

      for (int i = 2; i <= age; i++){
        children += getChildren(age - i);
      }

      return children;
      
    } else {
      return 1;
    }

  }


}