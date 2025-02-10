/* Sample code for main function to read the accelermeter */
#include <c8051_SDCC.h>
#include <stdlib.h>// needed for abs function
#include <stdio.h>
#include <i2c.h>

//-----------------------------------------------------------------------------
// 8051 Initialization Functions
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init (void);
void SMB_Init (void);
void ADC_Init(void); //for potentiometer/battery readings
void XBR0_Init(void);
void Update_Value(unsigned char incr, int maxval, int minval);
void PCA_ISR ( void ) __interrupt 9;
void read_accel (void); //Sets global variables gx & gy
void set_servo_PWM (void);
void set_drive_PWM(void);
void set_gains(void); // function which allow operator to set feedback gains
void wait(void); //used for keypad reads
void pause(void); //used for keypad reads
unsigned char read_AD_input(unsigned char n, unsigned char cast); //read AD
int pick_heading(void); // function which allow operator to pick desired heading
void read_accels(void); // new feature - read value, and then start a new ping
void calibration(void); //this calibrates the accel

//define global variables
unsigned int MOTOR_STOP = 2760;
unsigned int MOTOR_MAX = 3500;
unsigned int MOTOR_MIN = 2030;
unsigned int MOTOR_PW = 0;
unsigned int SERVO_CENTER = 2834;
unsigned int SERVO_RIGHT = 3374;
unsigned int SERVO_LEFT = 2294;
unsigned int SERVO_PW = 0;

unsigned char new_accel = 0; // flag for count of accel timing
unsigned char new_lcd = 0; // flag for count of LCD timing
unsigned int range;
unsigned char a_count; // overflow count for acceleration
unsigned char lcd_count; // overflow count for LCD updates
unsigned char Data[4]; // Data is an array with a length of 4 for accel reads
signed int gx = 0;
signed int gy = 0;
signed int x0 = 0;
signed int y0 = 0;
unsigned char ks; // steering gain
unsigned char kdx; // drive motor gain for side to side tilt
unsigned char kdy; // back to front tilt
unsigned char levelflag = 1;
unsigned int nCounts = 0;
unsigned char direction;
int Constant = 1;
signed int avg_gx;
signed int avg_gy;

__sbit __at 0xB7 run; //Port 3 pin 7, Slide Switch for Run/Stop
__sbit __at 0xA5 BILED0; // BILED0 (green), associated with Port 2 Pin 5
__sbit __at 0xA3 BILED1; // BILED1 (red), associ`ated with Port 2 Pin 3

