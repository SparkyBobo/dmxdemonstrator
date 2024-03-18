# DMX Demonstrator Analog LED Module (DMX-IO5)

![status](https://img.shields.io/badge/status-prototype-orange)

## Overview

The PWM IO module can generate a 0 to adjustable positive voltage PWM signal where the duty cycle tracks the level of a channel. It is configurable to generate multiple output voltages to adapt it to any voltage range required. The default values
listed in the schematic generate 0 to +10V since this is a common lighting control signal. The PWM IO module can also generate a 0 to +5V PWM signal where the duty cycle tracks the level of a channel. Both outputs can be used at the same time.

## Parts

Tall Header - https://www.sparkfun.com/products/16279

## Voltage Options

The DMX-IO4 converts the output of the DMX-IO2 into two different voltage outputs: a +5V output and adjustable positive voltage. Both outputs can be used at the same time. However, you can populate only the sections needed to produce the required voltage. The reason 2 outputs are provided is:

- I wanted to provide both a +5v options and a +10V option for use with Mean Well LED drivers.
- The additional parts ot generate the +5V signal are inexpensive.
- I could not figure out what to name them if two boards produces PWM signals at different voltages.

### +5v

The +5V PWM signal can be used in conjunction with external LED drivers whose input only requires +5V for control. The Display-Pro (DMX-DSP) is one such driver
but you can find many more options are online electronics outlets such as SparkFun and Adafruit.

The +5V PWM signal is generated using the following parts:

- C3
- J3
- U3

If the +5V signal is not required, you can omit these parts from the board.

### Adjustable positive voltage

The adjustable positive voltage PWM signal can be used in conjunction with external LED drivers whose input only requires more than +5V for control. The default values
listed in the schematic generate 0 to +10V since this is a common lighting control signal.

The adjustable positive voltage PWM signal is generated using the following parts:

- C2
- C7
- C8
- D1
- J2
- J4/J5
- R4
- R5
- U2
- U4

If the adjustable positive voltage signal is not required, you can omit these parts from the board.

Two resistors are adjusted to modify the voltage range: the voltage regulator resistors R4-R5.
The following table provides the values for common voltages:

Output Voltage|R4|R5|Input Voltage
--------------|-----------|-------
5V|392 1%|11.8k 1%|8v-24v
10V|392 1%|27.4k 1%|12v-24v
12V|392 1%|34.0k 1%15v-24v
15V|392 1%|43.2k 1%|20v-24v
24V|392 1%|71.5k 1%|28v-30v

R4 uses the same values in all configuration to reduce the number of parts required. There is nothing terrible special about this value, they just happen to work for a wide range of output voltages and is the value mention in the LM317 data sheet. If you want to create a custom voltage range, use the following formulas:

Vo = 1.25v + (1 + (R5 / R4))
Vi = Vo + 2v or 3v (for higher current, use 3v)

## Version History

### Rev 1.4

- Added thermal relief for TO-220
- Switch RV1 from 3299W (tall) to 3299P (short)

### Rev 1.3

- Switch to smaller screw terminal connectors
- Add silkscreen values
- Remove COAX power connector

### Rev 1.2

- Converted to a family of modules so avoid multiple DACs for each analog option
- Standardize layout to allow stacking of analog modules
- Provide an adjustable voltage output PWM signal for use with external dimmers and LED drivers

### Rev 1.1

- Switched to a stand-alone module

### Rev 1.0

- Initial draft
