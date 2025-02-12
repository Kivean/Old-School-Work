#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init (void);
void XBR0_Init();
void Set_Pulsewidth(void);
void PCA_ISR ( void ) __interrupt 9;

//-----------------------------------------------------------------------------
// Global Variables
//--------------+---------------------------------------------------------------
unsigned int PW_CENTER = 2760;
unsigned int PW_MIN = 2030;
unsigned int PW_MAX = 3500;
unsigned int PW = 0;
unsigned int count;
char input;

//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
    // initialize board
    Sys_Init();
    putchar(' '); //the quotes in this line may not format correctly
    Port_Init();
    XBR0_Init();
    PCA_Init();

    //print beginning message
    printf("Embedded Control Pulsewidth Calibration\n\r");
    // set the PCA output to a neutral setting
    PW = PW_CENTER;
	count = 0;
	PCA0CP2 = 0xFFFF - PW;
	while (count < 75);

    //__________________________________________
    //__________________________________________
    while(1)
        Set_Pulsewidth();
}



//-----------------------------------------------------------------------------
// Port_Init
//-----------------------------------------------------------------------------
//
// Set up ports for input and output
//
void Port_Init()
{
    P1MDOUT |= 0x04;  //set output pin for CEX2 in push-pull mode

	//P0 requires P0.6 for SDA and P0.7 for SCL 
}

//-----------------------------------------------------------------------------
// XBR0_Init
//-----------------------------------------------------------------------------
//
// Set up the crossbar
//
void XBR0_Init()
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

}

//-----------------------------------------------------------------------------
// PCA_Init
//-----------------------------------------------------------------------------
//
// Set up Programmable Counter Array
//
void PCA_Init(void)
{
    PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
	PCA0CPM2 = 0xC2; //CCM2 in 16 bit compare mode
	PCA0CN = 0x40; //enable PCA counter
	EIE1 |= 0x08;
	EA = 1;

}

//-----------------------------------------------------------------------------
// PCA_ISR
//-----------------------------------------------------------------------------
//
// Interrupt Service Routine for Programmable Counter Array Overflow Interrupt
//
void PCA_ISR ( void ) __interrupt 9
{
    if (CF)
	{
		CF = 0;
		PCA0 = 28671; //20 ms period 36408
		count ++;
	}
	else 
	{
		PCA0CN &= 0x40;
	}
}

void Set_Pulsewidth()
{
    printf("Plus or Minus please.\r\n");
    //wait for a key to be pressed
    input = getchar();
    if(input == '+')  // single character input to increase the pulsewidth
    {
        PW = PW + 200;
        // ___________________________
        if(PW > PW_MAX)  // check if greater than pulsewidth maximum
        	PW = PW_MAX;    // set PW to the maximum value
    }
    else if(input == '-')  // single character input to decrease the pulsewidth
    {
        PW = PW - 200;
        // ___________________________
        if(PW < PW_MIN)  // check if less than pulsewidth minimum
            PW = PW_MIN;     // set PW to the minimum value
    }
    printf("PW: %u\n\r", PW);
    PCA0CP2 = 0xFFFF - PW;

}
