#include<iostream.h>
void input();
void output();

int m,n,(*ptr)[10],i,j;

int main()
{
input();
output();
return(0);
}

void input()
{
cout<<"Enter The Row of Matrix :  ";
cin>>m;
cout<<endl<<"Enter The Column of Matrix :  ";
cin>>n;
cout<<endl<<endl;
ptr=new int[m][10];
cout<<"Memory Allocated For "<<m*n<<" Elements"<<endl<<endl<<endl;
	for(i=0;i<m;++i)
	{
		for(j=0;j<n;++j)
		{
			cout<<"Element Array["<<i<<"]["<<j<<"]  :  ";
			cin>>(*(ptr+i))[j];
			cout<<endl<<endl;
		}
	}
cout<<endl<<m*n<<" Elements Successfully Entered in The Array"<<endl<<endl;
}

void output()
{
	for(i=0;i<m;++i)
	{
		for(j=0;j<n;++j)
		{
			cout<<"Element Array["<<i<<"]["<<j<<"]  :  ";
			cout<<(*(ptr+i))[j];
			cout<<endl<<endl;
		}
	}
delete ptr;
cout<<endl<<"Memory Released For Future Use";
}
