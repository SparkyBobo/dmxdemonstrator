/**
 * DMX Demonstrator Receiver
 * Copyright (C) 2020 Crazy Giraffe Software [https://github.com/xxxxx]
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
 * 1.) Use a DMX board which does not use the hardware UART, i.e. pins D0 and D1.
 * 2.) Use an Arduiono with 2 UARTS, such as the Leonardo.
 *
 * DMX can be supported via any of these options:
 * General DMX Sheild info: https://playground.arduino.cc/DMX/DMXShield/
 * DFRobot product: https://www.dfrobot.com/product-984.html
 * SK Pang product: http://skpang.co.uk/catalog/arduino-dmx-shield-p-663.html
 * Conceptinetics product: https://www.tindie.com/products/Conceptinetics/dmx-shield-for-arduino-rdm-capable/
 * Conceptinetics product: https://www.tindie.com/products/Conceptinetics/25kv-isolated-dmx-512-shield-for-arduino-r2/?pt=full_prod_search
 * Matthias Hertel design: https://www.mathertel.de/Arduino/DMXShield.aspx
 */

int dmxReserved2Pin = 2;          // Reserved for shields that use pin D2 for DMX enable, i.e. mathertel.de, Conceptinetics, and DFRobot.
int dmxReserved3Pin = 3;          // Reserved for shields that use pin D3 for DMX output, i.e. SK Pang, or DMX input, i.e. Conceptinetics and DFRobot.
int dmxReserved4Pin = 4;          // Reserved for shields that use pin D4 for DMX enable, i.e. mathertel.de, or DMX output, i.e. Conceptinetics and DFRobot.

int dataLedPin = A4;              // The data led output.
int clockLedPin = A5;             // The clock led output.
int dimmerLevelOut3LedPin = 5;    // The dimmer ouptut 4 led.
int dimmerLevelOut2LedPin = 6;    // The dimmer ouptut 3 led.
int dimmerLevelOut1LedPin = 10;   // The dimmer ouptut 2 led.
int dimmerLevelOut0LedPin = 11;   // The dimmer ouptut 1 led.

int shiftDataOutPin = 7;          // The shift register data output for analog dimmer levels.
int shiftClockOutPin = 8;         // The shift register clock output for analog dimmer levels.
int shiftClearOutPin = 9;         // The shift register clear output for analog dimmer levels.

int daAddr0OutPin = A0;           // The d to a converter address 0 output for analog dimmer levels.
int daAddr1OutPin = A1;           // The d to a converter address 1 output for analog dimmer levels.
int daWriteOutPin = A2;           // The d to a converter write output for analog dimmer levels.

int dataInPin = 12;               // The data input from the transmitter.
int clockInPin = 13;              // The clock input from the transmitter.

/**
 * Serial data definitions.
*/
const long baudRate = 250000;
char serialPortFormat[100];
char serialPortArgument[10];
char serialPortMessage[255];
char currentDescription[100];
int descriptionCounter = 0;

/**
 * DMX4 state.
  */
volatile int clockInBit = 0;
int previousClockInBit = 0;
volatile int dataInBit = 0;
int frameState = -1;
const int frameStateBreak = 0;
const int frameStateMarkAfterBreak = 1;
const int frameStateStartCode = 2;
const int frameStateDimmerData = 3;
const int frameStateMarkAfterData = 4;
const int frameStateUnexpectedStartCode = 254;
const int frameStateError = 255;
int currentFrameStep = -1;
int frameBreakCounter = 0;
int markCounter = 0;
int dataCounter = 0;
int dimmerCounter = 0;
int receivedData = 0;

/**
 * Start code and dimmer data.
  */
int expectedStartCode = 0;        // The expected start code.
int dimmerLevels[4] = { 0 };      // The dimmer levels.
int dimmerSendCounter = -1;       // A counter used to send dimmer data to analog and DMX512.

/**
 *  Message for frame steps.
 */
