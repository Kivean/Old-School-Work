/* Name: Grayson Gerlich
   Date: 9/10/12
   Section & Side: 2 A

Program Name: Homework 2
*/
// This C code has three intentional syntax errors that must be corrected
//   before submitting this file for grading. Additionally, one error in 
//   the software logic exists, which should also be fixed.
//
// Forgetting to edit the personal information comments at the top will
//   result in losing some points.
//
// Your final code should be error and warning free. Deleting lines of 
//   code does not constitute a valid solution.
//
// NOTE: It is not necessary to run this code on the car, though you are 
// of course welcome to do so. If your submitted code does not compile,
// you will receive a grade of zero. To receive credit, your code must be
// free of both errors and warnings when it compiles.

// Compiler directives
#include <C8051_SDCC.h> // Include files. This file is available online
#include <stdio.h>

// Function prototypes
void ECSE(void);
void MANE(void);
void Other(void);

// Global variables
char input;							//store keyboard entry
char number;

void main(void) 	       			// Start main function
{

  	Sys_Init();   					// Initialize UART, System clock and crossbar
  	putchar(' '); 					// Do this because we tell you to 
  	printf("LITEC Homework Assignment 2\r\n\n"); // Print start message


  	while(1)      					// Begin infinite loop 
  	{
		printf("Let me know which department you are in \r\n");
  		printf("    Enter an 'M' for MANE\r\n");
  		printf("    Enter an 'E' for ECSE\r\n");
  		printf("    Enter an 'O' for other departments\r\n");
    	input = getchar();      	// Get keyboard input
		
		//check the range
		if (input == 'M')			// MANE department chosen
		{
			MANE();
		}
		else if (input == 'E')		// ECSE department chosen
		{
			ECSE();
		}
		else if (input == 'O')
		{
			Other();
		}
		else
		{
			printf("That was not a valid character \r\n");
		}

		printf("Press any key to try again \r\n");
		getchar();
  	} 	// End while loop
}   	// End main function


// Function definitions

void MANE(void)
{
	printf("Sounds like a lot of work \r\n");
}

void ECSE(void)
{
	printf("Hey, me too \r\n");
}

void Other(void)
{
	printf("Sorry \r\n");
	printf("  I did not include enough majors \r\n");
}