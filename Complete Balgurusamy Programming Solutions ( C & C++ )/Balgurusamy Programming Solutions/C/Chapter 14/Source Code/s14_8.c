#include<stdio.h>
#define PLUS +
#define MINUS -
#define MUL *
#define DIV /
#define MOD %
#define START main(){
#define END }
#define PPLUS(A,B) printf("\n\t"#A" + "#B" = %d\n\n",A + B);
#define PMINUS(A,B) printf("\t"#A" - "#B" = %d\n\n",A - B);
#define PMUL(A,B) printf("\t"#A" * "#B" = %d\n\n",A * B);
#define PDIV(A,B) printf("\t"#A" / "#B" = %d\n\n",A / B);
#define PMOD(A,B) printf("\t"#A" %% "#B" = %d\n\n",A % B);

START

int A,B;
printf(" Enter The Value of A :  ");
scanf("%d",&A);
printf("\n Enter The Value of B :  ");
scanf("%d",&B);
PPLUS(A,B);
PMINUS(A,B);
PMUL(A,B);
PDIV(A,B);
PMOD(A,B);

END

