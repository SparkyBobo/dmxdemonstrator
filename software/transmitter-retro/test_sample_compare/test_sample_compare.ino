/**
 * DMX Demonstrator Transmitter Retro - Sample Compare Test
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
// Remove U3, connect 9 to 7 (sample_count_out -> count_enable_out)
const byte clk_sample_in = 2;
const byte sample_reset_in = 3;
const byte count_enable_out = 7;
const byte count_disable_out = 8;
const byte sample_count_in = 9;
const byte ref_ramp_out = A0;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount = 21;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  int clk_sample_in_value;
  char sample_count_in_value;
  char sample_reset_in_value;
  char count_enable_out_value;
  char count_disable_out_value;
  int ref_ramp_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no count output
  {  0,   0, 0,   0, 1,   0 }, // 0
  {  1,   0, 0,   0, 1,   0 },
  {  0,   0, 1,   0, 1,   0 },
  {  1,   0, 1,   0, 1,   0 },
  // Count a bit, channel 0 (in0 = 1)
  {  0,   1, 1,   1, 1,   0 }, // 4
  {  1,   1, 1,   1, 1,   1 },
  {  0,   1, 1,   1, 1,   1 },
  {  1,   1, 1,   1, 1,   0 },
  // Reset
  {  0,   0, 0,   0, 1,   0 }, // 8
  {  1,   0, 0,   0, 1,   0 },     
  // Count a to 15, 31, 63, 127, 255 
  {  15,  1, 1,   1, 1,   1 }, // 10
  {  16,  1, 1,   1, 1,   1 },
  {  32,  1, 1,   1, 1,   1 },
  {  64,  1, 1,   1, 1,   1 },
  {  128, 1, 1,   1, 0,   1024 },
  // Stop counting 
  {  0,   1, 1,   1, 0,   1024 }, // 15
  {  1,   1, 1,   1, 0,   1024 },
  {  15,  1, 1,   1, 0,   1024 },
  {  64,  1, 1,   1, 0,   1024 },
  // Reset
  {  0,   0, 0,   0, 1,   1024 }, // 19
  {  1,   0, 0,   0, 1,   0 },     
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
  pinMode(clk_sample_in, OUTPUT);
  pinMode(sample_count_in, OUTPUT);
  pinMode(sample_reset_in, OUTPUT);

  // Inputs from circuit under test
  pinMode(count_enable_out, INPUT);
  pinMode(count_disable_out, INPUT);

  // Read from analog.
  analogReference(DEFAULT);
  analogRead(ref_ramp_out);  // read the input pin

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
  digitalWrite(sample_count_in, testSteps[currentTestStep].sample_count_in_value);
  digitalWrite(sample_reset_in, testSteps[currentTestStep].sample_reset_in_value);

  // If 0 or 1, set clock. If > 1, toggle clock that many times.
  if (testSteps[currentTestStep].clk_sample_in_value > 1) {
      for (int i = 0; i < testSteps[currentTestStep].clk_sample_in_value; i++) {
        digitalWrite(clk_sample_in, 0);
        delayMicroseconds(50);
        digitalWrite(clk_sample_in, 1);
      }
  } else {
    digitalWrite(clk_sample_in, testSteps[currentTestStep].clk_sample_in_value);
  }

  sprintf(serialPortMessage, "step %d: clk_sample_in=%d, sample_count_in=%d, sample_reset_in=%d", 
    currentTestStep, 
    testSteps[currentTestStep].clk_sample_in_value,
    testSteps[currentTestStep].sample_count_in_value,
    testSteps[currentTestStep].sample_reset_in_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  sprintf(serialPortMessage, "expect: count_enable_out=%d, count_disable_out=%d, ref_ramp_out=%d", 
    testSteps[currentTestStep].count_enable_out_value,
    testSteps[currentTestStep].count_disable_out_value,
    testSteps[currentTestStep].ref_ramp_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: count_enable_out=%d, count_disable_out=%d, ref_ramp_out=%d", 
    digitalRead(count_enable_out),
    digitalRead(count_disable_out),
    analogRead(ref_ramp_out));
    
  Serial.println(serialPortMessage);

  int analogError = abs(testSteps[currentTestStep].ref_ramp_out_value - analogRead(ref_ramp_out));
  sprintf(serialPortMessage, "errors:                  %c                    %c               %c",
    testSteps[currentTestStep].count_enable_out_value != digitalRead(count_enable_out) ? 'x' : ' ',
    testSteps[currentTestStep].count_disable_out_value != digitalRead(count_disable_out) ? 'x' : ' ',
    analogError > 128 ? 'x' : ' ');
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
