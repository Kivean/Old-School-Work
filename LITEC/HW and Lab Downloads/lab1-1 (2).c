/*  Name: Hannah Eisenhofer
    Section: 2
    Date: 9/17/2018
    File name:
    Program description: 
*/
/*
  This program is incomplete. Part of the code is provided as an example. You 
  need to modify the code, adding code to satisfy the stated requirements. Blank 
  lines have also been provided at some locations, indicating an incomplete line.
*/
#include <c8051_SDCC.h> // include files. This file is available online on LMS
#include <stdio.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);  // Initialize ports for input and output
int sensor1(void);     // function which checks Pushbutton
int sensor2(void);     // function that checks the Slide switch
void Set_outputs(void);// function to set output bits

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB6 LED0; // LED0, associated with Port 3 Pin 6
__sbit __at 0xB3 BILED0; // BILED0, associated with Port 3 Pin 3
__sbit __at 0xB4 BILED1; // BILED1, associated with Port 3 Pin 4
__sbit __at 0xB6 BUZZER; // Buzzer, associated with Port 3 Pin 6
__sbit __at 0xA0 SS;   // Slide switch, associated with Port 2 Pin 0
__sbit __at 0xB0 PB1;  // Push button 1, associated with Port 3, Pin 0
__sbit __at 0xB1 PB2; // Push button 2, associated with Port 3 Pin 1


//***************
// Main program

void main(void)
{
    Sys_Init();        // System Initialization
    putchar(' ');      // the quote fonts may not copy correctly into SiLabs IDE
    Port_Init();       // Initialize ports 2 and 3 

    while (1)          // infinite loop 
    {
        // main program manages the function calls

        Set_outputs();
    }
}


//***************
/* Port_Init - Initializes Ports 2 and 3 in the desired modes for input and output */

void Port_Init(void)
{
    // Port 3
	P3MDOUT |= 0xD8; // set Port 3 output pins to push-pull mode 
	P3MDOUT &= ~0x03; // set Port 3 input pins to open drain mode 
	P3 |= 0x03; // set Port 3 input pins to high impedance state 

    // Port 2
	P2MDOUT &= 0x01;
	P2 |= ~0x01;
//
//
}

//***************
// Set outputs:
//    The following code is incomplete, lighting an LED depending 
//    on the state of a single pushbutton.
// There are 2 versions of this function: a non-recommended generic version using separate
// functions to read each switch & a simpler version that uses sbits directly.



void Set_outputs(void)
{
    if (!SS)        // if Slide Switch activated (On position)
    {
        LED0 = 1;
		BILED0 = 1;
		BILED1 = 0;
		BUZZER = 1;
        printf("\r Slide switch is on    \n");
    }

    else            // if Slide Switch is not activated (Off position)
    {
        LED0 = 1;
		BILED0 = 1;
		BILED1 = 1;
		BUZZER = 1;   // turn off LED0 
        printf("\r Slide switch is off   \n");	
    }

	if (!PB1 & !PB2)	//*both buttons pushed*//
	{
		LED0 = 1;
		BILED0 = 0;
		BILED1 = 1;
		BUZZER = 1;
		printf("\r Pushbutton 1 and 2 ACTIVATED");
	}
	else if (!PB1)		//*only button 1*//
	{
		LED0 = 1;
		BILED0 = 1;
		BILED1 = 1;
		BUZZER = 0;
		printf("Pushbutton 1 ACTIVATED");
	}
	else if (!PB2)		//*only buton 2*//
	{
		LED0 = 0;
		BILED0 = 1;
		BILED1 = 1;
		BUZZER = 1;
		printf("Pushbutton 2 ACTIVATED");
	}
	else		//*no buttons pushed*//
	{
		LED0 = 1;
		BILED0 = 1;
		BILED1 = 1;
		BUZZER = 1;
	}
}
