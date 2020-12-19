import java.util.ArrayList;

class multiArrayList{
  public static void main(String[] args){
    ArrayList<ArrayList<Integer>> multi = new ArrayList<ArrayList<Integer>>();

    ArrayList<Integer> temp = new ArrayList<Integer>();
    temp.add(1);
    temp.add(2);

    multi.add(temp);

    System.out.println(multi); // [[1, 2]]
  }
}