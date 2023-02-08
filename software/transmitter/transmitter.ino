/**
 * DMX Demonstrator Transmitter
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
 * About DMX Demonstrator Transmitter
 *
 * This software supports the Arduio-based DMX Demonstrator Transmitter
 * running any of the supported hardware options.
 */
#define _VERSION_ "1.1"

/**
 * Local copy of JC_Button: https://github.com/JChristensen/JC_Button
 * This avoids having to add it as an explicit library.
 */
#include "JC_Button.h"

/**
 * A local include for asynchronous analog sampling. Note that this function is not
 * compatible with analogRead() because it allows a sample to be started without
 * requiring it to finish while analogRead() will always finish a sample and therefore
 * always assumes a sample is not in progress. analogRead() can be used but care must
 * be used to ensure analogRead() and analogReadAsync() are not interleaved.
 */
#include "AnalogAsync.h"

/**
 * Include timer abstractions
 */
#include "AdjustableTimer1.h"
#include "FixedTimer2.h"

/**
 * Pin definitions.
 */
int currentDimmerLevelInputPin = A0;     // The single dimmer level control for the DMX-TX1.
int currentDimmerLevel1InputPin = A0;    // The dimmer 1 level control for the DMX-TX2/DMX-CPB.
int currentDimmerLevel2InputPin = A1;    // The dimmer 2 level control for the DMX-TX2/DMX-CPB.
int currentSelectedDimmerButtonPin = A1; // The dimmer select button for the DMX-TX1.
int currentDimmerLevel3InputPin = A2;    // The dimmer 3 level control for the DMX-TX2/DMX-CPB.
int clockModeButtonPin = A2;             // The clock mode button for the DMX-TX1.
int currentDimmerLevel4InputPin = A3;    // The dimmer 4 level control for the DMX-TX2/DMX-CPB.
int clockSpeedInputPin = A4;             // The clock speed control for both the DMX-TX1 and DMX-TX2/DMX-CPB.
int clockStepButtonPin = A5;             // The clock step button for the DMX-TX1.

int dataLedPin = 2;                      // The data led output for both the DMX-TX1 and DMX-TX2/DMX-CPB.
int clockLedPin = 3;                     // The clock led output for both the DMX-TX1 and DMX-TX2/DMX-CPB.
int currentSelectedDimmer4LedPin = 4;    // The dimmer select 4 led output for the DMX-TX1.
int currentSelectedDimmer3LedPin = 5;    // The dimmer select 3 led output for the DMX-TX1.
int currentSelectedDimmer2LedPin = 6;    // The dimmer select 2 led output for the DMX-TX1.
int currentSelectedDimmer1LedPin = 7;    // The dimmer select 1 led output for the DMX-TX1.
int clockFastIOPin = 8;                  // The clock speed fast out for the DMX-TX1, in for the DMX-TX2/DMX-CPB.
int clockSlowIOPin = 9;                  // The clock speed slow out for the DMX-TX1, in for the DMX-TX2/DMX-CPB.
int hardwareDetectOutPin = 10;           // Output to indicate which transmitter board is connected, LOW for DMX-TX2.
int hardwareDetectInPin = 11;            // Input to determine which transmitter board is connected, LOW for DMX-TX2.
int dataOutPin = 12;                     // The data output to the receiver.
int clockOutPin = 13;                    // The clock output to the receiver.

/**
 * Switches.
 */
Button currentSelectedDimmerButton = Button(currentSelectedDimmerButtonPin);
Button clockStepButton = Button(clockStepButtonPin);
Button clockModeButton = Button(clockModeButtonPin);
Button clockSlowButton = Button(clockFastIOPin);
Button clockFastButton = Button(clockFastIOPin);

/**
 * Hardware detect data.
 */
int usingControlPro = 0;

