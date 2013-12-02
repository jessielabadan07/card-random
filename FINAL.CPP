#include<dos.h>
#include<time.h>
#include<conio.h>
#include<stdio.h>
#include<ctype.h>
#include<stdlib.h>
#include<graphics.h>
#include<iostream.h>
#include"user.fnc"
#include"graph.h"
#define LIFE 3
int main()
{
	textbackground(BLUE);
	clrscr();
	graph();
	setUser();
	getch();
	return 0;
}

