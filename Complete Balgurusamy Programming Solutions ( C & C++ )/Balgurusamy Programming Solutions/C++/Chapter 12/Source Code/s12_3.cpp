#include<iostream.h>

template<class T>
void create_array(T,int);

template<class M>
M search(M *,int,M);

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
	cout<<"\n\n\n\nHere Are They...\n";
		for(i=0;i<n;i++)
		{
			 cout<<"\n\nElement "<<(i+1)<<" :   "<<ptr[i];
		}
	cout<<"\n\nWhich Number You Want To Search in The Array :    ";
	T key;
	cin>>key;
	cout<<"\n\n\n\nFetching The Position of The Number From The Array...\n";
	int pos=search(ptr,n,key);
		if( pos == -1 )
			cout<<"\n\nFailure !!! Element "<<key<<" Not Found in The Array !!!\n\n";
		else
			cout<<"\n\nSuccess !!! Number is Present on The Position "<<pos<<" in The Array...\n\n";
}

template<class M>
M search(M *p,int count,M search_number)
{
 int j=0,position=-1;								 /////////// Template Function To Find Minimum Number in The Array //
	 for( ;j<count;j++)
	 {
		if( search_number == p[j] )
		{
		  position=j+1;
		  break;
		}
	 }
 return(position);
}
