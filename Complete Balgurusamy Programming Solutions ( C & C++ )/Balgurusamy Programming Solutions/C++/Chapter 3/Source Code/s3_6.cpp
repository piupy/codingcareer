#include<iostream.h>
void line();
struct player
{
private:

char name[20];
int runs;
int innings;
int no;
float avg;
static int count;

public :

void input();
void output();

}p[5];

int player :: count=0;

void player :: input()
{
count++;
cout<<endl<<endl<<"Enter The Name of Player "<<count<<" :  ";
cin>>name;
cout<<endl<<"Enter The Runs Scored By Player :  ";
cin>>runs;
cout<<endl<<"Enter The Innings Played By The Player :  ";
cin>>innings;
cout<<endl<<"Enter The Times The Player Went Not Out :  ";
cin>>no;
if(count==5)
count=0;
}

void player :: output()
{
count++;
avg=runs/innings;
cout<<endl<<endl<<"Player "<<count<<" Name :  "<<name;
cout<<endl<<endl<<"Runs Scored :  "<<runs;
cout<<endl<<endl<<"Innings Played :  "<<innings;
cout<<endl<<endl<<"No. of Times Went Not Out :  "<<no;
cout<<endl<<endl<<"Batting Average :  "<<avg<<endl;
}


int main()
{
	for(int i=0;i<5;++i)
	{
		p[i].input();
		cout<<endl;
		line();
	}
cout<<endl;
line();

	for(i=0;i<5;++i)
	{
		p[i].output();
		cout<<endl;
		line();
	}
}

void line()
{
for(int i=0;i<10;++i)
cout<<"--------";
}