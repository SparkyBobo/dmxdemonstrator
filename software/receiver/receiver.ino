/**
 * DMX Demonstrator Receiver
 * Copyright (C) 2020 Crazy Giraffe Software
 * https://github.com/crazy-giraffe-software/dmxdemonstrator/tree/master/software/receiver
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
 *
 */

 /**
  * About DMX Demonstrator Receiver
  *
  * This software supports the Arduio-based DMX Demonstrator Receiver
  * running any of the supported hardware options. All output options
  * can be used at the same time.
  *
  * When using the DMX output option, there may be a conflict with pins
  * D0 and D1, i.e. RXD and TXD, which is also used as a serial output.
  * There are two options:
  * 1.) Use an Arduino with 2 UARTS, such as the Leonardo. This is the recommended option.
  * 2.) Use a DMX board which does not use the hardware UART, i.e. pins D0 and D1.
  *
  * DMX can be supported via any of these options:
  * General DMX Shield info: https://playground.arduino.cc/DMX/DMXShield/
  * DFRobot product: https://www.dfrobot.com/product-984.html
  * SK Pang product: http://skpang.co.uk/catalog/arduino-dmx-shield-p-663.html
  * Conceptinetics product: https://www.tindie.com/products/Conceptinetics/dmx-shield-for-arduino-rdm-capable/
  * Conceptinetics product: https://www.tindie.com/products/Conceptinetics/25kv-isolated-dmx-512-shield-for-arduino-r2/?pt=full_prod_search
  * Matthias Hertel design: https://www.mathertel.de/Arduino/DMXShield.aspx
  */
#define _VERSION_ "1.2"

/**
 * Include pin change interrupt abstractions
 */
#include "PinChange.h"

/**
 * Pin definitions.
 */
int dmxReserved2Pin = 2;          // Reserved for shields that use pin D2 for DMX enable, i.e. mathertel.de, Conceptinetics, and DFRobot.
int dmxReserved3Pin = 3;          // Reserved for shields that use pin D3 for DMX output, i.e. SK Pang, or DMX input, i.e. Conceptinetics and DFRobot.
int dmxReserved4Pin = 4;          // Reserved for shields that use pin D4 for DMX enable, i.e. mathertel.de, or DMX output, i.e. Conceptinetics and DFRobot.

int errorLedPin = A2;             // The error led output.
int startCodeLedPin = A3;         // The start code led output.
int dataLedPin = A4;              // The data led output.
int clockLedPin = A5;             // The clock led output.
int dimmerLevelOut4LedPin = 5;    // The dimmer output 4 led.
int dimmerLevelOut3LedPin = 6;    // The dimmer output 3 led.
int dimmerLevelOut2LedPin = 10;   // The dimmer output 2 led.
int dimmerLevelOut1LedPin = 11;   // The dimmer output 1 led.

int dataInPin = 12;               // The data input from the transmitter.
int clockInPin = 13;              // The clock input from the transmitter.

/**
 * Protocol state.
 */
const int frameStateBreak = 0;
const int frameStateMarkAfterBreak = 1;
const int frameStateStartCode = 2;
const int frameStateDimmerData = 3;
const int frameStateMarkAfterData = 4;
const int frameStatePotentialBreak = 253;
const int frameStateUnexpectedStartCode = 254;
const int frameStateError = 255;
const int unknownFrameStep = 1000;
volatile int nextFrameState = 255;
volatile int frameState = 255;
volatile int clockInBit = 0;
volatile int dataInBit = 0;
volatile int startCodeMatch = 0;
volatile int currentFrameStep = 1000;
volatile int frameBreakCounter = 0;
volatile int markCounter = 0;
volatile int dataCounter = 0;
volatile int dimmerCounter = 0;
volatile int receivedData = 0;

/**
 * Start code and dimmer data.
 */
int expectedStartCode = 0;        // The expected start code.

const int maxDimmerCount = 4;
int dimmerLevels[4] = { 0 };      // The dimmer levels.

/**
 *  Message for frame steps.
 */
