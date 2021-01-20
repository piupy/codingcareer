#include<iostream.h>

void line(void);

class DB;

class DM
{
 private:
	int m;
	int cm;

 public:
	void input(void);
	void output(void);
	friend DM dmsum(DM,DB);
	friend DB dbsum(DB,DM);
};

class DB
{
 private:
	int feet;
	int inch;

 public:
	void input(void);
	void output(void);
	friend DM dmsum(DM,DB);
	friend DB dbsum(DB,DM);
};

void DM :: input(void)
{
 cout<<"Enter The Distance in Metre/Centimetre : "<<endl<<endl;
 cout<<"Metre :  ";
 cin>>m;
 cout<<endl<<"Centimetre :  ";
 cin>>cm;
}

void DM :: output(void)
{
 cout<<endl<<"Distance  :  "<<m<<" Metres and "<<cm<<" Centimtres "<<endl;
}

void DB :: input(void)
{
 cout<<"Enter The Distance in Feet/Inch : "<<endl<<endl;
 cout<<"Feet :  ";
 cin>>feet;
 cout<<endl<<"Inches :  ";
 cin>>inch;
}

void DB :: output(void)
{
 cout<<endl<<"Distance  :  "<<feet<<" Feet and "<<inch<<" Inches "<<endl;
}

DM dmsum(DM dm1,DB db1)
{
 DM dam;
 dam.cm=(dm1.m * 100)+(dm1.cm)+( ( (db1.feet * 12)+(db1.inch)) * 2.5 );
 dam.m=dam.cm/100;
 dam.cm=dam.cm%100;
 return(dam);
}

DB dbsum(DB db1,DM dm1)
{
 DB dab;
 dab.inch=( ( (dm1.m * 100)+(dm1.cm) ) / 2.5 )+( (db1.feet * 12)+(db1.inch));
 dab.feet=dab.inch/12;
 dab.inch=dab.inch%12;
 return(dab);
}


int main(void)
{
 DM dm,dmresult;
 DB db,dbresult;
 line();
 dm.input();
 line();
 dm.output();
 cout<<endl;
 line();
 db.input();
 line();
 db.output();
 dmresult=dmsum(dm,db);
 line();
 cout<<endl<<"After Addition ( in Metre/Centimetre ) : "<<endl;
 dmresult.output();
 dbresult=dbsum(db,dm);
 line();
 cout<<endl<<"After Addition ( in Feet/Inch ) : "<<endl;
 dbresult.output();
 return(0);
}

void line(void)
{
 cout<<endl;
 for(int i=0;i<8;++i)
 cout<<"==========";
 cout<<endl<<endl;
}


