/*	Names: Grayson Gerlich
	Section: 2
	Side: B
	Date: 9/19/2018

	Size of counter: 13bit (indicated your assigned counter size, delete the others)

	Trigger: SYSCLK   (indicate your assigned trigger, delete the other)

	File name: hw5.c
	Description: Basic template for Homework 5
		This program waits 3 seconds after a keyboard input and then prints the
  		number of overflows that occurred.
*/

/*
System Initialization
Initialize Timer0
Initialize Interrupts
Repeat
Wait for keyboard to be pressed.
Reset the Timer0 count to zero
Turn Timer0 on
Wait 2.5 seconds
Print the number of overflows that occurred. Note, use typecasting consistent with your variable type.
Wait 3 seconds
Print the number of overflows that occurred. Note, use typecasting consistent with your variable type.
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1;

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned char input;
unsigned long counts;    	//replace xxxxx with the variable type, uncomment as well
unsigned int var;


//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    
	Interrupt_Init();
	Timer_Init();    // Initialize Timer 0 

    while (1) /* the following loop waits until a key is pressed on the
			     keyboard and prints the number of overflows that occurr
				 in two time intervals */
    {
		printf("Hit any key on the keyboard to start \r\n");
		input = getchar();

		TH0 = 0; //set high bits to 0
		TL0 = 0; //set low bits to 0
		TR0 = 1; //start timer

		//we can take the time in a timer by saying time = TH0 * 256 + TL0 OR TH0<<8 + TL0
		//if we were using 16 bit SFR we could use count = TMR0
		
		//at 22 MHz it takes 6750.86 overflows to make 2.5 seconds, 8101.03 overflows to make 3 seconds

		while (counts != 6750) //&& (TH0 * 256 + TL0) != 7044)
		{
			for(var = 0; var<100; var++); //useless commands
		}

		/* 
		prints 6769 instead of 6750, so it takes 19 overflows (about 7 ms) to print the output, seems reasonable
		*/

		printf("\r\n2.5 seconds have passed. \r\n");  	//print that the time has elapsed

		printf("There were %ld overflows \r\n", counts);	// print number of overflows using count variable
				
		TH0 = 0; //set high bits to 0 again
		TL0 = 0; //set low bits to 0 again
		counts = 0; //reset counts
		
		while (counts != 8101) //&& (TH0 * 256 + TL0) != 246)
		{
			for(var = 0; var<100; var++); //useless commands
		}

		/* 
		prints 8117 instead of 8101, so it takes 16 overflows (about 6 ms) to print the output, less than the previous one which is weird
		*/

		printf("3 seconds have passed. \r\n");  	//print that the time has elapsed

		printf("There were %ld overflows \r\n", counts);	// print number of overflows using count variable
		
		TR0 = 0; //stop timer
		TH0 = 0; //set high bits to 0
		TL0 = 0; //set low bits to 0
		counts = 0; //reset counts
    }
}

//***************

void Interrupt_Init(void)
{
	ET0 = 1;      // enable Timer0 Interrupt request using sbit variable 
	IE |= 0x80;   // enable global interrupts using bit masking (EA = 1)
}
//***************
void Timer_Init(void)
{
	
	CKCON |= 0x08;  // Timer0 uses SYSCLK or SYSCLK/12
	TMOD &= 0xF0;   // clear the 4 least significant bits, max for 13 bits is 8191, each interrupt happens after .370323 ms
//	TMOD |= _____;   // Timer0 mode setting
	TR0 = 0;         // Stop Timer0
	TL0 = 0;         // Clear low byte of register T0
	TH0 = 0;         // Clear high byte of register T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
	counts ++;
}

