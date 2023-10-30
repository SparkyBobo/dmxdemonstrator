/**
 * DMX Demonstrator Transmitter Retro - DMX IO Test
 * Copyright (C) 2020 Crazy Giraffe Software
 * https://github.com/crazy-giraffe-software/dmxdemonstrator/tree/master/software/transmitter
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Include timer abstractions
 */
//#include "AdjustableTimer1.h"
#include <DMXSerial.h>

int RedList[] = {255, 128, 0, 0, 0, 128};
int GreenList[] = {0, 128, 255, 128, 0, 0};
int BlueList[] = {0, 0, 0, 128, 255, 128};

int RedLevel, GreenLevel, BlueLevel;

int RedNow = 0;
int GreenNow = 0;
int BlueNow = 0;

int state = 0;

/**
 * Setup
 * Put your setup code here, to run once.
 */
void setup() {

  // Disable all interrupts.
  //noInterrupts();

  // Opens serial port.
  DMXSerial.init(DMXController);

  // Configure
  //analogReference(DEFAULT);

  // Enable all interrupts.
  //interrupts();  

    DMXSerial.write(1, 60);
    DMXSerial.write(2, 60);
    DMXSerial.write(3, 60);
    DMXSerial.write(4, 60);
    DMXSerial.write(5, 60);
    //DMXSerial.write(2, 0);
    //DMXSerial.write(3, 255);
  
}

/**
 * Loop
 * Put your main code here, to run repeatedly.
 */
void loop() {

}
