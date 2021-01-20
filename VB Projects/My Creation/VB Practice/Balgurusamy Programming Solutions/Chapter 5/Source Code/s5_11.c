#include<stdio.h>
void large(float,float,float);
void main()
{
float a,b,c;
printf("\nEnter The First Side of Triangle : ");
scanf("%f",&a);
printf("\nEnter The Second Side of Triangle : ");
scanf("%f",&b);
printf("\nEnter The Third Side of Triangle : ");
scanf("%f",&c);
large(a,b,c);
}

void large(float x,float y,float z)
{
float hypo,base,perp,max;
if(x>y)
{
	if(x>z)
	{
	hypo=x;
	base=y;
	perp=z;
	}
	else
	{
	hypo=z;
	base=x;
	perp=y;
	}
}
else if(y>z)
{
hypo=y;
base=x;
perp=z;
}
else
{
hypo=z;
base=y;
perp=x;
}
max=(base*base)+(perp*perp);
if((hypo*hypo)==max)
{
printf("\n\nYes,The Given Sides Are The Sides of a Right-Angled Triangle");
}
else
{
printf("\n\nNo,The Given Sides Are Not The Sides of a Right-Angled Triangle");
}
}