const char frameBreakMessage[] PROGMEM = "Frame Break detected, waiting for Mark after Break.\r\n";
const char markAfterBreakMessage[] PROGMEM = "Mark after Break detected, waiting for a Start Bit.\r\n";
const char markAfterDataMessage[] PROGMEM = "Mark after Data detected, waiting for a Start Bit.\r\n";
const char startCodeStartBitMessage[] PROGMEM = "Start Bit detected, prepared to receive Start Code.\r\n";
const char invalidDataCounterFormat[] PROGMEM = "Invalid data counter value detected: %d.\r\n";
const char invalidStopBitMessage[] PROGMEM = "Invalid Stop bit detected; error.\r\n";
const char validStopBitMessage[] PROGMEM = "Stop Bit detected.\r\n";
const char unexpectedStartCodeMessage[] PROGMEM = "ignoring data due to start code, waiting for frame break.\r\n";
const char potentialBreakMessage[] PROGMEM = "ignoring data due to possible frame break, waiting for frame break.\r\n";
const char errorStateMessage[] PROGMEM = "ignoring data due to error, waiting for frame break.\r\n";

const char frameStepUnknownMessage[] PROGMEM = "Step: ??\t";
const char frameStepFormat[] PROGMEM = "Step: %2d\t";
const char dataInBitFormat[] PROGMEM = "Data: %d\t\t";
const char dimmerStartBitFormat[] PROGMEM = "Start Bit detected, prepared to receive dimmer %d data.\r\n";
const char startCodeFormat[] PROGMEM = "Received Start Code: %3dd, %02Xh, %d%d%d%d%d%d%d%db\r\n";
const char unexpectedStartCodeFormat[] PROGMEM = "Unexpected Start Code: %3dd, %02Xh, %d%d%d%d%d%d%d%db\r\n";
const char dataByteCounterFormat[] PROGMEM = "Received %d bit, accumulated data: ";
const char dimmerValueCaptureFormat[] PROGMEM = "Dimmer %d level capture: ";
const char unusedDimmerDataFormat[] PROGMEM = "Dimmer %d level capture unused: ";
const char dataByteFormat[] PROGMEM = "%3dd, %02Xh, %d%d%d%d%d%d%d%db\r\n";
const char invalidFrameStateFormat[] PROGMEM = "Invalid frame state: %d\r\n";
const char potentialFrameBreakFormat[] PROGMEM = "Potential frame break step: %d, ";

/**
 * The serial respones and help menu.
 */
const char newlineMessage[] PROGMEM = "\r\n";
const char startUpMessage[] PROGMEM = "DMX Demonstrator Receiver starting up...";
const char readyMessage[] PROGMEM = "DMX Demonstrator Receiver ready!";
const char versionFormat[] PROGMEM = "DMX Demonstrator Receiver Version %s\r\n";

const char compactStatusFormat[] PROGMEM = "Compact Status: %s\r\n";
const char verboseStatusFormat[] PROGMEM = "Verbose Status: %s\r\n";
const char statusOffMessage[] PROGMEM = "Off";
const char statusOnMessage[] PROGMEM = "On";
const char* const statusMessages[] PROGMEM = { statusOffMessage, statusOnMessage, };
const char disableVerboseModeClockTooFast[] PROGMEM = "Verbose Status disable due to fast clock speed\r\n";

const char helpTitle[] PROGMEM = "Help:\r\n";
const char helpInfoTitle[] PROGMEM = "Info:\r\n";
const char helpCompact[] PROGMEM = "  m: Toggle sending compact status\r\n";
const char helpVerbose[] PROGMEM = "  v: Toggle sending verbose status\r\n";
const char helpInfo[] PROGMEM = "  i: Display program info\r\n";

/**
 * Serial data definitions.
 */
const long baudRate = 250000;
char serialPortFormat[100];
char serialPortArgument[10];
char serialPortMessage[255];

char currentDescription[100];
int descriptionCounter = 0;

bool compactStatus = LOW;
bool verboseStatus = LOW;

/**
 * Setup
 * Put your setup code here, to run once.
 */
