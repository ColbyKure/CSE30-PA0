/*
 * Filename: printInOrder.c
 * Author: Colby Kure
 * Userid: cs30xdc
 * Description: Print out an array in order
 * Date: 4/11/18
 * Sources of Help: lecture and discussion notes
 */
#include <stdio.h>

/*
 * Function Name: printInOrder()
 * Function Prototype: void printInOrder( int array[], int length );
 * Description: Prints out an array in order
 * Parameters: array - the array to print
 *             length - the length of the array
 * Side Effects: Prints out the array to stdout
 * Error Conditions: None
 * Return Value: None
 */
void printInOrder( int array[], int length ) {
  int i;

  // Print all of the values in array
  for ( i = 0; i < length; i++ ) {
    fprintf( stdout, "%d\n", array[i] );
  }
}
