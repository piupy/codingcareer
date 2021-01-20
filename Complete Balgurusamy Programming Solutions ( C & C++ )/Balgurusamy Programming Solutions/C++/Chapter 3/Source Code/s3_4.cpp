#include<iostream.h>
#include<math.h>
void line();

ostream & currency(ostream &output)
{
return output<<"Rs.";
}

int main()
{
float V,P,r;
int n;

P=1000;
r=0.10;
n=1;

for(int i=0;i<10;++i)
{
V=(P*pow((1+r),n));
cout<<endl<<"\t\t\tFor Year : "<<n<<endl<<endl;
cout<<endl<<"Principal Amount :  "<<P;
cout<<endl<<endl<<"Rate of Interest :  "<<r;
cout<<endl<<endl<<"Time Period :  "<<n;
cout<<endl<<endl<<"Value of Money At The End of "<<n<<" Years :  "<<currency<<V;
P=P+1000;
r=r+0.01;
n=n+1;
cout<<endl<<endl;
line();
cout<<endl;
}

return(0);
}

void line()
{
for(int i=0;i<10;++i)
cout<<"--------";
}
