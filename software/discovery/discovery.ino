/**
 * DMX Demonstrator Discovery
 * Copyright (C) 2020 Crazy Giraffe Software
 * https://github.com/crazy-giraffe-software/dmxdemonstrator/tree/master/software/discovery
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
 * About DMX Demonstrator Discovery
 *
 * This software supports the Arduio-based DMX Demonstrator boards
 * to determine the configuration and status. This is used by the
 * desktop program to determine what configuration is left to perform
 * before flashing the final software.
 */
#define _VERSION_ "1.2"

// Local copy of JC_Button: https://github.com/JChristensen/JC_Button
#include "JC_Button.h"

/**
 * Pin definitions.
 */
int dimmerLevelInputPin = A0;     // The single dimmer level control for the 'lite' transmitter control.
int dimmerLevel1InputPin = A0;    // The dimmer 1 level control for the 'pro' transmitter control.
int dimmerLevel2InputPin = A1;    // The dimmer 2 level control for the 'pro' transmitter control.
int dimmerSelectButtonPin = A1;   // The dimmer select button for the 'lite' transmitter control.
int clearAllButtonPin = A1;       // The clear all button for the frame scrambler.
int dimmerLevel3InputPin = A2;    // The dimmer 3 level control for the 'pro' transmitter control.
int clockModeButtonPin = A2;      // The clock mode button for the 'lite' transmitter control.
int errorLedPin = A2;             // The error led output for the receiver.
int scrambleButtonPin = A2;       // The scramble button for the frame scrambler.
int dimmerLevel4InputPin = A3;    // The dimmer 4 level control for the 'pro' transmitter control.
int startCodeLedPin = A3;         // The start code led output for the receiver.
int enabledOutPin = A3;           // The enabled output for the frame scrambler.
int clockSpeedInputPin = A4;      // The clock speed control for both the 'lite' and 'pro' transmitter control.
int dataLedRXPin = A4;            // The data led output for the receiver.
int scambledOutPin = A4;           // The scramble output for the frame scrambler.
int clockStepButtonPin = A5;      // The clock step button for the 'lite' transmitter control.
int clockLedRXPin = A5;           // The clock led output for the receiver.
int enabledButtonPin = A5;        // The enabled button for the frame scrambler.
int dataLedTXPin = 2;             // The data led output for both the 'lite' and 'pro' transmitter control.
int dataOutLedFSPin = 2;          // The data output led output for the frame scrambler.
int clockLedTXPin = 3;            // The clock led output for both the 'lite' and 'pro' transmitter control.
int clockOutLedFSPin = 3;         // The clock output led output for the frame scrambler.
int dimmerSelect4LedPin = 4;      // The dimmer select 4 led output for the 'lite' transmitter control.
int dataInLedFSPin = 4;           // The data intput led output for the frame scrambler.
int dimmerSelect3LedPin = 5;      // The dimmer select 3 led output for the 'lite' transmitter control.
int dimmerLevelOut4LedPin = 5;    // The dimmer output 4 led for the receiver.
int clockInLedFSPin = 5;          // The clock input led output for the frame scrambler.
int dimmerSelect2LedPin = 6;      // The dimmer select 2 led output for the 'lite' transmitter control.
int dimmerLevelOut3LedPin = 6;    // The dimmer output 3 led for the receiver.
int scambledLedPin = 6;           // The scramble led output for the frame scrambler.
int dimmerSelect1LedPin = 7;      // The dimmer select 1 led output for the 'lite' transmitter control.
int enabledLedPin = 7;            // The enabled led output for the frame scrambler.
int clockFastPin = 8;             // The clock speed fast out for the 'lite' control, in for the "pro" transmitter control.
int dataInFSPin = 8;              // The data input from the transmitter for the frame scrambler.
int clockSlowPin = 9;             // The clock speed slow out for the 'lite' control, in for the "pro" transmitter control.
int clockInFSPin = 9;             // The clock input from the transmitter for the frame scrambler.
int dimmerLevelOut2LedPin = 10;   // The dimmer output 2 led for the receiver.
int hardwareDetectOutputPin = 10; // Output to indicate which transmitter board is connected, LOW for DMX-TX2.
int dimmerLevelOut1LedPin = 11;   // The dimmer output 1 led for the receiver.
int hardwareDetectInputPin = 11;  // Input to determine which transmitter board is connected, LOW for DMX-TX2.
int dataInPin = 12;               // The data input from the transmitter.
int dataOutPin = 12;              // The data output to the receiver.
int clockInPin = 13;              // The clock input from the transmitter.
int clockOutPin = 13;             // The clock output to the receiver.

/**
 * Switches
 */
