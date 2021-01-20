#include<iostream.h>

void line(void);

class vector
{
 private:
	int v[20];
	int n;
 public:
	void input(void);
	void modify(void);
	void mul(void);
	void output(void);
};

void vector :: input(void)
{
 cout<<endl<<"I Want to Create A Vector of Elements :  ";
 cin>>n;
	for(int i=0;i<n;++i)
	{
		cout<<endl<<"Enter Element "<<i+1<<" :  ";
		cin>>v[i];
	}
 cout<<endl<<endl<<"Vector of "<<n<<" Elements Created Successfully"<<endl<<endl;
}

void vector :: modify(void)
{
 int element,replace;
 cout<<endl<<endl<<"I Want To Modify The Value of Element :  ";
 cin>>element;
 cout<<endl<<endl<<"Previous Value of Element :  "<<v[element-1];
 cout<<endl<<endl<<"Replace It With :  ";
 cin>>replace;
 v[element-1]=replace;
 cout<<endl<<endl<<"Successfully Modified The Vector Element"<<endl<<endl;
}

void vector :: mul(void)
{
 int k;
 cout<<endl<<endl<<"Multiply The Vector Elements By :  ";
 cin>>k;
	for(int i=0;i<n;++i)
	{
		v[i]=v[i]*k;
	}
 cout<<endl<<endl<<"Successfully Multiplied All The Values By "<<k<<endl<<endl;
}


void vector :: output(void)
{
 cout<<endl<<endl<<"The Vector Elements Are :  "<<endl<<endl;
 cout<<"( ";
 for(int i=0;i<n;++i)
 {
	cout<<v[i]<<" , ";
 }
 cout<<"\b\b)"<<endl<<endl;
}

int main(void)
{
 int ch=0;
 vector v1;
 line();
 while(ch!=5)
 {
 cout<<endl<<endl<<"Enter What You Want To Do :--->"<<endl<<endl;
 cout<<"1.	Create A Vector"<<endl<<endl;
 cout<<"2.	Modify The Value of an Element"<<endl<<endl;
 cout<<"3.	Multiply By A Scalar Value"<<endl<<endl;
 cout<<"4.	Display The Vector"<<endl<<endl;
 cout<<"5.	Exit"<<endl<<endl;
 cout<<"Please Enter Your Choice :  ";
 cin>>ch;
	switch(ch)
	{
		case 1 :		v1.input();
						break;

		case 2 :		v1.modify();
						break;

		case 3 :		v1.mul();
						break;

		case 4 : 	v1.output();
						break;

		case 5 :		cout<<endl<<endl<<"Thank You. Good Bye..."<<endl;
						break;

		default :	cout<<endl<<endl<<"Invalid Input"<<endl<<endl;
						break;
	}
  line();
  }
 return(0);
}

void line(void)
{
 cout<<endl;
 for(int i=0;i<8;++i)
 cout<<"==========";
 cout<<endl<<endl;
}

