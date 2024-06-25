# DMX Demonstrator Constant Voltage LED Driver (DMX-DCV)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Constant Voltage LED Driver is stand-along module which takes 2 logic signals and amplifies the output for a larger current load such as an led strip.

One use for the led driver is to intercept the 3-wire data/clock signal from the transmitter to the receiver and amplify the data and clock signals and drive a larger display intended for a large audience. The led driver can also be connected to the frame scrambler to perform a similar function or the receiver to display the received values.

It is built to drive an DC output for up to 60v volts so it is compatible with a variety of displays (except for common cathode displays). The parts list has a display and power supply to keep you from having to come up with your own. Feel free to use the recommended option or play around with something else.

## Online parts list

For a complete list of parts, see:

- [Bill of materials](led-driver-voltage.bom.md)
- [Part lists](led-driver-voltage.parts.md)

You can also buy the parts for the constant voltage led driver online from a Wishlist:

- Sparkfun: [Common](https://www.sparkfun.com/wish_lists/160406), [DMX-DCV](https://www.sparkfun.com/wish_lists/160583)
- Adafruit: [Common](http://www.adafruit.com/wishlists/589832), [DMX-DCV](http://www.adafruit.com/wishlists/590543)

If you plan to use something else for the display, you can leave out the Big Dome Buttons, the 12v power supply (you'll likely need something to supply more current anyway). You may also want to consider adding heat sinks depending on your load.

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-DCV, Rev 1.6](https://oshpark.com/shared_projects/vsJuLlDO).

## Version History

### Rev 1.6

- Added power planes
- Added heat sink
- Rename to Constant Voltage LED Driver
- Change input and output connections to match constant current led driver

### Rev 1.5

- Switch to smaller screw terminal connectors
- Add pull-down resistors
- Add silkscreen values
- Remove COAX power connector...again.

### Rev 1.4

- Refactor display-pro to work with io-analog-pwm
- Add correct COAX power connector

### Rev 1.3

- Standard board to match IO modules

### Rev 1.2

- Remove COAX power connector

### Rev 1.1

- Added rounded corners

### Rev 1.0

- Initial draft
