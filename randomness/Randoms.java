/* Randoms.java */

import java.util.Random;
import java.util.Scanner;

public final class Randoms {
  
  public static int[] array = new int[11];

  public static int randums(int r) {
      Random rnum = new Random();
      int answer  = rnum.nextInt(10) + 1;
      return answer; 
  }

  public static final void main(String... aArgs){
      int j;
      int i;
      int runs = 50;
      int rnum;

      System.out.println("Randoms");
      System.out.println(randums(10));


    /* initialize array */
    for (j = 0; j <= 10; j++) {
        array[j] = 0;
    }
    
    /* generate runs number of integers */
    System.out.println("\nGenerates " + runs + "  Random Integers.");
    for (i = 1; i <= runs; i++) {
        rnum = randums(10);
        array[rnum] = array[rnum]+1;
        System.out.println(i + " = " +  rnum);
    }
    System.out.println("\n");
   
    /* print the array the number of times a number occurs */
    for (j = 1; j <= 10; j++) {
        System.out.println("Number " + j + " Occurs "+ array[j] + " times ");
    }

    System.out.println("\n Thats all Folks! \n");


  }

}