const char hardwareDetectFormat[] PROGMEM = "Hardware Detection: found %s\r\n";
const char hardwareDetectTX1[] PROGMEM = "DMX-TX1";
const char hardwareDetectTX2[] PROGMEM = "DMX-TX2/DMX-CPB";
const char* const hardwareDetectMessages[] PROGMEM = { hardwareDetectTX1, hardwareDetectTX2, };

/**
 * Analog capture data.
 */
volatile int analogCaptureChannel = -1;

/**
 * Clock mode & speed data.
 */
#define CLOCK_FAST_FREQUENCY 30000
#define CLOCK_MAX_FREQUENCY 20
#define CLOCK_MIN_FREQUENCY 1
#define CLOCK_OFF_FREQUENCY 2

int currentClockMode = -1;
const int clockModeOff = 0;
const int clockModeSlow = 1;
const int clockModeFast = 2;
const int clockModeToggle = 255;
volatile int clockValue = 0;
int clockValueThreshold = 5;

const char setClockResponseFormat[] PROGMEM = "Set clock mode: %s\r\n";
const char clockModeOffMessage[] PROGMEM = "Off";
const char clockModeFastMessage[] PROGMEM = "Fast";
const char clockModeSlowMessage[] PROGMEM = "Slow";
const char* const clockModeMessages[] PROGMEM = { clockModeOffMessage, clockModeSlowMessage, clockModeFastMessage, };

/**
 * Dimmer select data.
 */
int currentSelectedDimmer = 0;
const int selectedDimmerToggle = 255;
volatile int currentDimmerLevels[4] = { 0 };

const char setDimmerResponseFormat[] PROGMEM = "Set dimmer: %d\r\n";

/**
 * Message for frame steps.
 */
char* null = 0;
const char frameBreakFormat[] PROGMEM = "Frame Break (%d)";
const char markAfterBreakFormat[] PROGMEM = "Mark after Break (%d)";
const char startCodeStartBitMessage[] PROGMEM = "Start code Start bit";
const char startCodeFormat[] PROGMEM = "Start code data bit %d";
const char dimmer1StartBitMessage[] PROGMEM = "Dimmer 1 Start bit";
const char dimmer1DataFormat[] PROGMEM = "Dimmer 1 data bit %d";
const char dimmer2StartBitMessage[] PROGMEM = "Dimmer 2 Start bit";
const char dimmer2DataFormat[] PROGMEM = "Dimmer 2 data bit %d";
const char dimmer3StartBitMessage[] PROGMEM = "Dimmer 3 Start bit";
const char dimmer3DataFormat[] PROGMEM = "Dimmer 3 data bit %d";
const char dimmer4StartBitMessage[] PROGMEM = "Dimmer 4 Start bit";
const char dimmer4DataFormat[] PROGMEM = "Dimmer 4 data bit %d";
const char dataMarkFormat[] PROGMEM = "Mark (%d)";
const char frameMarkMessage[] PROGMEM = "Mark between Frames";
const char endFrameMessage[] PROGMEM = "End of Frame";

const char invalidFrameStepFormat[] PROGMEM = "Invalid frame step: %d";
const char frameStepFormat[] PROGMEM = "Step: %2d\t";
const char dataOutBitFormat[] PROGMEM = "Data: %d\t\t";
const char dimmerDataFormat[] PROGMEM = ", level: %3dd, %02Xh, %d%d%d%d%d%d%d%db";
const char dimmerCaptureFormat[] PROGMEM = ", Dimmer %d capture";

/**
 * Variables for sending a frame of data.
 */
int currentFrameStep = -1;
int frameStepCount = 88;
volatile int dataOutBit = 0;
volatile int clockOutBit = LOW;
volatile int currentDimmerLevel = 0;

/**
 * A single step of the protocol.
 * This struct and the array are equivalent to the EPROM in the original demonstrator.
 * Each step consists of "instructions" for what data to send, from which dimmer, and when
 * to capture each dimmer value.
 */
