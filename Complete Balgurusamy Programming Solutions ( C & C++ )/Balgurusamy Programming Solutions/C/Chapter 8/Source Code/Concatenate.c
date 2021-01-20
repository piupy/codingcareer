#include<stdio.h>
#include<string.h>
void main()
{
char name[100];
char objects[20][20];
int i,j,k,count=1,t,counter=0,y,p;
static int x=-1;
printf("Enter 'X' Anytime To Terminate Reading\n\n");
  for(y=0;;y++)
  {
  printf("\nEnter String %d : ",y+1);
  scanf("%s",objects[y]);
  if(strcmp(objects[y],"X")==0)
  {
  break;
  }
  counter++;
  }

	if(counter==0)
	{
	printf("\n\nNo Value Was Concatenated With Anyone");
	}
	else
	{
		printf("\n\n%d String Values Were Successfully Inserted",counter);
		for(t=0;strcmp(objects[t],"X")!=0;t++)
		{
		x++;
		for(i=0;objects[t][i]!='\0';i++)
		{
		name[x]=objects[t][i];
		x++;
		}
		if(count<counter)
		{
		name[x]=' ';
		}
		else
		{
		name[x]='\0';
		}
		count++;
		}
	}
printf("\n\nMy Complete Name is : %s",name);
}