Button dimmerSelectButton = Button(dimmerSelectButtonPin);
Button clockStepButton = Button(clockStepButtonPin);
Button clockModeButton = Button(clockModeButtonPin);
Button clockSlowButton = Button(clockSlowPin);
Button clockFastButton = Button(clockFastPin);
Button clearAllButton = Button(clearAllButtonPin);
Button scrambleButton = Button(scrambleButtonPin);
Button enabledButton = Button(enabledButtonPin);

/**
 *  Discovery data.
 */
int detectedBoard = 0; // Determine which board is running.
const int TX1Default = 0;
const int RX1Detected = 1;
const int TX1Detected = 2;
const int TX2Detected = 3;
const int TX2AndControlProDetected = 4;
const int FS1Detected = 5;

const char defaultBoardMessage[] PROGMEM = "Defaulting to DMX-TX1 board.\r\n";
const char rx1Message[] PROGMEM = "DMX-RX1 is detected.\r\n";
const char tx1Message[] PROGMEM = "DMX-TX1 is detected.\r\n";
const char tx2Message[] PROGMEM = "DMX-TX2 is detected.\r\n";
const char controlProMessage[] PROGMEM = "DMX-CP1 is detected.\r\n";
const char fs1Message[] PROGMEM = "DMX-FS1 is detected.\r\n";

/**
 *  Message for test loop.
 */
volatile int testCounter = -1;
int dimmerValue = 0;
int dimmerValueChange = 0;
int previousClockValue;
int previousDimmerValue;
int previousDimmer2Value;
int previousDimmer3Value;
int previousDimmer4Value;
int analogValueThreshold = 2;

const char testCounterFormat[] PROGMEM = "Dimmer %d LED selected.\r\n";
const char dimmerLEDFormat[] PROGMEM = "Dimmer %d LED selected.\r\n";
const char clockLEDMessage[] PROGMEM = "Clock LED selected.\r\n";
const char dataLEDMessage[] PROGMEM = "Data LED selected.\r\n";
const char clockInLEDMessage[] PROGMEM = "Clock in LED selected.\r\n";
const char dataInLEDMessage[] PROGMEM = "Data in LED selected.\r\n";
const char clockOutLEDMessage[] PROGMEM = "Clock out LED selected.\r\n";
const char dataOutLEDMessage[] PROGMEM = "Data out LED selected.\r\n";
const char fastLEDMessage[] PROGMEM = "Fast LED selected.\r\n";
const char slowLEDMessage[] PROGMEM = "Slow LED selected.\r\n";
const char errorLEDMessage[] PROGMEM = "Error LED selected.\r\n";
const char startCodeLEDMessage[] PROGMEM = "Start Code LED selected.\r\n";
const char scrambledLEDMessage[] PROGMEM = "Scrambled LED selected.\r\n";
const char enabledLEDMessage[] PROGMEM = "Enabled LED selected.\r\n";
const char clockInMessage[] PROGMEM = "Clock input detected.\r\n";
const char dataInMessage[] PROGMEM = "Data input detected.\r\n";
const char clockOutMessage[] PROGMEM = "Clock output detected.\r\n";
const char dataOutMessage[] PROGMEM = "Data output detected.\r\n";
const char dimmerSelectMessage[] PROGMEM = "Dimmer select input detected.\r\n";
const char clockStepMessage[] PROGMEM = "Clock step input detected.\r\n";
const char clockModeMessage[] PROGMEM = "Clock mode input detected.\r\n";
const char clockSlowInMessage[] PROGMEM = "Clock speed slow input detected.\r\n";
const char clockFastInMessage[] PROGMEM = "Clock speed fast input detected.\r\n";
const char clockSpeedInFormat[] PROGMEM = "Clock variable speed input detected, %d.\r\n";
const char dimmerValueInFormat[] PROGMEM = "Dimmer level input detected, %d.\r\n";
const char dimmer1ValueInFormat[] PROGMEM = "Dimmer 1 level input detected, %d.\r\n";
const char dimmer2ValueInFormat[] PROGMEM = "Dimmer 2 level input detected, %d.\r\n";
const char dimmer3ValueInFormat[] PROGMEM = "Dimmer 3 level input detected, %d.\r\n";
const char dimmer4ValueInFormat[] PROGMEM = "Dimmer 4 level input detected, %d.\r\n";
const char clearAllMessage[] PROGMEM = "Clear all input detected.\r\n";
const char scrambleMessage[] PROGMEM = "Scramble input detected.\r\n";
const char enableMessage[] PROGMEM = "Enable input detected.\r\n";

/**
 * Serial data data.
 */
const long baudRate = 250000;
char serialPortFormat[100];
char serialPortArgument[100];
char serialPortMessage[255];

