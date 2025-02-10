/*
Grayson Gerlich
Hannah Eisenhofer
Nathaniel Moretz

LAB 6 Code

11/26/18
*/


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
void ADC_Init(void); //for potentiometer/battery readings
void XBR0_Init(void);
void Interrupt_Init(void);
void PCA_ISR(void) __interrupt 9;
void thrust_set(void);
void set_gains(void);
int read_compass(void);
void set_tail_PWM(void);
char read_ranger(void); // read value, and then start a new ping
void tilt_set(void);
void wait(void); //used for keypad reads
void pause(void); //used for keypad reads
unsigned char read_AD_input(unsigned char n);

//define global variables
__sbit __at (0xB7) RUN; //Port 3 pin 7, Slide Switch for Run/Stop

unsigned int MOTOR_STOP = 2765;
unsigned int MOTOR_MAX = 3502;
unsigned int MOTOR_MIN = 2028;
unsigned int TAIL_PW = 0;
unsigned int LEFT_PW = 0;

unsigned int SERVO_CENTER = 3175;
unsigned int SERVO_MAX = 3425;
unsigned int SERVO_MIN = 2895;
unsigned int SERVO_PW = 0;


unsigned char kp = 30;                // set this value (all arbitrary)
unsigned char kd = 30;                // set this value
signed int prev_error = 20;      // set this value

unsigned char h_switch = 0;
unsigned char battery;
unsigned char new_heading = 0; // flag for count of compass timing
unsigned int range, heading;
unsigned int prev_range;
unsigned char h_count, nCounts, xCounts; // overflow counts for heading, printing and keypad ops, and heading switch
unsigned int desired_heading;
int error;
unsigned char Data[2]; // Data is an array with a length of 2 for I2C reads
unsigned char run_stop = 0;
unsigned int set_heading;


//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
 	Sys_Init(); // initialize board
 	Port_Init();
	ADC_Init();
	XBR0_Init();
 	PCA_Init();
 	SMB_Init();
	putchar(' '); //gotta have that putchar folks
 	h_count = 0;
	
	printf("A brave gondola stands alone against the many horrors on the battlefield!");
	wait(); //wait for everything to initialize
	lcd_clear();
	lcd_print("Good luck!");
 
	while (1)
	{
		while (!RUN) // make RUN an sbit for the run/stop switch
		{ // stay in loop until switch is in run position
			PCA0CP0 = 0xFFFF - MOTOR_STOP;
			PCA0CP2 = 0xFFFF - MOTOR_STOP;
			PCA0CP3 = 0xFFFF - MOTOR_STOP;

			if (run_stop == 0)
			{
				set_gains();
				desired_heading = 1350;
				tilt_set();
				thrust_set();
				run_stop = 1; // only try to update desired heading once
			}
		}

		PCA0CP2 = 0xFFFF - LEFT_PW;
		PCA0CP3 = 0xFFFF - LEFT_PW;
			
		if (xCounts > 150) {
			if (h_switch == 0){
				desired_heading = 1350;
				}
			else if (h_switch == 1){
				desired_heading = 2250;
				}
			h_switch = !h_switch;
			xCounts = 0;
		}
		
		if (new_heading) { // enough overflows for a new heading 
			heading = read_compass();
			set_tail_PWM(); // if new data, adjust motor PWM for tail fan
			new_heading = 0;
		}
		

		if (range) { //using range as a print indicator to save memory once we don't need it
			battery = read_AD_input(3);
			printf("%i\t%i\t%i\t%i\t%i\r\n", desired_heading, heading, error, TAIL_PW, battery);
			range = 0;
		}

	}
}

void PCA_Init(void)
{
    PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
	PCA0CPM2 = PCA0CPM3 = PCA0CPM0 = PCA0CPM1 = 0xC2; //CCM0,1,2,3 in 16 bit compare mode
	PCA0CN = 0x40; //enable PCA counter
	EIE1 |= 0x08;
	EA = 1;

}

void SMB_Init(void)
{
	SMB0CR = 0x93; // set SCL to 100KHz
	ENSMB = TRUE; // enable SMBUS0
}

void Port_Init(void)
{
    P0MDOUT |= 0xF0;	//CEX Pins
	
	P1MDIN &= ~0x08;
	P1MDOUT &= ~0x08;	//ADC on P1.3
	P1 |= 0x08;

	P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance for SS
	P3 |= ~0x80;
}

void XBR0_Init(void)
{
    XBR0 = 0x25;  //configure crossbar as directed in the laboratory

}

void ADC_Init(void)
{
 	REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
 	ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
 	ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
}


int read_compass(void)
{
	unsigned char addr = 0xC0; // the address of the sensor
	unsigned int compheading; // the heading returned in degrees between 0 and 3599
	i2c_read_data(addr, 2, Data, 2); // read two byte, starting at reg 2
	compheading =(((unsigned int)Data[0] << 8) | Data[1]); //combine the two values
	//heading has units of 1/10 of a degree
	return compheading; // the heading returned in degrees between 0 and 3599
}

char read_ranger(void)
{
	unsigned char addr = 0xE0; // the address of the range	
	i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
	range = (((unsigned int)Data[0] << 8) | Data[1]);
	Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
	i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
	return range;
}

