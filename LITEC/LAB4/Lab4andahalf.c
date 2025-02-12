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
int read_compass(void);
void set_servo_PWM(void);
int read_light(void); // new feature - read light value from ranger
char read_ranger(void); // new feature - read value, and then start a new ping
void set_drive_PWM(unsigned int distance);
int pick_heading(void); // function which allow operator to pick desired heading
int pick_range(void); // function to pick the desired range
void forward_mode(void); // new feature - adjust steering/speed control for forward mode
void reverse_mode(void); // new feature - adjust steering/speed control for reverse mode
unsigned char read_AD_input(unsigned char n, unsigned char cast); //read AD
void wait(void); //used for keypad reads
void pause(void); //used for keypad reads

//define global variables
__sbit __at (0xB7) RUN; //Port 3 pin 7, Slide Switch for Run/Stop

unsigned int MOTOR_STOP = 2760;
unsigned int MOTOR_MAX = 3500;
unsigned int MOTOR_MIN = 2030;
unsigned int MOTOR_PW = 0;
unsigned int SERVO_CENTER = 2834;
unsigned int SERVO_RIGHT = 3374;
unsigned int SERVO_LEFT = 2294;
unsigned int SERVO_PW = 0;

unsigned char new_heading = 0; // flag for count of compass timing
unsigned char new_range = 0; // flag for count of ranger timing
unsigned char print_flag = 0; // flag for count of printing
unsigned int range, light, heading;
unsigned char r_count, h_count, print_count, nCounts; // overflow counts for range, heading, printing and keypad ops
unsigned int desired_heading, desired_range;
int error;
int deriv = 0;
unsigned char obstacle_threshold = 60;
unsigned char brightness_threshold = 200;
unsigned char Data[2]; // Data is an array with a length of 2 for I2C reads
unsigned char ranger_select; //for selecting between ranger and light sensor in read_ranger
unsigned char drivegain; //potentiometer read for speed
unsigned char run_stop = 0;
unsigned int set_heading;
unsigned char pot_val;

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
 	r_count = 0;
 	h_count = 0;
	print_count = 0;
	
	printf("A brave car stands alone against the many horrors on the battlefield!");
	wait(); //wait for everything to initialize
	lcd_clear();
	lcd_print("Good luck!");
 	while (1)
	{
		while (!RUN) // make RUN an sbit for the run/stop switch
		{ // stay in loop until switch is in run position
			MOTOR_PW = MOTOR_STOP;
			SERVO_PW = SERVO_CENTER;

			PCA0CP0 = 0xFFFF - SERVO_PW;  //set servos to center while not running
			PCA0CP2 = 0xFFFF - MOTOR_PW;  //set motors to center while not running
			if (run_stop == 0)
			{
				set_heading = pick_heading();
				desired_heading = set_heading;
				desired_range = pick_range();
				run_stop = 1; // only try to update desired heading once
			}
		}
		if (new_heading) { // enough overflows for a new heading 
			heading = read_compass();
			set_servo_PWM(); // if new data, adjust servo PWM for compass & ranger
			new_heading = 0;
		}
		if (new_range) { // enough overflow for a new range
			light = read_ranger(); // get range, also stores light value into light
			// read_ranger() must start a new ping after a read
			if (light > brightness_threshold) { // if bright light is detected
				reverse_mode(); // adjust steering control variables for reverse mode
								// and drive PWM for reverse direction
			}
			else {
				forward_mode(); // adjust steering control variables for forward mode
				set_drive_PWM(range); //adjust drive PWM
				
				/*
				if (range < obstacle_threshold) { // if an obstacle is detected
					
				}

				I think this code is how we would adjust "ranger gain" but idk why we need it?
				We are given a distance for obstacles lmao.
				*/
			}
			new_range = 0;
		}
		if (print_flag) { //enough overflows for a new LCD print
			lcd_clear();
			lcd_print("S: %i M: %i\nH: %i R: %i\nL: %i", SERVO_PW, MOTOR_PW, heading, range, light);
			printf("S:%i\tM:%i\tH:%i\tR:%i\tL:%i\r\n", SERVO_PW, MOTOR_PW, heading, range, light);
			print_flag = 0;
		}
	}
}

void PCA_Init(void)
{
    PCA0MD = 0x81; //emable CF interrupt and SYSCLK/12
	PCA0CPM2 = PCA0CPM3 = PCA0CPM0 = 0xC2; //CCM0,2,3 in 16 bit compare mode
	PCA0CN = 0x40; //enable PCA counter
	EIE1 |= 0x08;
	EA = 1;

}

void ADC_Init(void)
{
 	REF0CN = 0x03; /* Set Vref to use internal reference voltage (2.4V) */
 	ADC1CN = 0x80; /* Enable A/D converter (ADC1) */
 	ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
}

void SMB_Init(void)
{
	SMB0CR = 0x93; // set SCL to 100KHz
	ENSMB = TRUE; // enable SMBUS0
}

void Port_Init(void)
{
    P1MDIN &= ~0x10; 	//potentiometer
	P1MDOUT &= ~0x10;	
	P1MDOUT |= 0x0D;	//CEX pins
	P1 |= 0x10;

	P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
	P3 |= ~0x80;
}

void XBR0_Init(void)
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

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
	unsigned char lightlevel;	
	i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
	range = (((unsigned int)Data[0] << 8) | Data[1]);
	i2c_read_data(addr, 1, Data, 1); // read one byte, starting at reg 1
	lightlevel = Data[0];
	Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
	i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
	return lightlevel;
}

