#include<iostream.h>
#define large(a,b) ( ( (a) > (b) ) ? (a):(b) )

int main()
{
float a,b,c,big;
cout<<"Enter First Number :  ";
cin>>a;
cout<<endl<<"Enter Second Number :  ";
cin>>b;
cout<<endl<<"Enter Third Number :  ";
cin>>c;
big=large((large(a,b)),c);
cout<<endl<<"The Largest Number is :  "<<big;
return(0);
}