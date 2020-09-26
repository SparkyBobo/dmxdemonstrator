/**
   DMX Demonstrator Transmitter
   Copyright (C) 2020 Crazy Giraffe Software [https://github.com/xxxxx]

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/**
 * About DMX Demonstrator Transmitter
 *
 * This software supports the Arduio-based DMX Demonstrator Transmitter
 * running any of the supported hardware options.
 */

// Install "JC Button" via Tools->Manage Libraries.
#include <JC_Button.h>            // https://github.com/JChristensen/JC_Button

/**
 * Pin definitions.
*/
int dimmerLevelInputPin = 0;      // The single dimmer level control for the 'lite' control.
int dimmerLevel0InputPin = 0;     // The dimmer 1 level control for the 'pro' control.
int dimmerLevel1InputPin = 1;     // The dimmer 2 level control for the 'pro' control.
int dimmerLevel2InputPin = 2;     // The dimmer 3 level control for the 'pro' control.
int dimmerLevel3InputPin = 3;     // The dimmer 4 level control for the 'pro' control.
int clockSpeedInputPin = 4;       // The clock speed control for both the 'lite' and 'pro' control.
int dimmerSelectButtonPin = 15;   // The dimmer select button for the 'lite' control.
int clockModeButtonPin = 16;      // The clock mode button for the 'lite' control.
int clockStepButtonPin = 19;      // The clock step button for the 'lite' control.


int dataLedPin = 2;               // The data led output for both the 'lite' and 'pro' control.
int clockLedPin = 3;              // The clock led output for both the 'lite' and 'pro' control.
int dimmerSelect3LedPin = 4;      // The dimmer select 4 led output for the 'lite' control.
int dimmerSelect2LedPin = 5;      // The dimmer select 3 led output for the 'lite' control.
int dimmerSelect1LedPin = 6;      // The dimmer select 2 led output for the 'lite' control.
int dimmerSelect0LedPin = 7;      // The dimmer select 1 led output for the 'lite' control.
int clockFastPin = 8;             // The clock speed fast out for the 'lite' control, in for the "pro" control.
int clockSlowPin = 9;             // The clock speed slow out for the 'lite' control, in for the "pro" control.
int hardwareDetectOutputPin = 10; // Output to indicate which transmitter board is connected.
int hardwareDetectInputPin = 11;  // Input to determine which transmitter board is connected.

volatile int dataOutPin = 12;     // The data output to the receiver.
volatile int clockOutPin = 13;    // The clock output to the receiver.

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
 * Hardware detect data.
  */
int usingControlPro = 0;          // A value indicating if the 'pro' controller was detected.
const char hardwareDetectFormat[] PROGMEM = "Controller: found %s controller.";
const char hardwareDetectLite[] PROGMEM = "'lite'";
const char hardwareDetectPro[] PROGMEM = "'pro'";
const char* const hardwareDetectMessages[] PROGMEM = { hardwareDetectLite, hardwareDetectPro, };

/**
 * Clock mode data.
  */
int clockModeSelect = 0;
const int clockModeSelectOff = 0;
const int clockModeSelectSlow = 1;
const int clockModeSelectFast = 2;
const int clockModelSelectToggle = 255;
int previousClockValue = -1;
int clockValueThreshold = 5;

const char clockModeOffMessage[] PROGMEM = "Off";
const char clockModeFastMessage[] PROGMEM = "Fast";
const char clockModeSlowMessage[] PROGMEM = "Slow";
const char* const clockModeMessages[] PROGMEM = { clockModeOffMessage, clockModeSlowMessage, clockModeFastMessage, };

/**
 * Dimmer select data.
  */
int dimmerLevels[4] = { 0 };      // The dimmer levels.
int dimmerSelect = 0;             // The selected dimmer for the 'lite' controller.
const int dimmerSelectToggle = 255;

/**
 * Switches
 */
Button dimmerSelectButton = Button(dimmerSelectButtonPin);
Button clockStepButton = Button(clockStepButtonPin);
Button clockModeButton = Button(clockModeButtonPin);
Button clockSlowButton = Button(clockSlowPin);
Button clockFastButton = Button(clockFastPin);

/**
 *  Message for frame steps.
 */
