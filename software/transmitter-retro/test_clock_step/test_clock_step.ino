/**
 * DMX Demonstrator Transmitter Retro - Clock Step Test
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
const byte shift_load_in = 2;
const byte clk_tx_in = 3;
const byte shift_enable_in = 4;
const byte shift_transitmit_in = 5;
const byte data_fixed_in = 6;
const byte data_0_in = 7;
const byte data_1_in = 8;
const byte data_2_in = A0;
const byte data_3_in = A1;
const byte data_4_in = A2;
const byte data_5_in = A3;
const byte data_6_in = A4;
const byte data_7_in = A5;
const byte data_shift_out = 9;
const byte data_fixed_out = 10;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount = 42;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  char clk_tx_in_value;
  char shift_load_in_value;
  char shift_enable_in_value;
  char shift_transitmit_in_value;
  char data_shift_in0_value;
  char data_shift_in1_value;
  char data_shift_in2_value;
  char data_shift_in3_value;
  char data_shift_in4_value;
  char data_shift_in5_value;
  char data_shift_in6_value;
  char data_shift_in7_value;
  char data_fixed_in_value;
  char data_fixed_out_value;
  char data_shift_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no clock step output
  {  0,   1, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 }, // 0
  {  1,   1, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  {  0,   1, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  {  1,   1, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  // Fixed data
  {  0,   1, 1, 0,   0,1,0,1,0,1,0,1,   1,    1, 0 }, // 4
  {  1,   1, 1, 0,   0,1,0,1,0,1,0,1,   1,    1, 0 },
  {  0,   1, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  {  1,   1, 1, 0,   0,1,0,1,0,1,0,1,   1,    1, 0 },
  // Shift data - load
  {  0,   0, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 }, // 8
  {  1,   1, 1, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },     
  // Shift data - shift not sent.
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 }, // 10
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },     
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },     
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },     
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },     
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },     
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },     
  {  0,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 0 },
  {  1,   1, 0, 0,   0,1,0,1,0,1,0,1,   0,    0, 1 },     
  // Shift data - load
  {  0,   0, 1, 0,   0,1,1,0,1,1,1,0,   0,    0, 0 }, // 24
  {  1,   1, 1, 0,   0,1,1,0,1,1,1,0,   0,    0, 0 },     
  // Shift data - shift sent.
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    0, 0 }, // 26
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },     
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },     
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    0, 0 },     
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    0, 0 },
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },     
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },     
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },     
  {  0,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    1, 1 },
  {  1,   1, 0, 1,   0,1,1,0,1,1,1,0,   0,    0, 0 },     
  // Shift data - load
  {  0,   0, 1, 0,   1,0,1,0,1,0,1,0,   0,    0, 1 }, // 40
  {  1,   1, 1, 0,   0,0,1,0,1,0,1,0,   0,    0, 0 },     
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
  pinMode(shift_load_in, OUTPUT);
  pinMode(clk_tx_in, OUTPUT);
  pinMode(shift_enable_in, OUTPUT);
  pinMode(shift_transitmit_in, OUTPUT);
  pinMode(data_fixed_in, OUTPUT);
  pinMode(data_0_in, OUTPUT);
  pinMode(data_1_in, OUTPUT);
  pinMode(data_2_in, OUTPUT);
  pinMode(data_3_in, OUTPUT);
  pinMode(data_4_in, OUTPUT);
  pinMode(data_5_in, OUTPUT);
  pinMode(data_6_in, OUTPUT);
  pinMode(data_7_in, OUTPUT);

  // Inputs from circuit under test
  pinMode(data_shift_out, INPUT);
  pinMode(data_fixed_out, INPUT);

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
  digitalWrite(shift_load_in, testSteps[currentTestStep].shift_load_in_value);
  digitalWrite(shift_enable_in, testSteps[currentTestStep].shift_enable_in_value);
  digitalWrite(shift_transitmit_in, testSteps[currentTestStep].shift_transitmit_in_value);
  digitalWrite(data_fixed_in, testSteps[currentTestStep].data_fixed_in_value);
  digitalWrite(data_0_in, testSteps[currentTestStep].data_shift_in0_value);
  digitalWrite(data_1_in, testSteps[currentTestStep].data_shift_in1_value);
  digitalWrite(data_2_in, testSteps[currentTestStep].data_shift_in2_value);
  digitalWrite(data_3_in, testSteps[currentTestStep].data_shift_in3_value);
  digitalWrite(data_4_in, testSteps[currentTestStep].data_shift_in4_value);
  digitalWrite(data_5_in, testSteps[currentTestStep].data_shift_in5_value);
  digitalWrite(data_6_in, testSteps[currentTestStep].data_shift_in6_value);
  digitalWrite(data_7_in, testSteps[currentTestStep].data_shift_in7_value);
  digitalWrite(clk_tx_in, testSteps[currentTestStep].clk_tx_in_value);

  sprintf(serialPortMessage, "step %d: clk_tx_in=%d, shift_load_in=%d, shift_enable_in_transitmit_in=%d, shift_transitmit_in=%d, data_fixed_in=%d, d0=%d, d1=%d, d2=%d, d3=%d, d4=%d, d5=%d, d6=%d, d7=%d", 
    currentTestStep, 
    testSteps[currentTestStep].clk_tx_in_value,
    testSteps[currentTestStep].shift_load_in_value,
    testSteps[currentTestStep].shift_enable_in_value,
    testSteps[currentTestStep].shift_transitmit_in_value,
    testSteps[currentTestStep].data_fixed_in_value,
    testSteps[currentTestStep].data_shift_in0_value,
    testSteps[currentTestStep].data_shift_in1_value,
    testSteps[currentTestStep].data_shift_in2_value,
    testSteps[currentTestStep].data_shift_in3_value,
    testSteps[currentTestStep].data_shift_in4_value,
    testSteps[currentTestStep].data_shift_in5_value,
    testSteps[currentTestStep].data_shift_in6_value,
    testSteps[currentTestStep].data_shift_in7_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  sprintf(serialPortMessage, "expect: data_shift_out=%d, data_fixed_out=%d", 
    testSteps[currentTestStep].data_shift_out_value,
    testSteps[currentTestStep].data_fixed_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: data_shift_out=%d, data_fixed_out=%d", 
    digitalRead(data_shift_out),
    digitalRead(data_fixed_out));
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "errors:                %c                %c", 
    testSteps[currentTestStep].data_shift_out_value != digitalRead(data_shift_out) ? 'x' : ' ',
    testSteps[currentTestStep].data_fixed_out_value != digitalRead(data_fixed_out) ? 'x' : ' ');
    
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
