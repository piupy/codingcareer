#include<iostream.h>
#include<conio.h>

int main()
{
 float a,b,c;
 cout<<"Enter First Number :    ";
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
	catch(float)
	{
		cout<<"\n\nRun-Time Error :  Division Not Possible Because Denominator Becomes Zero...\n\n";
	}
 return(0);
}


