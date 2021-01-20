
// Implementation of Stack Through Double Linked List including Operations
// like Push,Pop,Traverse

#include<stdio.h>
#include<conio.h>

struct Node
{
 struct Node *prev;
 int info;
 struct Node *next;
};

typedef struct Node node;

node *top = NULL;

int isEmpty()
{
 if(top == NULL)
  return 1;
 else
  return 0;
}

void push(int item)
{
 node *n;
  if(top == NULL)
  {
    n = (node*)malloc(sizeof(node));
    top = n;
    n->info = item;
    n->prev = NULL;
    n->next = NULL;
    printf("\n\"%d\" Pushed Into Stack...\n",n->info);
  }
  else
  {
     n = (node*)malloc(sizeof(node));
     n->info = item;
     n->next = top;
     top->prev = n;
     top = n;
     printf("\n\"%d\" Pushed Into Stack...\n",n->info);
  }
}

int pop()
{
 int item;
 node *r;
 if(!isEmpty())
 {
  if(top->next == NULL)    // in case single item is present
  {
    r = top;
    item = top->info;
    top = NULL;
    free(r);
    printf("\n\"%d\" Popped From The Stack...\n",item);
  }
  else
  {
    r = top;
    top = r->next;
    item = r->info;
    top->prev = NULL;
    free(r);
    printf("\n\"%d\" Popped From The Stack...\n",item);
  }  // end of else
  return item;
 }
 else
  return -1;
}

void traverseStack()
{
 node *ptr = top;
 printf("\n\nList of Stack Items...\n\n");
 while(1)
 {
  printf("%d -> ",ptr->info);
  if(ptr->next != NULL)
   ptr = ptr->next;
  else
   break;
 }
 printf(" End\n\n");
}

void main()
{
 int item,choice;
 clrscr();
 while(1)
 {
  printf("\n\n1. Push");
  printf("\n2. Pop");
  printf("\n3. Traverse Stack Items");
  printf("\n4. Exit");
  printf("\n\nEnter Your Choice :  ");
  scanf("%d",&choice);
  switch(choice)
  {
   case 1 :
	      printf("\nEnter A Number :  ");
	      scanf("%d",&item);
	      push(item);
	     break;
   case 2 :
	     item = pop();
	     if(item == -1)
	      printf("\nStack is Empty...");
	     else
	      printf("\nPopped Value :  %d\n",item);
	     break;
   case 3 :
	     if(top == NULL)
	      printf("\nStack is Empty...");
	     else
	      traverseStack();
	     break;
   case 4 :
	     exit(0);
   default :
	     printf("\nInvalid Choice...");
	     break;
  }
 }
}
