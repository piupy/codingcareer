#include<iostream.h>
#include<iomanip.h>
int main()
{
float x,a,b,c,pre;
cout<<"  Enter The Values of A , B and C :---> "<<endl;
cout<<endl<<"  A : ";
cin>>a;
cout<<endl<<"  B : ";
cin>>b;
cout<<endl<<"  C : ";
cin>>c;
if((b-c)==0)
cout<<endl<<"  Division Not Possible Because Denominator is Zero";
else
{
cout<<endl<<"  Correct to How Many Places After Decimal : ";
cin>>pre;
x=a/(b-c);
cout<<endl<<"  The Value of X : "<<setprecision(pre+1)<<x;
}
return(0);
}