/**
   The serial responses and help menu.
*/
const char newlineMessage[] PROGMEM = "\r\n";
const char startUpMessage[] PROGMEM = "DMX Demonstrator Discovery starting up...\r\n";
const char readyMessage[] PROGMEM = "DMX Demonstrator Discovery ready!\r\n";
const char versionFormat[] PROGMEM = "DMX Demonstrator Discovery Version %s\r\n";

const char detectBoardStartMessage[] PROGMEM = "Detecting DMX demonstrator board...\r\n";
const char testStartMessage[] PROGMEM = "Starting test...\r\n";
const char testStopMessage[] PROGMEM = "Stopping test...\r\n";

const char helpTitle[] PROGMEM = "Help:\r\n";
const char helpOperationTitle[] PROGMEM = "Operation:\r\n";
const char helpDetectBoard[] PROGMEM = "  d: Detect connected board\r\n";
const char helpStartTest[] PROGMEM = "  t: Test connected board\r\n";
const char helpStoptest[] PROGMEM = "  s: Stop test\r\n";
const char helpInfoTitle[] PROGMEM = "Info:\r\n";
const char helpInfo[] PROGMEM = "  i: Display info\r\n";
const char helpVersion[] PROGMEM = "  v: Display version\r\n";

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

  // Complete startup message.
  SendProgmemMessage(readyMessage);

  // Enable all interrupts.
  interrupts();

  // Scan the board and start tests.
  DetectConnectedBoard();
  InitializeTestTimer();
}

/**
 * Loop
 * Put your main code here, to run repeatedly.
 */
void loop() {

  // Check serial port.
  if (Serial.available() > 0) {
    char incomingByte = Serial.read();
    HandleReceivedChar(incomingByte);
  }
}

/**
 * Timer 1 Interrupt.
 * This code runs once a second.
 */
ISR(TIMER1_COMPA_vect) {
  TestReceiverBoard();
  TestTransmitterTX1Board();
  TestTransmitterTX2Board();
  TestTransmitterFS1Board();
}

/**
 * Initialize test timer.
 * This timer runs once a second and invokes ISR(TIMER1_COMPA_vect).
 */
void InitializeTestTimer() {

  // initialize timer1
  TCCR1A = 0;                   // Reset Timer 1 control register A.
  TCCR1B = 0;                   // Reset Timer 1 control register B.
  TCCR1C = 0;                   // Reset Timer 1 control register C.
  TCNT1  = 0;                   // Reset timer 1 counter value.

  TCCR1B |= (1 << WGM12);       // CTC mode: count to OCR1A.
  TCCR1B |= (1 << CS12);        // Clock 256 prescaler.

  OCR1A = 62500;                // 62500 = 1Hz.
  TIMSK1 |= (1 << OCIE1A);      // Enable timer 1 compare interrupt.
}

/**
 * Determine if a board is connected.
 */
