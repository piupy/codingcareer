#include<iostream.h>
#include<stdlib.h>

template<class T>
class vector
{
	protected:
  int size;
  T second;
  T v[];

 public:
  vector(void)
  {
  }
  void create_vector(int);
  void modify_vector(void);
  void multiply_vector(T);
  void display_vector(void);
};

template<class T>
void vector<T> :: create_vector(int n)
{
	size=n;                                            	/////////////// Function Template To Create Vector //
		for(int i=0;i<size;i++)
		{
			 cout<<"\n\nElement "<<(i+1)<<" :   ";
			 cin>>v[i];
			second = v[1];
		}
	cout<<"\n\nVector Created Successfully...";
}

template<class T>
void vector<T> :: modify_vector(void)
{
	int ch;
	cout<<"\n\nWhich Element's Value You Want To Modify :    ";            //////// Function Template To Modify The Vector //////
	cin>>ch;
		if( ch == 2 )
		{
			cout<<"\n\nPrevious Value of The Element :    "<<second;
			cout<<"\n\nEnter New Value :    ";
			cin>>v[ch-1];
			second=v[ch-1];
		}
		else
		{
			cout<<"\n\nPrevious Value of The Element :    "<<v[ch-1];
			cout<<"\n\nEnter New Value :    ";
			cin>>v[ch-1];
		}
	cout<<"\n\nSuccessfully Modified The Value of The Vector...\n\n";
}

template<class T>
void vector<T> :: multiply_vector(T m)
{
	for(int i=0;i<size;i++)                                               //////// Function Template To Multiply The Vector By Scalar Value //////
	{
		v[i]=( (v[i])*(m) );
			if( i == 1 )
			second=second*m;
	}
	cout<<"\n\nVector Elements Sucessfully Multiplied By "<<m<<"\n\n";
}

template<class T>
void vector<T> :: display_vector(void)
{
	cout<<"\n\n\n\nVector Elements : ( ";                                ///////// Function Template To Display The Vector ///////
		for(int i=0;i<size;i++)
		{
			if( i == 1 )
			 cout<<second<<" , ";
			else
			 cout<<v[i]<<" , ";
		}
		cout<<"\b\b)\n\n";
}

int main(void)
{
 int n,ch,choice=0,i,perform,flag=1,flag1=1,main_flag=1;
	 while( main_flag )                           //////////// Starting of While Loop 1 /////////
	 {
		 cout<<"\n\n\n\n1. Create A Vector";
		 cout<<"\n\n2. Exit The Program";
		 cout<<"\n\nEnter Your Choice :    ";
		 cin>>choice;
			switch( choice )                        ///////////// Starting of Switch 1 //////////
			{
				case 1 : {
								 while(flag)            //////////// Starting of While Loop 2 ///////
								 {
								 cout<<"\n\n\n\nWhich Type of Vector You Want To Create";
								 cout<<"\n\n1. Integer Typed Vector";
								 cout<<"\n\n2. Double Typed Vector";
								 cout<<"\n\n3. Exit The Program";
								 cout<<"\n\nEnter Your Choice :    ";
								 cin>>ch;
											switch(ch)      ////// Starting of Switch 2 /////
											{
												case 1 :  {
																  cout<<"\n\n\n\nHow Many Elements The Vector Should Have :    ";
																  cin>>n;
																  vector<int>vec;
																  vec.create_vector(n);
																	  while(flag1)          ///////////// Starting of While Loop 3 //////
																	  {
																		  cout<<"\n\n\n\nWhat Do You Want To Do ?";
																		  cout<<"\n\n1. Modify The Vector";
																		  cout<<"\n\n2. Multiply By a Scalar Value";
																		  cout<<"\n\n3. Display The Vector";
																		  cout<<"\n\n4. Exit The Program";
																		  cout<<"\n\nEnter Your Choice :    ";
																		  cin>>perform;
																				switch(perform)      ////// Starting of Switch 3 ///////////
																				{
																					case 1 : {
																									 vec.modify_vector();
																									 break;
																								}

																					case 2 : {
																									 cout<<"\n\nMultiply The Vector Elements By :    ";
																									 int mul;
																									 cin>>mul;
																									 vec.multiply_vector(mul);
																									 break;
																								}

																					case 3 : {
																									 vec.display_vector();
																									 break;
																								}

																					case 4 : {
																									 flag1=0;
																									 cout<<"\n\nEnd of Program...\n\n";
																									 exit(0);
																									 break;
																								}

																				  default : {
																									 cout<<"\n\nInvalid Input...\n\n";
																									 break;
																								}
																				}          ////////// End of Switch 3 ////////////
																	  }                 //////////// End of While Loop 3 ///////
																break;
															 }

												case 2 :	 {
																  cout<<"\n\n\n\nHow Many Elements The Vector Should Have :    ";
																  cin>>n;
																  vector<double>vec;
																  vec.create_vector(n);
																	  while(flag1)                  ///////////// Starting of While Loop 4 //////
																	  {
																		  cout<<"\n\n\n\nWhat Do You Want To Do ?";
																		  cout<<"\n\n1. Modify The Vector";
																		  cout<<"\n\n2. Multiply By a Scalar Value";
																		  cout<<"\n\n3. Display The Vector";
																		  cout<<"\n\n4. Exit The Program";
																		  cout<<"\n\nEnter Your Choice :    ";
																		  cin>>perform;
																				switch(perform)         /////////// Starting of Switch 4 //////////
																				{
																					case 1 : {
																									vec.modify_vector();
																									break;
																								}

																					case 2 : {
																									cout<<"\n\nMultiply The Vector Elements By :    ";
																									double mul;
																									cin>>mul;
																									vec.multiply_vector(mul);
																									break;
																								}

																					case 3 : {
																									 vec.display_vector();
																									 break;
																								}

																					case 4 : {
																									 flag1=0;
																									 cout<<"\n\nEnd of Program...\n\n";
																									 exit(0);
																									 break;
																								}

																				 default : {
																									 cout<<"\n\nInvalid Input...\n\n";
																									 break;
																								}
																				}       /////// End of Switch 4 ///////
																		}             ////// End of While Loop 4 ///////
																break;
															 }

												case 3 :  {
																cout<<"\n\n\n\nEnd of Program...\n\n";
																flag=0;
                                                exit(0);
																break;
															 }

												default : {
																 cout<<"\n\nInvalid Input...\n\n";
																  break;
															 }
											}          ////////////////// End of Switch 2 ////////////
											}         //////////// End of While Loop 2 //////////////
								break;
							}

				case 2 : {
								cout<<"\n\nEnd of Program...\n\n";
								main_flag=0;
								exit(0);
								break;
							}

			 default :  {
								 cout<<"\n\nInvalid Input...\n\n";
								 break;
							}
			}                     //////////  End of Switch 1 ///////////
 }                        ///////////// End of While Loop 1 /////////////
 return(0);
}

