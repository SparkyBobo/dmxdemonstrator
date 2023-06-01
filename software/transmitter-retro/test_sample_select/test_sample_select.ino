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
const byte clk_sample_in = 2;
const byte sample_reset_in = 3;
const byte sample_override_in = 5;
const byte count_enable_out = 7;
const byte count_disable_out = 8;
const byte sample_count_in = 9;
const byte sample_sel0_in = 10;
const byte sample_sel1_in = 11;
const byte data_0_in = A0;
const byte data_1_in = A1;
const byte data_2_in = A2;
const byte data_3_in = A3;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount = 40;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  char clk_sample_in_value;
  char sample_count_in_value;
  char sample_reset_in_value;
  char sample_override_in_value;
  char sample_sel0_in_value;
  char sample_sel1_in_value;
  char data_in_0_value;
  char data_in_1_value;
  char data_in_2_value;
  char data_in_3_value;
  char count_enable_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no count output
  {  0,   0, 0, 1, 1, 1,   1, 1, 1, 0,   0 }, // 0
  {  1,   0, 1, 1, 1, 1,   1, 1, 1, 0,   0 },
  {  0,   0, 1, 1, 1, 1,   1, 1, 1, 0,   0 },
  {  1,   0, 1, 1, 1, 1,   1, 1, 1, 0,   0 },
  // Count a bit, channel 0 (in0 = 1)
  {  0,   0, 1, 1, 0, 0,   1, 0, 0, 0,   1 }, // 4
  {  1,   0, 1, 1, 0, 0,   1, 0, 0, 0,   1 },
  {  0,   0, 1, 1, 0, 0,   1, 0, 0, 0,   1 },
  {  1,   0, 1, 1, 0, 0,   1, 0, 0, 0,   1 },
  // Reset
  {  0,   0, 0, 0, 1, 1,   1, 0, 0, 0,   0 }, // 8
  {  1,   0, 0, 0, 1, 1,   1, 0, 0, 0,   0 },     
  // Count a bit, channel 1 (in1 = 0)
  {  0,   0, 1, 1, 1, 0,   0, 1, 0, 0,   1 }, // 10
  {  1,   0, 1, 1, 1, 0,   0, 1, 0, 0,   1 },
  {  0,   0, 1, 1, 1, 0,   0, 1, 0, 0,   1 },
  {  1,   0, 1, 1, 1, 0,   0, 1, 0, 0,   1 },
  // Reset
  {  0,   0, 0, 0, 1, 1,   0, 1, 0, 0,   0 }, // 14
  {  1,   0, 0, 0, 1, 1,   0, 1, 0, 0,   0 },     
  // Count a bit, channel 2 (in2 = 0)
  {  0,   0, 1, 1, 0, 1,   0, 0, 1, 0,   1 }, // 16
  {  1,   0, 1, 1, 0, 1,   0, 0, 1, 0,   1 },
  {  0,   0, 1, 1, 0, 1,   0, 0, 1, 0,   1 },
  {  1,   0, 1, 1, 0, 1,   0, 0, 1, 0,   1 },
  // Reset
  {  0,   0, 0, 0, 1, 1,   0, 0, 1, 0,   0 }, // 20
  {  1,   0, 0, 0, 1, 1,   0, 0, 1, 0,   0 },     
  // Count a bit, channel 3 (in3 = 0)
  {  0,   0, 1, 1, 1, 1,   0, 0, 0, 1,   1 }, // 22
  {  1,   0, 1, 1, 1, 1,   0, 0, 0, 1,   1 },
  {  0,   0, 1, 1, 1, 1,   0, 0, 0, 1,   1 },
  {  1,   0, 1, 1, 1, 1,   0, 0, 0, 1,   1 },
  // Reset
  {  0,   0, 0, 0, 1, 1,   0, 0, 0, 0,   0 }, // 26
  {  1,   0, 0, 0, 1, 1,   0, 0, 0, 0,   0 },     
  // Count a bit, channel 4 ensure it overrides sel0,sel1
  {  0,   1, 1, 0, 0, 0,   0, 0, 0, 0,   1 }, // 28
  {  1,   1, 1, 0, 0, 1,   0, 0, 0, 0,   1 },
  {  0,   1, 1, 0, 1, 0,   0, 0, 0, 0,   1 },
  {  1,   1, 1, 0, 1, 1,   0, 0, 0, 0,   1 },
  // Reset
  {  0,   0, 0, 0, 1, 1,   0, 0, 0, 0,   0 }, // 32
  {  1,   0, 0, 0, 1, 1,   0, 0, 0, 0,   0 },     
  // Count a bit, channel 4 ensure it overrides sel0,sel1
  {  0,   0, 1, 0, 0, 0,   1, 1, 1, 1,   0 }, // 34
  {  1,   0, 1, 0, 0, 1,   1, 1, 1, 1,   0 },
  {  0,   0, 1, 0, 1, 0,   1, 1, 1, 1,   0 },
  {  1,   0, 1, 0, 1, 1,   1, 1, 1, 1,   0 },
  // Reset
  {  0,   0, 0, 0, 1, 1,   0, 0, 0, 0,   0 }, // 38
  {  1,   0, 0, 0, 1, 1,   0, 0, 0, 0,   0 },     
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
  pinMode(sample_sel0_in, OUTPUT);
  pinMode(sample_sel1_in, OUTPUT);
  pinMode(sample_reset_in, OUTPUT);
  pinMode(sample_override_in, OUTPUT);
  pinMode(data_0_in, OUTPUT);
  pinMode(data_1_in, OUTPUT);
  pinMode(data_2_in, OUTPUT);
  pinMode(data_3_in, OUTPUT);

  // Inputs from circuit under test
  pinMode(count_enable_out, INPUT);

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
  digitalWrite(sample_override_in, testSteps[currentTestStep].sample_override_in_value);
  digitalWrite(sample_sel0_in, testSteps[currentTestStep].sample_sel0_in_value);
  digitalWrite(sample_sel1_in, testSteps[currentTestStep].sample_sel1_in_value);
  digitalWrite(data_0_in, testSteps[currentTestStep].data_in_0_value),
  digitalWrite(data_1_in, testSteps[currentTestStep].data_in_1_value),
  digitalWrite(data_2_in, testSteps[currentTestStep].data_in_2_value),
  digitalWrite(data_3_in, testSteps[currentTestStep].data_in_3_value),
  digitalWrite(clk_sample_in, testSteps[currentTestStep].clk_sample_in_value);

  sprintf(serialPortMessage, "step %d: clk_sample_in=%d, sample_count_in=%d, sample_reset_in=%d, sample_override_in=%d, sample_sel0_in=%d, sample_sel1_in=%d, in_0=%d, in_1=%d, in_2=%d, in_3=%d", 
    currentTestStep, 
    testSteps[currentTestStep].clk_sample_in_value,
    testSteps[currentTestStep].sample_count_in_value,
    testSteps[currentTestStep].sample_reset_in_value,
    testSteps[currentTestStep].sample_override_in_value,
    testSteps[currentTestStep].sample_sel0_in_value,
    testSteps[currentTestStep].sample_sel1_in_value,
    testSteps[currentTestStep].data_in_0_value,
    testSteps[currentTestStep].data_in_1_value,
    testSteps[currentTestStep].data_in_2_value,
    testSteps[currentTestStep].data_in_3_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  sprintf(serialPortMessage, "expect: count_enable_out=%d", 
    testSteps[currentTestStep].count_enable_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: count_enable_out=%d",
    digitalRead(count_enable_out));
    
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "errors:                  %c",
    testSteps[currentTestStep].count_enable_out_value != digitalRead(count_enable_out) ? 'x' : ' ');
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
