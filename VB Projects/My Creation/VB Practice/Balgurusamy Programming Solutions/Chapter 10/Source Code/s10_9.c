#include<stdio.h>
typedef struct
{
int e[20];
}vector;
vector v;

int create();
int modify(int);
void mul(int);
void disp(int);
int j;

/*************************** Main Function ***********************************/

void main()
{
int total,check,ch;
read :
printf("\nWhat Do You Want To Do ?\n");
printf("\n1. Create The Vector\n");
printf("2. Modify The Vector Elements\n");
printf("3. Multiply The Vector Elements With A Number\n");
printf("4. Display The Vector Elements\n");
printf("5. Exit\n");
printf("\nEnter Your Choice :  ");
scanf("%d",&ch);
switch(ch)
{
case 1 : total=create();
			break;

case 2 : check=modify(total);
			if(check==1)
			{
				printf("\nElement Modified Successfully\n");
				for(j=0;j<8;j++)
				{
					printf("__________");
				}
				printf("\n");
			}
			else
			{
				printf("\nNo Modifications Could Be Done Because The Element Was Not Found\n");
				for(j=0;j<8;j++)
				{
					printf("__________");
				}
			printf("\n");
			}
			break;

case 3 : mul(total);
			break;

case 4 : disp(total);
			break;

case 5 : printf("\n");
			for(j=0;j<8;j++)
			{
				printf("__________");
			}
			printf("\n\t\tGood Bye\n");
         for(j=0;j<8;j++)
			{
				printf("__________");
			}
			break;

default : printf("\n");
			 for(j=0;j<8;j++)
			 {
				printf("__________");
			 }
			 printf("\n\t\t\t  Invalid Input\n");
          for(j=0;j<8;j++)
			 {
				printf("__________");
			 }
			 break;
}
if(ch!=5)
goto read;
}

/************************ End of Main Function *******************************/


/*************************** Create Function *********************************/

int create()
{
int i;
for(j=0;j<8;j++)
{
printf("__________");
}
printf("\nEnter The Elements of Vector ( Enter -999 to End Reading )\n\n");
for(i=0;;i++)
{
printf("Element %d  :   ",i+1);
scanf("%d",&v.e[i]);
	if( v.e[i] == -999 )
	{
		break;
	}
printf("\n");
}
printf("\n\tVector Successfully Created ( With %d Elements )\n",i);
for(j=0;j<8;j++)
{
printf("__________");
}
printf("\n");
return(i);
}

/************************ End of Create Function *****************************/

/*************************** Modify Function *********************************/

int modify(int total)
{
int find,replace,i,flag=0;
for(j=0;j<8;j++)
{
printf("__________");
}
printf("\nI Want To Replace The Value of Element :  ");
scanf("%d",&find);
printf("\nWith :  ");
scanf("%d",&replace);
for(i=0;i<total;i++)
{
	if( v.e[i] == find )
	{
		v.e[i]=replace;
		flag=1;
		break;
	}
}
return(flag);
}

/************************ End of Modify Function *****************************/

/*************************** Multiply Function *******************************/

void mul(int total)
{
int x,i;
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\nMultiply All The Elements With :  ");
scanf("%d",&x);
for(i=0;i<total;i++)
{
	v.e[i]=(v.e[i])*x;
}
printf("\nSuccessfully Multiplied All The Elements By %d\n",x);
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\n");
}

/*********************** End of Multiply Function ****************************/

/*************************** Display Function ********************************/

void disp(int total)
{
int i;
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\nHere Are The Elements of The Vector --->  ( ");
for(i=0;i<total;i++)
{
	if(i==total-1)
	printf("%d )\n",v.e[i]);
	else
	printf("%d , ",v.e[i]);
}
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\n");
}

/*********************** End of Display Function *****************************/

