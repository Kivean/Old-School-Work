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
void SMB_Init(void);
void Set_Pulsewidth(void);
void PCA_ISR ( void ) __interrupt 9;
unsigned int ReadRanger(void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
unsigned int PW_CENTER  = 18432;
unsigned int PW_MIN  = 1844;
unsigned int PW_MAX = 35021;
unsigned int PW = 0;
unsigned int USER_MIN = 0;
unsigned int USER_MAX = 0;
unsigned int l_count = 0;
unsigned int new_light = 0;
unsigned int r_light = 0;
unsigned int z;
__sbit __at 0xB5 SS0;   // Slide switch 1, associated with Port 3 Pin 5

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
	SMB_Init();

    //print beginning message
    // set the PCA output to a neutral setting
    //__________________________________________
    //__________________________________________
    PW = PW_CENTER;
    //__________________________________________
    //__________________________________________
    while(1) {
        //Set_Pulsewidth(); 
		if(SS0) {
			if (new_light) {
				r_light = ReadRanger();
				new_light = 0;
				if(r_light < 40) {
					PW = PW_MAX;
				}
				if(r_light > 215) {
					PW = PW_MIN;
				} else {
					PW = 35021 - ((r_light - 40) * 189.583);
				}

				PCA0CP3 = 0xFFFF - PW;

				printf("Light Sensor Value: %u   ", r_light);
				printf("LED Pulse Width: %u\n\r", PW);
			}
		} else {
			PW = PW_MAX;
			PCA0CP3 = 0xFFFF - PW;
			printf("LED Pulse Width: %u\n\r", PW);
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
	P3MDOUT &= 0x0F; // set Port 3 input pins to open drain mode
  	P3 |= ~0x20; // set Port 3 input pins to high impedance state
    P1MDOUT |= 0x08;  //set output pin for CEX0 or CEX2 in push-pull mode Port 1 Pin 3
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
	PCA0CPM3 = 0xC2; //CCM2 in 16 bit compare mode
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
    if (CF) {

		l_count++;
		CF = 0;
		PCA0 = 28671;
		if(l_count > 4) {

			new_light = 1;
			l_count = 0;
		}
	}
	else {
		PCA0CN &= 0x40; // &= 0x40
	}
}

void Set_Pulsewidth()
{
    char input;
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
    } else if (input == 's') {
		USER_MIN = PW;
		printf("Minimum Pulsewidth set to: %u\n\r", USER_MIN);
		printf("Press the t key when you have found the maximum pulsewidth.\n\r");
	} else if (input == 't') {
		USER_MAX = PW;
		printf("Maximum Pulsewidth set to: %u\n\r", USER_MAX);
	}
    //printf("PW: %u\n\r", PW);

    PCA0CP3 = 0xFFFF - PW;

}

unsigned int ReadRanger(void) {
	unsigned char Data[1];
	unsigned int light = 0;
	unsigned char addr=0xE0; // the address of the ranger is 0xE0
	i2c_read_data(addr, 1, Data, 1); // read one byte, starting at reg 1
	light = Data[0] << 8;
	Data[0] = 0x51;
	i2c_write_data(addr, 0, Data, 1);	
	return light >> 8;
}

void SMB_Init (void) {
	SMB0CR = 0x93;
	ENSMB = 1;
}