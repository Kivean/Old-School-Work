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
void XBR0_Init(void);
void PCA_ISR (void) __interrupt 9;
void SMB0_Init(void);
unsigned int ReadCompass(void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
unsigned int PW_CENTER = 2834;
unsigned int PW_RIGHT = 3294;
unsigned int PW_LEFT = 2214;
unsigned int SERVO_PW = 0;
unsigned int count;
unsigned int heading;
unsigned int prev_heading = 0;
unsigned char i = 0;
unsigned char h_count;
unsigned char new_heading = 1;
char input;
unsigned int desired_heading = 900;
signed int error;

__sbit __at (0xB7) SS;
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
	
	//if slide switch is on, excute code, otherwise leave at center

	heading = ReadCompass();
	SERVO_PW = PW_CENTER;
	PCA0CP0 = 0xFFFF - SERVO_PW;
	printf("Heading %u, pulsewidth %u\r\n", heading, SERVO_PW);

    
	while(1)
	{
		if (!SS)
		{
	
			if (new_heading) // enough overflows for a new heading
			{
				heading = ReadCompass();
				new_heading = 0;
			}


			if (i == 4)
			{
				error = desired_heading - heading;
				if (error > 1800)
				{
					error = error - 3600;
				}
				else if (error < -1800)
				{
					error = 3600 - error;
				}
				
				SERVO_PW = (error) + PW_CENTER;
				
				if (SERVO_PW > PW_RIGHT)
				{
					SERVO_PW = PW_RIGHT;
				}
				else if (SERVO_PW < PW_LEFT)
				{
					SERVO_PW = PW_LEFT;
				}
				
				PCA0CP0 = 0xFFFF - SERVO_PW;
				
				printf("SS: %u, Heading: %u, Desired : %u, Pulsewidth: %u\r\n", SS, heading, desired_heading, SERVO_PW);
				i = 0;
			}
		}
		else if (SS)
		{
			SERVO_PW = PW_CENTER;
			PCA0CP0 = 0xFFFF - SERVO_PW;
			printf("SS: %u, Heading: %u, Desired : %u, Pulsewidth: %u\r\n", SS, heading, desired_heading, SERVO_PW);
		}

	}
}

//-----------------------------------------------------------------------------
// Port_Init
//-----------------------------------------------------------------------------

void Port_Init()
{
    P1MDOUT |= 0x01;  //set P1.0 for CEX0 in push-pull mode

	P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
	P3 |= ~0x80;
}

//-----------------------------------------------------------------------------
// XBR0_Init
//-----------------------------------------------------------------------------

void XBR0_Init()
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

}

//-----------------------------------------------------------------------------
// PCA_Init
//-----------------------------------------------------------------------------

void PCA_Init(void)
{
    PCA0CPM0 = 0xC2;		//CCM0 in 16-bit compare mode
	PCA0CN = 0x40;			//Enable PCA counter
	PCA0MD = 0x81;			//Set SYSCLK/12 and enable overflow interrupt
	EIE1 |= 0x08;			//PCA interrupt enable
	EA = 1;					//Global interrupt enable
}


//-----------------------------------------------------------------------------
// PCA_ISR
//-----------------------------------------------------------------------------

void PCA_ISR ( void ) __interrupt 9
{
	if (CF)
	{
		CF = 0;			//clear overflow flag
		PCA0 = 36408; 	//start count for 20 ms period
		h_count++;
		if(h_count>=2)	// 2 overflows is about 40 ms
		{
			new_heading=1;
			h_count = 0;
			i++;
		}
	}
	
	PCA0CN &= 0x40;
}

void SMB0_Init()
{
	SMB0CR = 0x93; // set SCL to 100KHz
	ENSMB = TRUE; // enable SMBUS0
}


unsigned int ReadCompass(void)
{
	unsigned char addr = 0xC0; // the address of the sensor
	unsigned char Data[2]; // Data is an array with a length of 2
	unsigned int heading; // the heading returned in degrees between 0 and 3599
	i2c_read_data(addr, 2, Data, 2); // read two byte, starting at reg 2
	heading =(((unsigned int)Data[0] << 8) | Data[1]); //combine the two values
	 //heading has units of 1/10 of a degree
	return heading; // the heading returned in degrees between 0 and 3599
}



