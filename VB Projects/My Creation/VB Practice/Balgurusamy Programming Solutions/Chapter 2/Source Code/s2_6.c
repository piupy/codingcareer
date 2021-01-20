#include<stdio.h>
void main()
{
int i,a[10],j,p=0,n=0,valid=0;
printf("\nEnter The Numbers : \n\n");
for(i=0;i<10;i++)
{
		scanf("%d",&a[i]);
		 if(a[i]!=0)
		{
		valid++;
		}
		else
		{
		printf("\nReading Terminated");
		break;
		}
		}
printf("\n\n%d Numbers Were Successfully Entered ",valid);
printf("\n\nThe Numbers You Entered Are : \n");
printf("\nPositive Numbers			Negative Numbers \n");
for(i=0;i<valid;i++)
if(a[i]>=0)
{ printf("\n%d",a[i]); }
else{ printf("\n\t\t\t\t\t\t%d",a[i]);}
for(j=0;j<valid;j++)
	{
	if(a[j]>=0)
  {
  p++;
  }
  else
  {
  n++;
  }
  }
printf("\n\nNumber of Positive Numbers  : %d",p);
printf("\nNumber of Negative Numbers  : %d",n);
}
