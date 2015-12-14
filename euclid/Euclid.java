/******************************************************************************
 *  Program:  javac Euclid.java
 *  Run:      java Euclid p q
 *  
 *  Calculates the Greatest Common Divisor (GCD) using Euclids Algorithm.
 *  Three different functions are shown here how to calculate it  
 * 
 *
 ******************************************************************************/

public class Euclid {

    /* a recursive gcd implementation */
    public static int gcd_rec(int p, int q) {
        if (q == 0) 
	    return p;
        else 
	    return gcd_rec(q, p % q);
    } /* end of gcd rec */

    /* a non-recursive gcd implementation using while */
    public static int gcd_one(int p, int q) {
        int t;
        while (q != 0) {
            t = q;
            q = p % q;
            p = t;
        }
        return p;
    } /* end of gcd one */


    /* a non-recursive gcd using do-while */
    public static int gcd_two (int p, int q)
    {
    int t;
	do {
		if (p < q)
		{	/* swap them */
			t = p;
			p = q;
			q = t;
		}
		p = p - q;
	} while (p != q);

    return p;
    } /* end of gcd two */


    /* main function */
    public static void main(String[] args) {

	// get inputs
        int p     = Integer.parseInt(args[0]);
        int q     = Integer.parseInt(args[1]);

	// call gcd functions
        int dRec  = gcd_rec(p, q);
        int dOne  = gcd_one(p, q);
        int dTwo  = gcd_two(p, q);

        System.out.println("*** Greatest Common Divisor (GCD) ***");
	// print out results (they should all be the same hopefully).
        System.out.println("GCD (" + p + ", " + q + ") = " + dRec);
        System.out.println("GCD (" + p + ", " + q + ") = " + dOne);
        System.out.println("GCD (" + p + ", " + q + ") = " + dTwo);

        System.out.println("*** The End ***");
    } /* end of main function */

} /* end of Euclid class */


