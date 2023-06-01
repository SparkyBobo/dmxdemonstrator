/**
 * DMX Demonstrator Transmitter Retro - Analog Out Test
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
#include "AdjustableTimer1.h"

// IO pins - direction is relative to the circuit under test
const byte data_shift_in = 2;
const byte clk_shift_in = 3;
const byte shift_reset_in = 4;
const byte latch_write_in = 5;
const byte latch_a1_in = 6;
const byte latch_a0_in = 7;
const byte analog_0_out = A0;
const byte analog_1_out = A1;
const byte analog_2_out = A2;
const byte analog_3_out = A3;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount =38;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  char clk_shift_in_value;
  char shift_reset_in_value;
  char data_shift_in_value;
  char latch_write_in_value;
  char latch_a0_in_value;
  char latch_a1_in_value;
  int analog_0_out_value;
  int analog_1_out_value;
  int analog_2_out_value;
  int analog_3_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no count output
  {  0,   1, 0,  1, 0, 0,   0,0,0,0 }, // 0
  {  1,   1, 0,  1, 0, 0,   0,0,0,0 },
  {  0,   0, 0,  1, 0, 0,   0,0,0,0 },
  {  1,   0, 0,  1, 0, 0,   0,0,0,0 },
  // Send 15
  {  0,   1, 1,  1, 0, 0,   0,0,0,0 }, // 4
  {  1,   1, 1,  1, 0, 0,   0,0,0,0 },
  {  0,   1, 1,  1, 0, 0,   0,0,0,0 },
  {  1,   1, 1,  1, 0, 0,   0,0,0,0 },
  {  0,   1, 1,  1, 0, 0,   0,0,0,0 },
  {  1,   1, 1,  1, 0, 0,   0,0,0,0 },
  {  0,   1, 1,  1, 0, 0,   0,0,0,0 },
  {  1,   1, 1,  1, 0, 0,   0,0,0,0 },
  // Latch
  {  0,   1, 0,  0, 0, 0,   63,0,0,0 }, // 12
  {  0,   1, 0,  1, 0, 0,   63,0,0,0 },    
  // Send 1 more digits
  {  0,   1, 1,  1, 0, 0,   63,0,0,0 }, // 14
  {  1,   1, 1,  1, 0, 0,   63,0,0,0 },
  // Latch
  {  0,   1, 0,  0, 1, 0,   63,127,0,0 }, // 16
  {  0,   1, 0,  1, 1, 0,   63,127,0,0 },    
  // Send 1 more digits
  {  0,   1, 1,  1, 0, 0,   63,127,0,0 }, // 18
  {  1,   1, 1,  1, 0, 0,   63,127,0,0 },
  // Latch
  {  0,   1, 0,  0, 0, 1,   63,127,267,0 }, // 20
  {  0,   1, 0,  1, 0, 1,   63,127,267,0 },    
  // Send 2 more digits
  {  0,   1, 1,  1, 0, 0,   63,127,267,0 }, // 22
  {  1,   1, 1,  1, 0, 0,   63,127,267,0 },
  {  0,   1, 1,  1, 0, 0,   63,127,267,0 },
  {  1,   1, 1,  1, 0, 0,   63,127,267,0 },
  // Latch
  {  0,   1, 0,  0, 1, 1,   63,127,267,1023 }, // 26
  {  0,   1, 0,  1, 1, 1,   63,127,267,1023 },    
  // Clear and save 0 to all
  {  0,   0, 0,  1, 0, 0,   63,127,267,1023 }, // 28
  {  1,   0, 0,  1, 0, 0,   63,127,267,1023 },
  {  0,   0, 0,  0, 0, 0,   0,127,267,1023 },
  {  1,   0, 0,  1, 0, 0,   0,127,267,1023 },
  {  0,   0, 0,  0, 1, 0,   0,0,267,1023 },
  {  1,   0, 0,  1, 1, 0,   0,0,267,1023 },
  {  0,   0, 0,  0, 0, 1,   0,0,0,1023 },
  {  1,   0, 0,  1, 0, 1,   0,0,0,1023 },
  {  0,   0, 0,  0, 1, 1,   0,0,0,0 },
  {  1,   0, 0,  1, 1, 1,   0,0,0,0 },
};

/**
 * Serial data data.
 */
const long baudRate = 250000;
char serialPortFormat[100];
char serialPortArgument[50];
char serialPortMessage[255];

/**
 * Setup
 * Put your setup code here, to run once.
 */