void setup() {

  // Disable all interrupts.
  noInterrupts();

  // Opens serial port.
  Serial.begin(baudRate);

  // Display startup message.
  SendProgmemMessage(startUpMessage);
  SendProgmemStringFormat(versionFormat, _VERSION_);

  // Configure IO.
  pinMode(errorLedPin, OUTPUT);
  pinMode(startCodeLedPin, OUTPUT);
  pinMode(dataLedPin, OUTPUT);
  pinMode(clockLedPin, OUTPUT);

  pinMode(dimmerLevelOut1LedPin, OUTPUT);
  pinMode(dimmerLevelOut2LedPin, OUTPUT);
  pinMode(dimmerLevelOut3LedPin, OUTPUT);
  pinMode(dimmerLevelOut4LedPin, OUTPUT);

  pinMode(dataInPin, INPUT_PULLUP);
  pinMode(clockInPin, INPUT_PULLUP);

  // Enable pin change interrupt.
  PinChange.Initialize();
  PinChange.AttachInterrupt(OnClockPulse);
  PinChange.Start();

  // Complete startup message.
  SendProgmemMessage(readyMessage);

  // Enable all interrupts.
  interrupts();
}

/**
 * Loop
 * Put your main code here, to run repeatedly.
 */
void loop() {

  // Set status LEDs. LEDs require 0 to light up so all
  // conditions are inverted, i.e. != to that a "1" sends
  // "0" to turn the LED on.
  digitalWrite(dataLedPin, !dataInBit);
  digitalWrite(clockLedPin, !clockInBit);
  digitalWrite(startCodeLedPin, !startCodeMatch);
  digitalWrite(errorLedPin, frameState != frameStateError);

  // Dimmer level LEDs. Use analogWrite() to generate a dimmable
  // signal to display the dimmer level.
  analogWrite(dimmerLevelOut1LedPin, dimmerLevels[0]);
  analogWrite(dimmerLevelOut2LedPin, dimmerLevels[1]);
  analogWrite(dimmerLevelOut3LedPin, dimmerLevels[2]);
  analogWrite(dimmerLevelOut4LedPin, dimmerLevels[3]);

  // Send status to serial port.
  SendStatus();

    // Check serial port.
  if (Serial.available() > 0) {
    char incomingByte = Serial.read();
    HandleReceivedChar(incomingByte);
  }
}

/**
 * Pin Change Interrupt.
 * This code run for each flip of the clock input pin.
 */
