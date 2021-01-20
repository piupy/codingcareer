#include<iostream.h>
#include<string.h>

class String
{
 private:
	char *ptr;

 public:
	String(void)
	{}
	String(char*);
	void output(void);
	int operator==(String);
};

String :: String(char *p)
{
 ptr=new char[strlen(p)+1];
 strcpy(ptr,p);
}

void String :: output(void)
{
 cout<<ptr;
}

int String :: operator==(String s)
{
  if(	strcmp(ptr,s.ptr)==0 )
 return(1);
 return(0);
}

int main(void)
{
 char string1[30],string2[30],*str1=string1,*str2=string2;
 cout<<"Enter First String :  ";
 cin>>str1;
 cout<<endl<<"Enter Second String :  ";
 cin>>str2;
 String s1=str1,s2=str2;
 cout<<endl<<endl<<"First String :--->  ";
 s1.output();
 cout<<endl<<endl<<"Second String :--->  ";
 s2.output();
 if(s1==s2)
 cout<<endl<<endl<<endl<<"Both The Strings Are Equal";
 else
 cout<<endl<<endl<<endl<<"Both The Strings Are Different";
 return(0);
}
