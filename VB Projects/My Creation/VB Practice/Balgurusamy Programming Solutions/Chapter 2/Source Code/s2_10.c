#include<stdio.h>
#define inc 1000
void main()
{long int fee=50000;
char ch;
printf("\nThe Fee of BCA Sem-VI is %ld inclusive of all taxes ",fee);
printf("\n\nI : Increase the Fee of This Sem ?");
printf("\n\nD : Decrease the Fee of This Sem ?");
printf("\n\nN : Do Nothing");
printf("\n\nEnter Your Choice : ");
scanf("%c",&ch);
switch(ch)
{
case 'i' : {
				fee=fee+inc;
				printf("\nFee Successfully Increased");
				break;
				}

case 'I' : {
				fee=fee+inc;
				printf("\nFee Successfully Increased");
				break;
				}

case 'd' : {
				fee=fee-inc;
				printf("\nFee Successfully Decreased");
				break;
				}


case 'D' : {
				fee=fee-inc;
				printf("\nFee Successfully Decreased");
				break;
				}

case 'n' : {
				printf("\n\nNothing Happened");
				break;
				}

case 'N' : {
				printf("\n\nNothing Happened");
				break;
				}

default : {
				printf("\n\nInvalid Choice");
				break;
				}
}
printf("\n\nNew Fee After Modification  :  %ld",fee);
}
