#include<stdio.h>
#define PLUS +
#define MINUS -
#define MUL *
#define DIV /
#define MOD %
#define START main(){
#define END }
#define B_LINE printf("\n");

START

int a,b;
printf(" Enter The Value of A :  ");
scanf("%d",&a);
B_LINE
printf(" Enter The Value of B :  ");
scanf("%d",&b);
B_LINE
printf("\tA + B = %d",a PLUS b);
B_LINE
B_LINE
printf("\tA - B = %d",a MINUS b);
B_LINE
B_LINE
printf("\tA * B = %d",a MUL b);
B_LINE
B_LINE
printf("\tA / B = %d",a DIV b);
B_LINE
B_LINE
printf("\tA %% B = %d",a MOD b);

END

