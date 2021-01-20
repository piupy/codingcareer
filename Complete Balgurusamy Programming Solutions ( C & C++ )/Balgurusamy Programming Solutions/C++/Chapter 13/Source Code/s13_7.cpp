#include<iostream.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>
#include<typeinfo.h>

void nest(void);

int main(void)
{
 nest();
 return(0);
}

void nest(void)
{
 int n;
 cout<<"Enter A Number Between 1 to 100  :    ";
 cin>>n;
	if(  ( n > 1 ) && ( n < 100 )  )
	{
		cout<<"\n\nVery Good...";
		cout<<"\n\nPress 1 To Enter The Input Panel  :    ";
		int input;
		cin>>input;
			if( input == 1 )
			{
			 cout<<"\n\nAwesome...";
			 double a,b,c;
			 cout<<"\n\nEnter First Number :    ";
			 cin>>a;
			 cout<<"\n\nEnter Second Number :    ";
			 cin>>b;
				try
				{
					if( b == 0 )
						throw(b);
					else
						cout<<"\n\nDivision Result :    "<<a/b;
				}
				catch(double)
				{
					cout<<"\n\nRun-Time Error :  Division Not Possible Because Denominator Becomes Zero...\n\n";
				}
			}
			else
			{
				cout<<"\n\nInvalid Input...\n\n";
			}
	}
	else
	{
		cout<<"\n\nInvalid Input...\n\n";
	}
}
