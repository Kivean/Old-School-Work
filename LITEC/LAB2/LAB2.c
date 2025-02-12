/*
Grayson Gerlich
Nathaniel Moretz
Hannah Eisenhofer

LAB 2 CODE

// It does what we want it to, we promise

10/4/2018

*/

/* This program demonstrates how to perform an A/D Conversion */

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>
#include <stdlib.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);      // Initialize ports for input and output
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1; //Timer0 interrupt code
unsigned char random(void); //Random value code
void ADC_Init(void); //Initialize ports for ADC
unsigned char read_AD_input(unsigned char n, unsigned char cast); //Code for reading ADC
void Draw_Bar(unsigned char length); //Bar graph drawing
void Game1(void); //gamemode 1
void Game2(void); //gamemode 2
void Game3(void); //gamemode 3
void LEDLighter(unsigned char leds); //code for lighting LEDs selectively
void compare (unsigned char desired, unsigned char acquired); //compare two values
void Flash(void); //flash BILED
void Flashall(void); //flash LEDs

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xA6 LED0; // LED0, associated with Port 2 Pin 6
__sbit __at 0xA2 LED1; // LED1, associated with Port 2 Pin 2
__sbit __at 0xA4 LED2; // LED2, associated with Port 2 Pin 4
__sbit __at 0xA7 LED3; // LED3, associated with Port 2 Pin 7
__sbit __at 0xA5 BILED0; // BILED0 (green), associated with Port 2 Pin 5
__sbit __at 0xA3 BILED1; // BILED1 (red), associ`ated with Port 2 Pin 3
__sbit __at 0xB6 SS0;   // Slide switch 0, associated with Port 3 Pin 6
__sbit __at 0xB7 SS1;  // Slide switch 1, associated with Port 3, Pin 7
__sbit __at 0xB4 PB; // Push button, associated with Port 3, Pin 4

unsigned int overflows[5] = {507, 456, 412, 371, 338}; //sequentially decreasing delays
unsigned int counts;
unsigned int adcast;
unsigned int current;
unsigned int wait;
unsigned int gamecounts;
unsigned int score = 0; //both ints because score can hypothetically grow huge with big delays
unsigned int gamescore = 0;
unsigned char tries;
unsigned char light;
unsigned char pot;
unsigned char flash;
unsigned char error;
unsigned char button;
unsigned char prev = 0; //keeps the first step in the games from being "no lights lit" for gameplay purposes
unsigned char cur;
unsigned char seed;

void main(void)
{
	Sys_Init();      // System Initialization
    Port_Init();     // Initialize ports 2 and 3 
    Interrupt_Init();
    Timer_Init();    // Initialize Timer 0 
	ADC_Init();

    putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE

	printf("Feed the grim beast of randomness with a seed!\r\n");
	seed = getchar();
	srand(seed); //seed rand() for the rest of the program for random gameplay

 	while (1)
 	{
		TR0 = 1;
		counts = 0;
		printf("Use the slide switches to select your fate, press the button to begin.\r\n");
		while (PB) {
			printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
		}
		current = counts; //record time of push
		wait = counts + 28; //takes 28 overflows to make 80 ms
		while (counts != wait) { //debouncing delay
			//wait
		}
		if (SS0 && SS1) {
			//do nothing
		}
		else if (!SS0 && SS1) {
			Game1();
		}
		else if (SS0 && !SS1) {
			Game2();
		}
		else if (!SS0 && !SS1) {
			Game3();
		}

 	}
}

void Game1(void)
{
	printf("For this gamemode, a low score wins. The computer will light a random number of LEDs, you must use the POT to match it.\r\n");
	printf("You get five tries, press the button to begin and to submit your answer. Good luck adventurer!\r\n");
	
	score = 0;
	gamescore = 0;
	counts = 0;
	tries = 0;
	P2 = 0xFF; //turn all LEDs off
	BILED1 = 0; //since we just turned everything off, this makes the BILED red
	while (PB) 
	{
		printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	}
	current = counts; //record time of push
	wait = counts + 28; //takes 28 overflows to make 80 ms
	while (counts != wait) { //debouncing delay
		//wait
	}
	while (tries < 5) //five tries
	{
		BILED0 = 1; //BILED off
		BILED1 = 1;
		light = random(); //get random number
		TR0 = 1;
		counts = 0;
		while (counts < 668) { //wait 2s
			LEDLighter(light);
		}
		P2 = 0xFF;
		counts = 0;
		while (PB) {
			pot = read_AD_input(4,5); //Read the A/D value on P1.4 and set casting as 5 for conversion to a number between 0 and 4
			LEDLighter(pot);
		}
		TR0 = 0;
		gamecounts = counts;
		Flashall();
		compare(pot, light);
		if (pot != light) { //check for answer correctness
			score += 10;
		}
		score = score + (gamecounts / 167); //add points for time taken
		gamescore = gamescore + score;
		printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
		score = 0; //reset game score for the next try
		counts = 0;
		TR0 = 1;
		while (counts < 334); //do nothing
		TR0 = 0;
		counts = 0;
		tries ++;
	}
	printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
	Flash();
}

