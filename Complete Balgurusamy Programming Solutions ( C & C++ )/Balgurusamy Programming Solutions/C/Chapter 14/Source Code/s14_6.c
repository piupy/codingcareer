#include<stdio.h>
#define PLUS +
#define MINUS -
#define MUL *
#define DIV /
#define MOD %
#define START main(){
#define END }

START
int a,b;
printf(" Enter The Value of A :  ");
scanf("%d",&a);
printf("\n Enter The Value of B :  ");
scanf("%d",&b);
printf("\n\tA + B = %d\n\n",a PLUS b);
printf("\tA - B = %d\n\n",a MINUS b);
printf("\tA * B = %d\n\n",a MUL b);
printf("\tA / B = %d\n\n",a DIV b);
printf("\tA %% B = %d\n\n",a MOD b);
END

