/*	Name:
	Section:
	Side:
	Date:

	Gain:
	Port pin:

	File name: hw7.c
	Description: 

*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void ADC_Init(void);
void Port_Init(void);
unsigned char read_AD_input(unsigned char pin_number);



//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned char AD_value;
unsigned char input;

//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	Port_Init(); 
	ADC_Init();
	printf("Start \r\n");
    while (1) 
    {
		printf("enter key to read A/D input \r\n");
		input = getchar();

		// add code necessary to complete the homework

		





		printf("appropriate comment here");	// print statement as required by homework
		printf("appropriate comment here");	// print statement as required by homework

    }
}


//
// add the initialization code needed for the ADC1
//
void ADC_Init(void)
{

}
//
// function that completes an A/D conversion
//
unsigned char read_AD_input(unsigned char pin_number)
{

	return ADC1;
}

//
// add Port initialization code
//
void Port_Init(void)
{


}

