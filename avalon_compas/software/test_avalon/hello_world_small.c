#include "sys/alt_stdio.h"
#include "system.h"
#include "alt_types.h"


unsigned char data;
//#define leds (unsigned int *) LED_BASE

#define config (volatile int *) (AVALON_CPT_0_BASE +4)
//#define start (volatile int *)( AVALON_CPT_0_BASE +4)
#define data_valide (volatile int *)( AVALON_CPT_0_BASE +8)
#define num_out (volatile int *)( AVALON_CPT_0_BASE +12)



unsigned int a,b,c,d,e,f;
int main()
{


  alt_putstr("Hello from Nios II!\n");
  //*leds=255;
  *config = 3;
  //*start =1;
  //*continu=1;

  //Event loop never exits.
  while (1)
  {
	  e=*data_valide;
	  f=*num_out;
	  printf("data_valid is = %d  ",e);
	  printf("DATA IS : %d \n",f);
	  usleep(100000);
  }

  return 0;
}