char* null = 0;
const char frameBreakMessage[] PROGMEM = "Frame Break (%d)";
const char markAfterBreakMessage[] PROGMEM = "Mark after Break (%d)";
const char startCodeStartBitMessage[] PROGMEM = "Start code Start bit";
const char startCodeMessage[] PROGMEM = "Start code data bit %d";
const char dimmer0StartBitMessage[] PROGMEM = "Dimmer 0 Start bit";
const char dimmer0Message[] PROGMEM = "Dimmer 0 data bit %d";
const char dimmer1StartBitMessage[] PROGMEM = "Dimmer 1 Start bit";
const char dimmer1Message[] PROGMEM = "Dimmer 1 data bit %d";
const char dimmer2StartBitMessage[] PROGMEM = "Dimmer 2 Start bit";
const char dimmer2Message[] PROGMEM = "Dimmer 2 data bit %d";
const char dimmer3StartBitMessage[] PROGMEM = "Dimmer 3 Start bit";
const char dimmer3Message[] PROGMEM = "Dimmer 3 data bit %d";
const char markMessage[] PROGMEM = "Mark (%d)";
const char frameMarkMessage[] PROGMEM = "Mark between Frames";
const char endFrameMessage[] PROGMEM = "End of Frame";

const char invalidFrameStepFormat[] PROGMEM = "Invalid frame number: %d";
const char frameStepFormat[] PROGMEM = "Step: %2d\t";
const char dataOutBitFormat[] PROGMEM = "Data: %d\t\t";
const char dimmerTransmitFormat[] PROGMEM = ", level: %3dd, %02Xh, %d%d%d%d%d%d%d%db";
const char dimmerCaptureFormat[] PROGMEM = ", Dimmer %d level capture: %3dd, %02Xh, %d%d%d%d%d%d%d%db";
const char invalidDimmerFormat[] PROGMEM = "Invalid dimmer number: %d";

/**
 * Variables for sending a frame of DMX4 data.
 */
volatile int dataOutBit = 0;
volatile int clockOutBit = 0;
int currentFrameStep = -1;
int frameStepCount = 88;

/**
 *  A single step of the DMX4 protocol.
 *  This struct and the array are equivalent to the EPROM in the original demonstrator.
 *  Each step consists of "instructions" for what data to send, from which dimmer, and when
 *  to capture each dimmer value.
 */
typedef struct {
  char stepNumber;                // Equivalent to the EPROM Address/frame number.
  char fixedData;                 // Equivalent to EPROM D0: DMX Standard Data, Marks and Breaks (Active High).
  char dimmerTransmit;            // Equivalent to the EPROM D1,3,5,6: Simlar to the shift register output enable, this indicates when and which dimmer data is transmitted.
  char dimmerBit;                 // Equivalent to the EPROM D2: Similar to the shift register clock inhibit, this value indicate which bit of the dimmerTransmit to send.
  char dimmerCapture;             // Equivalent to the EPROM D7,5,6: Similar to the data counter register load, this indicates when and which dimmer should be sampled.
  const char* const description;  // A description of the frame step.
} FrameStep;

