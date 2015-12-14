/**********************************************************/
/*        "The Sieve of Eratosthenes"                     */
/*           Prime Number Finder                          */
/*              by Conor Gilmer                           */
/*                                                        */
/*         Program: sieve.c                               */
/*            Date: 31/12/1994                            */
/*                                                        */
/**********************************************************/

#include <stdio.h>
//#include <stdlib.h>

#define SIZE 4096

int main(){

	long int a, b;
	int found;         /* count the number of primes   */
	short array[SIZE]; /* storing whether prime or not */
			   /* the integers 1 or 0          */
	printf(" *** The Sieve of Eratostophenes *** \n \n");
	
	/* initialize array set all values to 1            */
	for ( a = 0; a < SIZE; a++ )
		array[a]=1;

	printf("All Primes less than %d : \n", SIZE);
	
	a = 2; /* first prime 2 although is 1 or 0 a prime?*/

	while (a < SIZE) /* while one */
	{	found++;
		printf(" %4ld, ", a);
		b = a;
		while ((b += a) < SIZE)
			array[b] = 0; /* set multiples not prime */

			while ( ++a < SIZE && array[a] == 0)
				; /* a incremented to */
				  /* skip to next prime */
	} /* end of while one */

	printf("\n Number of Primes = %d", found);
	printf("\n *** The End *** \n \n");

} /* end of main */