const char frameBreakMessage[] PROGMEM = "Frame Break detected, waiting for Mark after Break.";
const char markAfterBreakMessage[] PROGMEM = "Mark after Break detected, waiting for a Start Bit.";
const char markAfterDataMessage[] PROGMEM = "Mark after data, waiting for a Start Bit.";
const char startCodeStartBitMessage[] PROGMEM = "Start bit detected, prepared to receive Start Code.";
const char invalidStopBitMessage[] PROGMEM = "Invalid Stop bit detected; error.";
const char validStopBit0Message[] PROGMEM = "First Stop bit detected.";
const char validStopBit1Message[] PROGMEM = "Second Stop bit detected, ";
const char unexpectedStartCodeMessage[] PROGMEM = "ignoring data due to start code, waiting for frame break.";
const char errorStateMessage[] PROGMEM = "ignoring data due to error, waiting for frame break.";

const char frameStepFormat[] PROGMEM = "Step: %d\t\t";
const char dataInBitFormat[] PROGMEM = "Data: %d\t\t";
const char dimmerStartBitFormat[] PROGMEM = "Start bit detected, prepared to receive dimmer %d data.";
const char dataByteFormat[] PROGMEM = "Received %d bit, accumulated data: %3dd, %02Xh, %d%d%d%d%d%d%d%db";
const char startCodeFormat[] PROGMEM = "Received start code: %d";
const char unexpectedStartCodeFormat[] PROGMEM = "Unexpected start code: %d; ignore.";
const char dimmerValueCaptureFormat[] PROGMEM = "Dimmer %d level capture: %3dd, %02Xh, %d%d%d%d%d%d%d%db";
const char unusedDimmerDataFormat[] PROGMEM = "Dimmer %d level capture unused.";
const char invalidFrameStateFormat[] PROGMEM = "Invalid frame state: %d";
const char potentialFrameBreakFormat[] PROGMEM = "Potential frame break step: %d, ";

/**
 * The serial respones and help menu.
 */
const char startUpResponse[] PROGMEM = "DMX Demonstrator Receiver starting up...";
const char versionResponse[] PROGMEM = "DMX Demonstrator Receiver Version 1.0";
const char readyResponse[] PROGMEM = "DMX Demonstrator Receiver ready!";

const char helpTitle[] PROGMEM = "Help:";
const char helpInfoTitle[] PROGMEM = "Info:";
const char helpInfo[] PROGMEM = "  i: Display info";
const char helpVersion[] PROGMEM = "  v: Display version";

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
  PrintFromProgmem(startUpResponse);
  PrintFromProgmem(versionResponse);

  // Configure IO.
  pinMode(dataLedPin, OUTPUT);
  pinMode(clockLedPin, OUTPUT);

  pinMode(shiftDataOutPin, OUTPUT);
  pinMode(shiftClockOutPin, OUTPUT);
  pinMode(shiftClearOutPin, OUTPUT);

  pinMode(daAddr0OutPin, OUTPUT);
  pinMode(daAddr1OutPin, OUTPUT);
  pinMode(daWriteOutPin, OUTPUT);

  pinMode(dimmerLevelOut0LedPin, OUTPUT);
  pinMode(dimmerLevelOut1LedPin, OUTPUT);
  pinMode(dimmerLevelOut2LedPin, OUTPUT);
  pinMode(dimmerLevelOut3LedPin, OUTPUT);

  pinMode(dataInPin, INPUT_PULLUP);
  pinMode(clockInPin, INPUT_PULLUP);

  // Configure external interrupts.
  ConfigureExternalInterrupts();

  // Complete startup message.
  PrintFromProgmem(readyResponse);

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

  // Dimmer level LEDs. Use analogWrite() to generate a dimmable
  // signal to display the dimmer level. LEDs require 0 to light up
  // so the dimmer level is inverted, i.e. "255" sends "0" to turn
  // the LED on.
  analogWrite(dimmerLevelOut0LedPin, 255-dimmerLevels[0]);
  analogWrite(dimmerLevelOut1LedPin, 255-dimmerLevels[1]);
  analogWrite(dimmerLevelOut2LedPin, 255-dimmerLevels[2]);
  analogWrite(dimmerLevelOut3LedPin, 255-dimmerLevels[3]);

  // If clock has changed
  if (previousClockInBit != clockInBit) {
    ExecuteStep();
    previousClockInBit = clockInBit;
  }

  // Send the dimmer data to analog and DMX512 if present.
  SendDimmerData();

  // Check serial port.
  if (Serial.available() > 0) {
    char incomingByte = Serial.read();
    HandleReceivedChar(incomingByte);
  }
}

