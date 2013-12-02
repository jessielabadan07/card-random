#include"card.cls"
#include"winSnd.fnc"
#define LIFE 3
void getBet(void);
void numberCard(int);
void loading(void);
void dealer(void);
void getnumberCard(int bet,int num);
void gameOver(void);
void setUser(void)
{
	int bet;
	gotoxy(15,2);cout<<"LIFE: "<< LIFE;
	gotoxy(33,2);cout<<"SCORE: ";
	getBet();
}
void getBet(void)
{
	Card play;
	topBet:
	int bet;
	do{
	gotoxy(36,12);cout<<"\t\t\t\t";
	gotoxy(50,2);cout<<"BET: ";
	gotoxy(20,12);cout<<"Place your bet: ";
	gotoxy(36,12);cin>>bet;
	if(bet < 1 || bet > 20000)
		goto topBet;
	gotoxy(55,2);cout<< bet;
	play.display();
	numberCard(bet);
	}while(LIFE != 0);
	if(LIFE < 1){
		gameOver();
	}
}
void gameOver(void)
{
	int driver=DETECT,mode=DETECT,color=15;
	initgraph(&driver,&mode,"IBM8514.BGI");
	for(int j=0; j<50; j++){
		cleardevice();
		settextstyle(TRIPLEX_FONT,HORIZ_DIR,5);
		setcolor(WHITE);
		outtextxy(110,50,"GAME OVER");
		setcolor(random(color));
		outtextxy(112,50,"GAME OVER");
		delay(50);
	}
}
void numberCard(int bet)
{
	number:
	int num;
	gotoxy(35,18);cout<<"\t\t";
	gotoxy(20,17);cout<<"Number Card [2 - 10] or 1[Ace] 11[Jack] 12[Queen] 13[King]";
	gotoxy(20,18);cout<<"Choose number: ";
	gotoxy(35,18);cin>>num;
	if(num >= 2 && num <= 10){
		gotoxy(45,7);cout<<num;
	}
	else if(num==1){
		gotoxy(45,7);cout<<"A";
	}
	else if(num==11){
		gotoxy(45,7);cout<<"J";
	}
	else if(num==12){
		gotoxy(45,7);cout<<"Q";
	}
	else if(num==13){
		gotoxy(45,7);cout<<"K";
	}
	else{
		goto number;
	}
	getnumberCard(bet,num);
}