void OnClockPulse() {

  // Read clock and respond to the rising edge.
  clockInBit = digitalRead(clockInPin);
  if (clockInBit) {

    // Read the data pin when the clock is high.
    dataInBit = digitalRead(dataInPin);

    // Increment the frame step.
    currentFrameStep++;

    // Look for frame break, i.e. 22 consecutive "0"s.
    // Similar to the Break Detector.
    if (!dataInBit) {
      frameBreakCounter++;
      if (frameBreakCounter >= 22) {

        // Move to the break received state and set the step
        // to 22, since we've received 22 frame breaks.
        nextFrameState = frameStateBreak;
        currentFrameStep = frameBreakCounter;
      }
    } else {
      frameBreakCounter = 0;
    }

    // Transition to the next frame state.
    frameState = nextFrameState;
    nextFrameState = frameState;

    // Look for mark after break, i.e. a "1" after the frame break.
    // Similar to the Break Detector.
    if (frameState == frameStateBreak) {
      startCodeMatch = false;
      if (dataInBit) {
        nextFrameState = frameStateMarkAfterBreak;
      }
    }

    // Look for the start bit after mark after break, i.e. a "0" after the mark after frame.
    // This is the start code start bit, capture the start code.
    else if (frameState == frameStateMarkAfterBreak) {
      if (!dataInBit) {
        nextFrameState = frameStateStartCode;

        // Start the dimmer counter at -1. It will be incremented
        // when a dimmer start bit is detected.
        dimmerCounter = -1;

        // Reset the data counter and data byte.
        dataCounter = -1;
        receivedData = 0;
      }
    }

    // Look for data start code and dimmer data bytes.
    // Similar to the Byte Sequence Clock.
    else if (frameState == frameStateStartCode || frameState == frameStateDimmerData) {

      // Increment the data counter.
      // dataCounter should be between 0 and 9
      dataCounter++;
      if (dataCounter < 0 || dataCounter > 9) {
        nextFrameState = frameStateError;
        currentFrameStep = unknownFrameStep;
      }

      // 0-7 are data: write dataInBit to the bit indicated by dataCounter into receivedData.
      if (dataCounter >= 0 && dataCounter <= 7) {
        bitWrite(receivedData, dataCounter, dataInBit);
      }

      // Data bit 8 is the first stop bit. Ensure it is a "1".
      else if (dataCounter == 8) {
        if (!dataInBit) {

          // If there have been 10 or more break bits counted and we hit the max dimmer,
          // this is likely the break so don't treat it as an error.
          if (frameBreakCounter && dimmerCounter >= maxDimmerCount) {
            nextFrameState = frameStatePotentialBreak;
            currentFrameStep = unknownFrameStep;
          }
          else {
            nextFrameState = frameStateError;
            currentFrameStep = unknownFrameStep;
          }
        }
      }

      // Data bit 9 is the second stop bit. Ensure it is a "1".
      // If bit 9 is valid, then move to the mark after data state.
      else if (dataCounter == 9) {
        if (!dataInBit) {
          nextFrameState = frameStateError;
          currentFrameStep = unknownFrameStep;
        }

        // Ensure the capture data matches the expected start code.
        if (frameState == frameStateStartCode) {

            // If the start code is not as expected, move to an unexpected
            // start code state and wait for a frame break;
            if (expectedStartCode != receivedData) {
              nextFrameState = frameStateUnexpectedStartCode;
              currentFrameStep = unknownFrameStep;
            }

            // If the start code is expected, wait for the mark after data.
            else {
                startCodeMatch = true;
                nextFrameState = frameStateMarkAfterData;
            }
        }

        // Capture the dimmer data.
        else if (frameState == frameStateDimmerData) {

          // Store the dimmer data if the counter is less than the max dimmer.
          if (dimmerCounter >= 0 && dimmerCounter < maxDimmerCount) {
            dimmerLevels[dimmerCounter] = receivedData;
          }

          // Wait for the mark after data.
          nextFrameState = frameStateMarkAfterData;
        }
      }
    }

    // Look for the start bit after the mark after data, i.e. a "0" after the stop bits.
    else if (frameState == frameStateMarkAfterData) {
      if (!dataInBit) {
        nextFrameState = frameStateDimmerData;

        // Capture the next dimmer.
        dimmerCounter++;

        // Reset the data counter and data byte.
        dataCounter = -1;
        receivedData = 0;
      }
    }

    // Look for an unexpected bit in what is potentially a break, i.e. a "1" during the break.
    else if(frameState == frameStatePotentialBreak) {
      if (dataInBit) {
        nextFrameState = frameStateError;
      }
    }

    // Error condition.
    else {

      // Reset to an invalid state.
      frameState == frameStateError;
    }
  }
}

/**
 * Send the status of the receiver to the serial port.
 */
void SendStatus() {

  static bool previousCompactStatus = LOW;
  if (previousCompactStatus != compactStatus) {
    SendProgmemStringArrayFormat(compactStatusFormat, statusMessages, compactStatus);
    previousCompactStatus = compactStatus;
  }

  static bool previousVerboseStatus = LOW;
  if (previousVerboseStatus != verboseStatus) {
    SendProgmemStringArrayFormat(verboseStatusFormat, statusMessages, verboseStatus);
    previousVerboseStatus = verboseStatus;
  }

  if (compactStatus) {
    SendCompactStatus();
  }

  if (verboseStatus) {
    SendVerboseStatus();
  }
}

/**
 * Send the compact status of the receiver to the serial port.
 */
void SendCompactStatus() {
}

/**
 * Send the verbose status of the receiver to the serial port.
 */
