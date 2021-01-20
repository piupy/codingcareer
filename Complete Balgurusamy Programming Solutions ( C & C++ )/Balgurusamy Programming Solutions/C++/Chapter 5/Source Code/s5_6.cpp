#include<iostream.h>

class matrix
{

 private:

 int a[10][10];

 public:

 void input(int,int);
 friend matrix mul(matrix,matrix,int,int);
 void output(int,int);

};

void matrix :: input(int r,int c)
{
 cout<<endl<<endl;
 for(int i=0;i<r;++i)
 {
	for(int j=0;j<c;++j)
	{
		cout<<"a["<<i<<"]["<<j<<"]  :  ";
		cin>>a[i][j];
		cout<<endl;
	}
 }
}

matrix mul(matrix x,matrix y,int r1,int c1)
{

 matrix m;
 int k=0;
	for(int i=0;i<r1;i++)
	{
		int sum=0,k=0,l=0;
		for(int t=0;t<c1;t++)
		{
			for(int j=0;j<c1;j++)
			{
				sum=sum+(x.a[i][j])*(y.a[j][k]);
			}
			m.a[i][l]=sum;
			k++,l++;
			sum=0;
		}
	}
 return(m);

}


void matrix :: output(int row,int col)
{

	for(int i=0;i<row;i++)
	{
		for(int j=0;j<col;j++)
		{
			cout<<a[i][j]<<"\t";
		}
		cout<<endl;
	}

}


int main(void)
{

 int row1,col1,row2,col2;
 matrix m1,m2,m3;

 // Setting The Values of First Matrix

 cout<<"Enter The Row of First Matrix :  ";
 cin>>row1;
 cout<<endl<<"Enter The Column of First Matrix :  ";
 cin>>col1;
 m1.input(row1,col1);

 // Setting The Values of Second Matrix

 cout<<"Enter The Row of Second Matrix :  ";
 cin>>row2;
 cout<<endl<<"Enter The Column of Second Matrix :  ";
 cin>>col2;
 m2.input(row2,col2);
 m3=mul(m1,m2,row1,col1);
 cout<<endl<<endl<<"The Elements of First Matrix :  "<<endl<<endl;
 m1.output(row1,col1);
 cout<<endl<<endl<<"The Elements of Second Matrix :  "<<endl<<endl;
 m2.output(row2,col2);
 cout<<endl<<endl<<"The Elements of Product Matrix :  "<<endl<<endl;
 m3.output(row1,col2);
 return(0);

}
