/************************/
/*                      */
/*  Euclidean Alogrithm */
/*   by Conor Gilmer    */
/*                      */
/*      euclid.c        */
/*      circa 1995      */
/*                      */
/************************/
#include<stdio.h>

/* I use three different methods to get the greatest common divisor */
int gcd_one   (int, int);
int gcd_two   (int, int);
int gcd_three (int, int);

int main()
{
	int x,y;

	printf("\n\t*** Euclidian Algorithm *** ");
	printf("\n\t*** Find the Greatest Common Divisor *** ");
	printf("\n\tEnter first number : ");
	scanf("%d",&x);
	printf("\tEnter second number: ");
	scanf("%d",&y);
	printf("\n\t*** Using Three Methods *** ");
	printf("\n\tGreatest Common Divisor for (%d, %d) is %d", x, y,  gcd_one(x,y));
	printf("\n\tGreatest Common Divisor for (%d, %d) is %d", x, y,  gcd_two(x,y));
	printf("\n\tGreatest Common Divisor for (%d, %d) is %d", x, y,  gcd_three(x,y));
	printf("\n\t*** The End *** \n");
	
} /* end of main */


/* gcd using while */
int gcd_one (int p, int q) {
        while (q != 0) {
            int temp = q;
            q = p % q;
            p = temp;
        }
        return p;
    } /* end of gcd one */


/* gcd using do while */
int gcd_two (int u, int v)
{
int t;
	do {
		if (u < v)
		{
			t = u;
			u = v;
			v = t;
		}
		u = u - v;
	} while (u != v);

return u;
} /* end of gcd two */


 /* gcd using a recursive call */
 int gcd_three (int x, int y) {
 	if (y == 0) return x;
		else return gcd_three(y, x % y);
 } /* end of gcd three */