const FrameStep frameSteps[] = {
  {  0, 0,  -1, 0,  -1, frameBreakMessage, },
  {  1, 0,  -1, 0,  -1, null, },
  {  2, 0,  -1, 0,  -1, null, },
  {  3, 0,  -1, 0,  -1, null, },
  {  4, 0,  -1, 0,  -1, null, },
  {  5, 0,  -1, 0,  -1, null, },
  {  6, 0,  -1, 0,  -1, null, },
  {  7, 0,  -1, 0,  -1, null, },
  {  8, 0,  -1, 0,  -1, null, },
  {  9, 0,  -1, 0,  -1, null, },
  { 10, 0,  -1, 0,  -1, null, },
  { 11, 0,  -1, 0,  -1, null, },
  { 12, 0,  -1, 0,  -1, null, },
  { 13, 0,  -1, 0,  -1, null, },
  { 14, 0,  -1, 0,  -1, null, },
  { 15, 0,  -1, 0,  -1, null, },
  { 16, 0,  -1, 0,  -1, null, },
  { 17, 0,  -1, 0,  -1, null, },
  { 18, 0,  -1, 0,  -1, null, },
  { 19, 0,  -1, 0,  -1, null, },
  { 20, 0,  -1, 0,  -1, null, },
  { 21, 0,  -1, 0,  -1, null, },
  { 22, 0,  -1, 0,  -1, null, },
  { 23, 1,  -1, 0,  -1, markAfterBreakMessage, },
  { 24, 1,  -1, 0,  -1, null, },
  { 25, 1,  -1, 0,  -1, null, },
  { 26, 0,  -1, 0,  -1, startCodeStartBitMessage, },
  { 27, 0,  -1, 0,  -1, startCodeMessage, },
  { 28, 0,  -1, 1,  -1, null, },
  { 29, 0,  -1, 2,  -1, null, },
  { 30, 0,  -1, 3,  -1, null, },
  { 31, 0,  -1, 4,  -1, null, },
  { 32, 0,  -1, 5,  -1, null, },
  { 33, 0,  -1, 6,  -1, null, },
  { 34, 0,  -1, 7,  -1, null, },
  { 35, 1,  -1, 0,  -1, markMessage, },
  { 36, 1,  -1, 0,  -1, null, },
  { 37, 1,  -1, 0,   0, null, },
  { 38, 0,  -1, 0,  -1, dimmer0StartBitMessage, },
  { 39, 0,   0, 0,  -1, dimmer0Message, },
  { 40, 0,   0, 1,  -1, null, },
  { 41, 0,   0, 2,  -1, null, },
  { 42, 0,   0, 3,  -1, null, },
  { 43, 0,   0, 4,  -1, null, },
  { 44, 0,   0, 5,  -1, null, },
  { 45, 0,   0, 6,  -1, null, },
  { 46, 0,   0, 7,  -1, null, },
  { 47, 1,  -1, 0,  -1, markMessage, },
  { 48, 1,  -1, 0,  -1, null, },
  { 49, 1,  -1, 0,   1, null, },
  { 50, 0,  -1, 0,  -1, dimmer1StartBitMessage, },
  { 51, 0,   1, 0,  -1, dimmer1Message, },
  { 52, 0,   1, 1,  -1, null, },
  { 53, 0,   1, 2,  -1, null, },
  { 54, 0,   1, 3,  -1, null, },
  { 55, 0,   1, 4,  -1, null, },
  { 56, 0,   1, 5,  -1, null, },
  { 57, 0,   1, 6,  -1, null, },
  { 58, 0,   1, 7,  -1, null, },
  { 59, 1,  -1, 0,  -1, markMessage, },
  { 60, 1,  -1, 0,  -1, null, },
  { 61, 1,  -1, 0,   2, null, },
  { 62, 0,  -1, 0,  -1, dimmer2StartBitMessage, },
  { 63, 0,   2, 0,  -1, dimmer2Message, },
  { 64, 0,   2, 1,  -1, null, },
  { 65, 0,   2, 2,  -1, null, },
  { 66, 0,   2, 3,  -1, null, },
  { 67, 0,   2, 4,  -1, null, },
  { 68, 0,   2, 5,  -1, null, },
  { 69, 0,   2, 6,  -1, null, },
  { 70, 0,   2, 7,  -1, null, },
  { 71, 1,  -1, 0,  -1, markMessage, },
  { 72, 1,  -1, 0,  -1, null, },
  { 73, 1,  -1, 0,   3, null, },
  { 74, 0,  -1, 0,  -1, dimmer3StartBitMessage, },
  { 75, 0,   3, 0,  -1, dimmer3Message, },
  { 76, 0,   3, 1,  -1, null, },
  { 77, 0,   3, 2,  -1, null, },
  { 78, 0,   3, 3,  -1, null, },
  { 79, 0,   3, 4,  -1, null, },
  { 80, 0,   3, 5,  -1, null, },
  { 81, 0,   3, 6,  -1, null, },
  { 82, 0,   3, 7,  -1, null, },
  { 83, 1,  -1, 0,  -1, markMessage, },
  { 84, 1,  -1, 0,  -1, null, },
  { 85, 1,  -1, 0,  -1, null, },
  { 86, 1,  -1, 0,  -1, frameMarkMessage, },
  { 87, 1,  -1, 0,  -1, endFrameMessage, },
};

/**
 * The serial respones and help menu.
 */
const char startUpResponse[] PROGMEM = "DMX Demonstrator Transmitter starting up...";
const char versionResponse[] PROGMEM = "DMX Demonstrator Transmitter Version 1.0";
const char readyResponse[] PROGMEM = "DMX Demonstrator Transmitter ready!";

