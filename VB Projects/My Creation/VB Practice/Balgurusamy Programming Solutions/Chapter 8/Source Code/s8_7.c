#include<stdio.h>
#include<string.h>
void main()
{
char type[20][20],month[20][20],price[20][20],search[50];
int count=0,i,flag=0,t,found=0;
printf("\t\tEnter X in Vehicle Type To Finish Reading\n");
for(i=0;;i++)
{
printf("\nFor Vehicle %d :--->\n",i+1);
printf("\nVehicle Type      :  ");
gets(type[i]);
if(strcmp(type[i],"X")==0 || strcmp(type[i],"x")==0)
break;
printf("\nMonth of Sales      :  ");
gets(month[i]);
printf("\nPrice               :  ");
gets(price[i]);
count++;
}
if(count==0)
{
printf("\nNo Record Was Entered\n");
}
else
{
printf("\n\n\nSearch For Vehicle Type  :  ");
gets(search);

	for(i=0;i<count;i++)
	{
		if(strcmp(type[i],search)==0)
		{
		found++;
		break;
		}
	}

if(found>0)
{
for(t=0;t<10;t++)
{
printf("________");
}
printf("\nVehicle Type\t\tMonth of Sales\t\t\t   Price");
printf("\n");
for(t=0;t<10;t++)
{
printf("________");
}
for(i=0;i<count;i++)
{
if(strcmp(type[i],search)==0)
{
flag++;
printf("\n");
printf("\n\n%10s\t\t%10s\t\t    %10s\n\n",type[i],month[i],price[i]);
}
}
}
else
{
printf("\n\nSorry! Record Not Found");
}
}
}
