#include<stdio.h>
void main()
{
int x,count=0,max=0,min=0;
printf("Enter Few Numbers in a Line \n\n");
input :
scanf("%d",&x);
if(x<0)
{
	goto output;
}
count++;
if(count==1)
{
	max=min=x;
	goto input;

}
else
{
	if(x>max)
	{
	max=x;
	goto input;
	}
	else if(x<min)
	{
	min=x;
	goto input;
	}
}
output :
printf("\n\nTotal Values : %d",count);
printf("\n\nMaximum : %d",max);
printf("\n\nMinimum : %d",min);
}

