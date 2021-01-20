#include<stdio.h>
#include<string.h>
#define NULL '\0'
void main()
{
char line[200],key[10];
int i,add,start=0,j,k,flag,found,t,space=0,x;
static int count=0;
printf("Enter A Line :  ");
gets(line);
printf("\nEnter The Word You Want To Search : ");
gets(key);
add=0;

for(x=0;line[x]!='\0';x++)
{
if(line[x]==' ')
space++;
}

/***************** If Only 1 Word is Present in The String *******************/

if(space==0)
{
	if(strcmp(line,key)==0)
	printf("\n\"%s\"  Occurred  1  time in the String",key);
	else
	printf("\n\"%s\"  Occurred  0  time in the String",key);

}

/*****************************************************************************/


/***************** More Than 1 Words Are Present in The String ***************/

else
{

/********** To Check If The First Word is The Key or Not *********************/

for(t=0;line[t]!=' ';t++)
{
	if(line[t]==key[t])
	{
	found=1;
	continue;
	}
	else
	{
	found=0;
	break;
	}
}

if(found==1)
count++;

/*************************** Search Finished *********************************/


/************** Start Searching From The Second Word Now *********************/

for(i=0;i<strlen(line);i++)
{
	if(line[i]==' ')
	{
	start=i;
		for(j=start+1,k=0;j<(start+1+strlen(key)-1);j++,k++)
		{
			if(line[j]==key[k])
			{
			flag=1;
			continue;
			}
			else
			{
			flag=0;
			break;
			}
		}
		if(flag==1)
		count++;
	 }

}

/*************************** Search Finished *********************************/


if(count<2)
{
printf("\n\"%s\"  Occurred  %d  time in the String",key,count);
}
else
{
printf("\n\"%s\"  Occurred  %d  times in the String",key,count);
}
}
}