void set_tail_PWM(void)
{	
	error = desired_heading - heading;
	if (error > 1800) {
		error = error - 3600;
	}
	else if (error < -1800) {
		error = 3600 - error;
	}

	TAIL_PW = (signed long)MOTOR_STOP+(signed long)kp*(signed long)error+(signed long)kd*(signed long)(error-prev_error);

	if (TAIL_PW > MOTOR_MAX) {
		TAIL_PW = MOTOR_MAX;
	}
	else if (TAIL_PW < MOTOR_MIN) {
		TAIL_PW = MOTOR_MIN;
	}
	PCA0CP0 = 0xFFFF - TAIL_PW;
	prev_error = error;

}

void set_gains(void) {
	unsigned char keypad; //temp variable for reads
	unsigned char var = 0; //temp variable for storage
	lcd_clear();
    lcd_print("Pick a kP\nPress two Numbers\n\nenter with 0 first");
	while (1) {
        keypad = read_keypad();
        pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
                    // If the keypad is read too frequently (no delay), it will
                    // lock up and stop responding. Must power down to reset.
		if (keypad != 0xFF) {
			while (read_keypad() != 0xFF);
			lcd_clear();
			var = (keypad - 0x30) * 10;
			lcd_print("%i", var);
			break;
		}
	}
	while (1) {
    	keypad = read_keypad();
    	pause();
		if (keypad != 0xFF) {
			while (read_keypad() != 0xFF);
      		lcd_clear();
			var = var + (keypad - 0x30); 
       		lcd_print("%i", var);		
			break;
		}
	}
	lcd_print("Desired kP: %i", var);
	wait();
	kp = var;
	keypad = 0;
	var = 0;
	lcd_clear();
    lcd_print("Pick a kD\nPress two Numbers\n\nenter with 0 first");
	while (1) {
        keypad = read_keypad();
        pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
                    // If the keypad is read too frequently (no delay), it will
                    // lock up and stop responding. Must power down to reset.
		if (keypad != 0xFF) {
			while (read_keypad() != 0xFF);
			lcd_clear();
			var = (keypad - 0x30) * 10;
			lcd_print("%i", var);
			break;
		}
	}
	while (1) {
    	keypad = read_keypad();
    	pause();
		if (keypad != 0xFF) {
			while (read_keypad() != 0xFF);
      		lcd_clear();
			var = var + (keypad - 0x30); 
       		lcd_print("%i", var);		
			break;
		}
	}
	lcd_print("Desired kD: %i", var);
	wait();
	kd = var;
}

void tilt_set(void)
{
	range = 10;
	prev_range = range;
	xCounts = 0;
	while (xCounts < 250){
		range = read_ranger();
		pause();
		SERVO_PW = SERVO_MIN + (((SERVO_MAX - SERVO_MIN)/40)*range);
		if (SERVO_PW > SERVO_MAX) {
			SERVO_PW = SERVO_MAX;
		}
		else if (SERVO_PW < SERVO_MIN) {
			SERVO_PW = SERVO_MIN;
		}
		lcd_clear();
		lcd_print("%i\n%i\n%i", SERVO_PW, xCounts, range);
		PCA0CP1 = 0xFFFF - SERVO_PW;
		if (abs(range - prev_range) > 10)
		{
			xCounts = 0;
		}
		prev_range = range;

	}

}


void thrust_set(void)
{
	range = 10;
	prev_range = range;
	xCounts = 0;
	while (xCounts < 250){
		range = read_ranger();
		pause();
		LEFT_PW = MOTOR_MIN + (((MOTOR_MAX - MOTOR_MIN)/40)*range);
		if (LEFT_PW > MOTOR_MAX) {
			LEFT_PW = MOTOR_MAX;
		}
		else if (LEFT_PW < MOTOR_MIN) {
			LEFT_PW = MOTOR_MIN;
		}
		lcd_clear();
		lcd_print("%i\n%i\n%i", LEFT_PW, xCounts, range);
		PCA0CP2 = 0xFFFF - LEFT_PW;
		PCA0CP3 = 0xFFFF - LEFT_PW;
		if (abs(range - prev_range) > 10)
		{
			xCounts = 0;
		}
		prev_range = range;

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
		nCounts ++; //for LCD/keypad operation
		xCounts ++;	//for heading switch
		h_count++;
		if (h_count>=2)
		{
			new_heading=1;
			h_count = 0;
		}
		if ((run_stop == 1) && (nCounts == 10))
		{
			range = 1;
			nCounts = 0;
		}
	}
	// handle other PCA interrupt sources
	PCA0CN &= 0xC0;
}


unsigned char read_AD_input(unsigned char n)
{
	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
 	ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
 	ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
 	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
	return (ADC1); /* Return digital value in ADC1 register */
}

void pause(void) //used for reading from the keypad
{
    nCounts = 0;
    while (nCounts < 6);// 1 count -> (65536-PCA_START) x 12/22118400 = 20ms
}                       // 6 counts avoids most of the repeated hits

void wait(void) //used for reading from the keypad
{
    nCounts = 0;
    while (nCounts < 50);    // 50 counts -> 50 x 20ms = 1000ms
}