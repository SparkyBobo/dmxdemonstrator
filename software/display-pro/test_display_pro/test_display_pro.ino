/**
 * DMX Demonstrator Transmitter Retro - Display Por Test
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
const byte data_in = 8;
const byte clk_in = 9;
const byte data_out = 10;
const byte clk_out = 11;
const byte data_led_out = 12;
const byte clk_led_out = 13;
const byte data_pwr_out = A4;
const byte clk_pwr_out = A5;

// Test data
int runTest = 0;
int stepTest = 0;
int currentTestStep = 0;
int testError = 0;

// Test functions
enum test_function {
  TEST_ON = 0, // pin number
  TEST_OFF, // pin number
  TEST_RISING, // pin number
  TEST_FALLING, // pin number
  TEST_SHIFT, // data pin, clock pin, direction, value
  TEST_VERIFY_PIN = 101, // data pin, expected value
  TEST_VERIFY_ANALOG = 102, // analog pin, expected value
  TEST_PIN_MODE = 201, // pin, mode
  TEST_END = 255,
};

/**
 * A single step of the test.
 * Each step consists of "instructions" for what data to send, and the expected result
 */
typedef struct {
  int stepNumber;
  test_function testFunction;
  int p1;
  int p2;
  int p3;
  int p4;
} TestStep;

const TestStep testSteps[] = {
  // Init
  { 0, TEST_PIN_MODE, data_in, OUTPUT },
  { 0, TEST_PIN_MODE, clk_in, OUTPUT },
  { 0, TEST_PIN_MODE, data_out, INPUT },
  { 0, TEST_PIN_MODE, clk_out, INPUT },
  { 0, TEST_PIN_MODE, data_led_out, INPUT_PULLUP },
  { 0, TEST_PIN_MODE, clk_led_out, INPUT_PULLUP },
  { 0, TEST_VERIFY_ANALOG, data_pwr_out, -1 },
  { 0, TEST_VERIFY_ANALOG, clk_pwr_out, -1 },
  // Idle, no output
  { 1, TEST_OFF, data_in },
  { 1, TEST_OFF, clk_in },
  // Test Data
  { 2, TEST_ON, data_in },
  { 2, TEST_VERIFY_PIN, data_out, 1 },
  { 2, TEST_VERIFY_PIN, data_led_out, 0 },
  // Reset
  { 3, TEST_OFF, data_in },
  // Test Clock
  { 4, TEST_ON, clk_in },
  { 4, TEST_VERIFY_PIN, clk_out, 1 },
  { 4, TEST_VERIFY_PIN, clk_led_out, 0 },
  // Reset
  { 5, TEST_OFF, clk_in },
  // Verify led power
  { 6, TEST_VERIFY_ANALOG, data_pwr_out, 1023 },
  { 6, TEST_VERIFY_ANALOG, clk_pwr_out, 1023 },
  // Done
  { 7, TEST_END },
};

/**
 * Serial data data.
 */
const long baudRate = 250000;
char serialPortFormat[20];
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

  // Configure
  analogReference(DEFAULT);
  ExecuteTestStep(0);

  // Configure timers.
  Timer1.Initialize();
  Timer1.AttachInterrupt(OnClockPulse);
  Timer1.SetFrequency(1);
  Timer1.Start();  

  // Start at idle.
  ExecuteTestStep(1);
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
  if (runTest > 0 || stepTest > 0) {
    stepTest = 0;
    if (!ExecuteTestStep(++currentTestStep)) {
        runTest = 0;
        currentTestStep = 0;
        testError = 0;
    }
  }
}

/**
 * Execute a test step
 */
