/*	Name:
	Section:
	Side:
	Date:

	Assignment description:
		(for example, track button presses longer that 10s in one minute)

	File name: hw6.c
	Description: Basic template for Homework 6
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);		//Port Initialization
void Timer_Init(void);     	//Initialize Timer 0 
void Interrupt_Init(void); 	//Initialize interrupts
void Timer0_ISR(void) __interrupt 1;

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

int counts;				//overflow tracking variable
unsigned char input;	//input variable
// add additional global variables if needed

// __sbit __at ???? ????;	// Pushbutton on Port 2 pin




//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	Port_Init();
	Interrupt_Init();
	Timer_Init();    // Initialize Timer 0 

    while (1) /* the following loop contains the button pressing/tracking code */
    {
		printf("Enter a keyboard character to begin \r\n");
		input = getchar();
		printf("Push the button as many times as you like in 20 seconds \r\n");
		// add necessary code
    }
}

//***************

void Port_Init(void)
{
//	P2MDOUT &= ____;
//	P2 |= ____;
}

//***************

void Interrupt_Init(void)
{
//	IE |= ____;      // enable Timer0 Interrupt request
//	EA = ____;       // enable global interrupts
}

//***************
void Timer_Init(void)
{
	
//	CKCON |= _____;  // CKCON as needed
//	TMOD &= _____;   // TMOD as needed
//	TMOD |= _____;   // TMOD as needed
	TR0 = 0;         // Stop Timer0
	TL0 = 0;         // Clear low byte of register T0
	TH0 = 0;         // Clear high byte of register T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
	// add interrupt code here, in this homework, the code will increment the 
	// global variable 'counts'
}