typedef struct {
  char stepNumber;                // Equivalent to the EPROM Address/frame number.
  char fixedData;                 // Equivalent to EPROM D0: DMX Standard Data, Marks and Breaks (Active High).
  char dimmerTransmit;            // Equivalent to the EPROM D1,3,5,6: Simlar to the shift register output enable, this indicates when and which dimmer data is transmitted, 0-3.
  char dimmerBit;                 // Equivalent to the EPROM D2: Similar to the shift register clock inhibit, this value indicate which bit of the dimmerTransmit to send, 0-7.
  char dimmerCapture;             // Equivalent to the EPROM D5,6: Similar to the dimmer multiplexor, this indicates when and which dimmer should be sampled, 0-3.
  const char* const description;  // A description of the frame step.
} FrameStep;

const FrameStep frameSteps[] = {
  {  0, 0,  -1, 0,  -1, frameBreakFormat, },
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
  { 23, 1,  -1, 0,  -1, markAfterBreakFormat, },
  { 24, 1,  -1, 0,  -1, null, },
  { 25, 1,  -1, 0,  -1, null, },
  { 26, 0,  -1, 0,  -1, startCodeStartBitMessage, },
  { 27, 0,  -1, 0,  -1, startCodeFormat, },
  { 28, 0,  -1, 1,  -1, null, },
  { 29, 0,  -1, 2,  -1, null, },
  { 30, 0,  -1, 3,  -1, null, },
  { 31, 0,  -1, 4,  -1, null, },
  { 32, 0,  -1, 5,  -1, null, },
  { 33, 0,  -1, 6,  -1, null, },
  { 34, 0,  -1, 7,  -1, null, },
  { 35, 1,  -1, 0,  -1, dataMarkFormat, },
  { 36, 1,  -1, 0,  -1, null, },
  { 37, 1,  -1, 0,   0, null, },
  { 38, 0,  -1, 0,  -1, dimmer1StartBitMessage, },
  { 39, 0,   0, 0,  -1, dimmer1DataFormat, },
  { 40, 0,   0, 1,  -1, null, },
  { 41, 0,   0, 2,  -1, null, },
  { 42, 0,   0, 3,  -1, null, },
  { 43, 0,   0, 4,  -1, null, },
  { 44, 0,   0, 5,  -1, null, },
  { 45, 0,   0, 6,  -1, null, },
  { 46, 0,   0, 7,  -1, null, },
  { 47, 1,  -1, 0,  -1, dataMarkFormat, },
  { 48, 1,  -1, 0,  -1, null, },
  { 49, 1,  -1, 0,   1, null, },
  { 50, 0,  -1, 0,  -1, dimmer2StartBitMessage, },
  { 51, 0,   1, 0,  -1, dimmer2DataFormat, },
  { 52, 0,   1, 1,  -1, null, },
  { 53, 0,   1, 2,  -1, null, },
  { 54, 0,   1, 3,  -1, null, },
  { 55, 0,   1, 4,  -1, null, },
  { 56, 0,   1, 5,  -1, null, },
  { 57, 0,   1, 6,  -1, null, },
  { 58, 0,   1, 7,  -1, null, },
  { 59, 1,  -1, 0,  -1, dataMarkFormat, },
  { 60, 1,  -1, 0,  -1, null, },
  { 61, 1,  -1, 0,   2, null, },
  { 62, 0,  -1, 0,  -1, dimmer3StartBitMessage, },
  { 63, 0,   2, 0,  -1, dimmer3DataFormat, },
  { 64, 0,   2, 1,  -1, null, },
  { 65, 0,   2, 2,  -1, null, },
  { 66, 0,   2, 3,  -1, null, },
  { 67, 0,   2, 4,  -1, null, },
  { 68, 0,   2, 5,  -1, null, },
  { 69, 0,   2, 6,  -1, null, },
  { 70, 0,   2, 7,  -1, null, },
  { 71, 1,  -1, 0,  -1, dataMarkFormat, },
  { 72, 1,  -1, 0,  -1, null, },
  { 73, 1,  -1, 0,   3, null, },
  { 74, 0,  -1, 0,  -1, dimmer4StartBitMessage, },
  { 75, 0,   3, 0,  -1, dimmer4DataFormat, },
  { 76, 0,   3, 1,  -1, null, },
  { 77, 0,   3, 2,  -1, null, },
  { 78, 0,   3, 3,  -1, null, },
  { 79, 0,   3, 4,  -1, null, },
  { 80, 0,   3, 5,  -1, null, },
  { 81, 0,   3, 6,  -1, null, },
  { 82, 0,   3, 7,  -1, null, },
  { 83, 1,  -1, 0,  -1, dataMarkFormat, },
  { 84, 1,  -1, 0,  -1, null, },
  { 85, 1,  -1, 0,  -1, null, },
  { 86, 1,  -1, 0,  -1, frameMarkMessage, },
  { 87, 1,  -1, 0,  -1, endFrameMessage, },
};

