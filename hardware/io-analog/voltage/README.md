# DMX Demonstrator Analog Voltage Module (DMX-IO3)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Voltage IO module can generate a 0 to adjustable positive voltage which tracks the level of a channel. It is configurable to generate multiple output voltages to adapt it to any voltage range required. The default values
listed in the schematic generate 0 to +10V since this is a common lighting control signal.

## Online parts list

For a complete list of parts, see:

- [Bill of materials](io-analog-voltage.bom.md)
- [Part lists](io-analog-voltage.parts.md)

You can also buy some of the parts for the analog modules online from a Wishlist:

- Sparkfun: [Common](https://www.sparkfun.com/wish_lists/160406), [DMX-IO2, DMX-IO3, DMX-IO4, DMX-IO5](https://www.sparkfun.com/wish_lists/175321)
- Adafruit: [Common](http://www.adafruit.com/wishlists/589832), [DMX-IO2, DMX-IO3, DMX-IO4, DMX-IO5](http://www.adafruit.com/wishlists/590544)

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-IO3, Rev 1.4](https://oshpark.com/shared_projects/Vaqpv5tp).

## Voltage Options

The DMX-IO3 amplifies the output from the DMX-IO2 into the desired voltage range. Two sets of resistors are adjusted to modify the voltage range: the amplifier gain resistors R1-R8 and the voltage regulator resistors R9-R10.
The following table provides the values for common voltages:

Output Voltage|R1,R3,R5,R7|R2,R4,R6,R8|R9|R10|Input Voltage
--------------|-----------|-----------|--|---|-------------
5V|22.6k 1%|22.6k 1%|392 1%|11.8k 1%|8v-24v
10V|22.6k 1%|68.1k 1%|392 1%|27.4k 1%|12v-24v
12V|22.6k 1%|84.5k 1%|392 1%|34.0k 1%|15v-24v
15V|22.6k 1%|113k 1%|392 1%|43.2k 1%|20v-24v
24V|22.6k 1%|196k 1%|392 1%|71.5k 1%|28v-30v

R1,R2,R5,R7,and R9 use the same values in all configuration to reduce the number of parts required. There is nothing terrible special about those values, they just happen to work for a wide range of output voltages. If you want to create a custom
voltage range, use the following formulas:

Vo = 2.5v * (1 + (R2 / R1)), R1=R3=R5=R7, R2=R4=R6=R8
Vo = 1.25v + (1 + (R10 / R9))
Vi = Vo + 2v to 3v (for higher current, use 3v)

 While it is possible to generate a +5V signal without the voltage regular and its supporting parts, doing so would mean all of the current needed for the outputs is supplied by the DMX module to which this stack connects. So the +5V option is
supported using a voltage regulator and external supply to isolate the outputs from the DMX power supply.

## Version History

### Rev 1.4

- Added thermal relief for TO-220

### Rev 1.3

- Switch to smaller screw terminal connectors
- Add silkscreen values
- Remove COAX power connector

### Rev 1.2

- Converted to a family of modules so avoid multiple DACs for each analog option
- Standardize layout to allow stacking of analog modules
- Provide an adjustable voltage output signal for use with external dimmers

### Rev 1.1

- Switched to a stand-alone module

### Rev 1.0

- Initial draft