void SendVerboseStatus() {

  // Only send on changes. Note that this runs after the data has been processed
  // so report on the state as it was before the data was processed.
  static int previousFrameStep = -1;
  if (previousFrameStep != currentFrameStep) {

    // Detect case when speed is too fast for verbose mode.
    if (previousFrameStep > 0 && currentFrameStep > previousFrameStep && (currentFrameStep - previousFrameStep) > 1) {
      if (verboseStatus) {
        SendProgmemMessage(disableVerboseModeClockTooFast);
      }
      verboseStatus = LOW;
      previousFrameStep = currentFrameStep;
      return;
    }

    // Display the step number of the frame, then increment the frame step.
    if (currentFrameStep >= unknownFrameStep) {
      SendProgmemMessage(frameStepUnknownMessage);
    } else {
      SendProgmemIntFormat(frameStepFormat, currentFrameStep);
    }

    // Display the serial data.
    SendProgmemIntFormat(dataInBitFormat, dataInBit);

    // If the state is transitioning from frameStateBreak to frameStateMarkAfterBreak,
    // the end of the break was detected. Otherwise, the break continues.
    if (frameState == frameStateBreak) {
      if (nextFrameState == frameStateMarkAfterBreak) {
        SendProgmemMessage(markAfterBreakMessage);
      } else {
        SendProgmemMessage(frameBreakMessage);
      }
    }

    // If the state is transitioning from frameStateMarkAfterBreak to frameStateStartCode,
    // the start code start bit was detected. Otherwise, the mark after break continues.
    else if (frameState == frameStateMarkAfterBreak) {
      if (nextFrameState == frameStateStartCode) {
        SendProgmemMessage(startCodeStartBitMessage);
      } else{
        SendProgmemMessage(markAfterBreakMessage);
      }
    }

    // If the state is transitioning was capturing the start code or dimmer data, print out the
    // accumulated data and state.
    else if (frameState == frameStateStartCode || frameState == frameStateDimmerData) {

      // If the state is transitioning to frameStateError, an invalid
      // data count was encountered.
      if (dataCounter < 0 || dataCounter > 9) {
          SendProgmemIntFormat(invalidDataCounterFormat, dataCounter);
      }

      // 0-7 are data: the dataInBit was written into receivedData.
      if (dataCounter >= 0 && dataCounter <= 7) {
        SendProgmemIntFormat(dataByteCounterFormat, dataCounter);
        SendProgmemDataByteFormat(dataByteFormat, receivedData);
      }

      // Data bit 8 is the first stop bit.
      // If the state is transitioning to frameStateError, an invalid stop bit was found.
      else if (dataCounter == 8) {
        if (nextFrameState == frameStateError) {
          SendProgmemMessage(invalidStopBitMessage);
        } else if (nextFrameState == frameStatePotentialBreak) {
          SendProgmemIntFormat(potentialFrameBreakFormat, frameBreakCounter);
          SendProgmemMessage(potentialBreakMessage);
        } else {
          SendProgmemMessage(validStopBitMessage);
        }
      }

      // Data bit 9 is the second stop bit.
      // If the state is transitioning to frameStateError, an invalid stop bit was found.
      else if (dataCounter == 9) {
        if (nextFrameState == frameStateError) {
          SendProgmemMessage(invalidStopBitMessage);
        }

        // If the state is frameStateStartCode, print the start code status.
        if (frameState == frameStateStartCode) {

            // If the state is transitioning to  frameStateUnexpectedStartCode,
            // an unexpected start code was received.
            if (nextFrameState == frameStateUnexpectedStartCode) {
              SendProgmemDataByteFormat(unexpectedStartCodeFormat, receivedData);
            } else {
              SendProgmemDataByteFormat(startCodeFormat, receivedData);
            }
        }

        // If the state is frameStateDimmerData, print the dimmer data status.
        else if (frameState == frameStateDimmerData) {

          // If the dimmer counter is in the valid range, the dimmer data was captured.
          // Otherwise, the dimmer data is unused.
          // Note: the dimmerCounter is not incremented until the mark after data is found.
          if (dimmerCounter >= 0 && dimmerCounter < maxDimmerCount) {
            SendProgmemIntFormat(dimmerValueCaptureFormat, dimmerCounter+1);
          } else {
            SendProgmemIntFormat(unusedDimmerDataFormat, dimmerCounter+1);
          }

          SendProgmemDataByteFormat(dataByteFormat, receivedData);
        }
      }
    }

    // If the state is transitioning from frameStateMarkAfterData to frameStateDimmerData,
    // the dimmer data start bit was detected. Otherwise, the mark after data continues.
    else if (frameState == frameStateMarkAfterData) {
      if (nextFrameState == frameStateDimmerData) {
        SendProgmemIntFormat(dimmerStartBitFormat, dimmerCounter+1);
      } else {
        SendProgmemMessage(markAfterDataMessage);
      }
    }

    // If this is a potential break, print the frameBreakCounter
    else if (frameState == frameStatePotentialBreak) {

      // While a frame break is technically 22 consecutive 0's, there does not
      // exist another instance of 10 or more 0's in a row except for the frame break.
      if (frameBreakCounter >= 10) {
        SendProgmemIntFormat(potentialFrameBreakFormat, frameBreakCounter);
        SendProgmemMessage(potentialBreakMessage);
      }
    }    

    // Error condition.
    else {

      // While a frame break is technically 22 consecutive 0's, there does not
      // exist another instance of 10 or more 0's in a row except for the frame break.
      if (frameBreakCounter >= 10) {
        SendProgmemIntFormat(potentialFrameBreakFormat, frameBreakCounter);
      }

      // Found an unexpected start code. Waiting for frame break.
      if (nextFrameState == frameStateUnexpectedStartCode) {
        SendProgmemMessage(unexpectedStartCodeMessage);
      }

      // Found an unexpected bit. Waiting for frame break.
      else if (frameState == frameStateError) {
        SendProgmemMessage(errorStateMessage);
      }

      // Found an unexpected bit. Waiting for frame break.
      else {
        SendProgmemIntFormat(invalidFrameStateFormat, frameState);
      }
    }

    // Remember current step.
    previousFrameStep = currentFrameStep;
  }
}

