#include<iostream.h>
#include<string.h>
#include<conio.h>

class String
{
 private:
  char *ptr;
  int length;
  static int count;
 public:
  void display(void);
  String(char *);
  String(void);
  void join(String &,String &);
};

int String :: count=0;

String :: String(void)
{
 count++;
 cout<<endl<<endl<<"Object No. "<<count<<" Created By Constructor";
 length=0;
 ptr=new char[length+1];
}

String :: String(char *p)
{
 count++;
 cout<<endl<<endl<<"Object No. "<<count<<" Created By Constructor";
 length=strlen(p);
 ptr=new char[length+1];
 strcpy(ptr,p);
}

void String :: display(void)
{
 cout<<"Value of String :  "<<ptr;
}

void String :: join(String &x,String &y)
{
 length=x.length+y.length;
 delete ptr;
 ptr=new char[length+2];
 strcpy(ptr,x.ptr);
 strcat( strcat(ptr," "),y.ptr );
}

int main(void)
{
 clrscr();
 char name1[30],name2[30],*string1,*string2;
 cout<<"Enter First String :  ";
 cin>>name1;
 cout<<endl<<"Enter Second String :  ";
 cin>>name2;
 string1=name1;
 string2=name2;
 String s1(string1);
 String s2(string2);
 cout<<endl<<endl;
 s1.display();
 cout<<endl<<endl;
 s2.display();
 String s3("Well Done!");
 cout<<endl<<endl;
 s3.display();
 String s4;
 s4=s3;
 cout<<endl<<endl;
 s4.display();
 String s5;
 cout<<endl<<endl;
 s5.display();
 cout<<endl<<endl;
 s5.join(s1,s2);
 cout<<endl<<endl<<"Strings of Object 1 and Object 2 Were Joined Successfully";
 cout<<endl<<endl;
 s5.display();
 return(0);
}