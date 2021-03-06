/*
===============================================================================
 Name        : main.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#if defined (__USE_LPCOPEN)
#if defined(NO_BOARD_LIB)
#include "chip.h"
#else
#include "board.h"
#endif
#endif

#include <cr_section_macros.h>

// TODO: insert other include files here
#include <iostream>
#include <iomanip>
#include <step.h>
#include <wash_prog.h>
#include <gpio.h>
#include <motor.h>
#include <seven_segment.h>
using std::ios;
using std::setw;


// TODO: insert other definitions and declarations here
void wait()
{
  for(volatile int i = 0; i < 1000000; ++i);
}

int main() {

	GPIO 			port2(LPC_GPIO2_BASE);
	Motor 			motor(port2);
	SevenSegment 	sev_seg(port2);

//	motor.on();
//	while(1) {
//		for (int i=0; i<10; ++i) {
//			sev_seg.display(i);
//			wait();
//			wait();
//		}
//		motor.change_direction();
//	}

	WashProgramme color_wash;

	Step s_empty(Step::empty, &sev_seg);
	wait();
	Step s_fill(Step::fill, &sev_seg);
	wait();
	Step s_heat(Step::heat, &sev_seg);
	wait();
	Step s_wash(Step::wash, &sev_seg);
	wait();
	Step s_rinse(Step::rinse, &sev_seg);
	wait();
	Step s_spin(Step::spin, &sev_seg);
	wait();
	Step s_dry(Step::dry, &sev_seg);
	wait();
	Step s_comp(Step::complete, &sev_seg);

	color_wash.add(s_empty);
	color_wash.add(s_fill);
	color_wash.add(s_heat);
	color_wash.add(s_wash);
	color_wash.add(s_empty);
	color_wash.add(s_fill);
	color_wash.add(s_rinse);
	color_wash.add(s_empty);
	color_wash.add(s_spin);
	color_wash.add(s_dry);
	color_wash.add(s_comp);

	color_wash.run();
}
