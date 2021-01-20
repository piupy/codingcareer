#include<stdio.h>
void main()
{
int i,count=0,sum=0;
printf("\n\nHere is The List of All The Numbers That Are Divisible By 6 But \nNot Divisible By 4 and lie Between 0 and 100\n\n");
	for(i=1;i<100;i++)
	{
		if((i%6==0) && (i%4!=0))
		{
		printf("%d\n",i);
		sum=sum+i;
		count++;
		}
	}
printf("\nTotal Number of Values : %d",count);
printf("\nSum of The Values : %d",sum);
}