void forward_mode(void) {

	desired_heading = set_heading;	
}  // new feature - adjust steering/speed control for forward mode

void reverse_mode(void) {

	pot_val = read_AD_input(4, 0);
	MOTOR_PW = MOTOR_MIN + (pot_val * 3);
	PCA0CP2 = 0xFFFF - MOTOR_PW;
	error = desired_heading - heading;
	deriv = error - deriv;
	if (error > 1800) {
		error = error - 3600;
	}
	else if (error < -1800) {
		error = 3600 - error;
	}
	
	SERVO_PW = (error*-2.5) + SERVO_CENTER;

	if (SERVO_PW > SERVO_RIGHT) {
		SERVO_PW = SERVO_RIGHT;
	}
	else if (SERVO_PW < SERVO_LEFT) {
		SERVO_PW = SERVO_LEFT;
	}
	PCA0CP0 = 0xFFFF - SERVO_PW;
	deriv = heading;

} // new feature - adjust steering/speed control for reverse mode

void set_servo_PWM(void)
{	
	error = desired_heading - heading;
	deriv = error - deriv;
	if (error > 1800) {
		error = error - 3600;
	}
	else if (error < -1800) {
		error = 3600 - error;
	}
	
	SERVO_PW = (error*2.5) + SERVO_CENTER;

	if (SERVO_PW > SERVO_RIGHT) {
		SERVO_PW = SERVO_RIGHT;
	}
	else if (SERVO_PW < SERVO_LEFT) {
		SERVO_PW = SERVO_LEFT;
	}
	PCA0CP0 = 0xFFFF - SERVO_PW;
	deriv = heading;
}

void set_drive_PWM(unsigned int distance)
{
	drivegain = read_AD_input(4, 0); //get potentiometer read to adjust speed
	if (distance < 30) {
		MOTOR_PW = MOTOR_STOP;
	}
	else if ((distance > 30) && (distance < desired_range)) {
		distance = distance - 30;
		MOTOR_PW = MOTOR_STOP + (distance * 24); //pot value scales between 0 and 24, which scales between full drive forward and stop
	}
	else if (distance > 60) {
		MOTOR_PW = MOTOR_MAX;
	}
    MOTOR_PW = MOTOR_PW - (drivegain * 3); //scale speed for potentiometer value
	if (MOTOR_PW < MOTOR_STOP) {
		MOTOR_PW = MOTOR_STOP;
	}
	//printf("PW: %u\n\r", MOTOR_PW);
    PCA0CP2 = 0xFFFF - MOTOR_PW;

}

int pick_heading(void) {
	unsigned char keypad; //temp variable for reads
	lcd_clear();
    lcd_print("Pick Heading\nPress a Number\n1: 0 2: 90 3: 180\n4: 270 0: custom");
	while (1) {
        keypad = read_keypad();
        pause();    // This pauses for 1 PCA0 counter clock cycle (20ms) 
                    // If the keypad is read too frequently (no delay), it will
                    // lock up and stop responding. Must power down to reset.
		if (keypad != 0xFF) {
			while (read_keypad() != 0xFF);
			lcd_clear();
			if (keypad == 0x31) { //if they enter a 1
				lcd_clear(); 
				lcd_print("Heading: 0");
				printf("Desired Heading: 0");
				wait();
				return 0; 
			} 
			else if (keypad == 0x32) { //if they enter a 2
				lcd_clear(); 
				lcd_print("Heading: 90");
				printf("Desired Heading: 90");
				wait();
				return 900;
			} 
			else if (keypad == 0x33) { //if they enter a 3
				lcd_clear(); 
				lcd_print("Heading: 180");
				printf("Desired Heading: 180");
				wait();
				return 1800; 
			} 
			else if (keypad == 0x34) { //if they enter a 4
				lcd_clear(); 
				lcd_print("Heading: 270");
				printf("Desired Heading: 270");
				wait();
				return 2700; 
			} 
			else if (keypad == 0x30) { //if they enter a 0
				unsigned char var = 0; //temp variable for storage
				lcd_clear();
				lcd_print("Enter your number\nStart with 0s\nif need be\nso 45 is 045");
				while (1) {
       				keypad = read_keypad();
       				pause();
					if (keypad != 0xFF) {
						while (read_keypad() != 0xFF);
           				lcd_clear();
						var = (keypad - 0x30) * 100; 
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
						var = var + ((keypad - 0x30) * 10);
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
				printf("Desired Heading: %i", var);
				wait();
				return (var * 10); //times 10 to get from 10ths of a degree to degrees
			} 
		}        
	}
}

int pick_range(void) {
	unsigned char keypad; //temp variable for reads
	unsigned char var = 0; //temp variable for storage
	lcd_clear();
    lcd_print("Pick a Range\nPress a Number\nBetween 0 and 80\nenter with 0 first");
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
	printf("Desired Range: %i", var);
	wait();
	return (var);
} 

unsigned char read_AD_input(unsigned char n, unsigned char cast)
{
	unsigned char adcast; //local variable
	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
 	ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
 	ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
 	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
	if (cast == 0) { //check for unmodified case
		return (ADC1); /* Return digital value in ADC1 register */
	}
	else {
		adcast = (265 / cast) + 1; //create the casting gradient
		return (ADC1/adcast); /* Return digital value in ADC1 register */
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
		if (print_count>=50)
		{
			print_flag = 1;
			print_count = 0;
		}
	}
	// handle other PCA interrupt sources
	PCA0CN &= 0xC0;
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