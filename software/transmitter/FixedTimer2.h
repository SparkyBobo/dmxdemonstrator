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

#ifndef FixedTimer2_h_
#define FixedTimer2_h_

#include "Arduino.h"

#if defined(__AVR__)

#if defined(__AVR_ATmega32U4__)
    // Timer3 is 16 bit
    #define TIMER2_RESOLUTION 65536UL
#else
    // Timer2 is 8 bit
    #define TIMER2_RESOLUTION 256UL
#endif

class FixedTimer2 {


  public:
    void Initialize() __attribute__((always_inline)) {

#if defined(__AVR_ATmega32U4__)
        TCCR3A = 0;                   // Reset Timer 3 control register A.
        TCCR3B = 0;                   // Reset Timer 3 control register B.
        TCCR3C = 0;                   // Reset Timer 3 control register C.
        TCNT3  = 0;                   // Reset timer 3 counter value.

        clockSelect = (1 << CS30);    // Clock source is F_CPU / 8.
        clockCount = 64;              // Maps to about 62.5kHz for F_CPU==16Mhz
#else
        TCCR2A = 0;                   // Reset Timer 2 control register A.
        TCCR2B = 0;                   // Reset Timer 2 control register B.

        TCCR2A = (1 << WGM21);        // CTC mode: count to OCR1A, clear clock source.

        clockSelect = _BV(CS21);      // Clock source is F_CPU / 8.
        clockCount = 32;              // Maps to about 62.5kHz for F_CPU==16Mhz
#endif

        Stop();
    }

    void Start() __attribute__((always_inline)) {
        Stop();

#if defined(__AVR_ATmega32U4__)
        TCNT3 = 0;                    // Reset count.
        OCR3A = clockCount;           // Set max count.
        TCCR3B |= clockSelect;        // Set clock source.
#else
        TCNT2 = 0;                    // Reset count.
        OCR2A = clockCount;           // Set max count.
        TCCR2B |= clockSelect;        // Set clock source.
#endif
    }

    void Stop() __attribute__((always_inline)) {
#if defined(__AVR_ATmega32U4__)
        TCCR3B = (1 << WGM32);       // CTC mode: count to OCR3A, clear clock source.
#else
        TCCR2B = 0;                  // Clear clock source.
#endif
    }

    void AttachInterrupt(void (*isr)()) __attribute__((always_inline)) {
        isrCallback = isr;
#if defined(__AVR_ATmega32U4__)
        TIMSK3 |= (1 << OCIE3A);      // Enable timer 3 compare interrupt.
#else
        TIMSK2 |= (1 << OCIE2A);      // Enable timer 2 compare interrupt.
#endif
    }

    void DetachInterrupt() __attribute__((always_inline)) {
#if defined(__AVR_ATmega32U4__)
        TIMSK3 = 0;                   // Clear interrupt masks.
#else
        TIMSK2 = 0;                   // Clear interrupt masks.
#endif
    }

    static void (*isrCallback)();
    static void isrDefaultUnused();

  private:
    static unsigned char clockSelect;
    static unsigned int clockCount;
};

extern FixedTimer2 Timer2;

#endif // __AVR__

#endif // FixedTimer2_h_