char ExecuteTestStep(int stepNumber) {

  // Start step.
  char foundStep = false;
  int testStepIndex = 0;
  while (testSteps[testStepIndex].testFunction != TEST_END)
  {
      // Execute steps      
      if (testSteps[testStepIndex].stepNumber == stepNumber)
      {
          foundStep = true;
          switch (testSteps[testStepIndex].testFunction) {
            case TEST_ON:
              // pin number
              digitalWrite(testSteps[testStepIndex].p1, 1);
              break;

            case TEST_OFF:
              // pin number
              digitalWrite(testSteps[testStepIndex].p1, 0);
              break;
            
            case  TEST_RISING:
              // pin number
              digitalWrite(testSteps[testStepIndex].p1, 1);
              break;
            
            case  TEST_FALLING:
              // pin number
              digitalWrite(testSteps[testStepIndex].p1, 0);
              break;
            
            case  TEST_SHIFT:
              // data pin, clock pin, direction, value
              shiftOut(testSteps[testStepIndex].p1, testSteps[testStepIndex].p2, testSteps[testStepIndex].p3, testSteps[testStepIndex].p4);
              break;

            case  TEST_PIN_MODE:
              // pin, mode
              pinMode(testSteps[testStepIndex].p1, testSteps[testStepIndex].p2);
              break;
              
            default:
              break;
          }
      }

      // Next
      testStepIndex++;
  }

  if (foundStep) {
    sprintf(serialPortMessage, "execute: step %02d...", stepNumber);
    Serial.println(serialPortMessage);  
  } else {
    sprintf(serialPortMessage, "test complete: %s", testError ? "fail" : "pass");
    Serial.println(serialPortMessage);  
  }

  // Cleanup step.
  testStepIndex = 0;
  while (testSteps[testStepIndex].testFunction != TEST_END)
  {
      // Execute steps      
      if (testSteps[testStepIndex].stepNumber == stepNumber)
      {
          switch (testSteps[testStepIndex].testFunction) {
            case  TEST_RISING:
              // pin number
              digitalWrite(testSteps[testStepIndex].p1, 0);
              break;

            case  TEST_FALLING:
              // pin number
              digitalWrite(testSteps[testStepIndex].p1, 1);
              break;

            default:
              break;
          }
      }

      // Next
      testStepIndex++;
  }

  // Verify step.
  int expectedValue = 0;
  int actualValue = 0;
  int stepError = 0;
  testStepIndex = 0;
  while (testSteps[testStepIndex].testFunction != TEST_END)
  {
      // Execute steps      
      if (testSteps[testStepIndex].stepNumber == stepNumber)
      {
          switch (testSteps[testStepIndex].testFunction) {
            case TEST_ON:
              // pin number
              sprintf(serialPortMessage, "  digitalMode(%02d=1) @ %d",
                testSteps[testStepIndex].p1,
                testStepIndex);
              Serial.println(serialPortMessage);
              break;

            case TEST_OFF:
              // pin number
              sprintf(serialPortMessage, "  digitalMode(%02d=0) @ %d",
                testSteps[testStepIndex].p1,
                testStepIndex);
              Serial.println(serialPortMessage);
              break;
            
            case  TEST_RISING:
              // pin number
              sprintf(serialPortMessage, "  digitalMode(%02d=1), digitalMode(%02d=0) @ %d",
                testSteps[testStepIndex].p1,
                testSteps[testStepIndex].p1,
                testStepIndex);
              Serial.println(serialPortMessage);
              break;
            
            case  TEST_FALLING:
              // pin number
              sprintf(serialPortMessage, "  digitalMode(%02d=0), digitalMode(%02d=1) @ %d",
                testSteps[testStepIndex].p1,
                testSteps[testStepIndex].p1,
                testStepIndex);
              Serial.println(serialPortMessage);
              break;
            
            case  TEST_SHIFT:
              // data pin, clock pin, direction, value
              sprintf(serialPortMessage, "  shiftOut(%02d,%02d,%d,%02d) @ %d",
                testSteps[testStepIndex].p1,
                testSteps[testStepIndex].p2,
                testSteps[testStepIndex].p3,
                testSteps[testStepIndex].p4,
                testStepIndex);
              Serial.println(serialPortMessage);
              break;
                          
            case  TEST_VERIFY_PIN:
              // analog pin, expected value
              expectedValue = testSteps[testStepIndex].p2;
              if (expectedValue >= 0) {
                sprintf(serialPortMessage, "  expect: pin %02d=%01d @ %d",
                  testSteps[testStepIndex].p1,
                  expectedValue,
                  testStepIndex);
                Serial.println(serialPortMessage);
            
                actualValue = digitalRead(testSteps[testStepIndex].p1);
                stepError = expectedValue != actualValue;
                testError |= stepError;
                sprintf(serialPortMessage, "  actual: pin %02d=%01d %c",
                  testSteps[testStepIndex].p1,
                  actualValue,
                  stepError ? 'x' : ' ');
                Serial.println(serialPortMessage);

              }
              break;
                          
            case  TEST_VERIFY_ANALOG:
              // analog pin, expected value
              expectedValue = testSteps[testStepIndex].p2;
              if (expectedValue >= 0) {
                sprintf(serialPortMessage, "  expect: pin %02d=%04d @ %d",
                  testSteps[testStepIndex].p1,
                  expectedValue,
                  testStepIndex);
                Serial.println(serialPortMessage);

                actualValue = analogRead(testSteps[testStepIndex].p1);
                stepError = abs(expectedValue - actualValue) > 15;
                testError |= stepError;
                sprintf(serialPortMessage, "  actual: pin %02d=%04d %c",
                  testSteps[testStepIndex].p1,
                  actualValue,
                  stepError ? 'x' : ' ');
                Serial.println(serialPortMessage);
              }
              break;
            
            default:
              break;
          }
      }

      // Next
      testStepIndex++;
  }

  return foundStep;
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
      ExecuteTestStep(++currentTestStep);
      break;

    case '+':
      stepTest = 1;
      break;
      
    case '?':
      Serial.println("g to go, s to stop, r to reset, + to go forward");

    default:
      break;
  }
}
