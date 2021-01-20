#include<stdio.h>
void main()
{
int maths,physics,chemistry;
printf("\nEnter Your Marks in Mathematics : ");
scanf("%d",&maths);
printf("\nEnter Your Marks in Physics : ");
scanf("%d",&physics);
printf("\nEnter Your Marks in Chemistry : ");
scanf("%d",&chemistry);
if(maths>=60)                                  //Check The Marks in Mathematics & Exit if Marks Are Below 60//
{
printf("\n\nMarks in Mathematics are O.K.");
	if(physics>=50)                             //Check The Marks in Physics & Exit if Marks Are Below 50//
	{
	printf("\n\nMarks in Physics are O.K.");
		if(chemistry>=40)                        //Check The Marks in Chemistry & Exit if Marks Are Below 40//
		{
		printf("\n\nMarks in Chemistry are O.K.");

			if((maths+physics+chemistry)>=200 || (maths+physics)>=150)
			{
			printf("\n\nCongratulations! You Are Eligible For This Professional Course");
			}
			else
			{
			printf("\n\nSorry! You Are Not Eligible For This Professional Course");
			}
		}
		else
		{
		printf("\n\nSorry! You Are Not Eligible For This Professional Course\nDue To Low Marks in Chemistry");
		}
	}
	else
	{
	printf("\n\nSorry! You Are Not Eligible For This Professional Course\nDue To Low Marks in Physics");
	}
}
else
{
printf("\n\nSorry! You Are Not Eligible For This Professional Course\nDue To Low Marks in Maths");
}
}

