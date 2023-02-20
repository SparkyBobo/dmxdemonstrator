/**
 * DMX Demonstrator Transmitter fixed timer library
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

#include "FixedTimer2.h"

FixedTimer2 Timer2;

unsigned char FixedTimer2::clockSelect = 0;
unsigned int FixedTimer2::clockCount = 1;
void (*FixedTimer2::isrCallback)() = FixedTimer2::isrDefaultUnused;

#if defined(__AVR__)
#if defined(__AVR_ATmega32U4__)
ISR(TIMER3_COMPA_vect) {
  Timer2.isrCallback();
}
#else
ISR(TIMER2_COMPA_vect) {
  Timer2.isrCallback();
}
#endif
#endif // __AVR__

/* static */
void FixedTimer2::isrDefaultUnused()
{
}