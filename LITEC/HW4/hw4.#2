/*	Name: Grayson Gerlich
	Section: 2
	Side: B
	Date: 9/16/2018

	Port bits/Digital I/O: 
		3.4
		3.5

	File name: hw4.c
	Description: Basic template for Homework 4
		This program uses two digital inputs
*/

//-----------------------------------------------------------------------------
// Header Files
//-----------------------------------------------------------------------------

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);	// digial port initialization 
void Check_Inputs(void);	// output after first character press

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
//
// edit sbit commands as appropriate to your assignment

__sbit __at 0xB4 BT1; //Button 1 at Port 3 Pin 4
__sbit __at 0xB5 BT2; //Button 2 at Port 3 Pin 5


//***************
void main(void)  		// 
{
	Sys_Init();      	// System Initialization
	putchar(' ');    
	Port_Init();		// port initialization function
	while(1)
	{
		printf("Press a key to check which buttons are pushed \r\n");
		getchar();
		Check_Inputs();
	}
}

//***************
// configure P2MDOUT or P3MDOUT
//
void Port_Init(void)
{
	    // Port 3
  P3MDOUT |= 0x00; // set Port 3 output pins to push-pull mode (fill in the blank)
  P3MDOUT &= 0xCF; // set Port 3 input pins to open drain mode (fill in the blank)
  P3 |= 0x30; // set Port 3 input pins to high impedance state (fill in the blank)
}

//***************
// edit the arguments to the if/else if statements, as needed
// use sbit labels to output digital signals after first character press
//
void Check_Inputs(void)
{
	if (BT1 && BT2)			// no buttons pushed
	{
		printf("No buttons pushed \r\n");
	}
	else if (BT1 || BT2)		// one button pushed
	{
		printf("Only one button pushed \r\n");
	}
	else if (~BT1 && ~BT2)		// both buttons pushed
	{
		printf("Both buttons pushed \r\n");
	}

}
