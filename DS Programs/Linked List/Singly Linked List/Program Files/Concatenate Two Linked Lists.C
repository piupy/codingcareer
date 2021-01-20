
#include<stdio.h>
#include<conio.h>

struct nodes
{
 int info;
 struct nodes *next;
};

typedef struct nodes node;

node *start1 = NULL;
node *start2 = NULL;

void createList(node**);
void traverseList(node*);
void insertAtBeginning(node**);
void insertAtEnd(node**);


node* createNode()
{
 return (node *)malloc(sizeof(node));
}


void createList(node **start)
{
 int choice = 1;
 do
 {
  if(*start == NULL)
  {
     insertAtBeginning(start);
  }
  else
  {
     insertAtEnd(start);
  }
  printf("\n\nAdd Another Node :  \n\n1. Yes\t2. No\n\n");
  scanf("%d",&choice);
 }while(choice == 1);
}

void insertAtBeginning(node **start)
{
 node *n = createNode();
 printf("\n\nEnter the info :  ");
 scanf("%d",&n->info);
 n->next = NULL;
 *start = n;
 printf("\n\nNode inserted at the beginning...\n\n");
}

void insertAtEnd(node **start)
{
    node *ptr = *start;
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

void traverseList(node *start)
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

void concatenateLists(node *str1,node *str2)
{
 while(1)
 {
  if(str1->next != NULL)
   str1 = str1->next;
   else
   {
    str1->next = str2;
    break;
   }
 }
 printf("\n\nLists Concatenated...\n\n");
}

void main()
{
 clrscr();
 printf("\n\nCreating First Node...\n\n");
 createList(&start1);
 traverseList(start1);
 printf("\n\nCreating Second Node...\n\n");
 createList(&start2);
 traverseList(start2);
 concatenateLists(start1,start2);
 traverseList(start1);
 getch();
}