//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
	unsigned char run_stop; // define local variables
	Sys_Init(); // initialize board
	putchar(' ');
	Port_Init();
	PCA_Init();
	SMB_Init();
	XBR0_Init();
	ADC_Init();
	Accel_Init_C();
	a_count = 0;
	lcd_count = 0;
	//printf("X accel. - Y accel. - Drive PW - Steering PW\r\n");
	run_stop = 0;


	while (1)
	{
		
		while (!run) // make run an sbit for the run/stop switch
		{// stay in loop until switch is in run position 
			MOTOR_PW = MOTOR_STOP; //put motor in neutral
			SERVO_PW = SERVO_CENTER;

			PCA0CP0 = 0xFFFF - SERVO_PW;  //set servos to center while not running
			PCA0CP2 = 0xFFFF - MOTOR_PW;  //set motors to center while not running

			BILED0 = 1;
			BILED1 = 1;
			if (run_stop == 0)
			{
				unsigned char keypad; //temp variable for reads
				lcd_clear();
				lcd_print("Please put me\non a flat\nsurface! Then\npress 1");
				
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
							lcd_print("Calibrated!");
							wait();
							break;
						}
					}
				}
				calibration();
				printf("X0: %i, Y0: %i", x0, y0);
				set_gains(); // function adjusting feedback gains
				lcd_clear();
				lcd_print("1: Right\n2: Left");
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
							lcd_print("Right");
							direction = 1;
							SERVO_PW = SERVO_LEFT;
							PCA0CP0 = 0xFFFF - SERVO_PW;
							wait();
							break;
						}
						if (keypad == 0x32) { //if they enter a 2
							lcd_clear();
							lcd_print("Left");
							SERVO_PW = SERVO_RIGHT; //just prep the motors so they turn in place now
							PCA0CP0 = 0xFFFF - SERVO_PW;
							direction = 2;
							wait();
							break;
						}
					}
				}
				run_stop = 1; // only try to update once
			}
		}
		
		if (MOTOR_PW > MOTOR_STOP) {
			BILED1 = 0;
			BILED0 = 1;
		}
		if (MOTOR_PW < MOTOR_STOP) {
			BILED1 = 1;
			BILED0 = 0;
		}
		if (MOTOR_PW == MOTOR_STOP) {
			BILED1 = 0;
			BILED0 = 0;
		}

		if (new_accel) // enough overflows for a new reading
		{
			read_accels();
			if(((gy < 10) && (gy > -10)) && (levelflag)) { //checking for level ground
				levelflag ++;
			}
			else if (levelflag) {
				levelflag = 1;
			}

			if (levelflag > 5) {
				levelflag = 0;
			}

			if (levelflag) { //manual reverse
				if (direction == 1) { //this is right
					SERVO_PW = SERVO_LEFT; //reversed because of control setup
					PCA0CP0 = 0xFFFF - SERVO_PW;
					kdy = read_AD_input(4, 50); //get potentiometer read to adjust speed
					MOTOR_PW = MOTOR_STOP - (kdy * 18);
					if (MOTOR_PW < MOTOR_MIN) {
						MOTOR_PW = MOTOR_MIN;
					}
					PCA0CP2 = 0xFFFF - MOTOR_PW;
				}

				if (direction == 2) { //this is left
					SERVO_PW = SERVO_RIGHT; //reversed because of control setup
					PCA0CP0 = 0xFFFF - SERVO_PW;
					kdy = read_AD_input(4, 50); //get potentiometer read to adjust speed
					MOTOR_PW = MOTOR_STOP - (kdy * 18);
					if (MOTOR_PW < MOTOR_MIN) {
						MOTOR_PW = MOTOR_MIN;
					}
					PCA0CP2 = 0xFFFF - MOTOR_PW;					
				}

			}
			else {
				set_servo_PWM(); // set the servo PWM
				set_drive_PWM(); // set drive PWM
				new_accel = 0;
				a_count = 0;
			}
		}

		if (new_lcd) // enough overflow to write to LCD
		{
			lcd_clear();
			lcd_print("x: %i y: %i\nDrive: %i Steering: %i", gx, gy, MOTOR_PW, SERVO_PW);
			printf("%i\t%i\t%i\t%i\r\n", gx, gy, MOTOR_PW, SERVO_PW);
			new_lcd = 0;
			lcd_count = 0;
		}

	}
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
		CF = 0; // clear overflow indicator
		a_count++;
		nCounts++;
		if(a_count>=4)
		{
			new_accel=1;
			a_count = 0;
		}
		lcd_count++;
		if (lcd_count>=10)
		{
			new_lcd = 1;
			lcd_count = 0;
		}
		PCA0 = 28671;
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


unsigned char read_AD_input(unsigned char n, unsigned char cast)
{
	unsigned char adcast; //local variable
	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
 	ADC1CN = ADC1CN & ~0x20; /* Clear the �Conversion Completed� flag */
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

	P2MDOUT |= 0xFF; // set Port 2 output pins to push-pull mode

	P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
	P3 |= ~0x80;
}


void XBR0_Init(void)
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

}

void calibration(void) {
	unsigned char addr = 0x3A; // the address of the accel
	unsigned char i = 0;

	avg_gx = 0;
	avg_gy = 0;

	for (i = 0; i < 64; i++) { //average of 64 trials for calibration data

		i2c_read_data(addr, 0x27, Data, 2);

		while ((Data[0] & 0x03) != 0x03) {
			i2c_read_data(addr, 0x27, Data, 2);
		}


		i2c_read_data(addr, 0x28|0x80, Data, 4);

		avg_gx += ((Data[1] << 8 | Data[0]) >> 4);
		avg_gy += ((Data[3] << 8 | Data[2]) >> 4);
	}

	x0 = avg_gx / 64; 
	y0 = avg_gy / 64;

}

