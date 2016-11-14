/*         list.c                */
/* basic singly linked list in c */

#include<stdlib.h>
#include<stdio.h>

/* structure of the list */
struct list_el {
   int val;
   struct list_el * next;
};

typedef struct list_el item;

/* main function */
int main() {
   item * curr, * head;
   int i;

   head = NULL;

   /* add numbers 1 to 10 to the list */
   for(i=1;i<=10;i++) {
      curr = (item *)malloc(sizeof(item));
      curr->val = i;
      curr->next  = head;
      head = curr;
   } /* end of for */

   curr = head;

   /* print out the  list */
   printf("\nThe List Contains \n\n");
   printf("start -> ");
   while(curr) {
      printf("%d -> ", curr->val);
      curr = curr->next ;
   } /* end of while */
   printf("end");
   printf("\n\nThe End\n");

   return 0;
} /* end of main */
