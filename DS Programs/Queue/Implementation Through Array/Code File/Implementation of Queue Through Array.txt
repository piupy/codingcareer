
// Implementation of Queue Through Array including operations like
// CreateQueue,Enqueue,Dequeue,TraverseQueue,DeleteQueue

#include<stdio.h>
#include<conio.h>

struct Queue
{
 int front;
 int rear;
 int capacity;
 int *array;
};

typedef struct Queue ArrayQueue;

ArrayQueue* createQueue(int capacity)
{
 ArrayQueue *q = (ArrayQueue*)malloc(sizeof(ArrayQueue));
 q->capacity = capacity;
 q->front = -1;
 q->rear = -1;
 q->array = (int*)malloc(sizeof(int) * (q->capacity));
 printf("\nQueue With Capacity \"%d\" Created...\n",q->capacity);
 return q;
}

int isQueueEmpty(ArrayQueue *q)
{
 return q->front == -1;
}

int isQueueFull(ArrayQueue *q)
{
 return (q->rear+1) % (q->capacity) == q->front;
}

int queueSize(ArrayQueue *q)
{
 return (q->capacity - q->front + q->rear + 1) % (q->capacity);
}

void enqueue(ArrayQueue *q,int data)
{
    q->rear = (q->rear + 1) % q->capacity;
    q->array[q->rear] = data;
     if(q->front == -1)
      q->front = q->rear;
    printf("\n\"%d\" Enqueued To The Queue...\n",data);
}

int dequeue(ArrayQueue *q)
{
 int data;
 if(isQueueEmpty(q))
  data = NULL;
 else
 {
  data = q->array[q->front];
  if(q->rear == q->front)   // if single element is present
  { q->rear = -1;
    q->front = -1;
  }
  else                   // if more than one elements are present
  {
    q->front = (q->front + 1) % q->capacity;
  }
 }
 return data;
}

void deleteQueue(ArrayQueue *q)
{
 free(q->array);
 free(q);
 printf("\nQueue Deleted...\n");
}

void traverseQueue(ArrayQueue *q)
{
 int i = q->front;
 if(q->front == -1)
 printf("\nQueue is Empty...\n");
 else
 {
 printf("\nQueue Elements :  \n\n");
 while(i <= q->rear)
 {
  printf("%d -> ",q->array[i++]);
 }
 printf("End\n\n");
 }
}

void main()
{
 ArrayQueue *q = NULL;
 int ch,data,n;
 clrscr();
 printf("\nHow Many Elements You Want To Add in Queue :  ");
 scanf("%d",&n);
 q = createQueue(n);
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
  case 1 : if(!isQueueFull(q))
	   {
	   printf("\nEnter The Element :  ");
	   scanf("%d",&data);
	   enqueue(q,data);
	   }
	   else
	   {
	    printf("\nQueue is Full...\n");
	   }
	   break;

  case 2 : data = dequeue(q);
	   if(data == NULL)
	    printf("\nQueue is Empty...\n");
	   else
	    printf("\n\"%d\" Dequeued From The Queue...\n",data);
	   break;

  case 3 : traverseQueue(q);
	   break;

  case 4 : exit(0);
 }
 }
}