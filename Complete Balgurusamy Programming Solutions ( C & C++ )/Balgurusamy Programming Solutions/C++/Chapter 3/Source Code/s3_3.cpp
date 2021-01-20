#include<iostream.h>
int main()
{
int max;
cout<<"Enter The Maximum Value You Want Pattern :  ";
cin>>max;
cout<<endl;
for(int i=1;i<=max;++i)
{
	for(int j=1;j<=i;++j)
	cout<<i<<" ";
	cout<<endl;
}
return(0);
}

