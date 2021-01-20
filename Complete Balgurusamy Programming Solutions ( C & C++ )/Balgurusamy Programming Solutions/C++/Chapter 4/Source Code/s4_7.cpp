#include<iostream.h>
#include<math.h>

double power(double,int=2);

int main()
{
double m,result;
int n;
cout<<"Enter The Number :  ";
cin>>m;
cout<<endl<<"Raise The Power To :  ";
cin>>n;
cout<<endl<<m<<" Raised To The Power "<<n<<"  :  "<<power(m,n);
cout<<endl<<endl<<m<<" Raised To The Power 2 :  "<<power(m);
return(0);
}

double power(double x,int y)
{
return(pow(x,y));
}