void DetectConnectedBoard() {

  // On the DMX-RX1, pins D5 and D6 are pulled low via LEDs + 330 ohms.
  // On the DMX-TX1, pins D5 and D6 are pulled high via LEDs + 330 ohms.
  // On the DMX-TX2, pins D5 and D6 are pulled high via 330 ohms.
  // On the DMX-FS1, pins D5 and D6 are pulled high via LEDs + 330 ohms.
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  int d5State = digitalRead(5);
  int d6State = digitalRead(6);
  int isRX1 = (d5State == LOW && d6State == LOW);
  int isTXFSOrNoBoard = (d5State == HIGH && d6State == HIGH);
  int isTX1 = isTXFSOrNoBoard;
  int isTX2 = isTXFSOrNoBoard;
  int isFS1 = isTXFSOrNoBoard;
  int isControlPro = false;
  int d10State = LOW;
  int d11State = LOW;

  // If it might be the RX1, probe other pins to confirm.
  if (!isTXFSOrNoBoard) {

    // On the DMX-RX1, pin D10 is pulled low via LED + 330 ohms.
    pinMode(10, INPUT);
    d10State = digitalRead(10);
    isRX1 &= d10State == LOW;

    // On the DMX-RX1, pin D11 is pulled low via LED + 330 ohms.
    pinMode(11, INPUT);
    d11State = digitalRead(11);
    isRX1 &= d11State == LOW;

  // It might be either TX1, TX2, or FS1, probe other pins to confirm.
  } else {

    // On the DMX-TX1, pin D10 is left floating.
    // On the DMX-TX2, pin D10 is connected to a 74LS07, high presents a hi-z load, i.e., similar to floating.
    // On the DMX-FS1, pin D10 is pulled low via 330 ohms.
    pinMode(10, INPUT_PULLUP);
    d10State = digitalRead(10);
    isTX2 &= d10State == HIGH;
    isFS1 &= d10State == LOW;

    // On the DMX-TX1, pin D11 is left floating.
    // On the DMX-TX2, pin D11 is pulled low via 330 ohms.
    // On the DMX-FS1, pin D11 is pulled low via 330 ohms.
    pinMode(11, INPUT_PULLUP);
    d11State = digitalRead(11);
    isTX2 &= d11State == LOW;
    isFS1 &= d11State == LOW;

    // On the DMX-TX1, pin D8 is pulled high via LED + 330 ohms.
    // On the DMX-TX2, pin D8 may be pulled low via the clock mode switch on the control pro.
    // On the DMX-FS1, pin D8 receives the TX data input, which may be floating, high or low.
    pinMode(8, INPUT_PULLUP);
    isControlPro |= digitalRead(8) == LOW;

    // On the DMX-TX1, pin D9 is pulled high via LED + 330 ohms.
    // On the DMX-TX2, pin D9 may be pulled low via the clock mode switch on the control pro.
    // On the DMX-FS1, pin D9 receives the TX clock input, which may be floating, high or low.
    pinMode(9, INPUT_PULLUP);
    isControlPro |= digitalRead(9) == LOW;

    // While not definitive, the analog inputs can provide a clue as to whether the TX1 is connected if either dimmer or clock potentiometers are near 0.
    // On the DMX-TX1, A* pins will read high unless a button is pressed  (A1, A2, A5) except A0 and A4, which could read high or low.
    // On the DMX-TX2, A* pins are connect to potentiometers and could read high or low.
    // On the DMX-FS1, A* pins will read high unless a button is pressed (A1, A2, A5)including A0 and A4 which are used as outputs and likely not connected.
    pinMode(A0, INPUT_PULLUP);
    pinMode(A4, INPUT_PULLUP);
    isTX1 &= (digitalRead(A0) == LOW || digitalRead(A4) == LOW);
    isControlPro |= (digitalRead(A0) == LOW || digitalRead(A4) == LOW);
  }

  // Debug
  sprintf(serialPortMessage, "5=%d, 6=%d, 10=%d, 11=%d, rx=%d, fs=%d, tx2=%d, tx1=%d, nob=%d\r\n", d5State, d6State, d10State, d11State, isRX1, isFS1, isTX2, isTX1, isTXFSOrNoBoard);
  Serial.print(serialPortMessage);  

  // Print discovery.
  if (isRX1) {
    SendProgmemMessage(rx1Message);
    detectedBoard = RX1Detected;
  } else if (isFS1) {
    SendProgmemMessage(fs1Message);
    detectedBoard = FS1Detected;
  } else if (isTX2) {
    SendProgmemMessage(tx2Message);
    if (isControlPro) {
      SendProgmemMessage(controlProMessage);
      detectedBoard = TX2AndControlProDetected;
    } else {
        detectedBoard = TX2Detected;
    }
  } else if (isTX1) {
    SendProgmemMessage(tx1Message);
    detectedBoard = TX1Detected;
  } else {
    SendProgmemMessage(defaultBoardMessage);
    detectedBoard = TX1Default;
  }
}

/**
 * Run the test sequence for the DMX-RX1.
 */
