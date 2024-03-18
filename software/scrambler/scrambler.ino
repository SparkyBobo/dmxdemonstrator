/**
 * DMX Demonstrator Frame Scrambler
 * Copyright (C) 2020 Sparky Bobo Designs
 * https://github.com/SparkyBobo/dmxdemonstrator/tree/master/software/scrambler
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
  * About DMX Demonstrator Frame Scrambler
  *
  * This software supports the Arduio-based DMX Demonstrator Frame Scrambler
  * running any of the supported hardware options. All output options
  * can be used at the same time.
  */
#define _VERSION_ "1.0"

/**
 * Local copy of JC_Button: https://github.com/JChristensen/JC_Button
 * This avoids having to add it as an explicit library.
 */
#include "JC_Button.h"

/**
 * Include pin change interrupt abstractions
 */
#include "PinChange.h"

/**
 * Pin definitions.
 */
int clearAllButtonPin = A1;  // The clear all button.
int scrambleButtonPin = A2;  // The scramble button.
int enabledOutPin = A3;      // The enabled output.
int scambledOutPin = A4;     // The scramble output.
int enableButtonPin = A5;    // The enable button.

int dataOutLedPin = 2;   // The data output led output.
int clockOutLedPin = 3;  // The clock output led output.
int dataInLedPin = 4;    // The data intput led output.
int clockInLedPin = 5;   // The clock input led output.
int scambledLedPin = 6;  // The scramble led output.
int enabledLedPin = 7;   // The enabled led output.

int dataInPin = 8;     // The data input from the transmitter.
int clockInPin = 9;    // The clock input from the transmitter.
int dataOutPin = 12;   // The data output to the receiver.
int clockOutPin = 13;  // The clock output to the receiver.

/**
 * Switches.
 */
Button clearAllButton = Button(clearAllButtonPin);
Button scrambleButton = Button(scrambleButtonPin);
Button enableButton = Button(enableButtonPin);

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
volatile int clockOutBit = 0;
volatile int dataOutBit = 0;
volatile int currentFrameStep = 1000;
volatile int previousFrameStep = -1;
volatile int frameBreakCounter = -1;
volatile int markCounter = 0;
volatile int dataCounter = 0;
volatile int dimmerCounter = 0;
volatile int receivedData = 0;

/**
 * Scramble data.
 */
const int maxDimmerCount = 4;
const int maxScrambleCount = 88;
int scrambleDataBits[88] = { 0 };  // The data bits to scramble.
volatile int scrambledEnabled = LOW;
volatile int scrambedBit = LOW;
volatile int scambledClearAll = false;
volatile int scambledBitSet = -1;

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
const char dataInBitFormat[] PROGMEM = "Data: %d";
const char dataScrambledBitFormat[] PROGMEM = "->%d\t";
const char dataInBitEndMessage[] PROGMEM = "\t\t";
const char dimmerStartBitFormat[] PROGMEM = "Start Bit detected, prepared to receive dimmer %d data.\r\n";
const char startCodeFormat[] PROGMEM = "Received Start Code: %3dd, %02Xh, %d%d%d%d%d%d%d%db\r\n";
const char unexpectedStartCodeFormat[] PROGMEM = "Unexpected Start Code: %3dd, %02Xh, %d%d%d%d%d%d%d%db\r\n";
const char dataByteCounterFormat[] PROGMEM = "Received %d bit, accumulated data: ";
const char dimmerValueCaptureFormat[] PROGMEM = "Dimmer %d level capture: ";
const char unusedDimmerDataFormat[] PROGMEM = "Dimmer %d level capture unused: ";
const char dataByteFormat[] PROGMEM = "%3dd, %02Xh, %d%d%d%d%d%d%d%db\r\n";
const char invalidFrameStateFormat[] PROGMEM = "Invalid frame state: %d\r\n";
const char potentialFrameBreakFormat[] PROGMEM = "Potential frame break step: %d, ";

const char scambleBitSetFormat[] PROGMEM = "Scramble bit set at frame step: %d\r\n";
const char scambleBitAllClear[] PROGMEM = "Scramble bits cleared for all frame steps\r\n";
const char scambleEnabledFormat[] PROGMEM = "Scrambled enabled: %d\r\n";

const char compactDataFormat[] PROGMEM = "m,%s,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\r\n";

/**
 * The serial respones and help menu.
 */
