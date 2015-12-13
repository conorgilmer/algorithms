/* Sort.java 
 *
 * using java.utils.Arrays sort
 * I think its a form of the quick sort
 *
 */
import java.util.Arrays;
 
class Sort
{
  public static void main(String args[])
  {
    int data[] = { 7, 4, 3, -5, 2, 0, 6, 1, -1 };
 
    Arrays.sort(data);
    
    // snazzy for which goes through the elements in an array
    for (int c: data) 
    {
      System.out.println(c);
    }
  }
}