const char toggleClockResponseFormat[] PROGMEM = "Toggle clock mode: %s";
const char setClockResponseFormat[] PROGMEM = "Set clock mode: %s";
const char toggleDimmerResponseFormat[] PROGMEM = "Toggle dimmer: %d";
const char setDimmerResponseFormat[] PROGMEM = "Set dimmer: %d";

const char helpTitle[] PROGMEM = "Help:";
const char helpClockTitle[] PROGMEM = "Clock modes:";
const char helpClockToggle[] PROGMEM = "  c: Toggle clock mode";
const char helpClockOff[] PROGMEM = "  o: Set clock mode: off";
const char helpClockFast[] PROGMEM = "  f: Set clock mode: fast";
const char helpClockSlow[] PROGMEM = "  s: Set clock mode: slow";
const char helpClockStep[] PROGMEM = "  n: Step clock";
const char helpDimmerTitle[] PROGMEM = "Dimmer select:";
const char helpDimmerToggle[] PROGMEM = "  d: Toggle dimmer select";
const char helpDimmer0[] PROGMEM = "  0: Set dimmer select: 0";
const char helpDimmer1[] PROGMEM = "  1: Set dimmer select: 1";
const char helpDimmer2[] PROGMEM = "  2: Set dimmer select: 2";
const char helpDimmer3[] PROGMEM = "  3: Set dimmer select: 3";
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

  // Use the default analog reference.
  analogReference(DEFAULT);

  // Configure IO.
  pinMode(dimmerSelectButtonPin, INPUT_PULLUP);
  pinMode(clockModeButtonPin, INPUT_PULLUP);
  pinMode(clockStepButtonPin, INPUT_PULLUP);
  pinMode(clockSlowPin, INPUT_PULLUP);
  pinMode(clockFastPin, INPUT_PULLUP);
  pinMode(hardwareDetectInputPin, INPUT_PULLUP);

  pinMode(dataLedPin, OUTPUT);
  pinMode(clockLedPin, OUTPUT);
  pinMode(dimmerSelect0LedPin, OUTPUT);
  pinMode(dimmerSelect1LedPin, OUTPUT);
  pinMode(dimmerSelect2LedPin, OUTPUT);
  pinMode(dimmerSelect3LedPin, OUTPUT);
  pinMode(hardwareDetectOutputPin, OUTPUT);
  pinMode(dataOutPin, OUTPUT);
  pinMode(clockOutPin, OUTPUT);

  // Determine if the 'pro' or 'lite' controller is attached.
  usingControlPro = !digitalRead(hardwareDetectInputPin);
  PrintStringFormatProgmem(hardwareDetectFormat, hardwareDetectMessages, usingControlPro);
  if (!usingControlPro) {
    // For the 'lite' controllers, these are LED outputs.
    pinMode(clockSlowPin, OUTPUT);
    pinMode(clockFastPin, OUTPUT);
  }

  // Initialize clock mode and dimmer.
  SelectClockMode(clockModeSelectSlow);
  PrintStringFormatProgmem(toggleClockResponseFormat, clockModeMessages, clockModeSelect);

  SelectDimmer(0);
  PrintIntFormatProgmem(setDimmerResponseFormat, dimmerSelect);

  // Initialize the buttons.
  dimmerSelectButton.begin();
  clockStepButton.begin();
  clockModeButton.begin();
  if (usingControlPro) {
    clockSlowButton.begin();
    clockFastButton.begin();
  }

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

  // If the clock step was pressed advance to the next frame step.
  clockStepButton.read();
  if (clockStepButton.wasPressed()) {
    SelectClockMode(clockModeSelectOff);
    ExecuteNextFrameStep();
  }

  // Look for dimmer and clock mode presses on 'lite' controller.
  if (!usingControlPro) {

    // If the dimmer select was changed, select the next dimmer: 0-3.
    dimmerSelectButton.read();
    if (dimmerSelectButton.wasPressed()) {
      SelectDimmer(dimmerSelectToggle);
    }

    // If the clock mode was pressed, select the next mode: off, slow, fast.
    clockModeButton.read();
    if (clockModeButton.wasPressed()) {
      SelectClockMode(clockModelSelectToggle);
    }
  }

  // Look for clock fast and slow presses on 'pro' controller.
  if (usingControlPro) {

    // If the clock slow mode was pressed, switch to slow mode.
    clockSlowButton.read();
    if (clockSlowButton.wasPressed()) {
      SelectClockMode(clockModeSelectSlow);
    }

    // If the clock fast mode was pressed, switch to fast mode.
    clockFastButton.read();
    if (clockFastButton.wasPressed()) {
      SelectClockMode(clockModeSelectFast);
    }
  }

  // Detect if clock speed was changed. It bounces around a bit so make sure the change
  // is greater than the a certain threshold.
  if (clockModeSelect == clockModeSelectSlow) {
    int clockValue = analogRead(clockSpeedInputPin);
    int clockValueChange = abs(previousClockValue - clockValue);
    if (clockValueChange >= clockValueThreshold) {
      InitializeClockTimer(clockModeSelectSlow);
      previousClockValue = clockValue;
    }
  }

  // Set status LEDs. LEDs require 0 to light up so all
  // conditions are inverted, i.e. !=.
  digitalWrite(dataLedPin, !dataOutBit);
  digitalWrite(clockLedPin, !clockOutBit);
  digitalWrite(dimmerSelect0LedPin, dimmerSelect != 0);
  digitalWrite(dimmerSelect1LedPin, dimmerSelect != 1);
  digitalWrite(dimmerSelect2LedPin, dimmerSelect != 2);
  digitalWrite(dimmerSelect3LedPin, dimmerSelect != 3);
  digitalWrite(hardwareDetectOutputPin, !usingControlPro);

  if (!usingControlPro) {
    // For the 'lite' controllers, these are LED outputs.
    digitalWrite(clockSlowPin, clockModeSelect != clockModeSelectSlow);
    digitalWrite(clockFastPin, clockModeSelect != clockModeSelectFast);
  }

  // Set the data and clock pins.
  digitalWrite(dataOutPin, dataOutBit);
  digitalWrite(clockOutPin, clockOutBit);

  // Check serial port.
  if (Serial.available() > 0) {
    char incomingByte = Serial.read();
    HandleReceivedChar(incomingByte);
  }
}

