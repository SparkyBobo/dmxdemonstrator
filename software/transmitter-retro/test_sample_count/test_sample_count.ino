/**
 * DMX Demonstrator Transmitter Retro - Sample Count Test
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
const byte data_0_out = A0;
const byte data_1_out = A1;
const byte data_2_out = A2;
const byte data_3_out = A3;
const byte data_4_out = A4;
const byte data_5_out = A5;
const byte data_6_out = 12;
const byte data_7_out = 13;

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
  char data_out_0_value;
  char data_out_1_value;
  char data_out_2_value;
  char data_out_3_value;
  char data_out_4_value;
  char data_out_5_value;
  char data_out_6_value;
  char data_out_7_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no count output
  {  0,   0, 0,   0, 1,   0,0,0,0,0,0,0,0 }, // 0
  {  1,   0, 0,   0, 1,   0,0,0,0,0,0,0,0 },
  {  0,   0, 1,   0, 1,   0,0,0,0,0,0,0,0 },
  {  1,   0, 1,   0, 1,   0,0,0,0,0,0,0,0 },
  // Count a bit, channel 0 (in0 = 1)
  {  0,   1, 1,   1, 1,   0,0,0,0,0,0,0,0 }, // 4
  {  1,   1, 1,   1, 1,   1,0,0,0,0,0,0,0 },
  {  0,   1, 1,   1, 1,   1,0,0,0,0,0,0,0 },
  {  1,   1, 1,   1, 1,   0,1,0,0,0,0,0,0 },
  // Reset
  {  0,   0, 0,   0, 1,   0,1,0,0,0,0,0,0 }, // 8
  {  1,   0, 0,   0, 1,   0,0,0,0,0,0,0,0 },     
  // Count a to 15, 31, 63, 127, 255 
  {  15,  1, 1,   1, 1,   1,1,1,1,0,0,0,0 }, // 10
  {  16,  1, 1,   1, 1,   1,1,1,1,1,0,0,0 },
  {  32,  1, 1,   1, 1,   1,1,1,1,1,1,0,0 },
  {  64,  1, 1,   1, 1,   1,1,1,1,1,1,1,0 },
  {  128, 1, 1,   1, 0,   1,1,1,1,1,1,1,1 },
  // Stop counting 
  {  0,   1, 1,   1, 0,   1,1,1,1,1,1,1,1 }, // 15
  {  1,   1, 1,   1, 0,   1,1,1,1,1,1,1,1 },
  {  15,  1, 1,   1, 0,   1,1,1,1,1,1,1,1 },
  {  64,  1, 1,   1, 0,   1,1,1,1,1,1,1,1 },
  // Reset
  {  0,   0, 0,   0, 1,   1,1,1,1,1,1,1,1 }, // 19
  {  1,   0, 0,   0, 1,   0,0,0,0,0,0,0,0 },     
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
  pinMode(data_0_out, INPUT);
  pinMode(data_1_out, INPUT);
  pinMode(data_2_out, INPUT);
  pinMode(data_3_out, INPUT);
  pinMode(data_4_out, INPUT);
  pinMode(data_5_out, INPUT);
  pinMode(data_6_out, INPUT);
  pinMode(data_7_out, INPUT);
  pinMode(count_enable_out, INPUT);
  pinMode(count_disable_out, INPUT);

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
  sprintf(serialPortMessage, "expect: d0=%d, d1=%d, d2=%d, d3=%d, d4=%d, d5=%d, d6=%d, d7=%d, count_enable_out=%d, count_disable_out=%d", 
    testSteps[currentTestStep].data_out_0_value,
    testSteps[currentTestStep].data_out_1_value,
    testSteps[currentTestStep].data_out_2_value,
    testSteps[currentTestStep].data_out_3_value,
    testSteps[currentTestStep].data_out_4_value,
    testSteps[currentTestStep].data_out_5_value,
    testSteps[currentTestStep].data_out_6_value,
    testSteps[currentTestStep].data_out_7_value,
    testSteps[currentTestStep].count_enable_out_value,
    testSteps[currentTestStep].count_disable_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: d0=%d, d1=%d, d2=%d, d3=%d, d4=%d, d5=%d, d6=%d, d7=%d, count_enable_out=%d, count_disable_out=%d",
    digitalRead(data_0_out),
    digitalRead(data_1_out),
    digitalRead(data_2_out),
    digitalRead(data_3_out),
    digitalRead(data_4_out),
    digitalRead(data_5_out),
    digitalRead(data_6_out),
    digitalRead(data_7_out),
    digitalRead(count_enable_out),
    digitalRead(count_disable_out));
    
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "errors:    %c     %c     %c     %c     %c     %c     %c     %c                   %c                    %c",
    testSteps[currentTestStep].data_out_0_value != digitalRead(data_0_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_1_value != digitalRead(data_1_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_2_value != digitalRead(data_2_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_3_value != digitalRead(data_3_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_4_value != digitalRead(data_4_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_5_value != digitalRead(data_5_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_6_value != digitalRead(data_6_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_out_7_value != digitalRead(data_7_out) ? 'x' : ' ',
    testSteps[currentTestStep].count_enable_out_value != digitalRead(count_enable_out) ? 'x' : ' ',
    testSteps[currentTestStep].count_disable_out_value != digitalRead(count_disable_out) ? 'x' : ' ');
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
