void graph1(void)
{
	int driver=DETECT,mode=DETECT,font=4,color=15;
	initgraph(&driver,&mode,"IBM8514.BGI");
	for(int y=1; y<50; y++)
	{
		settextstyle(random(font),HORIZ_DIR,5);
		setcolor(random(color));
		outtextxy(100,100,"LABADAN CARDS");
		delay(100);
		setcolor(WHITE);
		settextstyle(SANS_SERIF_FONT,HORIZ_DIR,3);
		outtextxy(100,300,"please wait, loading...");
	}
	closegraph();
}
void graph(void)
{
	graph1();
	clrscr();
	gotoxy(20,4);textcolor(CYAN);cprintf(" DEALER CARD ");
	gotoxy(40,4);textcolor(MAGENTA);cprintf(" USER CARD ");
	textbackground(GREEN);
	gotoxy(20,5);textcolor(RED);cprintf("ษออออออออออป");
	gotoxy(20,6);textcolor(RED);cprintf("บ          บ");
	gotoxy(20,7);textcolor(RED);cprintf("บ          บ");
	gotoxy(20,8);textcolor(RED);cprintf("บ          บ");
	gotoxy(20,9);textcolor(RED);cprintf("บ          บ");
	gotoxy(20,10);textcolor(RED);cprintf("ศออออออออออผ");

	gotoxy(40,5);textcolor(RED);cprintf("ษออออออออออป");
	gotoxy(40,6);textcolor(RED);cprintf("บ          บ");
	gotoxy(40,7);textcolor(RED);cprintf("บ          บ");
	gotoxy(40,8);textcolor(RED);cprintf("บ          บ");
	gotoxy(40,9);textcolor(RED);cprintf("บ          บ");
	gotoxy(40,10);textcolor(RED);cprintf("ศออออออออออผ");
}