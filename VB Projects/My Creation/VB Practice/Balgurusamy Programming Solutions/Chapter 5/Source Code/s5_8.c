#include<stdio.h>
#define percent 0.01
void usingif();
void usingswitch();
void main()
{
int ch;
printf("Enter From Which Method You Want To Calculate Amount \n");
printf("\n1. Using If\n2. Using Switch\n\n\nEnter Your Choice ( 1/2 ) : ");
scanf("%d",&ch);
switch(ch)
{
case 1 : usingif();
			break;

case 2 : usingswitch();
			break;

default : printf("\n\nInvalid Input");
			break;
}
}


void usingif()
{
float amount,dmc,dhi,td,actual,calc;
printf("\nEnter The Amount : ");
scanf("%f",&amount);
if(amount>=0 && amount<=100)
{
dmc=0;
dhi=5;
td=(dmc+dhi)*percent;
calc=amount*td;
actual=amount-calc;
printf("\nDiscounted Price = %g",actual);
}
else if(amount>=101 && amount<=200)
{
dmc=5;
dhi=7.5;
td=(dmc+dhi)*percent;
calc=amount*td;
actual=amount-calc;
printf("\nDiscounted Price = %g",actual);
}
else if(amount>=201 && amount<=300)
{
dmc=7.5;
dhi=10.0;
td=(dmc+dhi)*percent;
calc=amount*td;
actual=amount-calc;
printf("\nDiscounted Price = %g",actual);
}
else if(amount>300)
{
dmc=10.0;
dhi=15.0;
td=(dmc+dhi)*percent;
calc=amount*td;
actual=amount-calc;
printf("\nDiscounted Price = %g",actual);
}
else
{
printf("\nInvalid Amount");
}
}



void usingswitch()
{
float amount,dmc,dhi,td,actual,calc;
int ch;
printf("\nEnter The Amount : ");
scanf("%f",&amount);
if(amount<0)                     // To Check if Amount is Negative
{
printf("\n\nInvalid Amount");
}
else if(amount>=0)               // If Amount is Positive ( A Valid Amount )
{
  /////////////////////////////Start of If To Check Whether Amount is Greater Than 300 or Not///////////////////////////////

	if(amount<=300)
	{
	 ch=amount/100;

	////////////////////////////////////////// Starting of Switch if amount is Less than or Equal to 300 ///////////////////////////////////////////////////////////

	 switch(ch)
	 {
	 case 0 : dmc=0;            						 // Zero will come due to amount less than 100
				 dhi=5;
				 td=(dmc+dhi)*percent;
				 calc=amount*td;
				 actual=amount-calc;
				 printf("\nDiscounted Price = %g",actual);
				 break;
	 case 1 : switch((int)amount)                // 1 may come due to amount equal to 100 or greater than 100 but less than 200
				 {
				 case 100 : dmc=0;
								dhi=5;
								td=(dmc+dhi)*percent;
								calc=amount*td;
								actual=amount-calc;
								printf("\nDiscounted Price = %g",actual);
								break;
				 default :  dmc=5;
								dhi=7.5;
								td=(dmc+dhi)*percent;
								calc=amount*td;
								actual=amount-calc;
								printf("\nDiscounted Price = %g",actual);
								break;
				 }
				 break;

	 case 2 : switch((int)amount)                // 2 may come due to amount equal to 200 or greater than 200 but less than 300
				 {
				 case 200 : dmc=5;
								dhi=7.5;
								td=(dmc+dhi)*percent;
								calc=amount*td;
								actual=amount-calc;
								printf("\nDiscounted Price = %g",actual);
								break;
				 default :  dmc=7.5;
								dhi=10.0;
								td=(dmc+dhi)*percent;
								calc=amount*td;
								actual=amount-calc;
								printf("\nDiscounted Price = %g",actual);
								break;
				 }
				 break;

	case 3 : switch((int)amount)                // 3 will come due to amount equal to 300
				 {
				 case 300 : dmc=7.5;
								dhi=10.0;
								td=(dmc+dhi)*percent;
								calc=amount*td;
								actual=amount-calc;
								printf("\nDiscounted Price = %g",actual);
								break;
				 }
				 break;
	}
	////////////////////////////////////////End of Switch ///////////////////////////////////////////////////////////////////
	}
	else
	{
	dmc=10.0;
	dhi=15.0;
	td=(dmc+dhi)*percent;
	calc=amount*td;
	actual=amount-calc;
	printf("\nDiscounted Price = %g",actual);
	}
  ///////////////////////////////////////// End of If /////////////////////////////////////////////////////////////////////

}
else
{
printf("\n\nAmount Not in Numeric");
}
}
