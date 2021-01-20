#include<stdio.h>
int x,y;
void exchange();
void main()
{
printf("Enter The Value of X :  ");
scanf("%d",&x);
printf("\nEnter The Value of Y :  ");
scanf("%d",&y);
printf("\n\nOriginal Values : X = %d  ,  Y = %d",x,y);
exchange();
printf("\n\nValues After Exchange : X = %d  ,  Y = %d",x,y);
}

void exchange()
{
int temp;
temp=y;
y=x;
x=temp;
}
