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

#ifndef PinChangeLib_h_
#define PinChangeLib_h_

#include "Arduino.h"

#if defined(__AVR__)

class PinChangeInterrupt {

  public:
    void Initialize() __attribute__((always_inline)) {
        // Enable pin change interrupt PCINT5, which is the clock input pin.
#if defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
        PCMSK0 |= (1 << PCINT7); // Pin D13 is PCINT7, D9 has no PCINT assignment.
#elif defined(__AVR_ATmega32U4__)
        PCMSK0 |= (1 << PCINT5); // Pin D9 is PCINT5, D13 has no PCINT assignment.
#else
        PCMSK0 |= (1 << PCINT5); // Pin D13 is PCINT5, D9 is PCINT1 (either will work).
#endif
    }

    void Start() __attribute__((always_inline)) {
        PCICR |= (1 << PCIE0);       // Enable interrupts.
    }

    void Stop() __attribute__((always_inline)) {
        PCICR &= ~(1 << PCIE0);      // Disable interrupts.
    }

    void AttachInterrupt(void (*isr)()) __attribute__((always_inline)) {
        isrCallback = isr;
    }

    static void (*isrCallback)();
    static void isrDefaultUnused();
};

extern PinChangeInterrupt PinChange;

#endif // __AVR__

#endif // PinChangeLib_h_
