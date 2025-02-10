/* Sample code for main function to read the compass and ranger */
#include <c8051_SDCC.h>
#include <stdlib.h>// needed for abs function
#include <stdio.h>
#include <i2c.h>

//-----------------------------------------------------------------------------
// 8051 Initialization Functions
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init(void);
void SMB_Init(void);
void ADC_Init(void);
void Interrupt_Init(void);
void PCA_ISR(void) __interrupt 9;
int read_compass(void);
void set_servo_PWM(void);
void set_speed_adj(void);
int read_light(void); // new feature - read light value from ranger
int read_ranger(void); // new feature - read value, and then start a new ping
void set_drive_PWM(void);
int pick_heading(void); // function which allow operator to pick desired heading
int pick_range(void); // function to pick the desired range
void forward_mode(); // new feature - adjust steering/speed control for forward mode
void reverse_mode(); // new feature - adjust steering/speed control for reverse mode

//define global variables
unsigned int MOTOR_STOP = 2760;
unsigned int MOTOR_MAX = 3500;
unsigned int MOTOR_MIN = 2030;
unsigned int MOTOR_PW = 0;
unsigned int SERVO_CENTER = 2834;
unsigned int SERVO_RIGHT = 3294;
unsigned int SERVO_LEFT = 2214;
unsigned int SERVO_PW = 0;

unsigned char new_heading = 0; // flag for count of compass timing
unsigned char new_range = 0; // flag for count of ranger timing
unsigned char print_flag = 0; // flag for count of printing
unsigned int heading;
unsigned int range;
unsigned int light;
int compass_adj = 0; // correction value from compass
int range_adj = 0; // correction value from ranger
unsigned char r_count; // overflow count for range
unsigned char h_count; // overflow count for heading
unsigned char print_count; // overflow count for printing
unsigned int desired_heading;
unsigned int desired_range;
unsigned int brightness_threshold;
unsigned char obstacle_threshold = 60;
unsigned int error;

__sbit __at (0xB7) RUN; //Port 3 pin 7, Slide Switch for Run/Stop

//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
	unsigned char run_stop; // define local variables
 	Sys_Init(); // initialize board
 	Port_Init();
 	PCA_Init();
 	SMB_Init();
 	r_count = 0;
 	h_count = 0;
 	while (1)
	{
		run_stop = 0;
		while (!RUN) // make RUN an sbit for the run/stop switch
		{ // stay in loop until switch is in run position
			if (run_stop == 0)
			{
				desired_heading = pick_heading();
				desired_range = pick_range();
				run_stop = 1; // only try to update desired heading once
			}
		}
		if (new_heading) // enough overflows for a new heading
		{
			heading = read_compass();
			set_servo_PWM(); // if new data, adjust servo PWM for compass & ranger
			new_heading = 0;
		}
		if (new_range) // enough overflow for a new range
		{
			range = read_ranger(); // get range, also stores light value into light
			// read_ranger() must start a new ping after a read
			if (light > brightness_threshold) // if bright light is detected
			{
				reverse_mode(); // adjust steering control variables for reverse mode
								// and drive PWM for reverse direction
			}
			else
			{
				forward_mode(); // adjust steering control variables for forward mode
								// and drive PWM for forward direction
				if (range < obstacle_threshold) // if an obstacle is detected
				{
					set_speed_adj(); //adjust drive PWM for obstacle
				}
			}
			new_range = 0;
		}
	}
}
//-----------------------------------------------------------------------------
// PCA_ISR
//-----------------------------------------------------------------------------
//
// Interrupt Service Routine for Programmable Counter Array Overflow Interrupt
//
void PCA_ISR(void) __interrupt 9
{
	if (CF)
	{
		CF = 0; // clear overflow indicator
		PCA0 = 28671; 	//start count for 20 ms period
		h_count++;
		if (h_count>=2)
		{
			new_heading=1;
			h_count = 0;
		}
		r_count++;
		if (r_count>=4)
		{
			new_range = 1;
			r_count = 0;
		}
		print_count ++;
		if (print_count>=25)
		{
			print_flag = 1;
			print_count = 0;
		}
	}
	// handle other PCA interrupt sources
	PCA0CN &= 0xC0;
}

void SMB0_Init()
{
	SMB0CR = 0x93; // set SCL to 100KHz
	ENSMB = TRUE; // enable SMBUS0
}

void Port_Init()
{
    P1MDIN &= ~0x10;
	P1MDOUT &= ~0x10;
	P1MDOUT |= 0x0D;
	P1 |= 0x10;

	P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
	P3 |= ~0x80;
}

void XBR0_Init()
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

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

void set_servo_PWM(void)
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
}

unsigned int read_ranger(void)
{
	i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
	range = (((unsigned int)Data[0] << 8) | Data[1]);
	Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
	i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
	return range;
}

void pick_range(void)
{
	
}