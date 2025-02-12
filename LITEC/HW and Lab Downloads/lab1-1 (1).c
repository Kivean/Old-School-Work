/*  Name:
    Section:
    Date:
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
//__sbit ____________; // BILED0, associated with ?????
//__sbit ____________; // BILED1, associated with ?????
//__sbit ____________; // Buzzer, associated with ?????
__sbit __at 0xA0 SS;   // Slide switch, associated with Port 2 Pin 0
__sbit __at 0xB0 PB1;  // Push button 1, associated with Port 3, Pin 0
//__sbit ____________; // Push button 2, associated with ?????


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
//  P3MDOUT =_____; // set Port 3 output pins to push-pull mode (fill in the blank)
//  P3MDOUT =_____; // set Port 3 input pins to open drain mode (fill in the blank)
//  P3 =_________; // set Port 3 input pins to high impedance state (fill in the blank)

    // Port 2
    // configure Port 2 as needed
//
//
}

//***************
// Set outputs:
//    The following code is incomplete, lighting an LED depending 
//    on the state of a single pushbutton.
// There are 2 versions of this function: a non-recommended generic version using separate
// functions to read each switch & a simpler version that uses sbits directly.

/*
void Set_outputs(void)
{
    if (sensor2())  // if Slide Switch activated (On position)
    {
        LED0 = 0;   // turn on LED0 
        printf("\r Slide switch is on    \n");
    }

    else            // if Slide Switch is not activated (Off position)
    {
        LED0 = 1;   // turn off LED0 
        printf("\r Slide switch is off   \n");	
    }
}
*/

void Set_outputs(void)
{
    if (!SS)        // if Slide Switch activated (On position)
    {
        LED0 = 0;   // turn on LED0 
        printf("\r Slide switch is on    \n");
    }

    else            // if Slide Switch is not activated (Off position)
    {
        LED0 = 1;   // turn off LED0 
        printf("\r Slide switch is off   \n");	
    }
}

//***************
// Sensor - Returns a 0 if Pushbutton 1 not activated 
//          or a 1 if Pushbutton 1 is activated.
//          This code reads a single input only, associated with PB0
// Note this code is not used by function yet, you must incorporate it

int sensor1(void)
{
    if (!PB1) return 1;
    else      return 0;
}

//***************
// Sensor - Returns a 0 if Slide Switch is 'Off' (not activated)
//          or a 1 if Slide switch is 'On' (activated)
//          This code reads a single input only, associated with SS
// Note this function will not be used if the simpler Set_outputs() is used

int sensor2(void)
{
    if (!SS) return 1;
    else     return 0;
}
