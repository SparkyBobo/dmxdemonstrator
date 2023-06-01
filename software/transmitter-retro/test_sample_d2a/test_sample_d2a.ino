/**
 * DMX Demonstrator Transmitter Retro - Sample Compare D2A
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
const byte data0 = 2;
const byte data1 = 3;
const byte data2 = 4;
const byte data3 = 5;
const byte data4 = 6;
const byte data5 = 7;
const byte data6 = 8;
const byte data7 = 9;
const byte d2a_write = 10;

const byte analog_ref   = A0;
const byte analog_out   = A1;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount = 14;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  int data_value;
  int analog_ref_value;
  int analog_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Endpoints
  {    0,   512,    0 }, // 0
  {  255,   512, 1024 },
  {    0,   512,    0 },
  {    0,   512,    0 },
  // Sample various values
  {    0,   512,    0 }, // 4
  {    2,   512,    1 },
  {    4,   512,    9 },
  {    8,   512,    25 },
  {    16,   512,    64 },
  {    32,   512,    128 },
  {    64,   512,    256 },
  {    128,  512,    512 },
  {    255,  512,    1024 },
  // Reset
  {    0,   512,    0 }, // 13
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
  pinMode(data0, OUTPUT);
  pinMode(data1, OUTPUT);
  pinMode(data2, OUTPUT);
  pinMode(data3, OUTPUT);
  pinMode(data4, OUTPUT);
  pinMode(data5, OUTPUT);
  pinMode(data6, OUTPUT);
  pinMode(data7, OUTPUT);
  pinMode(d2a_write, OUTPUT);

  // Read from analog.
  analogReference(DEFAULT);
  analogRead(analog_ref);
  analogRead(analog_out);

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
  digitalWrite(d2a_write, 1);
  digitalWrite(data0, (testSteps[currentTestStep].data_value & 1) > 0);
  digitalWrite(data1, (testSteps[currentTestStep].data_value & 2) > 0);
  digitalWrite(data2, (testSteps[currentTestStep].data_value & 4) > 0);
  digitalWrite(data3, (testSteps[currentTestStep].data_value & 8) > 0);
  digitalWrite(data4, (testSteps[currentTestStep].data_value & 16) > 0);
  digitalWrite(data5, (testSteps[currentTestStep].data_value & 32) > 0);
  digitalWrite(data6, (testSteps[currentTestStep].data_value & 64) > 0);
  digitalWrite(data7, (testSteps[currentTestStep].data_value & 128) > 0);
  digitalWrite(d2a_write, 0);

  sprintf(serialPortMessage, "step %d: data_value=%d", 
    currentTestStep, 
    testSteps[currentTestStep].data_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  sprintf(serialPortMessage, "expect: analog_ref_value=%d, analog_out_value=%d", 
    testSteps[currentTestStep].analog_ref_value,
    testSteps[currentTestStep].analog_out_value);
  Serial.println(serialPortMessage);

  sprintf(serialPortMessage, "actual: analog_ref=%d, analog_out=%d", 
    analogRead(analog_ref),
    analogRead(analog_out));
    
  Serial.println(serialPortMessage);

  int refError = abs(testSteps[currentTestStep].analog_ref_value - analogRead(analog_ref));
  int outError = abs(testSteps[currentTestStep].analog_out_value - analogRead(analog_out));
  sprintf(serialPortMessage, "errors:            %c             %c",
    refError > 128 ? 'x' : ' ',
    outError > 128 ? 'x' : ' ');
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
