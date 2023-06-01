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

#ifndef AdjTimer1_h_
#define AdjTimer1_h_

#include "Arduino.h"

#if defined(__AVR__)

// Timer1 is 16 bit
#define TIMER1_RESOLUTION 65536UL

class AdjustableTimer1 {


  public:
    void Initialize(unsigned long frequency=1) __attribute__((always_inline)) {

        TCCR1A = 0;                   // Reset Timer 1 control register A.
        TCCR1B = 0;                   // Reset Timer 1 control register B.
        TCCR1C = 0;                   // Reset Timer 1 control register C.
        TCNT1  = 0;                   // Reset timer 1 counter value.

        Stop();
        SetFrequency(frequency);
    }

    void SetFrequency(unsigned long frequency) __attribute__((always_inline)) {

        // Determine clock prescalar and clock count.
        const unsigned long cycles = F_CPU / frequency;
        if (cycles < TIMER1_RESOLUTION) {
            clockSelect = _BV(CS10);
            clockCount = cycles;
        } else if (cycles < TIMER1_RESOLUTION * 8) {
            clockSelect = _BV(CS11);
            clockCount = cycles / 8;
        } else if (cycles < TIMER1_RESOLUTION * 64) {
            clockSelect = _BV(CS11) | _BV(CS10);
            clockCount = cycles / 64;
        } else if (cycles < TIMER1_RESOLUTION * 256) {
            clockSelect = _BV(CS12);
            clockCount = cycles / 256;
        } else if (cycles < TIMER1_RESOLUTION * 1024) {
            clockSelect = _BV(CS12) | _BV(CS10);
            clockCount = cycles / 1024;
        } else {
            clockSelect = _BV(CS12) | _BV(CS10);
            clockCount = TIMER1_RESOLUTION - 1;
        }
    }

    void Start() __attribute__((always_inline)) {
        Stop();
        TCNT1 = 0;                   // Reset count.
        OCR1A = clockCount;          // Set max count.
        TCCR1B |= clockSelect;       // Set clock source.
    }

    void Stop() __attribute__((always_inline)) {
        TCCR1B = (1 << WGM12);       // CTC mode: count to OCR1A, clear clock source.
    }

    void AttachInterrupt(void (*isr)()) __attribute__((always_inline)) {
        isrCallback = isr;
        TIMSK1 |= (1 << OCIE1A);     // Enable timer 1 compare interrupt.
    }

    void DetachInterrupt() __attribute__((always_inline)) {
        TIMSK1 = 0;                  // Clear interrupt masks.
    }

    static void (*isrCallback)();
    static void isrDefaultUnused();

  private:
    static unsigned char clockSelect;
    static unsigned int clockCount;
};

extern AdjustableTimer1 Timer1;

#endif // __AVR__

#endif // AdjTimer1_h_