/**
 * Serial data data.
 */
const long baudRate = 250000;
char serialPortFormat[100];
char serialPortArgument[50];
char serialPortMessage[255];

bool compactStatus = LOW;
bool verboseStatus = LOW;

/**
 * The serial responses and help menu.
 */
const char newlineMessage[] PROGMEM = "\r\n";
const char startUpMessage[] PROGMEM = "DMX Demonstrator Transmitter starting up...\r\n";
const char readyMessage[] PROGMEM = "DMX Demonstrator Transmitter ready!\r\n";
const char versionFormat[] PROGMEM = "DMX Demonstrator Transmitter Version %s\r\n";

const char compactStatusFormat[] PROGMEM = "Compact Status: %s\r\n";
const char verboseStatusFormat[] PROGMEM = "Verbose Status: %s\r\n";
const char statusOffMessage[] PROGMEM = "Off";
const char statusOnMessage[] PROGMEM = "On";
const char* const statusMessages[] PROGMEM = { statusOffMessage, statusOnMessage, };

const char helpTitle[] PROGMEM = "Help:\r\n";
const char helpClockTitle[] PROGMEM = "Clock modes:\r\n";
const char helpClockToggle[] PROGMEM = "  c: Toggle clock mode\r\n";
const char helpClockOff[] PROGMEM = "  o: Set clock mode: off\r\n";
const char helpClockFast[] PROGMEM = "  f: Set clock mode: fast\r\n";
const char helpClockSlow[] PROGMEM = "  s: Set clock mode: slow\r\n";
const char helpClockStep[] PROGMEM = "  n: Step clock\r\n";
const char helpDimmerTitle[] PROGMEM = "Dimmer select:\r\n";
const char helpDimmerToggle[] PROGMEM = "  d: Toggle dimmer select\r\n";
const char helpDimmer1[] PROGMEM = "  1: Set dimmer select: 1\r\n";
const char helpDimmer2[] PROGMEM = "  2: Set dimmer select: 2\r\n";
const char helpDimmer3[] PROGMEM = "  3: Set dimmer select: 3\r\n";
const char helpDimmer4[] PROGMEM = "  4: Set dimmer select: 4\r\n";
const char helpInfoTitle[] PROGMEM = "Info:\r\n";
const char helpCompact[] PROGMEM = "  m: Toggle sending compact status\r\n";
const char helpVerbose[] PROGMEM = "  v: Toggle sending verbose status\r\n";
const char helpInfo[] PROGMEM = "  i: Display program info\r\n";

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

  // Determine which transmitter board is attached.
  pinMode(hardwareDetectInPin, INPUT_PULLUP);
  usingControlPro = !digitalRead(hardwareDetectInPin);
  SendProgmemStringArrayFormat(hardwareDetectFormat, hardwareDetectMessages, usingControlPro);

  // Configure IO.
  pinMode(currentSelectedDimmerButtonPin, INPUT_PULLUP);
  pinMode(clockModeButtonPin, INPUT_PULLUP);
  pinMode(clockStepButtonPin, INPUT_PULLUP);
  pinMode(clockFastIOPin, INPUT_PULLUP);
  pinMode(clockFastIOPin, INPUT_PULLUP);

  pinMode(dataLedPin, OUTPUT);
  pinMode(clockLedPin, OUTPUT);
  pinMode(currentSelectedDimmer1LedPin, OUTPUT);
  pinMode(currentSelectedDimmer2LedPin, OUTPUT);
  pinMode(currentSelectedDimmer3LedPin, OUTPUT);
  pinMode(currentSelectedDimmer4LedPin, OUTPUT);
  pinMode(hardwareDetectOutPin, OUTPUT);
  pinMode(dataOutPin, OUTPUT);
  pinMode(clockOutPin, OUTPUT);

  // For the DMX-TX1, these are LED outputs.
  // For the DMX-TX2/DMX-CPB, these are inputs.
  if (!usingControlPro) {
    pinMode(clockSlowIOPin, OUTPUT);
    pinMode(clockFastIOPin, OUTPUT);
  }

  // Initialize the buttons.
  currentSelectedDimmerButton.begin();
  clockStepButton.begin();
  clockModeButton.begin();
  if (usingControlPro) {
    clockSlowButton.begin();
    clockFastButton.begin();
  }

  // Use the default analog reference.
  analogReferenceAsync(DEFAULT);

  // Initialize clock mode and dimmer selection. It's safe to use analogRead() here
  // since it is not interleaved with analogStartAsync()/ analogReadAsync()
  clockValue = analogRead(clockSpeedInputPin);
  SelectClockMode(clockModeSlow);
  SelectDimmer(0);

  // Start the first capture.
  analogCaptureChannel = 0;
  StartAnalogCapture(analogCaptureChannel);

  // Configure timers.
  Timer1.Initialize();
  Timer1.AttachInterrupt(OnClockPulse);

  Timer2.Initialize();
  Timer2.AttachInterrupt(OnAnalogSample);
  Timer2.Start();

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

  // If the clock step was pressed advance to the next frame step
  // and sure the clock is in off/manual mode.
  clockStepButton.read();
  if (clockStepButton.wasPressed()) {
    SelectClockMode(clockModeOff);
    AdvanceToNextFrame();
  }

  // Look for dimmer and clock mode presses on DMX-TX1.
  if (!usingControlPro) {

    // If the dimmer select was changed, select the next dimmer: 0-3.
    currentSelectedDimmerButton.read();
    if (currentSelectedDimmerButton.wasPressed()) {
      SelectDimmer(selectedDimmerToggle);
    }

    // If the clock mode was pressed, select the next mode: off, slow, fast.
    clockModeButton.read();
    if (clockModeButton.wasPressed()) {
      SelectClockMode(clockModeToggle);
    }
  }

  // Look for clock fast and slow presses on DMX-TX2/DMX-CPB.
  if (usingControlPro) {

    // If the clock slow mode was pressed, switch to slow mode.
    clockSlowButton.read();
    if (clockSlowButton.wasPressed()) {
      SelectClockMode(clockModeSlow);
    }

    // If the clock fast mode was pressed, switch to fast mode.
    clockFastButton.read();
    if (clockFastButton.wasPressed()) {
      SelectClockMode(clockModeFast);
    }
  }

  // Detect if clock speed was changed. It bounces around a bit so make sure the change
  // is greater than the a certain threshold.
  static int previousClockValue = -1;
  if (currentClockMode == clockModeSlow) {
    int clockValueChange = abs(previousClockValue - clockValue);
    if (clockValueChange >= clockValueThreshold) {
      InitializeClockTimer(clockModeSlow, clockValue);
      previousClockValue = clockValue;
    }
  }

  // Set status LEDs. LEDs require 0 to light up so all
  // conditions are inverted, i.e. !=.
  digitalWrite(dataLedPin, !dataOutBit);
  digitalWrite(clockLedPin, !clockOutBit);
  digitalWrite(currentSelectedDimmer1LedPin, currentSelectedDimmer != 0);
  digitalWrite(currentSelectedDimmer2LedPin, currentSelectedDimmer != 1);
  digitalWrite(currentSelectedDimmer3LedPin, currentSelectedDimmer != 2);
  digitalWrite(currentSelectedDimmer4LedPin, currentSelectedDimmer != 3);
  digitalWrite(hardwareDetectOutPin, !usingControlPro);

  if (!usingControlPro) {
    // For the DMX-TX1, these are LED outputs.
    digitalWrite(clockSlowIOPin, currentClockMode != clockModeSlow);
    digitalWrite(clockFastIOPin, currentClockMode != clockModeFast);
  }

  // Send status to serial port.
  SendStatus();

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

  // If clock is on, disable it.
  if (clockOutBit != LOW) {
    clockOutBit = LOW;
    digitalWrite(clockOutPin, clockOutBit);
  }

  // Execute next frame step if clock is not off.
  else if (currentClockMode != clockModeOff) {
    AdvanceToNextFrame();
  }
}