/**
 * Pin Change Interrupr, Port B, PCINT0 - PCINT7.
 * This code run for each flip of the clock.
 */
ISR(PCINT0_vect){
  // Read the clock and response to rising edge.
  clockInBit = digitalRead(clockInPin);
}

/**
 * ExecuteStep.
 */
void ExecuteStep() {
  if (clockInBit) {

    // Look for frame break, i.e. 22 consecutive "0"s.
    // Similar to the Break Detector.
    dataInBit = digitalRead(dataInPin);
    if (!dataInBit) {
      frameBreakCounter++;
      if (frameBreakCounter >= 22) {
        frameState = frameStateBreak;
        currentFrameStep = frameBreakCounter;
      }
    } else {
      frameBreakCounter = 0;
    }

    // Display the step number of the frame, then increment the frame step.
    strcpy_P(serialPortFormat, frameStepFormat);
    sprintf(serialPortMessage, serialPortFormat, currentFrameStep++);
    Serial.print(serialPortMessage);

    // Display the serial data.
    strcpy_P(serialPortFormat, dataInBitFormat);
    sprintf(serialPortMessage, serialPortFormat, dataInBit);
    Serial.print(serialPortMessage);

    // Look for mark after break, i.e. a "1" after the frame break.
    // Similar to the Break Detector.
    if (frameState == frameStateBreak) {
       if (dataInBit) {
       frameState = frameStateMarkAfterBreak;
        PrintFromProgmem(markAfterBreakMessage);
      } else{
        PrintFromProgmem(frameBreakMessage);
      }
    }

    // Look for the start bit after mark after break, i.e. a "0" after the mark after frame.
    // Thi is the start code start bit, capture the start code.
    else if (frameState == frameStateMarkAfterBreak) {
      if (!dataInBit) {
        frameState = frameStateStartCode;
        PrintFromProgmem(startCodeStartBitMessage);

        // Start the dimmer counter at -1. It will be incremented
        // when a dimmer start bit is detected.
        dimmerCounter = -1;

        // Reset the data counter and data byte.
        dataCounter = -1;
        receivedData = 0;
      } else{
        PrintFromProgmem(markAfterBreakMessage);
      }
    }

    // Look for the start bit after the mark after data, i.e. a "0" after the stop bits.
    else if (frameState == frameStateMarkAfterData) {
      if (!dataInBit) {
        frameState = frameStateDimmerData;

        // Capture the next dimmer.
        dimmerCounter++;
        PrintIntFormatProgmem(dimmerStartBitFormat, dimmerCounter);

        // Reset the data counter and data byte.
        dataCounter = -1;
        receivedData = 0;
      } else{
        PrintFromProgmem(markAfterDataMessage);
      }
    }

    // Look for data start code and dimmer data bytes.
    // Similar to the Byte Sequence Clock.
    else if (frameState == frameStateStartCode || frameState == frameStateDimmerData) {

      // Count the data bits. 0-7 are data.
      dataCounter++;
      if (dataCounter >= 0 && dataCounter <= 7) {
        // write dataInBit to the bit indicated by dataCounter into dataByte.
        bitWrite(receivedData, dataCounter, dataInBit);

        strcpy_P(serialPortFormat, dataByteFormat);
        sprintf(serialPortMessage, serialPortFormat,
          dataCounter,
          receivedData,
          receivedData,
          bitRead(receivedData, 7),
          bitRead(receivedData, 6),
          bitRead(receivedData, 5),
          bitRead(receivedData, 4),
          bitRead(receivedData, 3),
          bitRead(receivedData, 2),
          bitRead(receivedData, 1),
          bitRead(receivedData, 0));
        Serial.println(serialPortMessage);
      }

      // Data bit 8 and 9 are the stop bits. Ensure they are a "1".
      // If bit 9 is a valid stop bit, then move to the mark after data state.
      if (dataCounter >= 8) {
        if (!dataInBit) {
          frameState = frameStateError;
          PrintFromProgmem(invalidStopBitMessage);
        } else if (dataCounter == 8) {
          PrintFromProgmem(validStopBit0Message);
        } else if (dataCounter >= 9) {
          strcpy_P(serialPortMessage, validStopBit1Message);
          Serial.print(serialPortMessage);

          // Check the start code.
          if (frameState == frameStateStartCode) {

            // If the start code is not as expected, move to and unexpected
            // start code state and wait for a frame break;
            if (expectedStartCode != receivedData) {
              frameState = frameStateUnexpectedStartCode;
              PrintIntFormatProgmem(unexpectedStartCodeFormat, receivedData);
            } else {
              frameState = frameStateMarkAfterData;
              PrintIntFormatProgmem(startCodeFormat, receivedData);
            }
          }

          // Capture the dimmer data.
          else if (dimmerCounter >= 0 && dimmerCounter <= 3) {
            frameState = frameStateMarkAfterData;
            dimmerLevels[dimmerCounter] = receivedData;

            strcpy_P(serialPortFormat, dimmerValueCaptureFormat);
            sprintf(serialPortMessage, serialPortFormat,
              dimmerCounter,
              receivedData,
              receivedData,
              bitRead(receivedData, 7),
              bitRead(receivedData, 6),
              bitRead(receivedData, 5),
              bitRead(receivedData, 4),
              bitRead(receivedData, 3),
              bitRead(receivedData, 2),
              bitRead(receivedData, 1),
              bitRead(receivedData, 0));
            Serial.println(serialPortMessage);

          // Capture unused dimmer data.
          } else {
            frameState = frameStateMarkAfterData;
            PrintIntFormatProgmem(unusedDimmerDataFormat, dimmerCounter);
          }
        }
      }
    }

    // Error condition.
    else {

      // While a frame break is tehcnically 22 consecutive 0's, there does
      // not exist another instance of 10 or more 0's in a row except for the
      // frame break.
      if (frameBreakCounter >= 10) {
        strcpy_P(serialPortFormat, potentialFrameBreakFormat);
        sprintf(serialPortMessage, serialPortFormat, frameBreakCounter);
        Serial.print(serialPortMessage);
      }

      // Found an unexpected start code. Waiting for frame break.
      if (frameState == frameStateUnexpectedStartCode) {
        PrintFromProgmem(unexpectedStartCodeMessage);
      }

      // Found an unexpected bit. Waiting for frame break.
      else if (frameState == frameStateError) {
        currentFrameStep = -1;
        PrintFromProgmem(errorStateMessage);
      }

      // Found an unexpected bit. Waiting for frame break.
      else {
        currentFrameStep = -1;
        PrintIntFormatProgmem(invalidFrameStateFormat, frameState);
      }
    }
  }
}

