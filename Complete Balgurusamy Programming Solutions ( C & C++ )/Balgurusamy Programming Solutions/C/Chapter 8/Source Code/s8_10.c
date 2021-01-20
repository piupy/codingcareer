#include<stdio.h>
#include<string.h>
void main()
{
char roll[20][20],name[20][20],marks[20][20],search[50],temp[50],key[50];
int count=0,i,flag=0,t,j,found=0;
printf("\t\tEnter X in Roll No. To Finish Reading\n");
for(i=0;;i++)
{
printf("\nFor Student %d :--->\n",i+1);
printf("\nRoll No.        :     ");
gets(roll[i]);
if(strcmp(roll[i],"X")==0 || strcmp(roll[i],"x")==0)
break;
printf("\nName            :     ");
gets(name[i]);
printf("\nMarks Obtained  :     ");
gets(marks[i]);
count++;
}

//////////////////////////////// Search For The Student //////////////////////

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
printf("\n  Roll No.\t\t         Name\t\t   Marks Obtained");
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
		printf("\n\n%5s\t\t  %20s\t\t    %10s\n\n",roll[i],name[i],marks[i]);
		}
	}


//////////////////////////////////////////////////////////////////////////////

//////////////////// Sorting On Name Starts //////////////////////////////////

for(i=0;i<count-1;i++)
{
for(j=0;j<count-i-1;j++)
{
if(strcmp(name[j],name[j+1])>0)
{
strcpy(temp,name[j+1]);
strcpy(name[j+1],name[j]);
strcpy(name[j],temp);
strcpy(temp,roll[j+1]);
strcpy(roll[j+1],roll[j]);
strcpy(roll[j],temp);
strcpy(temp,marks[j+1]);
strcpy(marks[j+1],marks[j]);
strcpy(marks[j],temp);
}
}
}
printf("\n\nAlphabetical List of Names , Roll No. and Marks Obtained :---> \n\n");
for(t=0;t<10;t++)
{
printf("________");
}
printf("\n  Name\t\t       Roll No.\t\t       Marks Obtained");
printf("\n");
for(t=0;t<10;t++)
{
printf("________");
}
for(i=0;i<count;i++)
{
printf("\n\n  %s\t\t  %10s\t\t      %10s\n\n",name[i],roll[i],marks[i]);
}

//////////////////////////////////////////////////////////////////////////////

//////////////////// Sorting On Roll No. Starts //////////////////////////////

for(i=0;i<count-1;i++)
{
for(j=0;j<count-i-1;j++)
{
if(strcmp(roll[j],roll[j+1])>0)
{
strcpy(temp,name[j+1]);
strcpy(name[j+1],name[j]);
strcpy(name[j],temp);
strcpy(temp,roll[j+1]);
strcpy(roll[j+1],roll[j]);
strcpy(roll[j],temp);
strcpy(temp,marks[j+1]);
strcpy(marks[j+1],marks[j]);
strcpy(marks[j],temp);
}
}
}
printf("\n\nList Sorted on Roll No. :---> \n\n");
for(t=0;t<10;t++)
{
printf("________");
}
printf("\n Roll No.\t       Name\t\t       Marks Obtained");
printf("\n");
for(t=0;t<10;t++)
{
printf("________");
}
for(i=0;i<count;i++)
{
printf("\n\n  %s\t\t  %10s\t\t      %10s\n\n",roll[i],name[i],marks[i]);
}

//////////////////////////////////////////////////////////////////////////////


//////////////////// Sorting On Marks Starts /////////////////////////////////

for(i=0;i<count-1;i++)
{
for(j=0;j<count-i-1;j++)
{
if(marks[j]<marks[j+1])
{
strcpy(temp,name[j+1]);
strcpy(name[j+1],name[j]);
strcpy(name[j],temp);
strcpy(temp,roll[j+1]);
strcpy(roll[j+1],roll[j]);
strcpy(roll[j],temp);
strcpy(temp,marks[j+1]);
strcpy(marks[j+1],marks[j]);
strcpy(marks[j],temp);
}
}
}
printf("\n\nList Sorted on Marks Obtained :---> \n\n");
for(t=0;t<10;t++)
{
printf("________");
}
printf("\n  Marks Obtained\t          Name\t\t\t   Roll No.");
printf("\n");
for(t=0;t<10;t++)
{
printf("________");
}
for(i=0;i<count;i++)
{
printf("\n\n  %s\t\t  %20s\t\t      %10s\n\n",marks[i],name[i],roll[i]);
}
}

//////////////////////////////////////////////////////////////////////////////

else
{
printf("\n\nSorry! Record Not Found");
}
}
}