/**
 * Timer 2 callback.
 * This code runs to start/stop analog samples.
 */
void OnAnalogSample(void) {

  if (analogCaptureChannel >= 0) {

    // Read the analog capture..
    if (ReadAnalogCapture(analogCaptureChannel) >= 0) {

      // If the previous capture finished, start a new one.
      analogCaptureChannel = (analogCaptureChannel + 1) % 5;
      StartAnalogCapture(analogCaptureChannel);
    }
  }
}

/**
 * Advance to the next frame of the protocol.
 */
void AdvanceToNextFrame() {

  // Validate currentFrameStep
  currentFrameStep = (currentFrameStep + 1) % frameStepCount;
  if (currentFrameStep >= frameStepCount) {
    return;
  }

  // Clear the clock bit. When stepping rapidly, the clock
  // may still be on from the last step. This happens when
  // switching from slow to off/manual clock mode.
  clockOutBit = LOW;
  digitalWrite(clockOutPin, clockOutBit);

  // Determine what data to send if transmitting data.
  int dimmerTransmit = frameSteps[currentFrameStep].dimmerTransmit;

  // If the data bit value is non-zero, set the serialBit to be transmitted.
  if (dimmerTransmit >= 0) {
    int dimmerBit = frameSteps[currentFrameStep].dimmerBit;
    dataOutBit = (bitRead(currentDimmerLevel, dimmerBit) > 0);
  }

  // Get the fixed data for the frame.
  else {
    dataOutBit = frameSteps[currentFrameStep].fixedData;
  }

  // Send the serial: set the data pin then toggle the clock high. Write directly
  // to the outputs here to send the data as fast as possible and during the
  // clock interrupt instead of loop(). Set clockOutBit to light the LED when
  // loop() does run.
  digitalWrite(dataOutPin, dataOutBit);

  clockOutBit = HIGH;
  digitalWrite(clockOutPin, clockOutBit);

  // Capture a dimmer level if required.
  int dimmerCapture = frameSteps[currentFrameStep].dimmerCapture;
  if (dimmerCapture >= 0) {
    currentDimmerLevel = currentDimmerLevels[dimmerCapture];
  }
}