/**
 * Send the dimmer data to the shift regiser/D to A converter and DMX512 if present.
 * This is a simple state machine with a count which counts from -1 to 40, 1 step run
 * for each Arduino loop. The states are:
 * -1 - Initialize
 *  x0 - Send dimmer x bit 7.
 *  x1 - Send dimmer x bit 6.
 *  x2 - Send dimmer x bit 5.
 *  x3 - Send dimmer x bit 4.
 *  x4 - Send dimmer x bit 3.
 *  x5 - Send dimmer x bit 2.
 *  x6 - Send dimmer x bit 1.
 *  x7 - Send dimmer x bit 0.
 *  x8 - Latch shift register output into D to A address x.
 *  x9 - Clear the shift register and disable D to A writes.
 *  40 - Reset counter to 0, start again.
 *
 *  where x is 0-3, i.e. x1 = 1,11,21,31.
 */
void SendDimmerData() {

  if (dimmerSendCounter < 0) {

    // Clear the shift register.
    digitalWrite(shiftDataOutPin, LOW);
    digitalWrite(shiftClockOutPin, LOW);
    digitalWrite(shiftClearOutPin, LOW);
    digitalWrite(shiftClearOutPin, HIGH);

    // Prepare DA for dimmer 0.
    digitalWrite(daAddr0OutPin, LOW);
    digitalWrite(daAddr1OutPin, LOW);
    digitalWrite(daWriteOutPin, HIGH);

    // Reset counter to start at dimmer 0, bit 0.
    dimmerSendCounter = 0;

  } else {

    int sendState = dimmerSendCounter % 10;
    int dimmerNumber = dimmerSendCounter / 10;

    // Send bits 7-0. The D to A has the QH, i.e. "last", output of the
    // shift register connected to D7, meaning D7 must be sent before D6,
    // which must be sent before D5, etc...
    if (sendState <= 7) {
      int dimmerValue = dimmerLevels[dimmerNumber];
      int bitIndex = 7 - sendState;
      digitalWrite(shiftDataOutPin, bitRead(dimmerValue, bitIndex));
      digitalWrite(shiftClockOutPin, HIGH);
      digitalWrite(shiftClockOutPin, LOW);
    }

    // Latch into D to A.
    else if (sendState == 8) {
      digitalWrite(daAddr0OutPin, bitRead(dimmerNumber, 0));
      digitalWrite(daAddr1OutPin, bitRead(dimmerNumber, 1));
      digitalWrite(daWriteOutPin, LOW);
      digitalWrite(daWriteOutPin, HIGH);
    }

    // Clear the shift register and disable writes to the D to A.
    else if (sendState >= 9) {
      digitalWrite(daWriteOutPin, HIGH);
      digitalWrite(shiftClearOutPin, LOW);
      digitalWrite(shiftClearOutPin, HIGH);
    }
  }

  // Next state, wrapping back to 0 once we hit 40.
  dimmerSendCounter = (dimmerSendCounter + 1) % 40;
}

