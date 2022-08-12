#include <stdint.h>
#include <stddef.h>
#include "systime.h"

void printint(unsigned int num_to_be_printed)
    {
    	char numstring[10];
    	itoa(num_to_be_printed,numstring,10);
    	print(numstring);

    }

void printu32(uint32_t num )
{
	//char numstring[2];
	//itoa(num,numstring,2);
	//print(numstring);
}

void printstr(const char* ptr)
{
	print(ptr);
}

void InTask(int num, int priority)
{
	print("Entering task");
	printint(num);
	print(" with priority ");
	printint(priority);
	print("... systime:");
	printint(systime_get());
	print("\r\n");
}

void ExitingTask(int num)
{
	print("Exiting Task");
	printint(num);
	print("\r\n");
}

void TaskAdded(int num)
{
	print("Task");
	printint(num);
	print(" added successfully\r\n");
}

