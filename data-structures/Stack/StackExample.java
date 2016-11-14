/* StackExample.java */
/* LIFO - Last in First Out */

import java.util.*;

public class StackExample {
   public static void display(String str, String action) {
	System.out.println(action + " " + str);
	}
   public static void main(String args[]) {
   // creating stack (generics)
   Stack <String> st = new Stack <String>(); 
   String sPush = "Pushing";
   String sPop  = "Popping";
   // populating stack
   display("Nixon", sPush);
   st.push("Nixon");
   display("Ford", sPush);
   st.push("Ford");
   display("Carter", sPush);
   st.push("Carter");
   display("Regan", sPush);
   st.push("Regan");
   display("Bush", sPush);
   st.push("Bush");
   display("Clinton", sPush);
   st.push("Clinton");
   display("Bush", sPush);
   st.push("Bush");
   display("Obama", sPush);
   st.push("Obama");
      
   // pop off element
   String popped = " "+ st.pop(); //converting it to a string?
   display(popped, sPop);  
   // show stack
   System.out.println("Contents of Stack: "+st);
   }    
}