/**
 * Timer 1 Interrupt.
 * This code run for each flip of the clock bit.
 */
ISR(TIMER1_COMPA_vect) {

  // If clock is on, disable it.
  if (clockOutBit > 0) {
    clockOutBit = 0;
  }

  // Else, execute next frame step if clock is not off.
  else if (clockModeSelect != clockModeSelectOff) {
    ExecuteNextFrameStep();
  }
}

/**
 * Execute a single frame step of the protocol
 */
void ExecuteNextFrameStep() {

  // Validate currentFrameStep
  currentFrameStep = (currentFrameStep + 1) % frameStepCount;
  if (currentFrameStep >= frameStepCount) {
    strcpy_P(serialPortFormat, invalidFrameStepFormat);
    sprintf(serialPortMessage, serialPortFormat, currentFrameStep);
    Serial.println(serialPortMessage);
    return;
  }

  // Clear the clock bit. When stepping rapidly, the clock
  // may still be on from the last step.
  digitalWrite(clockOutPin, LOW);

  // Display the step number of the frame.
  if (clockModeSelect != clockModeSelectFast) {
    strcpy_P(serialPortFormat, frameStepFormat);
    sprintf(serialPortMessage, serialPortFormat, frameSteps[currentFrameStep].stepNumber);
    Serial.print(serialPortMessage);
  }

  // Get the fixed data for the frame.
  dataOutBit = frameSteps[currentFrameStep].fixedData;

  // Determine what data to send if transmitting data.
  int dimmerLevel = 0;
  int dimmerBit = 0;
  int dataBitValue = 0;

  int dimmerTransmit = frameSteps[currentFrameStep].dimmerTransmit;
  if (dimmerTransmit >= 0) {
    dimmerLevel = dimmerLevels[dimmerTransmit];
    dimmerBit = frameSteps[currentFrameStep].dimmerBit;
    dataBitValue = bitRead(dimmerLevel, dimmerBit);

    // If the data bit value is non-zero, set the serialBit to be transmitted.
    if (dataBitValue > 0) {
      dataOutBit = 1;
    }
  }

  // Display the serial data.
  if (clockModeSelect != clockModeSelectFast) {
    strcpy_P(serialPortFormat, dataOutBitFormat);
    sprintf(serialPortMessage, serialPortFormat, dataOutBit);
    Serial.print(serialPortMessage);
  }

  // Send the serial: set the data pin then toggle the clock high.
  clockOutBit = 1;

  // Print the description of the frame. Re-use the description from the last frame
  // and increment a counter if no new description is supplied.
  char* description = frameSteps[currentFrameStep].description;
  if (description != null) {
    strcpy_P(currentDescription, description);
    descriptionCounter = 0;
  }

  if (clockModeSelect != clockModeSelectFast) {
    sprintf(serialPortMessage, currentDescription, descriptionCounter++);
    Serial.print(serialPortMessage);
  }

  // Print a dimmer data message if transmitting data.
  if (clockModeSelect != clockModeSelectFast) {
    if (dimmerTransmit >= 0) {
      strcpy_P(serialPortFormat, dimmerTransmitFormat);
      sprintf(serialPortMessage, serialPortFormat,
        dimmerLevel,
        dimmerLevel,
        bitRead(dimmerLevel, 7),
        bitRead(dimmerLevel, 6),
        bitRead(dimmerLevel, 5),
        bitRead(dimmerLevel, 4),
        bitRead(dimmerLevel, 3),
        bitRead(dimmerLevel, 2),
        bitRead(dimmerLevel, 1),
        bitRead(dimmerLevel, 0));

      Serial.print(serialPortMessage);
    }
  }

  // Capture a dimmer level if required.
  int dimmerCapture = frameSteps[currentFrameStep].dimmerCapture;
  if ((dimmerCapture == dimmerSelect) || (dimmerCapture >= 0 && usingControlPro)) {
    dimmerLevel = CaptureDimmerLevel(dimmerCapture);
    if (dimmerLevel >= 0) {
      dimmerLevels[dimmerCapture] = dimmerLevel;
    }

    if (clockModeSelect != clockModeSelectFast) {
      strcpy_P(serialPortFormat, dimmerCaptureFormat);
      sprintf(serialPortMessage, serialPortFormat,
        dimmerCapture,
        dimmerLevels[dimmerCapture],
        dimmerLevel,
        bitRead(dimmerLevel, 7),
        bitRead(dimmerLevel, 6),
        bitRead(dimmerLevel, 5),
        bitRead(dimmerLevel, 4),
        bitRead(dimmerLevel, 3),
        bitRead(dimmerLevel, 2),
        bitRead(dimmerLevel, 1),
        bitRead(dimmerLevel, 0));

      Serial.print(serialPortMessage);
    }
  }

  if (clockModeSelect != clockModeSelectFast) {
    Serial.println();
  }
}