void Game2(void)
{
	printf("For this gamemode, you will duel another brave adventurer. One of you will set the POT, the other will press the BUTTON.\r\n");
	printf("High score wins, you get five tries, press the button to begin. Good luck adventurers!\r\n");
	
	score = 0;
	gamescore = 0;
	counts = 0;
	tries = 0;
	P2 = 0xFF; //turn all LEDs off
	while (PB) {
		printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	}
	current = counts; //record time of push
	wait = counts + 28; //takes 28 overflows to make 80 ms
	while (counts != wait) { //debouncing delay
		//wait
	}
	while (tries < 5) //five tries
	{
		button = 0;
		BILED1 = 0; //BILED red
		BILED0 = 1;
		counts = 0;
		TR0 = 1;
		while (counts < 334); //wait 1s, do nothing
		BILED0 = 1;
		pot = read_AD_input(4,5); //Read the A/D value on P1.4 and set casting as 5 for conversion to a number between 0 and 4
		LEDLighter(pot);
		counts = 0;
		while (counts < overflows[tries]) {
			if (!PB) //push button pressed
			{
				current = counts; //record time of push
				wait = counts + 7; //takes 7 overflows to make 20 ms
				while (counts != wait) //debouncing delay
				{
					//wait
				}
				button ++; //increment button counter
				while (!PB) //wait for button release
				{
					//wait
				}
				wait = counts + 7; //7 overflows is 20 ms
				while (counts != wait) //debouncing delay
				{
					//wait
				}
			}
		}
		TR0 = 0;
		Flashall();
		compare(pot, button);
		if (pot == button) {
			score += 10;
		}
		gamescore = gamescore + score;
		printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
		score = 0; //reset game score for the next try
		counts = 0;
		TR0 = 1;
		while (counts < 334); //do nothing
		BILED0 = 1;
		BILED1 = 1;
		while (counts < 501); //do nothing
		TR0 = 0;
		counts = 0;
		tries ++;
	}
	printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
	Flash();
}

void Game3(void)
{
	printf("For this gamemode,high score wins. The computer will generate a test of your mettle, you will use the POT, the other will press the BUTTON.\r\n");
	printf("You get five tries, press the button to begin. Good luck adventurer!\r\n");
	
	score = 0;
	gamescore = 0;
	counts = 0;
	tries = 0;
	P2 = 0xFF; //turn all LEDs off
	BILED0 = 0; //BILED red
	while (PB) {
		printf("(0 means on) SS0: %d SS1: %d\r", SS0, SS1); //print SS state
	}
	current = counts; //record time of push
	wait = counts + 28; //takes 28 overflows to make 80 ms
	while (counts != wait) { //debouncing delay
		//wait
	}
	while (tries < 5) //five tries
	{
		light = random(); //get random number
		TR0 = 1;
		counts = 0;
		while (counts < 668) { //wait 2s
			LEDLighter(light);
		}
		P2 = 0xFF;
		counts = 0;
		while (counts < 668) { //wait 2s
			pot = read_AD_input(4,0); //Read the A/D value on P1.4 and set casting as 0 for native AD values
			Draw_Bar(pot);
		}
		TR0 = 0;
		Flashall();
		compare((pot/52), light);
		error = abs((light * 16) - (pot/4)) * 2;
		if ((10 - error) > 0) {
			score += (10 - error);
		}
		else {
			score += 0;
		}
		gamescore = gamescore + score;
		printf("Your score for this try is %i, your score for the game so far is %i\r\n", score, gamescore);
		score = 0; //reset game score for the next try
		counts = 0;
		TR0 = 1;
		while (counts < 334); //do nothing
		TR0 = 0;
		counts = 0;
		tries ++;
	}
	printf("Your final score is %i, you are a brave adventurer!\r\n", gamescore);
	Flash();
}

