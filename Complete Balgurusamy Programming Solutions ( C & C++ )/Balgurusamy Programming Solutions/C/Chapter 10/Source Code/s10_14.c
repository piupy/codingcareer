#include<stdio.h>
#include<string.h>
#define size 50

typedef struct
{
char pname[30];
char tname[30];
int bav;
}cricket;

cricket player[size];

void read();
int distinct(cricket []);
char a[10][30];
int count;

/******************************* Main Function *******************************/

void main()
{
read();
}

/************************ End of Main Function *******************************/

/************************ Read Function **************************************/

void read()
{
char team[10][30];
int val,x,j;
printf(" Enter The Name of Teams , Players & Their Batting Averages : \n\n");
	for(count=0;count<size;count++)
	{
		printf("\n\n\t\tPlayer %d :--->  \n\n",count+1);
		printf("\nPlayer Name :  ");
		scanf("%s",player[count].pname);

		printf("\nTeam Name :  ");
		scanf("%s",player[count].tname);
		strcpy(team[count],player[count].tname);

		printf("\nBatting Average :  ");
		scanf("%d",&player[count].bav);

	}
val=distinct(player);
printf("\n\nThere Are %d Teams in All.Batting Averages of Each Player Are Shown\nWithin The Brackets\n",val);
	for(x=0;x<val;x++)
	{
		printf("\n\nPlayers of Team %d ( %s ) :--->  ",x+1,a[x]);
			for(j=0;j<size;j++)
			{
				if( strcmp(player[j].tname,a[x])==0 )
				{
					printf("%s(%d),",player[j].pname,player[j].bav);
				}
			}
		printf("\b");
	}

}

/************************ End of Read Function *******************************/

/************************** Distinct Function ********************************/

int distinct(cricket player[])
{
int i,k,flag;
static int l=0;
	for(i=0;i<size;i++)
	{
		if(i==0)
		{
			strcpy(a[i],player[l++].tname);
		}
		else
		{
			for(k=0;k<l;k++)
			{
				if( strcmp(player[i].tname,a[k])==0 )
				{
					flag=0;
					break;
				}
				else
				{
					flag=1;
				}
			}
			if(flag==1)
			{
				strcpy(a[l++],player[i].tname);
			}
		}
	}
return(l);
}

/************************ End of Distinct Function ***************************/

