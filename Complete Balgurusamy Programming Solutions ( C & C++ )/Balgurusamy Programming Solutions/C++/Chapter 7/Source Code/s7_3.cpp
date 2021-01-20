#include<iostream.h>

int r,c;

class MAT
{
 private:
	int p[10][10];

 public:
	MAT(void)
	{}
	void construct(int,int);
	void getvalue(int,int,int);
	int putvalue(int,int);
	MAT operator+(MAT);
	MAT operator-(MAT);
	MAT operator*(MAT);
	MAT operator/(MAT);
};

void MAT :: getvalue(int e,int r,int c)
{
 p[r][c]=e;
}

int MAT :: putvalue(int r,int c)
{
 return(p[r][c]);
}

void MAT :: construct(int row,int column)
{
 cout<<endl<<endl<<"Matrix of Order "<<row<<" * "<<column<<" Created Successfully"<<endl;
}

MAT MAT :: operator+(MAT m2)
{
 MAT m;
 for(int i=0;i<::r;i++)
 {
	for(int j=0;j<::c;j++)
	{
		m.p[i][j]=p[i][j]+m2.p[i][j];
	}
 }
 return(m);
}

MAT MAT :: operator-(MAT m2)
{
 MAT m;
 for(int i=0;i<::r;i++)
 {
	for(int j=0;j<::c;j++)
	{
		m.p[i][j]=p[i][j]-m2.p[i][j];
	}
 }
 return(m);
}

MAT MAT :: operator*(MAT m2)
{
 MAT m;
 int sum=0,i,j,r;
	for(r=0;r<::r;r++)
	{
		sum=0;
		for(i=0;i<::c;i++)
		{
			for(j=0;j<::c;j++)
			{
				sum=sum+(p[r][j])*(m2.p[j][i]);
			}
			m.p[r][i]=sum;
			sum=0;
		}
	}
 return(m);
}

MAT MAT :: operator/(MAT m2)
{
 MAT m;
 for(int i=0;i<::r;i++)
 {
	for(int j=0;j<::c;j++)
	{
		m.p[i][j]=p[i][j]/m2.p[i][j];
	}
 }
 return(m);
}

int main()
{
 int i,j,element;
 cout<<"Enter The Row of Matrix :  ";
 cin>>::r;
 cout<<endl<<"Enter The Column of Matrix :  ";
 cin>>::c;
 MAT m[3];
 m[0].construct(::r,::c);
 m[1].construct(::r,::c);

 for(int n=0;n<2;n++)
 {

  cout<<endl<<endl<<"Now Enter The Elements of Matrix "<<n+1<<" :--->"<<endl<<endl;
 for(i=0;i<r;i++)
 {
	for(j=0;j<c;j++)
	{
		cout<<"Element["<<i<<"]["<<j<<"] :->  ";
		cin>>element;
		m[n].getvalue(element,i,j);
	}
 }
 cout<<endl<<endl<<"Elements of Matrix "<<n+1<<" Were Entered Successfully";
 cout<<endl<<endl<<"The Elements of Matrix "<<n+1<<" Are :--->"<<endl<<endl;

 for(i=0;i<r;i++)
 {
	for(j=0;j<c;j++)
	{
		cout<<"Element["<<i<<"]["<<j<<"] :->  ";
		cout<<m[n].putvalue(i,j)<<"\t";
	}
	cout<<endl<<endl;
 }

 }

 m[2]=m[0]+m[1];
 cout<<endl<<endl<<"The Elements of Addition Matrix Are :--->"<<endl<<endl;
 for(i=0;i<r;i++)
 {
	for(j=0;j<c;j++)
	{
		cout<<"Element["<<i<<"]["<<j<<"] :->  ";
		cout<<m[2].putvalue(i,j)<<"\t";
	}
	cout<<endl<<endl;
 }

 m[2]=m[0]-m[1];
 cout<<endl<<endl<<"The Elements of Subtraction Matrix Are :--->"<<endl<<endl;
 for(i=0;i<r;i++)
 {
	for(j=0;j<c;j++)
	{
		cout<<"Element["<<i<<"]["<<j<<"] :->  ";
		cout<<m[2].putvalue(i,j)<<"\t";
	}
	cout<<endl<<endl;
 }

 m[2]=m[0]*m[1];

 cout<<endl<<endl<<"The Elements of Product Matrix Are :--->"<<endl<<endl;
 for(i=0;i<r;i++)
 {
	for(j=0;j<c;j++)
	{
		cout<<"Element["<<i<<"]["<<j<<"] :->  ";
		cout<<m[2].putvalue(i,j)<<"\t";
	}
	cout<<endl<<endl;
 }

 m[2]=m[0]/m[1];
 cout<<endl<<endl<<"The Elements of Division Matrix Are :--->"<<endl<<endl;
 for(i=0;i<r;i++)
 {
	for(j=0;j<c;j++)
	{
		cout<<"Element["<<i<<"]["<<j<<"] :->  ";
		cout<<m[2].putvalue(i,j)<<"\t";
	}
	cout<<endl<<endl;
 }

 return(0);
}

