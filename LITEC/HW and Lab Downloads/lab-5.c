/* Sample code for main function to read the accelermeter */
#include <c8051_SDCC.h>
#include <stdlib.h>// needed for abs function
#include <stdio.h>
#include <c8051_SDCC.h>
#include <i2c.h>\

//-----------------------------------------------------------------------------
// 8051 Initialization Functions
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init (void);
void SMB_Init (void);
void ADC_Init(void); //for potentiometer/battery readings
void XBR0_Init(void);
void Interrupt_Init(void);
void PCA_ISR ( void ) __interrupt 9;
void read_accel (void); //Sets global variables gx & gy
void set_servo_PWM (void);
void set_drive_PWM(void);
void updateLCD(void);
void set_gains(void); // function which allow operator to set feedback gains
void wait(void); //used for keypad reads
void pause(void); //used for keypad reads
unsigned char read_AD_input(unsigned char n, unsigned char cast); //read AD
int pick_heading(void); // function which allow operator to pick desired heading
int pick_range(void); // function to pick the desired range
void forward_mode(void); // new feature - adjust steering/speed control for forward mode
void reverse_mode(void); // new feature - adjust steering/speed control for reverse mode
char read_accels(void); // new feature - read value, and then start a new ping


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
unsigned char Data[4]; // Data is an array with a length of 4 for accel reads\
signed int gx = 0;
signed int gy = 0;
unsigned int ks; // steering gain
unsigned int 

__sbit __at (0xB7) run; //Port 3 pin 7, Slide Switch for Run/Stop
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
	Interrupt_Init();
	Accel_Init_C();

	a_count = 0;
	lcd_count = 0;

	while (1)
	{
		run_stop = 0;
		while (!run) // make run an sbit for the run/stop switch
		{ // stay in loop until switch is in run position
			if (run_stop == 0)
			{
				set_gains(); // function adjusting feedback gains
				run_stop = 1: // only try to update once
			}
		}

		if (new_accels) // enough overflows for a new reading
		{
			read_accels();
			set_servo_PWM(); // set the servo PWM
			set_drive_PWM(); // set drive PWM
			new_accels = 0;
			a_count = 0;
		}

		if (new_lcd) // enough overflow to write to LCD
		{
			updateLCD(); // display values
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
		if(a_count>=4)
		{
			new_accel=1;
			a_count = 0;
		}
		lcd_count++;
		if (lcd_count>=50)
		{
			new_lcd = 1;
			lcd_count = 0;
		}
		PCA0 = PCA_start;
	}
	// handle other PCA interrupt sources
	PCA0CN &= 0xC0;
}

void Update_Value(unsigned char incr, int maxval, int minval)
{
	// Constant is the global int variable to be adjusted
	int deflt = 20; //Fill in desired default value
	char input;
	
	// 'c' - default, 'i' - increment, 'd' - decrement
	// This can easily be changed to use the keypad instead of the terminal
	input = getchar_nw();
	if (input == 0xFF) return;
	else if (input == 'c') Constant = deflt;
	else if (input == 'i')
	{
		Constant += incr;
		if (Constant > maxval) Constant = maxval;
	}
	if (input == 'd')
	{
		Constant -= incr;
		if (Constant < minval) Constant = minval;
	}
	printf(“ Constant = %d “, Constant);
	return;
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

	P2MDOUT |= 0xFC; // set Port 2 output pins to push-pull mode 

	P3MDOUT &= 0x80;	//set P3.7 for input (open drain) w high impedance
	P3 |= ~0x80;
}


void XBR0_Init(void)
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

}


char read_accels(void)
{

	signed int avg_gx = 0;
	signed int avg_gy = 0;

	unsigned char addr = 0x3A; // the address of the range
	unsigned char register_a;
	signed int i = 0;

	for (i < 4) {

		i2c_read_data(addr, 0x27, Data, 2);

		while ((Data[0] & 0x03) != 0x03) {
			i2c_read_data(addr, 0x27, Data, 2);
		}
	
		
		i2c_read_data(addr, 0x28|0x80, Data, 4);
		//
		//
		//
		avg_gx = 0;
		avg_gy = 0;

		avg_gx += ((Data[1] << 8 | Data[0]) >> 4);
		avg_gy += ((Data[3] << 8 | Data[2]) >> 4);
	}

	avg_gx = avg_gx >> 2;
	avg_gy = avg_gy >> 2;

	gx = avg_gx;
	gy = avg_gy;
	i++
}

/*
	unsigned char addr = 0xE0; // the address of the range
	unsigned char lightlevel;	
	i2c_read_data(addr, 2, Data, 2); // read two bytes, starting at reg 2
	range = (((unsigned int)Data[0] << 8) | Data[1]);


	i2c_read_data(addr, 1, Data, 1); // read one byte, starting at reg 1
	lightlevel = Data[0];


	Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
	i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
	return lightlevel;
	*/

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