#include <stdio.h>

int array[10];


/* generate random numbers with rand()*/
/* not that random same numbers selected each time its run */
int randum(void) {
    int x;

    x = rand()%10 +1;

    return(x);
}

/* main function */
int main () {
    int rnum, i, j, runs;
    printf("Looking at Random Numbers\n");
    
    /* initialize array */
    for (j = 0; j < 11; j++) {
        array[j] = 0;
    } /* end of for */
    
    /* generate runs number of integers */
    runs = 49;
    printf("\nGenerates %d Random Integers.\n", runs);
    for (i = 1; i <= runs; i++) {
        rnum = randum();
        array[rnum] = array[rnum]+1;
	printf(" %d = %d ", i, rnum);
    } /* end of for */
    printf("\n");
   
    /* print the array the number of times a number occurs */
    for (j = 1; j < 11; j++) {
        printf("\nNumber %d Occurs  %d times ", j, array[j]);
    } /* end of for */

    printf("\n Thats all Folks! \n");
    return 0;
} /* end of main */