void getnumberCard(int bet,int num)
{
	int r,t=0,l=0;
	Card p1;
	srand(time(NULL));
	r = rand() % 12;
	char c;
	menu:
	gotoxy(52,20);cout<<"\t\t";
	gotoxy(20,20);cout<<"Same type [H]igher or [L]lower: ";
	gotoxy(52,20);cin>>c;
	if(c=='H'||c=='h')
	{
			loading();
			if(r >= 2 && r <= 10)
			{
				gotoxy(25,7);cout<<r;
			}
			else if(r==0){
				gotoxy(25,7);cout<<"A";
			}
			else if(r==1){
				gotoxy(25,7);cout<<"A";
			}
			else if(r==11){
				gotoxy(25,7);cout<<"J";
			}
			else if(r==12){
				gotoxy(25,7);cout<<"Q";
			}
			else{
				gotoxy(25,7);cout<<"K";
			}
			if(num==1){
				if(r >= 2 && r <= 13){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();

				}
				else{
					gotoxy(33,7);cout<<"Tie!";
					gotoxy(57,7);cout<<"\t\t";
					gotoxy(3,7);cout<<"\t\t";
					gotoxy(40,2);cout<<"\t";
				}
			}
			if(num==2){
				if((r<=1) || (r >= 3 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==3){
				if((r<=1) || (r >= 4 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==4){
				if((r<=1) || (r >= 5 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==5){
				if((r<=1) || (r >= 6 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==6){
				if((r<=1) || (r >= 7 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==7){
				if((r<=1) || (r >= 8 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==8){
				if((r<=1) || (r >= 9 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==9){
				if((r<=1) || (r >= 10 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==10){
				if((r<=1) || (r >= 11 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==11){
				if((r<=1) || (r >= 12 && r <= 13)){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==12){
				if(r<=1 && r <= 13){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==13){
				if(r<=1){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			else if(num==r){
				gotoxy(33,7);cout<<"Tie!";
				gotoxy(57,7);cout<<"\t\t";
				gotoxy(3,7);cout<<"\t\t";
				gotoxy(40,2);cout<<"\t";
			}
			gotoxy(40,2);cout<<"\t";
			gotoxy(40,2);cout<< t;
			gotoxy(21,2);cout<<"\t";
			gotoxy(21,2);cout<<l;
		}
		else if(c=='L'||c=='l')
		{
			loading();
			if(r >= 2 && r <= 10)
			{
				gotoxy(25,7);cout<<r;
			}
			else if(r==0){
				gotoxy(25,7);cout<<"A";
			}
			else if(r==1){
				gotoxy(25,7);cout<<"A";
			}
			else if(r==11){
				gotoxy(25,7);cout<<"J";
			}
			else if(r==12){
				gotoxy(25,7);cout<<"Q";
			}
			else{
				gotoxy(25,7);cout<<"K";
			}
			if(num==1){
				if(r >= 2 && r <= 13){
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
			}
			if(num==2){
				if((r<=1) || (r >= 3 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==3){
				if((r<=1) || (r >= 4 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==4){
				if((r<=1) || (r >= 5 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==5){
				if((r<=1) || (r >= 6 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==6){
				if((r<=1) || (r >= 7 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==7){
				if((r<=1) || (r >= 8 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==8){
				if((r<=1) || (r >= 9 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==9){
				if((r<=1) || (r >= 10 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==10){
				if((r<=1) || (r >= 11 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==11){
				if((r<=1) || (r >= 12 && r <= 13)){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==12){
				if(r<=1 && r <= 13){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			if(num==13){
				if(r<=1){
					gotoxy(57,7);cout<<"User Wins!";
					gotoxy(3,7);cout<<"CPU Lose!";
					t=bet*2;
					l=LIFE;
					winSnd();
				}
				else{
					gotoxy(57,7);cout<<"User Lose!";
					gotoxy(3,7);cout<<"CPU Wins!";
					t-=bet;
					l=LIFE-1;
					p1.setSnd();
				}
			}
			else if(num==r){
				gotoxy(33,7);cout<<"Tie!";
				gotoxy(57,7);cout<<"\t\t";
				gotoxy(3,7);cout<<"\t\t";
				gotoxy(40,2);cout<<"\t";
			}
			gotoxy(40,2);cout<<"\t";
			gotoxy(40,2);cout<< t;
			gotoxy(21,2);cout<<"\t";
			gotoxy(21,2);cout<<l;
		}
	else{
			goto menu;
	}
}

void loading(void)
{
	gotoxy(20,22);cout<<"Showing card,please wait...";
	for(int x=20; x<=55; x++)
	{
		gotoxy(x,23);cout<<"Ü";
		delay(100);
	}
	dealer();
}
void dealer(void)
{
	int r;
	srand(time(NULL));
	r = rand() % 3;
	if(r==0){
		gotoxy(22,6);cout<<"\3      \3";
		gotoxy(22,9);cout<<"\3      \3";
	}
	else if(r==1){
		gotoxy(22,6);cout<<"\4      \4";
		gotoxy(22,9);cout<<"\4      \4";
	}
	else if(r==2){
		gotoxy(22,6);cout<<"\5      \5";
		gotoxy(22,9);cout<<"\5      \5";
	}
	else{
		gotoxy(22,6);cout<<"\6      \6";
		gotoxy(22,9);cout<<"\6      \6";
	}
}
	