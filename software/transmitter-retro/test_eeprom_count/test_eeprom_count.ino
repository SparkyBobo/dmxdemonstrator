/**
 * DMX Demonstrator Transmitter Retro - EEPROM Count Test
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
const byte addr_0_out = 2;
const byte addr_1_out = 3;
const byte addr_2_out = 4;
const byte addr_3_out = 5;
const byte addr_4_out = 6;
const byte addr_5_out = 7;
const byte addr_6_out = 8;
const byte addr_7_out = 9;
const byte addr_8_out = 10;
const byte addr_9_out = 11;
const byte addr_10_out = 12;
const byte addr_11_out = 13;
const byte addr_12_out = A0;
const byte reset_in = A1;
const byte reset_out = A2;
const byte clk_tx_in = A3;

// Test data
int runTest = 0;
int currentTestStep = 0;
int testStepCount = 28;

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  int clk_tx_in_value;
  char reset_in_value;
  char reset_out_value;
  int addr_out_value;
  int data_out_value;
} TestStep;

const TestStep testSteps[] = {
   // Idle, no count output
  {  0,   0, 0,   0, 0 }, // 0
  {  1,   0, 0,   0, 0 },
  {  0,   0, 0,   0, 0 },
  {  1,   0, 0,   0, 0 },
  // Count a bit, channel 0 (in0 = 1)
  {  0,   1, 0,   0, 0 }, // 4
  {  1,   1, 1,   1, 0 },
  {  0,   1, 1,   1, 0 },
  {  1,   1, 1,   2, 1 },
  // Reset
  {  0,   0, 1,   2, 1 }, // 8
  {  1,   0, 0,   0, 2 },     
  {  0,   0, 0,   0, 2 },     
  {  1,   0, 0,   0, 0 },     
  // Count a to 15, 31, 63, 127, 255 
  {  15,  1, 1,   15, 14 }, // 12
  {  16,  1, 1,   31, 30 },
  {  32,  1, 1,   63, 62 },
  {  64,  1, 1,   127, 126 },
  {  128, 1, 1,   255, 254 },
  {  256, 1, 1,   511, 510 },
  {  512, 1, 1,   1023, 1022 },
  { 1024, 1, 1,   2047, 2046 },
  { 2048, 1, 1,   4095, 4094 },
  { 4096, 1, 1,   8191, 8190 },
  // Rollover 
  {  0,   1, 1,   8191, 8190 }, // 22
  {  1,   1, 1,   0, 255   },
  // Reset
  {  0,   0, 0,   0, 255 }, // 24
  {  1,   0, 0,   0, 0 },     
  {  0,   0, 0,   0, 0 },
  {  1,   0, 0,   0, 0 },     
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
  pinMode(clk_tx_in, OUTPUT);
  pinMode(reset_in, OUTPUT);

  // Inputs from circuit under test
  pinMode(addr_0_out, INPUT);
  pinMode(addr_1_out, INPUT);
  pinMode(addr_2_out, INPUT);
  pinMode(addr_3_out, INPUT);
  pinMode(addr_4_out, INPUT);
  pinMode(addr_5_out, INPUT);
  pinMode(addr_6_out, INPUT);
  pinMode(addr_7_out, INPUT);
  pinMode(addr_8_out, INPUT);
  pinMode(addr_9_out, INPUT);
  pinMode(addr_10_out, INPUT);
  pinMode(addr_11_out, INPUT);
  pinMode(addr_12_out, INPUT);
  pinMode(reset_out, INPUT);

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
  digitalWrite(reset_in, testSteps[currentTestStep].reset_in_value);

  // If 0 or 1, set clock. If > 1, toggle clock that many times.
  if (testSteps[currentTestStep].clk_tx_in_value > 1) {
      for (int i = 0; i < testSteps[currentTestStep].clk_tx_in_value; i++) {
        digitalWrite(clk_tx_in, 0);
        delayMicroseconds(50);
        digitalWrite(clk_tx_in, 1);
      }
  } else {
    digitalWrite(clk_tx_in, testSteps[currentTestStep].clk_tx_in_value);
  }

  sprintf(serialPortMessage, "step %d: clk_tx_in=%d, reset_in=%d", 
    currentTestStep, 
    testSteps[currentTestStep].clk_tx_in_value,
    testSteps[currentTestStep].reset_in_value);
  Serial.println();
  Serial.println(serialPortMessage);

  // Read result.
  
  sprintf(serialPortMessage, "expect: addr=%.4d, data=%.4d", 
    testSteps[currentTestStep].addr_out_value,
    testSteps[currentTestStep].data_out_value);
  Serial.println(serialPortMessage);

  int address = 
    (digitalRead(addr_0_out) * 1) +
    (digitalRead(addr_1_out) * 2) +
    (digitalRead(addr_2_out) * 4) +
    (digitalRead(addr_3_out) * 8) +
    (digitalRead(addr_4_out) * 16) +
    (digitalRead(addr_5_out) * 32) +
    (digitalRead(addr_6_out) * 64) +
    (digitalRead(addr_7_out) * 128) +
    (digitalRead(addr_8_out) * 256) +
    (digitalRead(addr_9_out) * 512) +
    (digitalRead(addr_10_out) * 1024) +
    (digitalRead(addr_11_out) * 2048) +
    (digitalRead(addr_12_out) * 4096);

  sprintf(serialPortMessage, "actual: addr=%.4d, data=%.4d",
    address,
    address);
    
  Serial.println(serialPortMessage);

  char error = testSteps[currentTestStep].addr_out_value != address && testSteps[currentTestStep].data_out_value != address;
  sprintf(serialPortMessage, "errors:    %c         %c",
    error ? 'x' : ' ',  
    error ? 'x' : ' ');
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
