#include<iostream.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>
#include<typeinfo.h>

int main()
{
 double a,b,c;
 cout<<"Please Enter Double Type Values...";
 cout<<"\n\nEnter First Number :    ";
 cin>>a;
 cout<<"\n\nEnter Second Number :    ";
 cin>>b;
	try
	{
		if(  ( strcmp( (typeid(a).name()),"double" ) != 0 ) || ( strcmp( (typeid(b).name()),"double" ) != 0 )  )
		{
			throw(1.0);
		}
	}
	catch(double)
	{
		cout<<"\n\nProgram Termination Due To Invalid Input of The Type of Value(s)";
		exit(0);
	}
		try
		{
			if( b == 0 )
				throw(b);
			else
				cout<<"\n\nDivision Result :    "<<a/b;
		}
		catch(float)
		{
			cout<<"\n\nRun-Time Error :  Division Not Possible Because Denominator Becomes Zero...\n\n";
		}
 return(0);
}


