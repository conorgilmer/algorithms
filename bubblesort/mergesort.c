/*************************/
/*                       */
/*      mergesort.c      */
/*                       */
/*************************/

#include <stdio.h>
#include <stdlib.h>
 
/* merge */
void merge (int *a, int n, int m) {
    int i, j, k;
    int *x = malloc(n * sizeof (int));
    for (i = 0, j = m, k = 0; k < n; k++) {
        x[k] = j == n      ? a[i++]
             : i == m      ? a[j++]
             : a[j] < a[i] ? a[j++]
             :               a[i++];
    } /* end of for */
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    } /* end of for */
    free(x);
} /* end of merge */
 
/* merge sort */
void merge_sort (int *a, int n) {
    if (n < 2)
        return;
    int m = n / 2;
    merge_sort(a, m);
    merge_sort(a + m, n - m);
    merge(a, n, m);
} /* end of merge sort */

/* main function */  
int main () {
    int a[] = {34, 4, 3,  65, 42, -21, 0, 9, 2, 83, 72, 1};
    int n = sizeof a / sizeof a[0];
    int i;

    printf("\n*** Merge Sort ***\n");
    printf("\nUnsorted Array : ");
    for (i = 0; i < n; i++)
        printf("%d%s", a[i], i == n - 1 ? "\n" : " ");
    merge_sort(a, n);
    printf("Sorted Array   : ");
    for (i = 0; i < n; i++)
        printf("%d%s", a[i], i == n - 1 ? "\n" : " ");
    
    printf("\n***  The End   ***\n\n");

    return 0;

} /* end of main fn */