/**
 * Start a capture a dimmer level or clock speed.
 */
void StartAnalogCapture(int channel) {

  // The DMX-TX1 only has a single dimmer level.
  unsigned int analogPin = channel == 0
    ? clockSpeedInputPin
    : currentDimmerLevelInputPin;

  // The DMX-TX2/DMX-CPB has 4 different dimmer levels.
  if (usingControlPro) {
    switch (channel) {
      case 0:
        analogPin = clockSpeedInputPin;
        break;

      case 1:
        analogPin = currentDimmerLevel1InputPin;
        break;

      case 2:
        analogPin = currentDimmerLevel2InputPin;
        break;

      case 3:
        analogPin = currentDimmerLevel3InputPin;
        break;

      case 4:
        analogPin = currentDimmerLevel4InputPin;
        break;

      default:
        return;
    }
  }

  // Start a sample and exit.
  analogStartAsync(analogPin);
}

/**
 * Read a captured dimmer level or clock speed.
 */
int ReadAnalogCapture(int channel) {

  // Validate channel.
  if (channel < 0 || channel > 4) {
    return -1;
  }

  // analogRead/analogReadAsync returns 0-1024, the dimmer level is 0-255.
  // analogReadAsync return -1 if the capture is still in progress.
  int analogLevel = analogReadAsync();
  if (analogLevel < 0) {
    return -1;
  }

  // Store the value in the clock speed or dimmer level array.
  if (channel == 0) {
    clockValue = analogLevel;
  } else {
    currentDimmerLevels[channel - 1] = analogLevel / 4;
  }

  return analogLevel;
}

