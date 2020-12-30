/**
 * DMX Demonstrator Transmitter pin change library
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

#include "PinChange.h"

PinChangeInterrupt PinChange;

void (*PinChangeInterrupt::isrCallback)() = PinChangeInterrupt::isrDefaultUnused;

#if defined(__AVR__)
ISR(PCINT0_vect) {
  PinChange.isrCallback();
}
#endif // __AVR__

/* static */
void PinChangeInterrupt::isrDefaultUnused()
{
}