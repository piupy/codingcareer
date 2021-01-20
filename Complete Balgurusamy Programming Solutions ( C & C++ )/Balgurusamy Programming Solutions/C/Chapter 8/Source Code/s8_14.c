#include<stdio.h>
#include<string.h>
void main()
{
char roll[20][20],name[20][20],search[50],key[50];
int count=0,i,flag=0,t,found=0;
printf("\t\tEnter X in Roll No. To Finish Reading\n");
for(i=0;;i++)
{
printf("\nFor Student %d :--->\n",i+1);
printf("\nRoll No.      :  ");
gets(roll[i]);
if(strcmp(roll[i],"X")==0 || strcmp(roll[i],"x")==0)
break;
printf("\nName      :  ");
gets(name[i]);
count++;
}

//////////////////////////// Search For Name /////////////////////////////////

if(count==0)
{
printf("\nNo Record Was Entered\n");
}
else
{
printf("\n\n\nSearch For Roll No.  :  ");
gets(search);
	for(i=0;i<count;i++)
	{
		if(strcmp(roll[i],search)==0)
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
printf("\n\t\tRoll No.\t\tName");
printf("\n");
	for(t=0;t<10;t++)
	{
	printf("________");
	}
	for(i=0;i<count;i++)
	{
		if(strcmp(roll[i],search)==0)
		{
		flag++;
		printf("\n");
		printf("\n\t\t%s\t\t\t%s\n\n",roll[i],name[i]);
		}
	}
}
else
{
printf("\n\nSorry! Record Not Found");
}
found=0;

//////////////////////////////////////////////////////////////////////////////

/////////////////////// Search For Roll No. //////////////////////////////////

printf("\n\n\nSearch For Name  :  ");
gets(key);
	for(i=0;i<count;i++)
	{
		if(strcmp(name[i],key)==0)
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
printf("\n\t\tName\t\t\tRoll No.");
printf("\n");
	for(t=0;t<10;t++)
	{
	printf("________");
	}
		for(i=0;i<count;i++)
		{
			if(strcmp(name[i],key)==0)
			{
			flag++;
			printf("\n");
			printf("\n\t\t%s\t\t\t%s\n\n",name[i],roll[i]);
			}
		}
}
else
{
printf("\n\nSorry! Record Not Found");
}
}
}
