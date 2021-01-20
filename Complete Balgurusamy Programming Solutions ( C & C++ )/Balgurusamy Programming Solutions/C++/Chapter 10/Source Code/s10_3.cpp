#include<iostream.h>

int main(void)
{
 char c;
 int char_count=0,word_count=0,line_count=0,flag=0;
 cout<<"Start Writing From Here :   ";
 cin.get(c);
 cout<<"\n\nYou Entered :   ";

 if( c != '\n' )                        //////// Executes Only If Words Exist //////////////
 {
	 while(c!='\n')
	 {
		cout.put(c);
			if( c == ' ' )
				word_count++;
			else if( c == '.' )
				{
					flag++;
					line_count++;
				}
			else
				char_count++;
			cin.get(c);
	 }
	 word_count++;
		if( flag == 0 )
		{
			 cout<<"\n\n\n\n\nNumber of Lines :   "<<1;
			 cout<<"\n\nNumber of Words :   "<<word_count;
			 cout<<"\n\nNumber of Characters :   "<<char_count;
		}
		else
		{
			 cout<<"\n\n\n\n\nNumber of Lines :   "<<line_count++;
			 cout<<"\n\nNumber of Words :   "<<word_count++;
			 cout<<"\n\nNumber of Characters :   "<<char_count;
		}
 }


 else                                              /////// Executes Only If No Word Exists //////////////
 {
	cout<<"\n\n\n\n\nNumber of Lines :   "<<0;
	cout<<"\n\nNumber of Words :   "<<0;
	cout<<"\n\nNumber of Characters :   "<<0;
 }


 return(0);
}