/**
 * Handle a received character.
 */
int HandleReceivedChar(char receivedChar) {
  switch (receivedChar) {
    case 'm':
      compactStatus = !compactStatus;
      break;

    case 'v':
      verboseStatus = !verboseStatus;
      break;

    case 'i':
      SendProgmemStringFormat(versionFormat, _VERSION_);
      SendProgmemStringArrayFormat(compactStatusFormat, statusMessages, compactStatus);
      SendProgmemStringArrayFormat(verboseStatusFormat, statusMessages, verboseStatus);
      break;

    case '?':
      SendProgmemMessage(helpTitle);
      SendProgmemMessage(newlineMessage);
      SendProgmemMessage(helpInfoTitle);
      SendProgmemMessage(helpCompact);
      SendProgmemMessage(helpVerbose);
      SendProgmemMessage(helpInfo);
      SendProgmemMessage(newlineMessage);
      break;

    default:
      break;
  }
}

/**
 * Print a message stored in PROGMEM.
 */
void SendProgmemMessage(const char* msg) {
  strcpy_P(serialPortMessage, msg);
  Serial.print(serialPortMessage);
}

/**
 * Print a message formated from a string in PROGMEM and an integer.
 */
void SendProgmemIntFormat(const char* fmt, int arg) {
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat, arg);
  Serial.print(serialPortMessage);
}

/**
 * Print a message formated from a string in PROGMEM and a data byte.
 */
void SendProgmemDataByteFormat(const char* fmt, int arg) {
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat,
          arg,
          arg,
          bitRead(arg, 7),
          bitRead(arg, 6),
          bitRead(arg, 5),
          bitRead(arg, 4),
          bitRead(arg, 3),
          bitRead(arg, 2),
          bitRead(arg, 1),
          bitRead(arg, 0));

  Serial.print(serialPortMessage);
}

/**
 * Print a message formated from a string in PROGMEM and a string.
 */
void SendProgmemStringFormat(const char* fmt, const char* arg) {
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat, arg);
  Serial.print(serialPortMessage);
}

/**
 * Print a message formated from a string and string array in PROGMEM.
 */
void SendProgmemStringArrayFormat(const char* fmt, const char* const* arg, int offset) {
  strcpy_P(serialPortArgument, pgm_read_word(&arg[offset]));
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat, serialPortArgument);
  Serial.print(serialPortMessage);
}