/**
 * Select the dimmer.
 */
void SelectDimmer(int dimmer) {
  if (dimmer == selectedDimmerToggle) {
    currentSelectedDimmer = (currentSelectedDimmer + 1) % 4;
  }
  else if (dimmer >= 0 && dimmer <= 3) {
    currentSelectedDimmer = dimmer;
  }
}

/**
 * Select the clock mode.
 */
void SelectClockMode(int mode) {
  if (mode == clockModeToggle) {
    currentClockMode = (currentClockMode + 1) % 3;
  }
  else if (mode >= clockModeOff && mode <= clockModeFast) {
    currentClockMode = mode;
  }

  InitializeClockTimer(currentClockMode, clockValue);
}

/**
 * Initialize clock timer.
 */
void InitializeClockTimer(int mode, int clockValue) {

  long clockFrequency = CLOCK_MIN_FREQUENCY;

  switch (mode) {
    case clockModeFast:
      clockFrequency = CLOCK_FAST_FREQUENCY;
      break;

    case clockModeSlow:
      clockFrequency = (clockValue * (CLOCK_MAX_FREQUENCY - CLOCK_MIN_FREQUENCY) / 1024);
      clockFrequency += CLOCK_MIN_FREQUENCY;
      break;

    case clockModeOff:
    default:
      // Even when the clock is off, it runs at the minimum frequency in order
      // to turn off the manually stepped clock pulse.
      clockFrequency = CLOCK_OFF_FREQUENCY;
      break;
  }

  // Initialize and restart the timer.
  Timer1.SetFrequency(clockFrequency);
  Timer1.Start();
}

/**
 * Send the status of the transmitter to the serial port.
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
 * Send the compact status of the transmitter to the serial port.
 */
void SendCompactStatus() {
}

/**
 * Send the verbose status of the transmitter to the serial port.
 */