const char newlineMessage[] PROGMEM = "\r\n";
const char startUpMessage[] PROGMEM = "DMX Demonstrator Frame Scrabmler starting up...";
const char readyMessage[] PROGMEM = "DMX Demonstrator Frame Scrabmler ready!";
const char versionFormat[] PROGMEM = "DMX Demonstrator Frame Scrabmler Version %s\r\n";
const char hardwareDetect[] PROGMEM = "Hardware Detection: found DMX-FS1\r\n";

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
const char helpQuiet[] PROGMEM = "  q: Disable sending verbose and compact status\r\n";
const char helpInfo[] PROGMEM = "  i: Display program info\r\n";

/**
 * Serial data definitions.
 */
const long baudRate = 115200;
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
  SendProgmemMessage(hardwareDetect);

  // Configure IO.
  pinMode(enabledOutPin, OUTPUT);
  pinMode(scambledOutPin, OUTPUT);
  pinMode(dataOutLedPin, OUTPUT);
  pinMode(clockOutLedPin, OUTPUT);
  pinMode(dataInLedPin, OUTPUT);
  pinMode(clockInLedPin, OUTPUT);
  pinMode(scambledLedPin, OUTPUT);
  pinMode(enabledLedPin, OUTPUT);
  pinMode(clockOutPin, OUTPUT);
  pinMode(dataOutPin, OUTPUT);

  pinMode(clearAllButtonPin, INPUT_PULLUP);
  pinMode(scrambleButtonPin, INPUT_PULLUP);
  pinMode(enableButtonPin, INPUT_PULLUP);

  pinMode(dataInPin, INPUT_PULLUP);
  pinMode(clockInPin, INPUT_PULLUP);

  // Initialize the buttons.
  clearAllButton.begin();
  scrambleButton.begin();
  enableButton.begin();

  // Enable pin change interrupt.
  PinChange.Initialize();
  PinChange.AttachInterrupt(OnClockPulse);
  PinChange.Start();

  // Complete startup message.
  SendProgmemMessage(readyMessage);

  // Enable all interrupts.
  interrupts();

  // Mark all bits as cleared.
  scambledClearAll = true;
}

/**
 * Loop
 * Put your main code here, to run repeatedly.
 */
