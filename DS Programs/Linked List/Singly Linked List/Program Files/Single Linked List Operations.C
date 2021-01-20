
// Operations Performed on a Single Linked List

#include<stdio.h>
#include<conio.h>

void createList();
void traverseList();
void insertAtBeginning();
void insertAtMiddle();
void insertAtEnd();
void updateAtBeginning();
void updateAtMiddle();
void updateAtEnd();
void deleteAtBeginning();
void deleteAtMiddle();
void deleteAtEnd();
void deleteList();

struct nodes
{
  int info;
  struct nodes *next;
};

typedef struct nodes node;

node *start = NULL;

node* createNode()
{
 return (node *)malloc(sizeof(node));
}

void createList()
{
 int choice = 1;
 node *ptr,*n;
 do
 {
  if(start == NULL)
  {
     insertAtBeginning();
  }
  else
  {
     insertAtEnd();
  }
  printf("\n\nAdd Another Node :  \n\n1. Yes\t2. No\n\n");
  scanf("%d",&choice);
 }while(choice == 1);
}

void traverseList()
{
 printf("\n\nTraversing The List...\n\n");
 if(start == NULL)
 {
  printf("\n\nList is empty...\n\n");
 }
 else
 {
  node *ptr = start;
  while(1)
  {
	printf("%d -> ",ptr->info);
	 if(ptr->next != NULL)
	   {
	    ptr = ptr->next;
	   }
	   else
	   {
	    printf("End of List !!!\n\n");
	    break;
	   }
  }  // End of While
 }   // End of else
}

void insertAtBeginning()
{
 node *n = createNode();
 printf("\n\nInsertion At Beginning...\n\n");
 printf("\n\nEnter the info :  ");
 scanf("%d",&n->info);
 n->next = start;
 start = n;
 printf("\n\nNode inserted at the beginning...\n\n");
}

void insertAtMiddle()
{
 node *n = createNode();
 int count = 0,place;
 node *ptr = start;
 printf("\n\nInsertion at Middle...\n\n");
 printf("\n\nAt What Place :  ");
 scanf("%d",&place);
 while(1)
 {
	if(ptr->next != NULL)
	  {
	      count++;
	       if(count == place)
	       {
		    node* n = createNode();
		    printf("\n\nEnter info :  ");
		    scanf("%d",&n->info);
		    n->next = ptr->next;
		    ptr->next = n;
		    printf("\n\nInserted at place %d ...",place);
		    break;
	       }
	      ptr = ptr->next;
	  }
	  else
	  {
	    node* n = createNode();
	    printf("\n\nEnter info :  ");
	    scanf("%d",&n->info);
	    n->next = ptr->next;
	    ptr->next = n;
	    printf("\n\nInserted at place %d ...",place);
	    break;
	  }
 }  // End of while
}

void insertAtEnd()
{
    node *ptr = start;
    while(1)
    {
     if(ptr->next != NULL)
      ptr = ptr->next;
     else
     {
	  node *n = createNode();
	  printf("\n\nEnter the info :  ");
	  scanf("%d",&n->info);
	  n->next = NULL;
	  ptr->next = n;
	  printf("\n\nNode Added...\n\n");
	  break;
     }
    }
}

void updateAtBeginning()
{
 printf("\n\nUpdating The List From Beginning...\n\n");
 if(start == NULL)
 {
  printf("\n\nList is empty...\n\n");
 }
 else
 {
  printf("\n\nPrevious Value :  %d",start->info);
  printf("\n\nUpdate With :  ");
  scanf("%d",&start->info);
  printf("\n\nValue Updated...\n\n");
  printf("\n\nUpdated Value :  %d",start->info);
 }
}

void updateAtMiddle()
{
 int count = 0,place;
 node *ptr = start;
 printf("\n\nUpdation From Middle...\n\n");
 printf("\n\nAt What Place :  ");
 scanf("%d",&place);
 while(1)
 {
	if(ptr->next != NULL)
	  {
	      count++;
	       if(count == place)
	       {
		    printf("\n\nPrevious Value :  %d",ptr->info);
		    printf("\n\nUpdate With :  ");
		    scanf("%d",&ptr->info);
		    printf("\n\nValue Updated...\n\n");
		    break;
	       }
	      ptr = ptr->next;
	  }
	  else
	  {
	    printf("\n\nPrevious Value :  %d",ptr->info);
	    printf("\n\nUpdate With :  ");
	    scanf("%d",&ptr->info);
	    printf("\n\nValue Updated...\n\n");
	    break;
	  }
 }  // End of while
}

void updateAtEnd()
{
 printf("\n\nUpdating The List From The End...\n\n");
 if(start == NULL)
 {
  printf("\n\nList is empty...\n\n");
 }
 else
 {
  node *ptr = start;
  while(1)
  {
   if(ptr->next != NULL)
   ptr = ptr->next;
   else
   {
      printf("\n\nPrevious Value :  %d",ptr->info);
      printf("\n\nUpdate With :  ");
      scanf("%d",&ptr->info);
      printf("\n\nValue Updated...\n\n");
      printf("\n\nUpdated Value :  %d",ptr->info);
      break;
   }
  }  // End of while
 }  // End of else
}

void deleteAtBeginning()
{
 node *r = start;
 printf("\n\nDeletion From Beginning...\n\n");
 start = start->next;
 free(r);
 printf("\n\nNode Deleted from the beginning...\n\n");
}

void deleteAtMiddle()
{
 node *r;
 int count = 0,place;
 node *ptr = start;
 printf("\n\nDeletion From Middle...\n\n");
 printf("\n\nAt What Place :  ");
 scanf("%d",&place);
 while(1)
 {
	if(ptr->next != NULL)
	  {
	      count++;
	       if((count+1) == place)
	       {
		    node* r = ptr->next;
		    ptr->next = ptr->next->next;
		    free(r);
		    printf("\n\nDeleted From place %d ...",place);
		    break;
	       }
	      ptr = ptr->next;
	  }
	  else
	  {
	    free(ptr);
	    start = NULL;
	    printf("\n\nDeleted at place %d ...",place);
	    break;
	  }
 }  // End of while
}

void deleteAtEnd()
{
    node *ptr = start;
    printf("\n\nDeleting The Last Node...\n\n");
    while(1)
    {
     if(ptr->next->next != NULL)
      ptr = ptr->next;
     else
     {
	  node *r = ptr->next;
	  ptr->next = NULL;
	  free(r);
	  printf("\n\nNode Removed From The Last...\n\n");
	  break;
     }
    }
}

void deleteList()
{
 node *ptr = start,*n;
 while(1)
 {
   if(ptr->next != NULL)
   {
   n = ptr;
   ptr = ptr->next;
   free(n);
   }
   else
   {
    free(ptr);
    start = NULL;
    break;
   }
 }
 printf("\n\nList Items Deleted...\n\n");
 traverseList();
}

void main()
{
 clrscr();
 createList();
 printf("\n\n");
 traverseList();
 //deleteAtMiddle();
// deleteAtBeginning();
// deleteAtEnd();
 //insertAtBeginning();
 //insertAtMiddle();
 //updateAtBeginning();
// updateAtEnd();
 //updateAtMiddle();
 //traverseList();
 //deleteList();
 getch();
}