void setup() {

  // Disable all interrupts.
  noInterrupts();

  // Opens serial port.
  Serial.begin(baudRate);  

  // Outputs to circuit under test.
  pinMode(data_shift_in, OUTPUT);
  pinMode(clk_shift_in, OUTPUT);
  pinMode(shift_reset_in, OUTPUT);
  pinMode(latch_write_in, OUTPUT);
  pinMode(latch_a0_in, OUTPUT);
  pinMode(latch_a1_in, OUTPUT);

  // Read from analog.
  analogReference(DEFAULT);
  analogRead(analog_0_out);
  analogRead(analog_1_out);
  analogRead(analog_2_out);
  analogRead(analog_3_out);

  // Configure timers.
  Timer1.Initialize();
  Timer1.AttachInterrupt(OnClockPulse);
  Timer1.SetFrequency(1);
  Timer1.Start();  

  // Start at idle.
  ExecuteTestStep();
  Serial.println("g to go, s to stop, r to reset, + to go forward, - to go back");

  // Enable all interrupts.
  interrupts();  
}

/**
 * Loop
 * Put your main code here, to run repeatedly.
 */
void loop() {

  // Check serial port.
  if (Serial.available() > 0) {
    HandleReceivedChar(Serial.read());
  }  

}

/**
 * Timer 1 callback.
 * This code runs for each flip of the clock bit.
 */
void OnClockPulse(void) {

  // Step the test
  if (runTest > 0) {
    currentTestStep++;
    ExecuteTestStep();
  }
}

/**
 * EWxecute a test step
 */
void ExecuteTestStep() {

  // If max, reset to idle.
  if (currentTestStep >= testStepCount) {
    currentTestStep = 0;
    runTest = 0;
  }

  // Send result, update clocks last.
  digitalWrite(shift_reset_in, testSteps[currentTestStep].shift_reset_in_value);
  digitalWrite(data_shift_in, testSteps[currentTestStep].data_shift_in_value);
  digitalWrite(clk_shift_in, testSteps[currentTestStep].clk_shift_in_value);

  digitalWrite(latch_a0_in, testSteps[currentTestStep].latch_a0_in_value);
  digitalWrite(latch_a1_in, testSteps[currentTestStep].latch_a1_in_value);
  digitalWrite(latch_write_in, testSteps[currentTestStep].latch_write_in_value);

  sprintf(serialPortMessage, "step %d: clk_shift_in=%d, shift_reset_in=%d, data_shift_in=%d, latch_write_in=%d, latch_a0_in=%d, latch_a1_in=%d", 
    currentTestStep, 
    testSteps[currentTestStep].clk_shift_in_value,
    testSteps[currentTestStep].shift_reset_in_value,
    testSteps[currentTestStep].data_shift_in_value,
    testSteps[currentTestStep].latch_write_in_value,
    testSteps[currentTestStep].latch_a0_in_value,
    testSteps[currentTestStep].latch_a1_in_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  sprintf(serialPortMessage, "expect: analog_0_out=%04d, analog_1_out=%04d, analog_2_out=%04d, analog_3_out=%04d",
    testSteps[currentTestStep].analog_0_out_value,
    testSteps[currentTestStep].analog_1_out_value,
    testSteps[currentTestStep].analog_2_out_value,
    testSteps[currentTestStep].analog_3_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: analog_0_out=%04d, analog_1_out=%04d, analog_2_out=%04d, analog_3_out=%04d",
    analogRead(analog_0_out),
    analogRead(analog_1_out),
    analogRead(analog_2_out),
    analogRead(analog_3_out));
    
  Serial.println(serialPortMessage);

  int analog0_Error = abs(testSteps[currentTestStep].analog_0_out_value - analogRead(analog_0_out));
  int analog1_Error = abs(testSteps[currentTestStep].analog_1_out_value - analogRead(analog_1_out));
  int analog2_Error = abs(testSteps[currentTestStep].analog_2_out_value - analogRead(analog_2_out));
  int analog3_Error = abs(testSteps[currentTestStep].analog_3_out_value - analogRead(analog_3_out));

  sprintf(serialPortMessage, "errors:               %c                %c                %c                %c",
    analog0_Error > 128 ? 'x' : ' ',
    analog1_Error > 128 ? 'x' : ' ',
    analog2_Error > 128 ? 'x' : ' ',
    analog3_Error > 128 ? 'x' : ' ');
  Serial.println(serialPortMessage);
}


/**
 * Handle a received character.
 */
int HandleReceivedChar(char receivedChar) {
  switch (receivedChar) {
    case 'g':
      runTest = 1;
      break;

    case 's':
      runTest = 0;
      break;

    case 'r':
      runTest = 0;
      currentTestStep = 0;
      ExecuteTestStep();
      break;

    case '-':
      if (currentTestStep > 0) {
        currentTestStep--;
      }
      ExecuteTestStep();
      break;

    case '+':
      if (currentTestStep >= testStepCount) {
        currentTestStep = 0;
      } else {
        currentTestStep++;
      }
      ExecuteTestStep();
      break;
      
    case '?':
      Serial.println("g to go, s to stop, r to reset, + to go forward, - to go back");

    default:
      break;
  }
}
