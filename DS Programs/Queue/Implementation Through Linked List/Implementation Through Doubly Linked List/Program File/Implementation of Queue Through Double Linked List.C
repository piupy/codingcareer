
// Implementation of Queue Through Double Linked List including operations
// like CreateQueue,Enqueue,Dequeue,TraverseQueue,DeleteQueue

#include<stdio.h>
#include<conio.h>

struct Node
{
 struct Node *prev;
 int info;
 struct Node *next;
};

typedef struct Node node;

node *front = NULL;
node *rear = NULL;

int isQueueEmpty()
{
 return front == NULL;
}

void enqueue(int data)
{
    node *n;
    if(rear == NULL)
    {
      n = (node*)malloc(sizeof(node));
      n->info = data;
      n->prev = NULL;
      n->next = NULL;
      rear = n;
      front = n;
    }
    else
    {
      n = (node*)malloc(sizeof(node));
      n->info = data;
      n->next = NULL;
      rear->next = n;
      n->prev = rear;
      rear = n;
    }
    printf("\n\"%d\" Enqueued To The Queue...\n",data);
}

int dequeue()
{
 int data;
 node *r;
 if(isQueueEmpty())
  data = NULL;
 else
 {
  data = front->info;
  if(rear == front)   // if single element is present
  {
    r = front;
    rear = NULL;
    front = NULL;
    free(r);
  }
  else                   // if more than one elements are present
  {
    r = front;
    front = r->next;
    free(r);
  }
 }
 return data;
}

void deleteQueue()
{
 node *ptr = front,*r;
 while(1)
 {
  if(ptr->next != NULL)
  {
    r = ptr;
    ptr = ptr->next;
    free(r);
  }
  else
  {
    free(ptr);
    break;
  }
 }
 printf("\nQueue Deleted...\n");
}

void traverseQueue()
{
 node *ptr = front;
 if(ptr == NULL)
 printf("\nQueue is Empty...\n");
 else
 {
 printf("\nQueue Elements :  \n\n");
 while(1)
 {
  printf("%d -> ",ptr->info);
  if(ptr->next != NULL)
   ptr = ptr->next;
  else
   break;
 }
 printf("End\n\n");
 }
}

void main()
{
 int ch,data,n;
 clrscr();
 while(1)
 {
 printf("\n1. Enqueue");
 printf("\n2. Dequeue");
 printf("\n3. Traverse Queue");
 printf("\n4. Exit");
 printf("\n\nEnter Your Choice :  ");
 scanf("%d",&ch);
 switch(ch)
 {
  case 1 : printf("\nEnter The Element :  ");
	   scanf("%d",&data);
	   enqueue(data);
	   break;

  case 2 : data = dequeue();
	   if(data == NULL)
	    printf("\nQueue is Empty...\n");
	   else
	    printf("\n\"%d\" Dequeued From The Queue...\n",data);
	   break;

  case 3 : traverseQueue();
	   break;

  case 4 : exit(0);
 }
 }
}