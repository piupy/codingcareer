#include<iostream.h>

double area(double,double);
double area(double);

int main()
{
double base,height,ans,radius;
cout<<"Enter The Length of Base of Triangle :  ";
cin>>base;
cout<<endl<<"Enter The Corresponding Height of Triangle :  ";
cin>>height;
cout<<endl<<"The Area of Triangle :  "<<area(base,height)<<" Square Units"<<endl;
cout<<endl<<"Enter The Radius of Circle :  ";
cin>>radius;
cout<<endl<<"The Area of Circle :  "<<area(radius)<<" Square Units";
return(0);
}

double area(double r)
{
return(3.14*r*r);
}

double area(double b,double h)
{
return(0.5*b*h);
}