/**
 * Configure external interrupts.
 */
void ConfigureExternalInterrupts() {
  // Enable pin change interrupt PCINT5, which is the clock input pin.
  PCICR = (1 << PCIE0);
  PCMSK0 = (1 << PCINT5);
}

/**
 * Handle a received character.
 */
int HandleReceivedChar(char receivedChar) {
  switch (receivedChar) {
    case 'v':
      PrintFromProgmem(versionResponse);
      break;

    case 'i':
      PrintFromProgmem(versionResponse);
      break;

    case '?':
      PrintFromProgmem(helpTitle);
      Serial.println();
      PrintFromProgmem(helpInfoTitle);
      PrintFromProgmem(helpInfo);
      PrintFromProgmem(helpVersion);
      break;

    default:
      break;
  }
}

/**
 * Print a message stored in PROGMEM.
 */
void PrintFromProgmem(const char* msg)
{
  strcpy_P(serialPortMessage, msg);
  Serial.println(serialPortMessage);
}

/**
 * Print a message formated from a string in PROGMEM.
 */
void PrintIntFormatProgmem(const char* fmt, int arg)
{
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat, arg);
  Serial.println(serialPortMessage);
}

/**
 * Print a message formated from a string and string array in PROGMEM.
 */
void PrintStringFormatProgmem(const char* fmt, const char** arg, int offset)
{
  strcpy_P(serialPortArgument, pgm_read_word(&arg[offset]));
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat, serialPortArgument);
  Serial.println(serialPortMessage);
}
