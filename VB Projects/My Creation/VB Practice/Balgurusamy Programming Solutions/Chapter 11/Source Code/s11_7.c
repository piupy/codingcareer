#include<stdio.h>
#include<string.h>
void sort(char [][10]);
void main()
{
int i;
void (*p)(char [][10]);
p=sort;
char name[5][10];
	for(i=0;i<5;i++)
	{
		printf("\n\nName %d :  ",i+1);
		scanf("%s",name[i]);
	}
(*p)(name);
printf("\n\n\nList in Alphabetical Order : \n\n");
	for(i=0;i<5;i++)
	printf("%s\n\n",name[i]);
}


void sort(char ptr[5][10])
{
int i,j;
char temp[10];
		for(i=1;i<=5-1;i++)
		{
			for(j=1;j<=5-i;j++)
			{
				if( strcmp(ptr[j-1],ptr[j]) > 0)
				{
					strcpy(temp,ptr[j-1]);
					strcpy(ptr[j-1],ptr[j]);
					strcpy(ptr[j],temp);
				}
			}
		}
}
