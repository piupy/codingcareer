#include<stdio.h>
typedef struct
{
int e[20];
}vector;
vector v[2],s;

int create();
int modify(int);
void mul(int);
void disp(int);
void add(vector [],int);
int j;

/*************************** Main Function ***********************************/

void main()
{
int total,check,ch;
total=create();
disp(total);
add(v,total);
}

/************************ End of Main Function *******************************/


/*************************** Create Function *********************************/

int create()
{
int i;
static int x=0;
for(;x<2;x++)
{
printf("\n");
for(j=0;j<8;j++)
{
printf("__________");
}
printf("\nEnter The Elements of Vector %d ( Enter -999 to End Reading )\n\n",x+1);
for(i=0;;i++)
{
printf("Element %d  :   ",i+1);
scanf("%d",&v[x].e[i]);
	if( v[x].e[i] == -999 )
	{
		break;
	}
printf("\n");
}
printf("\n\tVector %d Successfully Created ( With %d Elements )\n",x+1,i);
for(j=0;j<8;j++)
{
printf("__________");
}
printf("\n");
}
return(i);
}

/************************ End of Create Function *****************************/

/*************************** Display Function ********************************/

void disp(int total)
{
int i,k;
for(j=0;j<8;j++)
{
	printf("__________");
}
for(k=0;k<2;k++)
{
printf("\nThe Elements of The Vector %d --->  ( ",k+1);
for(i=0;i<total;i++)
{
	if(i==total-1)
	printf("%d )\n",v[k].e[i]);
	else
	printf("%d , ",v[k].e[i]);
}
}
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\n");
}

/*********************** End of Display Function *****************************/

/**************************** Add Function ***********************************/

void add(vector v[],int total)
{
int i,k;
for(i=0;i<total;i++)
{
	s.e[i]=v[0].e[i]+v[1].e[i];
}
printf("\n");
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\nThe Elements of The Sum Vector --->  ( ");
for(i=0;i<total;i++)
{
	if(i==total-1)
	printf("%d )\n",s.e[i]);
	else
	printf("%d , ",s.e[i]);
}
for(j=0;j<8;j++)
{
	printf("__________");
}
printf("\n");
}

/************************ End of Add Function ********************************/