/**
 * DMX Demonstrator Transmitter adjustable timer library
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

#include "AdjustableTimer1.h"

AdjustableTimer1 Timer1;

unsigned char AdjustableTimer1::clockSelect = 0;
unsigned int AdjustableTimer1::clockCount = 1;
void (*AdjustableTimer1::isrCallback)() = AdjustableTimer1::isrDefaultUnused;

#if defined(__AVR__)
ISR(TIMER1_COMPA_vect) {
  Timer1.isrCallback();
}
#endif // __AVR__

/* static */
void AdjustableTimer1::isrDefaultUnused()
{
}