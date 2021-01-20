#include<stdio.h>
void main()
{
int old=1,new1=1,fab,i=1,m;
printf("\n Enter The Number of Levels Upto Which You Want Fabonacii Numbers : ");
scanf("%d",&m);
printf("\n\t\tOLD\t\tNEW\t\tFAB\n\n\n");
do
{
fab=old+new1;
printf("\t\t%d\t\t%d\t\t%d\n\n",old,new1,fab);
old=new1;
new1=fab;
i++;
}
while(i<=m);
}