void TestReceiverBoard() {

  // Skip is not DMX-RX1 or not running a test loop.
  if (testCounter < 0 || detectedBoard != RX1Detected) {
    return;
  }

  // Configure IO.
  if (testCounter == 0) {
    pinMode(errorLedPin, OUTPUT);
    pinMode(startCodeLedPin, OUTPUT);
    pinMode(dataLedRXPin, OUTPUT);
    pinMode(clockLedRXPin, OUTPUT);

    pinMode(dimmerLevelOut1LedPin, OUTPUT);
    pinMode(dimmerLevelOut2LedPin, OUTPUT);
    pinMode(dimmerLevelOut3LedPin, OUTPUT);
    pinMode(dimmerLevelOut4LedPin, OUTPUT);

    pinMode(dataInPin, INPUT_PULLUP);
    pinMode(clockInPin, INPUT_PULLUP);
  }

   // Turn on LEDs.
  digitalWrite(dimmerLevelOut1LedPin, LOW);
  digitalWrite(dimmerLevelOut2LedPin, LOW);
  digitalWrite(dimmerLevelOut3LedPin, LOW);
  digitalWrite(dimmerLevelOut4LedPin, LOW);
  digitalWrite(clockLedRXPin, HIGH);
  digitalWrite(dataLedRXPin, HIGH);
  digitalWrite(errorLedPin, HIGH);
  digitalWrite(startCodeLedPin, HIGH);

  switch (testCounter++) {
    case 0:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerLevelOut1LedPin, HIGH);
      break;

    case 1:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerLevelOut2LedPin, HIGH);
      break;

    case 2:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerLevelOut3LedPin, HIGH);
      break;

    case 3:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerLevelOut4LedPin, HIGH);
      break;

    case 4:
      SendProgmemMessage(clockLEDMessage);
      digitalWrite(clockLedRXPin, LOW);
      break;

    case 5:
      SendProgmemMessage(dataLEDMessage);
      digitalWrite(dataLedRXPin, LOW);
      break;

    case 6:
      SendProgmemMessage(errorLEDMessage);
      digitalWrite(errorLedPin, LOW);
      break;

    case 7:
      SendProgmemMessage(startCodeLEDMessage);
      digitalWrite(startCodeLedPin, LOW);
      testCounter = 0;
      break;

    default:
      testCounter = -1;
      return;
      break;
  }

  // Make clock LED track clock input.
  if (!digitalRead(clockInPin)) {
    SendProgmemMessage(clockInMessage);
    digitalWrite(clockLedRXPin, LOW);
  }

  // Make data LED track clock input.
  if (!digitalRead(dataInPin)) {
    SendProgmemMessage(dataInMessage);
    digitalWrite(dataLedRXPin, LOW);
  }
}

/**
 * Run the test sequence for the DMX-TX1.
 */
void TestTransmitterTX1Board() {

  // Skip is not DMX-TX1 or not running a test loop.
  if (testCounter < 0 || (detectedBoard != TX1Detected && detectedBoard != TX1Default)) {
    return;
  }

  // Verify board.
  pinMode(hardwareDetectInputPin, INPUT_PULLUP);
  int isTX1 = digitalRead(hardwareDetectInputPin);

  // Configure IO.
  if (testCounter == 0) {
    pinMode(dimmerSelectButtonPin, INPUT_PULLUP);
    pinMode(clockModeButtonPin, INPUT_PULLUP);
    pinMode(clockStepButtonPin, INPUT_PULLUP);

    pinMode(dataLedTXPin, OUTPUT);
    pinMode(clockLedTXPin, OUTPUT);
    pinMode(dimmerSelect1LedPin, OUTPUT);
    pinMode(dimmerSelect2LedPin, OUTPUT);
    pinMode(dimmerSelect3LedPin, OUTPUT);
    pinMode(dimmerSelect4LedPin, OUTPUT);

    pinMode(dataInPin, INPUT_PULLUP);
    pinMode(clockInPin, INPUT_PULLUP);

    // Verify it's a TX1 before enabling these outputs.
    if (isTX1) {
        pinMode(clockSlowPin, OUTPUT);
        pinMode(clockFastPin, OUTPUT);
    }

    // Use the default analog reference.
    analogReference(DEFAULT);
    int dimmerValue = analogRead(dimmerLevelInputPin);
    int clockValue = analogRead(clockSpeedInputPin);

    // Initialize the buttons.
    dimmerSelectButton.begin();
    clockStepButton.begin();
    clockModeButton.begin();
  }

  // Turn on LEDs in a loop.
  digitalWrite(dimmerSelect1LedPin, HIGH);
  digitalWrite(dimmerSelect2LedPin, HIGH);
  digitalWrite(dimmerSelect3LedPin, HIGH);
  digitalWrite(dimmerSelect4LedPin, HIGH);
  digitalWrite(clockLedTXPin, HIGH);
  digitalWrite(dataLedTXPin, HIGH);
  if (isTX1) {
    digitalWrite(clockFastPin, HIGH);
    digitalWrite(clockSlowPin, HIGH);
  }

  switch (testCounter++) {
    case 0:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerSelect1LedPin, LOW);
      break;

    case 1:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerSelect2LedPin, LOW);
      break;

    case 2:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerSelect3LedPin, LOW);
      break;

    case 3:
      SendProgmemIntFormat(dimmerLEDFormat, testCounter);
      digitalWrite(dimmerSelect4LedPin, LOW);
      break;

    case 4:
      SendProgmemMessage(clockLEDMessage);
      digitalWrite(clockLedTXPin, LOW);
      break;

    case 5:
      SendProgmemMessage(dataLEDMessage);
      digitalWrite(dataLedTXPin, LOW);
      break;

    case 6:
      if (isTX1) {
        SendProgmemMessage(fastLEDMessage);
        digitalWrite(clockFastPin, LOW);
        break;
      }
      // Fallthrough

    case 7:
      if (isTX1) {
        SendProgmemMessage(slowLEDMessage);
        digitalWrite(clockSlowPin, LOW);
        testCounter = 0;
        break;
      }
      // Fallthrough

    default:
      testCounter = -1;
      return;
      break;
  }

  // Look for dimmer and clock mode presses.
  if (isTX1) {

    // If the dimmer select is pressed, light up dimmer LEDs.
    dimmerSelectButton.read();
    if (dimmerSelectButton.isPressed()) {
      SendProgmemMessage(dimmerSelectMessage);
      digitalWrite(dimmerSelect1LedPin, LOW);
      digitalWrite(dimmerSelect2LedPin, LOW);
      digitalWrite(dimmerSelect3LedPin, LOW);
      digitalWrite(dimmerSelect4LedPin, LOW);
    }

    // If the clock step is pressed, light up the slow clock LED.
    clockStepButton.read();
    if (clockStepButton.isPressed()) {
      SendProgmemMessage(clockStepMessage);
      digitalWrite(clockSlowPin, LOW);
    }

    // If the clock mode is pressed, light up the false clock LED.
    clockModeButton.read();
    if (clockModeButton.isPressed()) {
      SendProgmemMessage(clockModeMessage);
      digitalWrite(clockFastPin, LOW);
    }

    // Detect if dimmer level was changed. It bounces around a bit so make sure the change
    // is greater than the a certain threshold.
    dimmerValue = analogRead(dimmerLevelInputPin);
    dimmerValueChange = abs(previousDimmerValue - dimmerValue);
    if (dimmerValueChange >= analogValueThreshold) {
      SendProgmemIntFormat(dimmerValueInFormat, dimmerValue);
      previousDimmerValue = dimmerValue;
    }
  }

  // Detect if clock speed was changed. It bounces around a bit so make sure the change
  // is greater than the a certain threshold.
  int clockValue = analogRead(clockSpeedInputPin);
  int clockValueChange = abs(previousClockValue - clockValue);
  if (clockValueChange >= analogValueThreshold) {
    SendProgmemIntFormat(clockSpeedInFormat, clockValue);
    previousClockValue = clockValue;
  }

  // Make clock LED track clock output.
  if (!digitalRead(clockOutPin)) {
    SendProgmemMessage(clockOutMessage);
    digitalWrite(clockLedTXPin, LOW);
  }

  // Make data LED track clock output.
  if (!digitalRead(dataOutPin)) {
    SendProgmemMessage(dataOutMessage);
    digitalWrite(dataLedTXPin, LOW);
  }
}

