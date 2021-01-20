#include<stdio.h>
#include<math.h>
void main()
{
long int num,dig,count=0,i,j,sum=0,p=1,q=1,pos,n,div,flag=0,paise,posp=1,x,y,conv=10,check=0;
printf("\n\t\" You Can Enter Numbers From  0  To  2147483647 \"\n\n");
printf("\t\tEnter The Rupees :  ");
scanf("%ld",&num);
printf("\n\t\tEnter The Paise :  ");
scanf("%ld",&paise);
n=num;
if(num==0)
{
	printf("\tZero");
}
else if( !(num>=0 && num<=2147483647) || !(paise>=0 && paise<=99) )
{
	printf("\n\tInvalid Amount");
}

/********************** Conversion Starts From Here **************************/

else
{
printf("\n\t\tAmount Entered :  Rs. %ld.%ld\n\n",num,paise);
printf("\t");
	while(n!=0)
	{
		n=n/10;
		count++;
	}
pos=count;
div=pow(10,pos-1);
n=num;
	while(n!=0)
	{
		dig=n/div;
		n=n%div;
		div=div/10;

		switch(pos)
		{
			case 0 : pos--;
						continue;

			case 1 :
			case 3 :
			case 4 :
			case 6 :
			case 8 :
			case 10 :


				if(flag==1)
				{
					flag=0;
					switch(dig)
					{
						case 1 : printf("Eleven ");
									break;

						case 2 :	printf("Twelve ");
									break;

						case 3 :	printf("Thirteen ");
									break;

						case 4 :	printf("Fourteen ");
									break;

						case 5 :	printf("Fifteen ");
									break;

						case 6 :	printf("Sixteen ");
									break;

						case 7 :	printf("Seventeen ");
									break;

						case 8 :	printf("Eighteen ");
									break;

						case 9 :	printf("Nineteen ");
									break;
					}
				}

				else if(flag==0)
				{

					switch(dig)
					{
						case 1 :	printf("One ");
									break;

						case 2 :	printf("Two ");
									break;

						case 3 :	printf("Three ");
									break;

						case 4 :	printf("Four ");
									break;

						case 5 :	printf("Five ");
									break;

						case 6 :	printf("Six ");
									break;

						case 7 :	printf("Seven ");
									break;

						case 8 :	printf("Eight ");
									break;

						case 9 :	printf("Nine ");
									break;
					}
				}
				break;

			case 2 :
			case 5 :
			case 7 :
			case 9 :

				if(dig==1)
				{
					flag=1;
					pos--;
					continue;
				}

				if(flag==0)
				{

					switch(dig)
					{

						case 2 :	printf("Twenty ");
									break;

						case 3 :	printf("Thirty ");
									break;

						case 4 :	printf("Forty ");
									break;

						case 5 :	printf("Fifty ");
									break;

						case 6 :	printf("Sixty ");
									break;

						case 7 :	printf("Seventy ");
									break;

						case 8 :	printf("Eighty ");
									break;

						case 9 :	printf("Ninety ");
									break;
					}
				}

				else if(flag==1)
				{
					flag=0;
					switch(dig)
					{
						case 1 : printf("Eleven ");
									break;

						case 2 :	printf("Twelve ");
									break;

						case 3 :	printf("Thirteen ");
									break;

						case 4 :	printf("Fourteen ");
									break;

						case 5 :	printf("Fifteen ");
									break;

						case 6 :	printf("Sixteen ");
									break;

						case 7 :	printf("Seventeen ");
									break;

						case 8 :	printf("Eighteen ");
									break;

						case 9 :	printf("Nineteen ");
									break;
					}
				}
				break;
		}
			if(pos==3 && dig!=0)
			{
				printf("Hundred ");
			}
			else if(pos==4 && dig!=0)
			{
				printf("Thousand ");
			}
			else if(pos==6 && dig!=0)
			{
				printf("Lakh ");
			}
			else if(pos==8 && dig!=0)
			{
				printf("Crore ");
			}
			else if(pos==10 && dig!=0)
			{
				printf("Billion ");
			}
		pos--;
	}

printf("Rupees and ");

/********************* Conversion In Rupees Ends *****************************/

/********************* Convesion of Paise Starts ****************************/

x=paise;
	if(x==0)
	{
		printf("Zero ");
	}
	else
	{
		 while(x!=0)
		 {
			y=x%conv;
			x=x/conv;
				if(posp==1)
				{
					switch(x)
					{
						case 0 : break;

						case 1 : check=1;
									break;

						case 2 :	printf("Twenty ");
									break;

						case 3 :	printf("Thirty ");
									break;

						case 4 :	printf("Forty ");
									break;

						case 5 :	printf("Fifty ");
									break;

						case 6 :	printf("Sixty ");
									break;

						case 7 :	printf("Seventy ");
									break;

						case 8 :	printf("Eighty ");
									break;

						case 9 :	printf("Ninety ");
									break;
					}
					posp++;
				}
				else
				{
					if(check==1)
					{
						switch(x)
						{
							case 1 : printf("Eleven ");
										break;

							case 2 :	printf("Twelve ");
										break;

							case 3 :	printf("Thirteen ");
										break;

							case 4 :	printf("Fourteen ");
										break;

							case 5 :	printf("Fifteen ");
										break;

							case 6 :	printf("Sixteen ");
										break;

							case 7 :	printf("Seventeen ");
										break;

							case 8 :	printf("Eighteen ");
										break;

							case 9 :	printf("Nineteen ");
										break;
							}
					}
					else
					{
						switch(x)
						{
							case 1 :	printf("One ");
										break;

							case 2 :	printf("Two ");
										break;

							case 3 :	printf("Three ");
										break;

							case 4 :	printf("Four ");
										break;

							case 5 :	printf("Five ");
										break;

							case 6 :	printf("Six ");
										break;

							case 7 :	printf("Seven ");
										break;

							case 8 :	printf("Eight ");
										break;

							case 9 :	printf("Nine ");
										break;
						}
					}
				 }
					x=y;
					conv=conv/10;
				}                                    ///// While Loop Ends ////
	}
	printf("Paise ");

/************************* Conversion of Paise Ends **************************/

}                                     			//////// Main Else Ends ////////
}
