#include<iostream.h>

inline void large(float,float,float);

int main()
{
float a,b,c;
cout<<"Enter First Number :  ";
cin>>a;
cout<<endl<<"Enter Second Number :  ";
cin>>b;
cout<<endl<<"Enter Third Number :  ";
cin>>c;
large(a,b,c);
return(0);
}

inline void large(float x,float y,float z)
{
	if(x>y)
	{
		if(x>z)
		cout<<endl<<"Largest Number :  "<<x<<" ( First Number ) ";
		else
		cout<<endl<<"Largest Number :  "<<z<<" ( Third Number ) ";
	}
	else if(y>z)
	cout<<endl<<"Largest Number :  "<<y<<" ( Second Number ) ";
	else
	cout<<endl<<"Largest Number :  "<<z<<" ( Third Number ) ";
}
