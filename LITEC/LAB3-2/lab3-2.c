/* Sample code for Lab 3.1. This code provides a basic start. */
#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
#include <i2c.h>
//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init (void);
void XBR0_Init();
void Set_Pulsewidth(void);
void PCA_ISR (void) __interrupt 9;
void SMB0_Init(void);
unsigned int ReadRanger(void);

//-----------------------------------------------------------------------------
// Global Variables
//--------------+---------------------------------------------------------------
unsigned int PW_CENTER = 2760;
unsigned int PW_MIN = 2030;
unsigned int PW_MAX = 3500;
unsigned int PW = 0;
unsigned int count;
char input;
unsigned char r_count;
unsigned char new_range;
unsigned int colrange;
unsigned int range =0;
unsigned char addr=0xE0; // the address of the ranger is 0xE0
unsigned char Data[2];

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
	SMB0_Init();

    //print beginning message
    printf("Ain't this neat\n\r");

	while (1)
	{ 		
		if (new_range)
		{
			colrange = ReadRanger();
			new_range = 0;
			printf("Range: %i ", colrange);
		}
	}

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

void SMB0_Init()
{
	SMB0CR = 0x93; // set SCL to 100KHz
	ENSMB = 1; // enable SMBUS0
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
void PCA_ISR (void) __interrupt 9
{
    if (CF)
	{
		CF = 0;
		PCA0 = 28671; //20 ms period 36408
		r_count ++;
		if(r_count >= 4)
		{
			new_range = 1;
			r_count = 0;
		}
	}
	else 
	{
		PCA0CN &= 0x40;
	}
}

unsigned int ReadRanger(void)
{
	i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
	range = (((unsigned int)Data[0] << 8) | Data[1]);
	printf("1: %i 2: %i\r\n", Data[0], Data[1]);
	Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
	i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
	return range;
}