/**
 * Capture a dimmer level.
 */
int CaptureDimmerLevel(int dimmerNumber) {

  // The 'lite' control only has a single dimmer level.
  int analogPin = dimmerLevelInputPin;

  // The 'pro' control has 4 different dimmer levels.
  if (usingControlPro) {
    switch (dimmerNumber) {
      case 0:
        analogPin = dimmerLevel0InputPin;
        break;

      case 1:
        analogPin = dimmerLevel1InputPin;
        break;

      case 2:
        analogPin = dimmerLevel2InputPin;
        break;

      case 3:
        analogPin = dimmerLevel3InputPin;
        break;

      default:
        strcpy_P(serialPortFormat, invalidDimmerFormat);
        sprintf(serialPortMessage, serialPortFormat, dimmerNumber);
        Serial.println(serialPortMessage);
        return -1;
    }
  }

  // analogRead returns 0-1024, the dimmer level is 0-255.
  return analogRead(analogPin) / 4;
}

/**
 * Initialize clock timer.
 */
void InitializeClockTimer(int mode) {

  // initialize timer1
  TCCR1A = 0;                   // Reset Timer 1 control register A.
  TCCR1B = 0;                   // Reset Timer 1 control register B.
  TCCR1C = 0;                   // Reset Timer 1 control register C.
  TCNT1  = 0;                   // Reset timer 1 counter value.

  TCCR1B |= (1 << WGM12);       // CTC mode: count to OCR1A.
  TCCR1B |= (1 << CS12);        // Clock 256 prescaler.

  switch (mode) {
    case clockModeSelectFast:
      OCR1A = 1;                // 1 = 62.5kHz.
      break;

    case clockModeSelectSlow:
      int clockValue = analogRead(clockSpeedInputPin);
      long timerValue = (clockValue * 62500 / 1024);
      OCR1A = 62501 - timerValue; // Max = 1 = 62.5kHz, Min = 62501 ~ 1Hz.
      break;

    default:
      OCR1A = 62500;            // 62500 = 1Hz.
      break;
  }

  TIMSK1 |= (1 << OCIE1A);      // Enable timer 1 compare interrupt.
}

