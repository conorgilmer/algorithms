import java.util.Scanner;
 
class BubbleSort {


  /* display the array */
  public static void displayArray(int sarray[]){
     System.out.println("Display Array");
     int i = 0;
     int j = 0;    
     System.out.print("\n");
     for (i=0; i< sarray.length; i++)
     {
        // print dashes for the number
	for (j=0; j< sarray[i]; j++) {
            System.out.print("*");
	}
	System.out.print("\n");
     }
  }

  public static void main(String []args) {
    int n, c, d, swap;
    Scanner in = new Scanner(System.in);

    System.out.println("Bubble Sort"); 
    //how many numbers do you wish to sort
    System.out.println("Input number of integers to sort");
    n = in.nextInt();
 
    int array[] = new int[n];
 
    System.out.println("Enter " + n + " integers");
    // read in the numbers into the array
    for (c = 0; c < n; c++) 
      array[c] = in.nextInt();
 
    // before sort display array
    displayArray(array);
   
    /* sort process */ 
    //iterate through and sort array
    for (c = 0; c < ( n - 1 ); c++) {
      for (d = 0; d < n - c - 1; d++) {
        if (array[d] > array[d+1]) /* For descending order use < */
        {
          swap       = array[d];
          array[d]   = array[d+1];
          array[d+1] = swap;
        }
      }
    }
 
    System.out.println("Sorted list of numbers");
 
    for (c = 0; c < n; c++) 
      System.out.println(array[c]);

    System.out.println("Bubble Sorted Array looks like"); 
    // after sort display array
    displayArray(array);
    System.out.println("End of Bubble Sort"); 
  }
}
