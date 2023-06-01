/**
 * DMX Demonstrator Transmitter Retro - Clock select Test
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
const byte clk_fast_in = 2;
const byte clk_slow_in = 3;
const byte clk_fast_out = 4;
const byte clk_s1_out = 5;
const byte clk_s0_out = 6;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount = 30;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  char clk_fast_out_value;
  char clk_fast_in_value;
  char clk_slow_in_value;
  char clk_s1_out_value;
  char clk_s0_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no clock step output
  {  0,  1, 1,   1, 1 }, // 0
  {  1,  1, 1,   1, 1 },
  {  0,  1, 1,   1, 1 },
  {  1,  1, 1,   1, 1 },
  {  0,  1, 1,   1, 1 },
  {  1,  1, 1,   1, 1 },
  // Select fast
  {  0,  0, 1,   1, 1 }, // 6
  {  1,  0, 1,   0, 1 },
  {  0,  0, 1,   0, 1 },
  {  1,  0, 1,   0, 1 },
  {  0,  0, 1,   0, 1 },
  {  1,  1, 1,   1, 1 },
  // Select slow
  {  0,  1, 0,   1, 1 }, // 12
  {  1,  1, 0,   1, 0 },
  {  0,  1, 0,   1, 0 },
  {  1,  1, 0,   1, 0 },
  {  0,  1, 0,   1, 0 },
  {  1,  1, 1,   1, 1 },
  // Select off
  {  0,  0, 0,   1, 1 }, // 18
  {  1,  0, 0,   0, 0 },
  {  0,  0, 0,   0, 0 },
  {  1,  0, 0,   0, 0 },
  {  0,  0, 0,   0, 0 },
  {  1,  1, 1,   1, 1 },
  // Select step
  {  0,  1, 1,   1, 1 }, // 24
  {  1,  1, 1,   1, 1 },       
  {  0,  1, 1,   1, 1 },
  {  1,  1, 1,   1, 1 },
  {  0,  1, 1,   1, 1 },
  {  1,  1, 1,   1, 1 },
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
  // clk_fast_out is actually an input for the test
  pinMode(clk_fast_in, OUTPUT);
  pinMode(clk_slow_in, OUTPUT);
  pinMode(clk_fast_out, OUTPUT);

  // Inputs from circuit under test
  pinMode(clk_s1_out, INPUT);
  pinMode(clk_s0_out, INPUT);

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
  digitalWrite(clk_fast_in, testSteps[currentTestStep].clk_fast_in_value);
  digitalWrite(clk_slow_in, testSteps[currentTestStep].clk_slow_in_value);
  digitalWrite(clk_fast_out, testSteps[currentTestStep].clk_fast_out_value);
  
  sprintf(serialPortMessage, "step %d: clk_fast_in=%d, clk_slow_in=%d, clk_fast_out=%d", 
    currentTestStep, 
    testSteps[currentTestStep].clk_fast_in_value, 
    testSteps[currentTestStep].clk_slow_in_value, 
    testSteps[currentTestStep].clk_fast_out_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  sprintf(serialPortMessage, "expect: clk_s1_out=%d, clk_s0_out=%d", 
    testSteps[currentTestStep].clk_s1_out_value,
    testSteps[currentTestStep].clk_s0_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: clk_s1_out=%d, clk_s0_out=%d", 
    digitalRead(clk_s1_out),
    digitalRead(clk_s0_out));
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "errors:            %c             %c", 
    testSteps[currentTestStep].clk_s1_out_value != digitalRead(clk_s1_out) ? 'x' : ' ',
    testSteps[currentTestStep].clk_s0_out_value != digitalRead(clk_s0_out) ? 'x' : ' ');
    
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
