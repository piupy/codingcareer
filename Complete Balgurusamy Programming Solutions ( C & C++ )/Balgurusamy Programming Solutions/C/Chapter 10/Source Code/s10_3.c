#include<stdio.h>
typedef struct
{
int hour;
int minute;
int second;
}time_struct;

time_struct t;

void read();
void write(time_struct);
time_struct update(time_struct);

void main()
{
read();
}

/******************************** Read Function ******************************/

void read()
{
printf("\n\tHour :  ");
scanf("%d",&t.hour);
printf("\n\tMinute :  ");
scanf("%d",&t.minute);
printf("\n\tSeconds :  ");
scanf("%d",&t.second);
if(t.hour>24 || t.minute>60 || t.second>60)
printf("\n\tInvalid Time Entered\n");
else
write(t);
}

/************************* End of Read Function ******************************/

/**************************** Write Function ********************************/

void write(time_struct x)
{
x=update(x);
	if( (x.hour<10) && (x.minute<10) && (x.second<10) )
	{
	printf("\n\n\tNew Time :-->  0%d:0%d:0%d",x.hour,x.minute,x.second);
	}
	elseif( (x.hour<10) && (x.minute<10) )
	{
	printf("\n\n\tNew Time :-->  0%d:0%d:%d",x.hour,x.minute,x.second);
	}
	elseif( (x.minute<10) && (x.second<10) )
	{
	printf("\n\n\tNew Time :-->  %d:0%d:0%d",x.hour,x.minute,x.second);
	}
	elseif( (x.hour<10) && (x.second<10) )
	{
	printf("\n\n\tNew Time :-->  0%d:%d:0%d",x.hour,x.minute,x.second);
	}
	elseif( (x.hour<10) )
	{
	printf("\n\n\tNew Time :-->  0%d:%d:%d",x.hour,x.minute,x.second);
	}
	elseif( (x.minute<10) )
	{
	printf("\n\n\tNew Time :-->  %d:0%d:%d",x.hour,x.minute,x.second);
	}
	elseif( (x.second<10) )
	{
	printf("\n\n\tNew Time :-->  %d:%d:0%d",x.hour,x.minute,x.second);
	}
	else
	printf("\n\n\tNew Time :-->  %d:%d:%d",x.hour,x.minute,x.second);
}

/************************* End of Write Function *****************************/

/**************************** Update Function *******************************/

time_struct update(time_struct y)
{
int hour,minute,second,ch;
printf("\n\n\tI Want To Increment The Time By :\n\n");
printf("\t1. Hours\n");
printf("\t2. Minutes\n");
printf("\t3. Seconds\n");
printf("\n\tEnter Your Choice :  ");
scanf("%d",&ch);
switch(ch)
{
case 1 :		printf("\n\tEnter The Number of Hours :  ");
				scanf("%d",&hour);
				y.hour=y.hour+hour;
						if(y.hour>=24)
						{
						y.hour=(y.hour)%24;
						}
				break;

case 2 :		printf("\n\tEnter The Number of Minutes :  ");
				scanf("%d",&minute);
				y.minute=y.minute+minute;
					if(y.minute>=60)
					{
					y.hour=y.hour+(y.minute)/60;
					y.minute=(y.minute)%60;
						if(y.hour>=24)
						{
						y.hour=(y.hour)%24;
						}
					}
				break;

case 3 :		printf("\n\tEnter The Number of Seconds :  ");
				scanf("%d",&second);
				y.second=y.second+second;
				if(y.second>=60)
				{
				y.minute=y.minute+(y.second)/60;
				y.second=y.second%60;
					if(y.minute>=60)
					{
					y.hour=y.hour+(y.minute)/60;
					y.minute=(y.minute)%60;
						if(y.hour>=24)
						{
						y.hour=(y.hour)%24;
						}
					}
				}
				break;

default :	printf("\n\n\tInvalid Input.Time Could Not Be Updated\n");
				break;

}
return(y);
}

/************************* End of Update Function ****************************/