void SendVerboseStatus() {

  // Only send on changes.
  static int previousClockMode = -1;
  if (previousClockMode != currentClockMode) {
    SendProgmemStringArrayFormat(setClockResponseFormat, clockModeMessages, currentClockMode);
    previousClockMode = currentClockMode;
  }

  // Only send on changes.
  static int previousSelectedDimmer = -1;
  if (previousSelectedDimmer != currentSelectedDimmer) {
    SendProgmemIntFormat(setDimmerResponseFormat, currentSelectedDimmer+1);
    previousSelectedDimmer = currentSelectedDimmer;
  }

  // Only send on changes.
  static int previousFrameStep = -1;
  if (previousFrameStep != currentFrameStep) {

    // Validate currentFrameStep
    if (currentFrameStep >= frameStepCount) {
      SendProgmemIntFormat(invalidFrameStepFormat, currentFrameStep);
      return;
    }

    // Don't send details status in fast mode; it's just too much text.
    if (currentClockMode == clockModeFast) {
      return;
    }

    // Display the step number of the frame.
    SendProgmemIntFormat(frameStepFormat, frameSteps[currentFrameStep].stepNumber);

    // Display the serial data.
    SendProgmemIntFormat(dataOutBitFormat, dataOutBit);

    // Print the description of the frame. Re-use the description from the last frame
    // and increment a counter if no new description is supplied.
    static int descriptionCounter = 0;
    static const char* currentDescription = null;
    const char* description = frameSteps[currentFrameStep].description;
    if (description != null) {
      currentDescription = description;
      descriptionCounter = 0;
    }

    SendProgmemIntFormat(currentDescription, descriptionCounter++);

    // Print a dimmer data message if transmitting data.
    int dimmerTransmit = frameSteps[currentFrameStep].dimmerTransmit;
    if (dimmerTransmit >= 0) {
      SendProgmemDataByteFormat(dimmerDataFormat, currentDimmerLevel);
    }

    // Capture a dimmer level if required.
    int dimmerCapture = frameSteps[currentFrameStep].dimmerCapture;
    if (dimmerCapture >= 0) {
      SendProgmemIntFormat(dimmerCaptureFormat, dimmerCapture+1);
      SendProgmemDataByteFormat(dimmerDataFormat, currentDimmerLevel);
    }

    // Remember current step.
    previousFrameStep = currentFrameStep;
    SendProgmemMessage(newlineMessage);
  }
}

/**
 * Handle a received character.
 */
int HandleReceivedChar(char receivedChar) {
  switch (receivedChar) {
    case 'c':
      SelectClockMode(clockModeToggle);
      break;

    case 'o':
      SelectClockMode(clockModeOff);
      break;

    case 'f':
      SelectClockMode(clockModeFast);
      break;

    case 's':
      SelectClockMode(clockModeSlow);
      break;

    case 'n':
      SelectClockMode(clockModeOff);
      AdvanceToNextFrame();
      break;

    case 'd':
      SelectDimmer(selectedDimmerToggle);
      break;

    case '1':
      SelectDimmer(0);
      break;

    case '2':
      SelectDimmer(1);
      break;

    case '3':
      SelectDimmer(2);
      break;

    case '4':
      SelectDimmer(3);
      break;

    case 'm':
      compactStatus = !compactStatus;
      break;

    case 'v':
      verboseStatus = !verboseStatus;
      break;

    case 'i':
      SendProgmemStringFormat(versionFormat, _VERSION_);
      SendProgmemStringArrayFormat(hardwareDetectFormat, hardwareDetectMessages, usingControlPro);
      SendProgmemStringArrayFormat(setClockResponseFormat, clockModeMessages, currentClockMode);
      SendProgmemIntFormat(setDimmerResponseFormat, currentSelectedDimmer+1);
      SendProgmemStringArrayFormat(compactStatusFormat, statusMessages, compactStatus);
      SendProgmemStringArrayFormat(verboseStatusFormat, statusMessages, verboseStatus);
      break;

    case '?':
      SendProgmemMessage(helpTitle);
      SendProgmemMessage(newlineMessage);
      SendProgmemMessage(helpClockTitle);
      SendProgmemMessage(helpClockToggle);
      SendProgmemMessage(helpClockOff);
      SendProgmemMessage(helpClockFast);
      SendProgmemMessage(helpClockSlow);
      SendProgmemMessage(helpClockStep);
      SendProgmemMessage(newlineMessage);
      SendProgmemMessage(helpDimmerTitle);
      SendProgmemMessage(helpDimmerToggle);
      SendProgmemMessage(helpDimmer1);
      SendProgmemMessage(helpDimmer2);
      SendProgmemMessage(helpDimmer3);
      SendProgmemMessage(helpDimmer4);
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
