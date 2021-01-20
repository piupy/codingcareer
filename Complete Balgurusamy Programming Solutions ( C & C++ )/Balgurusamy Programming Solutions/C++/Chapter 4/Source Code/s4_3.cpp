#include<iostream.h>

void input(int,int=2);
void output(int,int=2);

int n,(*ptr)[10],i,j;

int main()
{
cout<<"Enter The Column of Matrix :  ";
cin>>n;
input(n);
output(n);
return(0);
}

void input(int y,int x)
{
cout<<endl<<endl;
ptr=new int[x][10];
cout<<"Memory Allocated For "<<x*y<<" Elements"<<endl<<endl<<endl;
	for(i=0;i<x;++i)
	{
		for(j=0;j<y;++j)
		{
			cout<<"Element Array["<<i<<"]["<<j<<"]  :  ";
			cin>>(*(ptr+i))[j];
			cout<<endl<<endl;
		}
	}
cout<<endl<<x*y<<" Elements Successfully Entered in The Array"<<endl<<endl;
}

void output(int q,int p)
{
	for(i=0;i<p;++i)
	{
		for(j=0;j<q;++j)
		{
			cout<<"Element Array["<<i<<"]["<<j<<"]  :  ";
			cout<<(*(ptr+i))[j];
			cout<<endl<<endl;
		}
	}
delete ptr;
cout<<endl<<"Memory Released For Future Use";
}
