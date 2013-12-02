class Card{
		private:
			char ch;
		public:
			void setCard(char c);
			void setSnd(void);
			void display(void){
				gotoxy(20,14);cout<<"[D]iamond  [S]peed  [C]lover  [H]eart";
				gotoxy(20,15);cout<<"Choose card: ";
				cin>>ch;
				setCard(ch);
			};
};
void Card::setSnd(void)
{
	
	int ton[]={600,200,900,700,350,550,890,660,180,270};
	int ton1[]={270,180,660,890,550,350,700,900,200,600};
	for(int i=0; i<10; i++)
	{
		sound(ton[i]);
		delay(200);
		nosound();
		sound(ton1[i]);
		delay(200);
		nosound();
	}
}
void Card::setCard(char ch)
{
	switch(ch)
	{
		top:
		case 'D':
		case 'd':
			gotoxy(42,6);cout<<"\4      \4";
			gotoxy(42,9);cout<<"\4      \4";
			break;
		case 'S':
		case 's':
			gotoxy(42,6);cout<<"\6      \6";
			gotoxy(42,9);cout<<"\6      \6";
			break;
		case 'C':
		case 'c':
			gotoxy(42,6);cout<<"\5      \5";
			gotoxy(42,9);cout<<"\5      \5";
			break;
		case 'H':
		case 'h':
			gotoxy(42,6);cout<<"\3      \3";
			gotoxy(42,9);cout<<"\3      \3";
			break;
		default:
			gotoxy(33,15);cout<<"\t\t";
			gotoxy(33,15);cout<<"Invalid!";
			exit(0);
	}
}