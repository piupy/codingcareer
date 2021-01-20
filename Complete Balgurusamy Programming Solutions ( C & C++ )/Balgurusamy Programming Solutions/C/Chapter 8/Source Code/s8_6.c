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

/************************** Checks For A Single Word *************************/

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
printf("\nFind The Word :  ");
gets(find);
printf("\nReplace It With  :  ");
gets(replace);
for(x=0;x<count;x++)
{
	if(strcmp(word[x],find)==0)
	{
	strcpy(word[x],replace);
	flag++;
	}
}
if(flag>0)
{
printf("\nSuccessfully Replaced");
printf("\n\nNew String :  ");
for(x=0;x<count;x++)
printf("%s ",word[x]);
}
else
{
printf("\nSorry! Word Not Found");
}
}

/*****************************************************************************/

/******************* Executed When Single Word is There **********************/

else
{
printf("\nReplace It With  :  ");
gets(replace);
strcpy(line,replace);
printf("\nSuccessfully Replaced");
printf("\n\nNew String :  %s",line);
}

/*****************************************************************************/

}