/**
 * Run the test sequence for the DMX-TX2.
 */
void TestTransmitterTX2Board() {

  // Skip is not DMX-TX2 or not running a test loop.
  if (testCounter < 0 || (detectedBoard != TX2Detected && detectedBoard != TX2AndControlProDetected)) {
    return;
  }

  // Verify board.
  pinMode(hardwareDetectInputPin, INPUT_PULLUP);
  int isTX2 = !digitalRead(hardwareDetectInputPin);

  // Configure IO.
  if (testCounter == 0) {
    pinMode(clockStepButtonPin, INPUT_PULLUP);
    pinMode(clockSlowPin, INPUT_PULLUP);
    pinMode(clockFastPin, INPUT_PULLUP);

    pinMode(dataLedTXPin, OUTPUT);
    pinMode(clockLedTXPin, OUTPUT);
    pinMode(hardwareDetectOutputPin, OUTPUT);

    pinMode(dataOutPin, INPUT_PULLUP);
    pinMode(clockOutPin, INPUT_PULLUP);

    // Use the default analog reference.
    analogReference(DEFAULT);
    int dimmer1Value = analogRead(dimmerLevel1InputPin);
    int dimmer2Value = analogRead(dimmerLevel2InputPin);
    int dimmer3Value = analogRead(dimmerLevel3InputPin);
    int dimmer4Value = analogRead(dimmerLevel4InputPin);
    int clockValue = analogRead(clockSpeedInputPin);

    // Verify it's a TX2 before enabling these buttons.
    clockStepButton.begin();
    if (isTX2) {
      clockSlowButton.begin();
      clockFastButton.begin();
    }
  }

  // Turn on LEDs in a loop.
  digitalWrite(clockLedTXPin, HIGH);
  digitalWrite(dataLedTXPin, HIGH);

  switch (testCounter++) {
    case 0:
      if (isTX2) {
        SendProgmemMessage(clockLEDMessage);
        digitalWrite(clockLedTXPin, LOW);
      }
      break;

    case 1:
      if (isTX2) {
        SendProgmemMessage(dataLEDMessage);
        digitalWrite(dataLedTXPin, LOW);
        testCounter = 0;
        break;
      }
      // Fallthrough

    default:
      testCounter = -1;
      return;
      break;
  }

  // Look for clock fast and slow presses.
  if (isTX2) {

    // If the clock step is pressed, light up the slow clock LED.
    clockStepButton.read();
    if (clockStepButton.isPressed()) {
      SendProgmemMessage(clockStepMessage);
      digitalWrite(clockLedTXPin, LOW);
    }

    // If the clock slow mode is pressed, print message.
    clockSlowButton.read();
    if (clockSlowButton.isPressed()) {
      SendProgmemMessage(clockSlowInMessage);
    }

    // If the clock fast mode is pressed, print message.
    clockFastButton.read();
    if (clockFastButton.isPressed()) {
      SendProgmemMessage(clockFastInMessage);
    }

    // Detect if dimmer 1 level was changed. It bounces around a bit so make sure the change
    // is greater than the a certain threshold.
    dimmerValue = analogRead(dimmerLevel1InputPin);
    dimmerValueChange = abs(previousDimmerValue - dimmerValue);
    if (dimmerValueChange >= analogValueThreshold) {
      SendProgmemIntFormat(dimmer1ValueInFormat, dimmerValue);
      previousDimmerValue = dimmerValue;
    }

    // Detect if dimmer 2 level was changed. It bounces around a bit so make sure the change
    // is greater than the a certain threshold.
    dimmerValue = analogRead(dimmerLevel2InputPin);
    dimmerValueChange = abs(previousDimmer2Value - dimmerValue);
    if (dimmerValueChange >= analogValueThreshold) {
      SendProgmemIntFormat(dimmer2ValueInFormat, dimmerValue);
      previousDimmer2Value = dimmerValue;
    }

    // Detect if dimmer level was changed. It bounces around a bit so make sure the change
    // is greater than the a certain threshold.
    dimmerValue = analogRead(dimmerLevel3InputPin);
    dimmerValueChange = abs(previousDimmer3Value - dimmerValue);
    if (dimmerValueChange >= analogValueThreshold) {
      SendProgmemIntFormat(dimmer3ValueInFormat, dimmerValue);
      previousDimmer3Value = dimmerValue;
    }

    // Detect if dimmer level was changed. It bounces around a bit so make sure the change
    // is greater than the a certain threshold.
    dimmerValue = analogRead(dimmerLevel4InputPin);
    dimmerValueChange = abs(previousDimmer4Value - dimmerValue);
    if (dimmerValueChange >= analogValueThreshold) {
      SendProgmemIntFormat(dimmer4ValueInFormat, dimmerValue);
      previousDimmer4Value = dimmerValue;
    }
  }

  // Detect if clock speed was changed. It bounces around a bit so make sure the change
  // is greater than the a certain threshold.
  int clockValue = analogRead(clockSpeedInputPin);
  int clockValueChange = abs(previousClockValue - clockValue);
  if (clockValueChange >= analogValueThreshold) {
    SendProgmemIntFormat(clockSpeedInFormat, clockValue);
    previousClockValue = clockValue;
  }

  // Make clock LED track clock output.
  if (!digitalRead(clockOutPin)) {
    SendProgmemMessage(clockOutMessage);
    digitalWrite(clockLedTXPin, LOW);
  }

  // Make data LED track clock output.
  if (!digitalRead(dataOutPin)) {
    SendProgmemMessage(dataOutMessage);
    digitalWrite(dataLedTXPin, LOW);
  }
}

