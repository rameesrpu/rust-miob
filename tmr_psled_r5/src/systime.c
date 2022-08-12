
#include "systime.h"
#include "xil_sleeptimer.h"
#include "printint.h"

static volatile systime_t systime;
int overflow= 0;
XTime prev_time=0;



systime_t systime_get(void) {


	XTime time=0;
	volatile XTime* ptime= &time;
    XTime_GetTime(ptime);
    if ((*ptime)<prev_time)
    {
    	overflow++;
    	//print("!!!!!!!!!!Overflow occured!!!!!!!\n\r");
    }
    prev_time=*ptime;
    u64 volatile sys_time;
    sys_time=overflow;
    sys_time <<= 32;     	//Shifted to obtain the previous time consumed
    sys_time += (*ptime);	//Added with current value from the timer

    return (sys_time)/100000;
}


