/*-----------------------------------------------------------------------------------------------------*/
/*                                                                                                     */
/* This module implements a simple adder                                                               */
/*                                                                                                     */
/*-----------------------------------------------------------------------------------------------------*/

//#define FAILURE 

/* -------------------------------------- Includes ----------------------------------------------------*/
#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

/* -------------------------------------- Program -----------------------------------------------------*/

void main()
{
  int a,b,c;

  /* get input */
  scanf("%d", &a);
  scanf("%d", &b);

  /* calculate result */
  c = a + b;

#ifdef FAILURE
  /* optional failure */
  c++;
#endif

  /* deliver result */
  printf("%d\n", c);

  /* all fine */
  exit(0);
}
