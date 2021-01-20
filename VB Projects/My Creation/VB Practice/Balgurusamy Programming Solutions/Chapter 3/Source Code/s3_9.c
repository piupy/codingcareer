#include<stdio.h>
#include<math.h>
void feoq();
void ftbo();
void cal();
void feoqnew();
void ftbonew();
void main()
{
int ch,ch1;
float dr,sc,hc;
printf("\nWhat Do You Want To Check ? ");
printf("\n1. Economic Order Quantity");
printf("\n2. Time Between Orders");
printf("\n\nEnter Your Choice (1/2) : ");
scanf("%d",&ch);
if(ch==1)
{
feoq();
}
else if(ch==2)
{
ftbo();
}
else
{
printf("\n\nWrong Choice Entered");
}
printf("\n\nDo You Want To Calculate The Above Two With Different Values ?");
printf("\n1. Yes");
printf("\n2. No");
printf("\nEnter Your Choice (1/2) : ");
scanf("%d",&ch1);
if(ch1==1)
{
cal();
}
else if(ch1==2)
{
printf("\nProgram Ended ");
}
else
{
printf("\nWrong Choice Entered");
}
}

void feoq()
{
float dr=400,sc=800,hc=1600,eoq;
printf("\n Demand Rate : Rs.400 ");
printf("\n Standard Cost : Rs.800 ");
printf("\n Holding Cost : Rs.1600 ");
eoq=sqrt(((2*dr*sc)/hc));
printf("\n\nThe Value of Economic Order Quantity  is : %g",eoq);
}

void ftbo()
{
float dr=20,sc=30000,hc=30,tbo;
printf("\n Demand Rate : Rs.20 ");
printf("\n Standard Cost : Rs.30000 ");
printf("\n Holding Cost : Rs.30 ");
tbo=sqrt((2*sc)/(dr*hc));
printf("\n\nThe Value of Time Between Orders  is : %g",tbo);
}

void cal()
{
int ch;
printf("\nEnter What Do You Want To Calculate ");
printf("\n1. Economic Order Quantity");
printf("\n2. Time Between Orders");
printf("\n\nEnter Your Choice (1/2) : ");
scanf("%d",&ch);
if(ch==1)
{
feoqnew();
}
else if(ch==2)
{
ftbonew();
}
else
{
printf("\n\nWrong Choice Entered");
}
}
void feoqnew()
{
float dr,sc,hc,eoq;
printf("\nEnter The Demand Rate : ");
scanf("%f",&dr);
printf("\nEnter The Setup Cost : ");
scanf("%f",&sc);
printf("\nEnter The Holding Cost : ");
scanf("%f",&hc);
eoq=sqrt(((2*dr*sc)/hc));
printf("\n\nThe Value of Economic Order Quantity  is : %g",eoq);
}

void ftbonew()
{
float dr,sc,hc,tbo;
printf("\nEnter The Demand Rate : ");
scanf("%f",&dr);
printf("\nEnter The Setup Cost : ");
scanf("%f",&sc);
printf("\nEnter The Holding Cost : ");
scanf("%f",&hc);
tbo=sqrt((2*sc)/(dr*hc));
printf("\n\nThe Value of Time Between Orders  is : %g",tbo);
}