/**
 * Select the dimmer.
 */
void SelectDimmer(int dimmer) {
  if (dimmer == dimmerSelectToggle) {
    dimmerSelect = (dimmerSelect + 1) % 4;
  }
  else if (dimmer >= 0 && dimmer <= 3) {
    dimmerSelect = dimmer;
  }
}

/**
 * Select the clock mode.
 */
void SelectClockMode(int mode) {
  if (mode == clockModelSelectToggle) {
    clockModeSelect = (clockModeSelect + 1) % 3;
  }
  else if (mode >= clockModeSelectOff && mode <= clockModeSelectFast) {
    clockModeSelect = mode;
  }

  if (mode == clockModeSelectFast) {
      PrintStringFormatProgmem(setClockResponseFormat, clockModeMessages, clockModeSelect);
  }

  InitializeClockTimer(clockModeSelect);
}

/**
 * Handle a received character.
 */
int HandleReceivedChar(char receivedChar) {
  switch (receivedChar) {
    case 'c':
      SelectClockMode(clockModelSelectToggle);
      PrintStringFormatProgmem(toggleClockResponseFormat, clockModeMessages, clockModeSelect);
      break;

    case 'o':
      SelectClockMode(clockModeSelectOff);
      PrintStringFormatProgmem(setClockResponseFormat, clockModeMessages, clockModeSelect);
      break;

    case 'f':
      SelectClockMode(clockModeSelectFast);
      break;

    case 's':
      SelectClockMode(clockModeSelectSlow);
      PrintStringFormatProgmem(setClockResponseFormat, clockModeMessages, clockModeSelect);
      break;

    case 'n':
      SelectClockMode(clockModeSelectOff);
      ExecuteNextFrameStep();
      break;

    case 'd':
      SelectDimmer(dimmerSelectToggle);
      PrintIntFormatProgmem(toggleDimmerResponseFormat, dimmerSelect);
      break;

    case '0':
      SelectDimmer(0);
      PrintIntFormatProgmem(setDimmerResponseFormat, dimmerSelect);
      break;

    case '1':
      SelectDimmer(1);
      PrintIntFormatProgmem(setDimmerResponseFormat, dimmerSelect);
      break;

    case '2':
      SelectDimmer(2);
      PrintIntFormatProgmem(setDimmerResponseFormat, dimmerSelect);
      break;

    case '3':
      SelectDimmer(3);
      PrintIntFormatProgmem(setDimmerResponseFormat, dimmerSelect);
      break;

    case 'v':
      PrintFromProgmem(versionResponse);
      break;

    case 'i':
      PrintFromProgmem(versionResponse);
      PrintStringFormatProgmem(hardwareDetectFormat, hardwareDetectMessages, usingControlPro);
      PrintStringFormatProgmem(setClockResponseFormat, clockModeMessages, clockModeSelect);
      PrintIntFormatProgmem(setDimmerResponseFormat, dimmerSelect);
      break;

    case '?':
      PrintFromProgmem(helpTitle);
      Serial.println();
      PrintFromProgmem(helpClockTitle);
      PrintFromProgmem(helpClockToggle);
      PrintFromProgmem(helpClockOff);
      PrintFromProgmem(helpClockFast);
      PrintFromProgmem(helpClockSlow);
      PrintFromProgmem(helpClockStep);
      Serial.println();
      PrintFromProgmem(helpDimmerTitle);
      PrintFromProgmem(helpDimmerToggle);
      PrintFromProgmem(helpDimmer0);
      PrintFromProgmem(helpDimmer1);
      PrintFromProgmem(helpDimmer2);
      PrintFromProgmem(helpDimmer3);
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