void loop() {

  // Clear all scramble states.
  clearAllButton.read();
  if (clearAllButton.wasPressed()) {
    // Clear all bits in scrambleDataBits.
    memset(scrambleDataBits, 0, maxScrambleCount);
    scambledClearAll = true;
  }

  // Toggle enabled state.
  enableButton.read();
  if (enableButton.wasPressed()) {
    scrambledEnabled = !scrambledEnabled;
    scrambedBit = scrambledEnabled && currentFrameStep >= 0 && currentFrameStep < maxScrambleCount && scrambleDataBits[currentFrameStep];
    // Don't set the dataOutPin here, just show the led as scrambled.
    // It will get scrambled next time.
  }

  // Toggle the scramble bit state.
  scrambleButton.read();
  if (scrambleButton.wasPressed()) {
    if (currentFrameStep >= 0 && currentFrameStep < maxScrambleCount) {
      scambledBitSet = currentFrameStep;
      scrambleDataBits[scambledBitSet] = !scrambleDataBits[scambledBitSet];
      scrambedBit = scrambledEnabled && scrambleDataBits[scambledBitSet];
    // Don't set the dataOutPin here, just show the led as scrambled.
    // It will get scrambled next time.
    }
  }

  // Set status LEDs. LEDs require 0 to light up so all
  // conditions are inverted, i.e. != to that a "1" sends
  // "0" to turn the LED on.
  digitalWrite(dataInLedPin, !dataInBit);
  digitalWrite(clockInLedPin, !clockInBit);
  digitalWrite(dataOutLedPin, !dataOutBit);
  digitalWrite(clockOutLedPin, !clockOutBit);
  digitalWrite(scambledLedPin, !scrambedBit);
  digitalWrite(scambledOutPin, scrambedBit);
  digitalWrite(enabledLedPin, !scrambledEnabled);
  digitalWrite(enabledOutPin, scrambledEnabled);

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
  clockOutBit = clockInBit;
  digitalWrite(clockOutPin, clockOutBit);

  if (clockInBit) {

    // Read the data pin when the clock is high.
    dataInBit = digitalRead(dataInPin);

    // Increment the frame step.
    currentFrameStep++;

    // Scramble
    scrambedBit = scrambledEnabled && currentFrameStep >= 0 && currentFrameStep < maxScrambleCount && scrambleDataBits[currentFrameStep];
    if (scrambedBit) {
      dataOutBit = !dataInBit;
    } else {
      dataOutBit = dataInBit;
    }
    digitalWrite(dataOutPin, dataOutBit);

    // Look for frame break, i.e. 22 consecutive "0"s
    // using a 0-based index (0-21)
    // Similar to the Break Detector.
    if (!dataInBit) {
      frameBreakCounter++;
      if (frameBreakCounter >= 21) {

        // Move to the break received state and set the step
        // to 21, since we've received 22 frame breaks and
        // frame is 0-based.
        nextFrameState = frameStateBreak;
        currentFrameStep = frameBreakCounter;
      }
    } else {
      frameBreakCounter = -1;
    }

    // Transition to the next frame state.
    frameState = nextFrameState;
    nextFrameState = frameState;

    // Look for mark after break, i.e. a "1" after the frame break.
    // Similar to the Break Detector.
    if (frameState == frameStateBreak) {
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
          } else {
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

          // If the start code is expected, wait for the mark after data.
          nextFrameState = frameStateMarkAfterData;
        }

        // Capture the dimmer data.
        else if (frameState == frameStateDimmerData) {

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
    else if (frameState == frameStatePotentialBreak) {
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
 * Send the status of the frame scrambler to the serial port.
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
 * Send the compact status of the frame scrambler to the serial port.
 */
void SendCompactStatus() {


  // Only send on changes.
  static int previousFrameStep = -1;
  if (previousFrameStep != currentFrameStep) {
    previousFrameStep = currentFrameStep;

    strcpy_P(serialPortFormat, compactDataFormat);
    sprintf(serialPortMessage, serialPortFormat,
      "fs",
      verboseStatus,
      currentFrameStep,
      clockInBit,
      dataInBit,
      clockOutBit,
      dataOutBit,
      0, // unused
      0, // unused
      frameState,
      nextFrameState,
      scrambledEnabled,
      scrambedBit,
      0, // unused
      frameBreakCounter);
    Serial.print(serialPortMessage);
  }  
}

/**
 * Send the verbose status of the frame scrambler to the serial port.
 */
void SendVerboseStatus() {

  // Detect scrambled enabled.
  static int previousScrambledEnabled = -1;
  if (previousScrambledEnabled != scrambledEnabled) {
    SendProgmemIntFormat(scambleEnabledFormat, scrambledEnabled);
    previousScrambledEnabled = scrambledEnabled;
  }

  // Detect scrambled cleared.
  if (scambledClearAll) {
    SendProgmemMessage(scambleBitAllClear);
    scambledClearAll = false;
  }

  // Detect scrambled set.
  if (scambledBitSet >= 0) {
    SendProgmemIntFormat(scambleBitSetFormat, scambledBitSet);
    scambledBitSet = -1;
  }

  // Only send on changes. Note that this runs after the data has been processed
  // so report on the state as it was before the data was processed.
  if (previousFrameStep != currentFrameStep) {

    // Detect case when speed is too fast for verbose mode.
    if (previousFrameStep > 0 && currentFrameStep > previousFrameStep && (currentFrameStep - previousFrameStep) > 1) {
      if (verboseStatus) {
        //SendProgmemMessage(disableVerboseModeClockTooFast);
      }
      //verboseStatus = LOW;
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
    // Detect scrambled bit.
    SendProgmemIntFormat(dataInBitFormat, dataInBit);
    if (dataOutBit != dataInBit) {
      SendProgmemIntFormat(dataScrambledBitFormat, dataOutBit);
    } else {
      SendProgmemMessage(dataInBitEndMessage);
    }

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
      } else {
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
            SendProgmemIntFormat(dimmerValueCaptureFormat, dimmerCounter + 1);
          } else {
            SendProgmemIntFormat(unusedDimmerDataFormat, dimmerCounter + 1);
          }

          SendProgmemDataByteFormat(dataByteFormat, receivedData);
        }
      }
    }

    // If the state is transitioning from frameStateMarkAfterData to frameStateDimmerData,
    // the dimmer data start bit was detected. Otherwise, the mark after data continues.
    else if (frameState == frameStateMarkAfterData) {
      if (nextFrameState == frameStateDimmerData) {
        SendProgmemIntFormat(dimmerStartBitFormat, dimmerCounter + 1);
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

      // Set previous frame step since verbose has not been called recently
      // and we don't want it to disable verbose due to missed steps.
      previousFrameStep = currentFrameStep;
      break;

    case 'q':
      compactStatus = LOW;
      verboseStatus = LOW;
      break;

    case 'i':
      SendProgmemStringFormat(versionFormat, _VERSION_);
      SendProgmemMessage(hardwareDetect);
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
      SendProgmemMessage(helpQuiet);
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