void read_accels(void)
{
	unsigned char addr = 0x3A; // the address of the accel
	unsigned char i = 0;

	avg_gx = 0;
	avg_gy = 0;

	for (i = 0; i < 8; i++) {

		i2c_read_data(addr, 0x27, Data, 2);

		while ((Data[0] & 0x03) != 0x03) {
			i2c_read_data(addr, 0x27, Data, 2);
		}


		i2c_read_data(addr, 0x28|0x80, Data, 4);

		avg_gx += ((Data[1] << 8 | Data[0]) >> 4);
		avg_gy += ((Data[3] << 8 | Data[2]) >> 4);
	}

	avg_gx = avg_gx >> 3;
	avg_gy = avg_gy >> 3;

	gx = avg_gx - x0;
	gy = avg_gy - y0;
	//printf("AX: %i, AY: %i", avg_gx, avg_gy);
}


void set_servo_PWM(void)
{
	SERVO_PW = SERVO_CENTER + ks * gx;

	if (SERVO_PW > SERVO_RIGHT) {
		SERVO_PW = SERVO_RIGHT;
	}

	if (SERVO_PW < SERVO_LEFT) {
		SERVO_PW = SERVO_LEFT;
	}

	PCA0CP0 = 0xFFFF - SERVO_PW;
}


void set_drive_PWM(void)
{
	kdy = read_AD_input(4, 50); //get potentiometer read to adjust speed
	MOTOR_PW = MOTOR_STOP - (kdy * (3/4)) * gy; //kdy adjustment to even out forward vs reverse speeds
	MOTOR_PW += kdx * abs(gx);
	

	if (MOTOR_PW > MOTOR_MAX) {
		MOTOR_PW = MOTOR_MAX;
	}

	if (MOTOR_PW < MOTOR_MIN) {
		MOTOR_PW = MOTOR_MIN;
	}

    PCA0CP2 = 0xFFFF - MOTOR_PW;

}


void set_gains(void) {
	unsigned char keypad; //temp variable for reads
	lcd_clear();
    lcd_print("Pick Gain\nPress a Number\n1: 1 2: 2 3: 3\n4: 4 0: custom");
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
				lcd_print("Gain: 1");
				printf("Desired Gain: 1");
				wait();
				ks = 1;
				break;
			}
			else if (keypad == 0x32) { //if they enter a 2
				lcd_clear();
				lcd_print("Gain: 2");
				printf("Desired Gain: 2");
				wait();
				ks = 2;
				break;
			}
			else if (keypad == 0x33) { //if they enter a 3
				lcd_clear();
				lcd_print("Gain: 3");
				printf("Desired Gain: 3");
				wait();
				ks = 3;
				break;
			}
			else if (keypad == 0x34) { //if they enter a 4
				lcd_clear();
				lcd_print("Gain: 4");
				printf("Desired Gain: 4");
				wait();
				ks = 4;
				break;
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
				printf("Desired Gain: %i", var);
				wait();
				ks = var;
				break;
			}
		}
	}
	lcd_clear();
    lcd_print("Pick kdx Gain\nPress a Number\n1: 3 2: 6 3: 9\n4: 12 0: custom");
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
				lcd_print("Gain: 3");
				printf("Desired Gain: 3");
				wait();
				kdx = 3;
				break;
			}
			else if (keypad == 0x32) { //if they enter a 2
				lcd_clear();
				lcd_print("Gain: 6");
				printf("Desired Gain: 6");
				wait();
				kdx = 6;
				break;
			}
			else if (keypad == 0x33) { //if they enter a 3
				lcd_clear();
				lcd_print("Gain: 9");
				printf("Desired Gain: 9");
				wait();
				kdx = 9;
				break;
			}
			else if (keypad == 0x34) { //if they enter a 4
				lcd_clear();
				lcd_print("Gain: 12");
				printf("Desired Gain: 12");
				wait();
				kdx = 12;
				break;
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
				printf("Desired Gain: %i", var);
				wait();
				kdx = var;
				break;
			}
		}
	}
}
