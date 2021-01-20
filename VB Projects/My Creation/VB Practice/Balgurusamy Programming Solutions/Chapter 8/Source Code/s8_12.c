#include<stdio.h>
#include<string.h>
#define NULL '\0'
void main()
{
int i,j,k,x,q,flag=0;
static int count=0;
char line[100],word[30][50],dummy[30][50],replace[50],find[50];
printf("Enter The Line :  ");
gets(line);

/**************** Executed When Two or More Words Exist *********************/

if(strchr(line,' ')!=NULL)
{
for(i=0;line[i]!=' ';i++)
{
dummy[count][i]=line[i];
}
dummy[count][i]='\0';
strcpy(word[count],dummy[count]);
count++;
	for(x=i;line[x]!='\0';x++)
	{
		if(line[x]==' ')
		{
			for(j=x+1,k=0;line[j]!=' ';j++,k++)
			{
			dummy[count][k]=line[j];
			}
		dummy[count][k]='\0';
		strcpy(word[count],dummy[count]);
		count++;
		}
	}
printf("\nFind The Substring :  ");
gets(find);
for(x=0;x<count;x++)
{
	if(strstr(word[x],find)!=NULL)
	{
	flag++;
	}
}
if(flag>0)
{
	if(flag==1)
	printf("\nSub-String Found :  %d time",flag);
	else
	printf("\nSub-String Found :  %d times",flag);
}
else
{
printf("\nSorry! Sub-String Not Found in Any of The Words");
}
}


/*****************************************************************************/

/******************* Executed When Single Word is There **********************/

else
{
printf("\nFind The Substring :  ");
gets(find);

if(strstr(line,find)!=NULL)
{
flag++;
}

if(flag>0)
{
printf("\nSub-String Found");
}
else
{
printf("\nSorry! Sub-String Not Found");
}

}

/*****************************************************************************/

}