/**
 * Run the test sequence for the DMX-FS1.
 */
void TestTransmitterFS1Board() {

  // Skip is not DMX-FS1 or not running a test loop.
  if (testCounter < 0 || detectedBoard != FS1Detected) {
    return;
  }

  // Configure IO.
  if (testCounter == 0) {
    pinMode(clearAllButtonPin, INPUT_PULLUP);
    pinMode(scrambleButtonPin, INPUT_PULLUP);
    pinMode(enabledButtonPin, INPUT_PULLUP);

    pinMode(dataOutLedFSPin, OUTPUT);
    pinMode(clockOutLedFSPin, OUTPUT);
    pinMode(dataInLedFSPin, OUTPUT);
    pinMode(clockInLedFSPin, OUTPUT);
    pinMode(scambledLedPin, OUTPUT);
    pinMode(enabledLedPin, OUTPUT);

    pinMode(enabledOutPin, OUTPUT);
    pinMode(scambledOutPin, OUTPUT);

    pinMode(dataInFSPin, INPUT_PULLUP);
    pinMode(clockInFSPin, INPUT_PULLUP);
    pinMode(dataOutPin, INPUT_PULLUP);
    pinMode(clockOutPin, INPUT_PULLUP);

    // Enable buttons.
    clearAllButton.begin();
    scrambleButton.begin();
    enabledButton.begin();
  }

  // Turn on LEDs in a loop.
  digitalWrite(dataOutLedFSPin, HIGH);
  digitalWrite(clockOutLedFSPin, HIGH);
  digitalWrite(dataInLedFSPin, HIGH);
  digitalWrite(clockInLedFSPin, HIGH);
  digitalWrite(scambledLedPin, HIGH);
  digitalWrite(enabledLedPin, HIGH);

  digitalWrite(enabledOutPin, HIGH);
  digitalWrite(scambledOutPin, HIGH);

  switch (testCounter++) {
    case 0:
      SendProgmemMessage(clockInLEDMessage);
      digitalWrite(clockInLedFSPin, LOW);
      break;

    case 1:
      SendProgmemMessage(clockOutLEDMessage);
      digitalWrite(clockOutLedFSPin, LOW);
      break;

    case 2:
      SendProgmemMessage(dataOutLEDMessage);
      digitalWrite(dataOutLedFSPin, LOW);
      break;

    case 3:
      SendProgmemMessage(dataInLEDMessage);
      digitalWrite(dataInLedFSPin, LOW);
      break;

    case 4:
      SendProgmemMessage(scrambledLEDMessage);
      digitalWrite(scambledLedPin, LOW);
      digitalWrite(scambledOutPin, HIGH);
      break;

    case 5:
      SendProgmemMessage(enabledLEDMessage);
      digitalWrite(enabledLedPin, LOW);
      digitalWrite(enabledOutPin, HIGH);
      testCounter = 0;
      break;

    default:
      testCounter = -1;
      return;
      break;
  }

  // If the clear all button is pressed, print message.
  clearAllButton.read();
  if (clearAllButton.isPressed()) {
    SendProgmemMessage(clearAllMessage);
  }

  // If the scrabmle button is pressed, print message.
  scrambleButton.read();
  if (scrambleButton.isPressed()) {
    SendProgmemMessage(scrambleMessage);
  }

  // If the enable button is pressed, print message.
  enabledButton.read();
  if (enabledButton.isPressed()) {
    SendProgmemMessage(enableMessage);
  }

  // Make clock in LED track clock input.
  if (!digitalRead(clockInFSPin)) {
    SendProgmemMessage(clockInMessage);
    digitalWrite(clockInLedFSPin, LOW);
  }

  // Make data in LED track clock input.
  if (!digitalRead(dataInFSPin)) {
    SendProgmemMessage(dataInMessage);
    digitalWrite(dataInLedFSPin, LOW);
  }
  
  // Make clock out LED track clock output.
  if (!digitalRead(clockOutPin)) {
    SendProgmemMessage(clockOutMessage);
    digitalWrite(clockOutLedFSPin, LOW);
  }

  // Make data out LED track data output.
  if (!digitalRead(dataOutPin)) {
    SendProgmemMessage(dataOutMessage);
    digitalWrite(dataOutLedFSPin, LOW);
  }
}