void LEDLighter(unsigned char leds)
{
	LED0 = 1; //turn off all LEDs before assigning new values
	LED1 = 1;
	LED2 = 1;
	LED3 = 1; //not addressed by P2 to avoid changing BILED state

	if (leds == 0) {
		//nothin
	}
	else if (leds == 1) { //handle 1 LED case
		LED0 = 0;
	}
	else if (leds == 2) { //handle 2 LED case
		LED0 = 0;
		LED1 = 0;
	}
	else if (leds == 3) { //handle 3 LED case
		LED0 = 0;
		LED1 = 0;
		LED2 = 0;
	}
	else if (leds == 4) { //handle 4 LED case
		LED0 = 0;
		LED1 = 0;
		LED2 = 0;
		LED3 = 0;
	}
}

void Flash(void)
{
	TR0 = 1;
	flash = 0;
	while (flash < 4) { //flash 8 times total, 4 red/green cycles
		counts = 0;
		while (counts < 42) { //1/8th of a second
			BILED0 = 0;
			BILED1 = 1;
		}
		while (counts < 84) { //1/4th of a second
			BILED0 = 1;
			BILED1 = 0;
		}
		flash ++;
	}
	TR0 = 0;
	BILED0 = 1;
	BILED1 = 1;
}

void Flashall(void)
{
	counts = 0;
	TR0 = 1;
	while (counts < 167) { //flash LEDs on
		P2 = 0x00;
	}
	while (counts < 334) { //flash LEDs off
		P2 = 0xFF;
	}
	while (counts < 501) { //flash LEDs on
		P2 = 0x00;
	}
	TR0 = 0;
	counts = 0;
	P2 = 0xFF;
}

void compare(unsigned char desired, unsigned char acquired) {
	if (desired < acquired) {
		BILED0 = 1;
		BILED1 = 0;
	}
	else if (desired > acquired) {
		BILED0 = 0;
		BILED1 = 1;
	}
}

void Port_Init(void)
{
	//Port 1 Init
 	P1MDIN &= ~0x10; /* Set P1.4 for analog input */
 	P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
 	P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */

	//Port 2 Init
	P2MDOUT |= 0xFC; // set Port 2 output pins to push-pull mode 

	// Port 3 Init
  	P3MDOUT &= 0x0F; // set Port 3 input pins to open drain mode
  	P3 |= ~0x0F; // set Port 3 input pins to high impedance state
}

void ADC_Init(void)
{
 	REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
 	ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
 	ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
}

unsigned char read_AD_input(unsigned char n, unsigned char cast)
{
	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
 	ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
 	ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
 	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
	if (cast == 0) { //check for unmodified case
		return (ADC1); /* Return digital value in ADC1 register */
	}
	else {
		adcast = (265 / cast) + 1; //create the casting gradient
		return (ADC1/adcast); /* Return digital value in ADC1 register */
	}
}

//***************
// Draw a bar graph on terminal based on the unsigned char value passed from 0 to 255.
// Bar will be from 0 to 63 characters ('#') wide (length/4).
// An end marker '|' is printed at the end of the line.
void Draw_Bar(unsigned char length)
{
 	char i;
 	length = length/4;
 	for(i=0; i<length; i++) putchar('#'); // print number of '#'
 	length = 63 - length; // clear the rest of the line
 	for(i=0; i<length; i++) putchar(' '); // print (63 – length) spaces
 	putchar('|'); // print end mark '|'
 	putchar('\r'); // return to beginning of the line
}

void Interrupt_Init(void)
{
    IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
    EA = 1;       // enable global interrupts (by sbit)
}

//***************
void Timer_Init(void)
{

	CKCON |= 0x08;  // Timer0 uses SYSCLK as source
    TMOD &= 0xF0;   // clear the 4 least significant bits
    TMOD |= 0x01;   // Timer0 in mode 1
    TR0 = 0;           // Stop Timer0
    TMR0 = 0;          // Clear high & low byte of T0
}


//***************
void Timer0_ISR(void) __interrupt 1
{
	counts ++; //increment counts on each interrupt
}


/*return a random integer number between 0 and 4*/
unsigned char random(void)
{
	cur = rand()%5;
	while (cur == prev) //check if the value generated was the last one we used
	{
		cur = rand()%5;
	}
	prev = cur;
	return cur;  // rand returns a random number between 0 and 32767.
                        // the mod operation (%) returns the remainder of 
                        // dividing this value by 5 and returns the result,
}   					// a value of either 0, 1, 2, 3, or 4.