#include<iostream.h>

float area(float=10.0);
float area(float,float);

int main()
{
float ans,l,b,side;
ans=area();
cout<<"The Area of Square With Default Argument :  "<<ans<<" Square Units"<<endl;
cout<<endl<<"Now Enter The Side of Square Manually :  ";
cin>>side;
ans=area(side);
cout<<endl<<"The Area of Square :  "<<ans<<" Square Units";
cout<<endl<<endl<<"Enter The Length of Rectangle :  ";
cin>>l;
cout<<endl<<"Enter The Breadth of Rectangle :  ";
cin>>b;
ans=area(l,b);
cout<<endl<<"The Area of Rectangle :  "<<ans<<" Square Units";
return(0);
}

float area(float x)
{
return(x*x);
}

float area(float p,float q)
{
return(p*q);
}