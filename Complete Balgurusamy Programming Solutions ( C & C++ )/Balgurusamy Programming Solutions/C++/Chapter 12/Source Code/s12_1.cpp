#include<iostream.h>

template<class T>
void create_array(T,int);

template<class M>
M minimun(M *,int);

int main(void)
{
 cout<<"How Many Elements You Want To Insert in Array :   ";
 int size;
 cin>>size;
 cout<<"\n\nWhich Type of Array You Want To Create --->";
 cout<<"\n\n1. Integer Typed Array";
 cout<<"\n\n2. Double Typed Array";
 cout<<"\n\nEnter Your Choice :   ";
 int ch;
 cin>>ch;
	if(ch==1)
	{
		create_array(1,size);
	}

	else if(ch==2)
	{
		create_array(1.1,size);
	}

  else
  {
		cout<<"\n\nInvalid Input...\n\n";
  }

 cout<<"\n\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  End of Program  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n\n";
 return(0);
}

template<class T>
void create_array(T receiver,int n)
{
	T *ptr=new T[n];                            /////////////// Function Template To Create Array //
	T ele;
	for(int i=0;i<n;i++)
	{
		 cout<<"\n\nElement "<<(i+1)<<" :   ";
		 cin>>ele;
		 ptr[i]=ele;
	}
	cout<<"\n\nElements Successfully Entered in Array...";
	cout<<"\n\nHere Are They...\n";
	for(i=0;i<n;i++)
	{
		 cout<<"\n\nElement "<<(i+1)<<" :   "<<ptr[i];
	}
	cout<<"\n\n\n\nFetching The Minimun Number From The Array...\n";
	T min=minimum(ptr,n);
	cout<<"\n\nMinimum Value in The Array :    "<<min<<"\n\n";
}

template<class M>
M minimum(M *p,int count)
{
 int j=0;
 M min_number=p[j];                             /////////// Template Function To Find Minimum Number in The Array //
 for( ;j<count;j++)
 {
	if( min_number > p[j] )
	min_number=p[j];
 }
 return(min_number);
}
