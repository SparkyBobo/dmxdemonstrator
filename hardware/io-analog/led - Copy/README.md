# DMX Demonstrator Analog PWM Module (DMX-IO4)

![status](https://img.shields.io/badge/status-prototype-orange)

## Overview

The PWM IO module can generate a 0 to adjustable positive voltage PWM signal where the duty cycle  tracks the brightness of a channel. It is configurable to generate multiple output voltages to adapt it to any voltage range required. The default values
listed in the schematic generate 0 to +10V since this is a common lighting control signal.

## Parts

Tall Header - https://www.sparkfun.com/products/16279

## Voltage Options

The DMX-IO2 produces a 0 to +2.5V output which the DMX-IO4 then amplifies into the desired voltage range. Two resistors are adjusted to modify the voltage range: the voltage regulator resistors R4-R5.
The following table provides the values for common voltages:

Output Voltage|R4|R5|Input Voltage
--------------|-----------|-----------|--|---|-------------
5V|392 1%|11.8k 1%|8v-24v
10V|392 1%|27.4k 1%|12v-24v
12V|392 1%|34.0k 1%15v-24v
15V|392 1%|43.2k 1%|20v-24v
24V|392 1%|71.5k 1%|28v-30v

R9 uses the same values in all configuration to reduce the number of parts required. There is nothing terrible special about this value, they just happen to work for a wide range of output voltages and is the value mention in the LM317 data sheet. If you want to create a custom voltage range, use the following formulas:

Vo = 1.25v + (1 + (R5 / R4))
Vi = Vo + 2v to 3v (for higher current, use 3v)

### Rev 1.2

- Converted to a family of modules so avoid multiple DACs for each analog option
- Standardize layout to allow stacking of analog modules
- Provide an adjustable voltage output PWM signal for use with external dimmers and LED drivers

### Rev 1.1

- Switched to a stand-alone module

### Rev 1.0

- Initial draft
