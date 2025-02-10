/*	Name: Grayson Gerlich
	Section: 2
	Side: B
	Date: 9/27/2018

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

unsigned int counts;	//overflow tracking variable
unsigned char input;	//input variable
unsigned int wait;   //debouncing timing variable
unsigned char button;    //button count variable
unsigned char longbutton; // count for long button presses
unsigned int current;  //for recording length of press
// add additional global variables if needed

__sbit __at 0xA2 PB;	// Pushbutton on Port 2 pin 2


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
		counts = 0;
		printf("Enter a keyboard character to begin \r\n");
		input = getchar();
		printf("Push the button as many times as you like in 20 seconds \r\n");
		TR0 = 1;
		while (counts < 54007) //20 seconds is 54.006.9 overflows
		{
			if (!PB) //push button pressed
			{
				current = counts; //record time of push
				wait = counts + 54; //takes 54 overflows to make 20 ms
				while (counts != wait) //debouncing delay
				{
					//wait
				}
				button ++; //increment button counter
				while (!PB) //wait for button release
				{
					//wait
				}
				wait = counts + 54; //54 overflows is 24 ms
				while (counts != wait) //debouncing delay
				{
					//wait
				}
				current = counts - current; //record total time of push
				if (current > 2700) //2700 counts to 1 second
				{
					longbutton ++; //incremenet long press count
				}
			}
		}
		printf("Button was pressed %i times\r\n", button);
		printf("Button was long pressed %i times\r\n", longbutton);
    }
}

//***************

void Port_Init(void)
{
	P2MDOUT &= 0xFB;
	P2 |= ~0xFB;
}

//***************

void Interrupt_Init(void)
{
	ET0 = 1;      // enable Timer0 Interrupt request
	EA = 1;       // enable global interrupts
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

