void winSnd(void)
{
	int ton[]={100,200,300,400,500};
	int ton1[]={500,400,300,200,100};
	for(int j=0; j<5; j++)
	{
		for(int i=0; i<5; i++){
			sound(ton[j]);
			delay(100);
			nosound();
			sound(ton1[i]);
			delay(100);
			nosound();
		}
	}
}