/**
 * Handle a received character.
 */
int HandleReceivedChar(char receivedChar) {
  switch (receivedChar) {

    case 'd':
      SendProgmemMessage(detectBoardStartMessage);
      DetectConnectedBoard();
      break;

    case 't':
      SendProgmemMessage(testStartMessage);
      DetectConnectedBoard();
      testCounter = 0;
      break;

    case 's':
      SendProgmemMessage(testStopMessage);
      testCounter = 1000;
      break;

    case 'v':
      SendProgmemStringFormat(versionFormat, _VERSION_);
      break;

    case 'i':
      SendProgmemStringFormat(versionFormat, _VERSION_);
      break;

    case '?':
      SendProgmemMessage(helpTitle);
      Serial.println();
      SendProgmemMessage(helpOperationTitle);
      SendProgmemMessage(helpDetectBoard);
      SendProgmemMessage(helpStartTest);
      SendProgmemMessage(helpStoptest);
      SendProgmemMessage(helpInfoTitle);
      SendProgmemMessage(helpInfo);
      SendProgmemMessage(helpVersion);
      Serial.println();
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
void SendProgmemDataByteFormat(const char* fmt, int arg, int data) {
  strcpy_P(serialPortFormat, fmt);
  sprintf(serialPortMessage, serialPortFormat,
          arg,
          data,
          data,
          bitRead(data, 7),
          bitRead(data, 6),
          bitRead(data, 5),
          bitRead(data, 4),
          bitRead(data, 3),
          bitRead(data, 2),
          bitRead(data, 1),
          bitRead(data, 0));

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
