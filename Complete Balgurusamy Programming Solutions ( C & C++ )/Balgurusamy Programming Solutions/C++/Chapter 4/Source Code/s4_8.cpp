#include<iostream.h>
#include<math.h>

int power(int,int=2);

int main()
{
int m,n,result;
cout<<"Enter The Number :  ";
cin>>m;
cout<<endl<<"Raise The Power To :  ";
cin>>n;
cout<<endl<<m<<" Raised To The Power "<<n<<"  :  "<<power(m,n);
cout<<endl<<endl<<m<<" Raised To The Power 2 :  "<<power(m);
return(0);
}

int power(int x,int y)
{
return(pow(x,y));
}
