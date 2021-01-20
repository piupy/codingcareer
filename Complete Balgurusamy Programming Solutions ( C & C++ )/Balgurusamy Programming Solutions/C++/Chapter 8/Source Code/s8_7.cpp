#include<iostream.h>
#include<stdio.h>
#include<conio.h>
#define next cout<<endl<<endl

void line(void);

class staff                                 ////////////////////////// Starting of STAFF Class //////////////////////////
{
 protected:
  long int code;
  char name[30];
 public:
  void input_code(void);
  void input_name(void);
  void output_code(void);
  void output_name(void);
};                                          ////////////////////////// Ending of STAFF Class /////////////////////////////

void staff :: input_code(void)
{
 next;
 cout<<"Enter The Code of Staff Member :   ";
 cin>>code;
 next;
}

void staff :: input_name(void)
{
 next;
 cout<<"Enter The Name of Staff Member :    ";
 gets(name);
 next;
}

void staff :: output_code(void)
{
 next;
 cout<<"The Code of Staff Member :   "<<code;
 next;
}

void staff :: output_name(void)
{
 next;
 cout<<"The Name of Staff Member :   "<<name;
 next;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class education
{
 protected:
  char highest_general_education[30];
  char highest_professional_qualification[30];
 public:
  void input_education_details(void);
  void output_education_details(void);
};

void education :: input_education_details(void)
{
 next;
 cout<<"Enter The Highest General Education :   ";
 gets(highest_general_education);
 next;
 cout<<endl;
 cout<<"Enter The Highest Professional Qualification :   ";
 gets(highest_professional_qualification);
 next;
}

void education :: output_education_details(void)
{
 next;
 cout<<"Highest General Education :   "<<highest_general_education;
 next;
 cout<<endl<<endl;
 cout<<"Highest Professional Qualification :   "<<highest_professional_qualification;
 next;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class teacher : public staff , public education               /////////////// Starting of TEACHER Class Derived From STAFF Class ////////////
{
 protected:
  static int teacher_count;
  char subject[30];
  char publication[30];
 public:
  void input_subject(void);
  void input_publication(void);
  void output_subject(void);
  void output_publication(void);
  static int check_teacher_count(void);
};                                          ////////////////////////// Ending of TEACHER Class /////////////////////////////

int teacher :: teacher_count=0;

int teacher :: check_teacher_count(void)
{
 if( teacher_count == 0 )                         //////////////// To Check Whether Any Teacher Exists or Not /////////////////////////////
 return(0);
 else
 return(1);
}

void teacher :: input_subject(void)
{
	next;
	cout<<"Enter The Name of Subject :    ";
	gets(subject);
	next;
	teacher_count++;
}

void teacher :: input_publication(void)
{
  next;
  cout<<"Enter The Name of Publication :    ";
  gets(publication);
  next;
}

void teacher :: output_subject(void)
{
  next;
  cout<<"The Name of Subject is :   "<<subject;
  next;
}

void teacher :: output_publication(void)
{
  next;
  cout<<"The Name of Publication is :   "<<publication;
  next;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class officer : public staff , public education                ////////////////// Starting of OFFICER Class Derived From STAFF Class ////////////
{
 protected:
  char grade;
  static int officer_count;
 public:
  void input_grade(void);
  void output_grade(void);
  static int check_officer_count(void);
};                                        /////////////////////////// Ending of Officer Class //////////////////////////////

int officer :: officer_count=0;

int officer :: check_officer_count(void)
{
 if( officer_count == 0 )                         //////////////// To Check Whether Any Officer Exists or Not /////////////////////////////
 return(0);
 else
 return(1);
}

void officer :: input_grade(void)
{
  next;
  cout<<"Enter The Grade of Officer :    ";
  cin>>grade;
  next;
  officer_count++;
}

void officer :: output_grade(void)
{
  next;
  cout<<"The Grade of The Officer is :   "<<grade;
  next;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class typist : public staff               /////////////////// Starting of TYPIST Class Derived From STAFF Class ////////////
{
 protected:
  int speed;
  static int typist_count;
 public:
  void input_speed(void);
  void output_speed(void);
  static int check_typist_count(void);
};                                        //////////////////// End of Typist Class /////////////////////////////////////////

int typist :: typist_count=0;

int typist :: check_typist_count(void)
{
 if( typist_count == 0 )                         //////////////// To Check Whether Any Typist Exists or Not /////////////////////////////
 return(0);
 else
 return(1);
}

void typist :: input_speed(void)
{
  next;
  cout<<"Enter The Typing Speed ( in Words Per Minute ) :   ";
  cin>>speed;
  next;
  typist_count++;
}

void typist :: output_speed(void)
{
  next;
  cout<<"The Typing Speed is :   "<<speed<<" Words Per Minute";
  next;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class regular : public typist            ///////////////// Starting of REGULAR Class Derived From TYPIST Class /////////////
{
 protected:
  static int regular_typist_count;
 public:
  static int check_regular_typist_count(void);
  regular(void);
};                                       ///////////////////// End of REGULAR Class ////////////////////////////////////////

int regular :: regular_typist_count=0;

regular :: regular(void)
{
	regular_typist_count++;                               /////////////////// Constructor To Increment The Regular Typist Count ///////////////////////
}

int regular :: check_regular_typist_count(void)
{
 if( regular_typist_count == 0 )                         //////////////// To Check Whether Any Regular Typist Exists or Not /////////////////////////////
 return(0);
 else
 return(1);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class casual : public typist             //////////////// Starting of CASUAL Class Derived From TYPIST Class ///////////////
{
 protected:
  static int casual_typist_count;
  float daily_wages;
 public:
  void input_daily_wages(void);
  void output_daily_wages(void);
  static int check_casual_typist_count(void);
};                                       /////////////////////// End of CASUAL Class ///////////////////////////////////////

int casual :: casual_typist_count=0;

int casual :: check_casual_typist_count(void)
{
 if( casual_typist_count == 0 )                         //////////////// To Check Whether Any Casual Typist Exists or Not /////////////////////////////
 return(0);
 else
 return(1);
}

void casual :: input_daily_wages(void)
{
  next;
  cout<<"Enter The Daily Wages ( in Rupees ) :   ";
  cin>>daily_wages;
  next;
  casual_typist_count++;
}

void casual :: output_daily_wages(void)
{
  next;
  cout<<"The Daily Wage is :  Rs. "<<daily_wages;
  next;
}

//////////////////////////////////////////////////////////////////// Starting of MAIN() /////////////////////////////////////////////////////////////////////

int main(void)
{
 cout<<"\n   A Real World System Using OOPS ( Database of An Educational Institution )\n\n";
 int i=1;
 while(i)                                 ////////////////// Starting of While Loop //////////////////////////////////////
 {
	 line();
	 cout<<"\n\t\t\t\tWelcome To The Database\n\n";
	 line();
	 next;
	 cout<<"Which Type of Staff Member You Want To Handle ?";
	 next;
	 cout<<"\n1. Teacher";
	 cout<<"\n2. Officer";
	 cout<<"\n3. Typist";
	 cout<<"\n4. Exit The Program";
	 cout<<"\n\nEnter Your Choice :   ";
	 int choice;
	 cin>>choice;
		switch(choice)                        //////////////////////////// Starting of Switch ///////////////////////////////
		{
			case 1 :  {                                               /////////// Starting of CASE 1 //////////////////
							int j=1;
							while(j)                                     //////// Starting of While Loop //////////////////
							{
								next;
								cout<<"What Do You Want To Do ?";
								cout<<"\n\n1. Add A Teacher";
								cout<<"\n2. Display The Details of Teacher";
								cout<<"\n3. Exit The Teacher Database";
								cout<<"\n\nEnter Your Choice :   ";
								int ch;
								cin>>ch;
									switch(ch)                            /////////// Starting of Switch ///////////////////
									{
										case 1 : teacher obj1;
													obj1.input_code();
													obj1.input_name();
													obj1.input_subject();
													obj1.input_publication();
													obj1.input_education_details();
													cout<<"\n\nTeacher Added Successfully\n\n";
													break;

										case 2 : {
														 int proceed;
														 proceed=teacher :: check_teacher_count();
															 if( proceed == 0 )                                      /////////////// To Check The First Teacher /////////////////
															 {
																next;
																cout<<"Sorry!!! No Teacher Exists.";
															 }
															 else                                                ////////////// If Teachers Exist Then Continue //////////////
															{
																obj1.output_code();
																obj1.output_name();
																obj1.output_subject();
																obj1.output_publication();
																obj1.output_education_details();
															}
													break;
													}

										case 3 : cout<<"\nExited From The Teacher Database...";
													j=0;
													break;

									  default : cout<<"Invalid Input. Try Again!!!";
													break;
									}                                    /////////////// End of Switch /////////////////////
							}                                          ////////////// End of While Loop /////////////////
							 break;
						 }                                            /////////////// End of CASE 1 ///////////////////

			case 2 :  {                                               /////////// Starting of CASE 2 //////////////////
							int j=1;
							while(j)                                     //////// Starting of While Loop //////////////////
							{
								next;
								cout<<"What Do You Want To Do ?";
								cout<<"\n\n1. Add A Officer";
								cout<<"\n2. Display The Details of Officer";
								cout<<"\n3. Exit The Officer Database";
								cout<<"\n\nEnter Your Choice :   ";
								int ch;
								cin>>ch;
									switch(ch)                            /////////// Starting of Switch ///////////////////
									{
										case 1 : officer obj2;
													obj2.input_code();
													obj2.input_name();
													obj2.input_grade();
													obj2.input_education_details();
													cout<<"\n\nOfficer Added Successfully\n\n";
													break;

										case 2 : {
														int proceed;
														proceed=officer :: check_officer_count();
															if( proceed == 0 )                                      /////////////// To Check The First Officer /////////////////
															{
																next;
																cout<<"Sorry!!! No Officer Exists.";
															}
															else                                                ////////////// If Officers Exist Then Continue //////////////
															{
																obj2.output_code();
																obj2.output_name();
																obj2.output_grade();
																obj2.output_education_details();
															}
													break;
													}

										case 3 : cout<<"\nExited From The Officer Database...";
													j=0;
													break;

									  default : cout<<"Invalid Input. Try Again!!!";
													break;
									}                                    /////////////// End of Switch /////////////////////
							}                                          ////////////// End of While Loop /////////////////
							 break;
						 }                                            /////////////// End of CASE 2 ///////////////////

			case 3 :  {                                               /////////// Starting of CASE 3 //////////////////
							int j=1;
							while(j)                                     //////// Starting of While Loop //////////////////
							{
								next;
								cout<<"What Do You Want To Do ?";
								cout<<"\n\n1. Add A Typist";
								cout<<"\n2. Exit The Typist Database";
								cout<<"\n\nEnter Your Choice :   ";
								int ch;
								cin>>ch;
									switch(ch)                            /////////// Starting of Switch ///////////////////
									{
										case 1 : {                         //////////// Starting of CASE 1 /////////////////
														int k=1;
															while(k)            ///////////// Starting of While Loop ////////////
															{
																next;
																cout<<"Which Type of Typist You Want To Add ?";
																cout<<"\n\n1. Regular";
																cout<<"\n2. Casual";
																cout<<"\n3. Exit From Regular/Casual Typist Database";
																cout<<"\n\nEnter Your Choice :   ";
																int choose;
																cin>>choose;
																	switch(choose)                   ///////// Starting of Switch /////////////
																	{
																		case 1 : {                   ////////// Starting of CASE 1 /////////////
																						regular obj3;
																						next;
																						obj3.input_code();
																						obj3.input_name();
																						obj3.input_speed();
																						cout<<"\n\nRegular Typist Added Successfully\n\n";
																						int l=1;
																						while(l)                  /////////// Starting of While Loop ///////////
																						{
																							next;
																							cout<<"Do You Want To Check The Details of The Regular Typist You Just Added ?";
																							cout<<"\n\n1. Yes";
																							cout<<"\n2. No";
																							cout<<"\n\nEnter Your Choice :   ";
																							int ask;
																							cin>>ask;
																								switch(ask)        ////////////// Starting of Switch ///////////////
																								{
																									case 1 : {
																													int proceed;
																													proceed=regular :: check_regular_typist_count();
																													if( proceed == 0 )                                      /////////////// To Check The First Regular Typist /////////////////
																													{
																														next;
																														cout<<"Sorry!!! No Regular Typist Exists.";
																													}
																													else                                                ////////////// If Regular Typists Exist Then Continue //////////////
																													{
																														obj3.output_code();
																														obj3.output_name();
																														obj3.output_speed();
																													}
																												break;
																												}

																									case 2 : next;
																												cout<<"Exited From The Regular Typist Database";
																												next;
																												l=0;
																												break;

																								  default : next;
																												cout<<"Invalid Input. Try Again!!!";
																												next;
																												break;
																								}      ///////// End of Switch /////////////////
																						}       //////// End of While Loop /////////////
																					  break;
																					}                 //////// End of CASE 1 ////////////////


																		case 2 : {                   ////////// Starting of CASE 2 /////////////
																						casual obj3;
																						next;
																						obj3.input_code();
																						obj3.input_name();
																						obj3.input_speed();
																						obj3.input_daily_wages();
																						cout<<"\n\nCasual Typist Added Successfully\n\n";
																						int l=1;
																						while(l)                  /////////// Starting of While Loop ///////////
																						{
																							next;
																							cout<<"Do You Want To Check The Details of The Casual Typist You Just Added ?";
																							cout<<"\n\n1. Yes";
																							cout<<"\n2. No";
																							cout<<"\n\nEnter Your Choice :   ";
																							int ask;
																							cin>>ask;
																								switch(ask)        ////////////// Starting of Switch ///////////////
																								{
																									case 1 : {
																													int proceed;
																													proceed=casual :: check_casual_typist_count();
																													if( proceed == 0 )                                      /////////////// To Check The First Casual Typist /////////////////
																													{
																														next;
																														cout<<"Sorry!!! No Casual Typist Exists.";
																													}
																													else                                                ////////////// If Casual Typists Exist Then Continue //////////////
																													{
																														obj3.output_code();
																														obj3.output_name();
																														obj3.output_speed();
																														obj3.output_daily_wages();
																													}
																													break;
																												}

																									case 2 : next;
																												cout<<"Exited From The Casual Typist Database";
																												next;
																												l=0;
																												break;

																								  default : next;
																												cout<<"Invalid Input. Try Again!!!";
																												next;
																												break;
																								}      ///////// End of Switch /////////////////
																						}       //////// End of While Loop /////////////
																					  break;
																					}                 //////// End of CASE 1 ////////////////

																		case 3 : k=0;
																					next;
																					cout<<"Exited From Regular/Casual Typist Database";
																					next;
																					break;

																	  default : next;
																					cout<<"Invalid Input. Try Again!!!";
																					next;
																					break;
																	}                      ///////////// End of Switch //////////////
															}                           ///////////// End of While Loop ////////////


															break;
													}                             ///////////// End of CASE 1 //////////////

										case 2 : cout<<"\nExited From The Typist Database...";
													j=0;
													break;

									  default : cout<<"Invalid Input. Try Again!!!";
													break;
									}                                    /////////////// End of Switch /////////////////////
							}                                          ////////////// End of While Loop /////////////////
							 break;
						 }                                            /////////////// End of CASE 3 ///////////////////

			case 4 : cout<<"\nProgram Will Terminate Now.\n\nPress Any Key To Continue...";
						i=0;
						getch();
						break;

			default : cout<<"Invalid Input. Try Again!!!";
					  break;
		}                                     /////////////////////// End of Switch //////////////////////////////////////////
 }                                         ///////////////// End of While Loop ////////////////////////////////////////////
 return(0);
}

//////////////////////////////////////////////////////////////////// End of MAIN() ////////////////////////////////////////////////////////////////////////////////

void line(void)
{
 cout<<endl;
	for(int i=0;i<8;++i)
		cout<<"==========";
 cout<<endl;
}

