
// Implementation of Stack Through Array including Operations like
// Push,Pop,Traverse

#include<stdio.h>
#include<conio.h>

struct Stack
{
  int top;
  int capacity;
  int *array;
};
typedef struct Stack ArrayStack;

ArrayStack* createStack(int cap)
{
 ArrayStack *stack;
 stack = (ArrayStack*)malloc(sizeof(ArrayStack));
 stack->top = -1;
 stack->capacity = cap;
 stack->array = (int*)malloc(sizeof(int)*stack->capacity);
 return stack;
}

int isFull(ArrayStack *stack)
{
 if(stack->top == stack->capacity-1)
  return 1;
 else
  return 0;
}

int isEmpty(ArrayStack *stack)
{
 if(stack->top == -1)
  return 1;
 else
  return 0;
}

void push(ArrayStack *stack,int item)
{
 if(!isFull(stack))
 {
  stack->top++;
  stack->array[stack->top] = item;
 }
}

int pop(ArrayStack *stack)
{
 int item;
 if(!isEmpty(stack))
 {
  item = stack->array[stack->top];
  stack->top--;
  return item;
 }
 else
 return -1;
}

void traverseStack(ArrayStack *stack)
{
 int i = 0;
 printf("\n\nList of Stack Items...\n\n");
 while(i <= stack->top)
  printf("%d\n",stack->array[i++]);
 printf("\n");
}

void main()
{
 ArrayStack *stack;
 int item,choice,size;
 clrscr();
 printf("\nHow Many Elements You Want to Store in Stack :  ");
 scanf("%d",&size);
 stack = createStack(size);
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
	     if(stack->top == stack->capacity-1)
	      printf("\n\nStack is Full...");
	     else
	     {
	      printf("\nEnter A Number :  ");
	      scanf("%d",&item);
	      push(stack,item);
	      printf("\n%d Pushed To Stack...\n",item);
	     }
	     break;
   case 2 :
	     item = pop(stack);
	     if(item == -1)
	      printf("\nStack is Empty...");
	     else
	      printf("\nPopped Value :  %d\n",item);
	     break;
   case 3 :
	     if(stack->top == -1)
	      printf("\nStack is Empty...");
	     else
	      traverseStack(stack);
	     break;
   case 4 :
	     exit(0);
   default :
	     printf("\nInvalid Choice...");
	     break;
  }
 }
 getch();
}
