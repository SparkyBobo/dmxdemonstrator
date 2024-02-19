# DMX Demonstrator Transmitter IO Interface (DMX-TX2)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Transmitter IO Interface is an [Arduino](https://www.arduino.cc/) Shield which provides the 3-wire data/clock signal to the Receiver (DMX-RX1) and encode the data stream to control the brightness of 4 LEDs using the Control Pro (DMX-CP*).

## Online parts list

Sparkfun offers some, but not all, of the components required for the Control Pro. For the parts they can supply, you can find a parts lists [here](https://www.sparkfun.com/wish_lists/160543).

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

## PCB

You can order the PCBs from [OHS Park](https://oshpark.com/):

- [DMX-TX2, Rev 1.3](https://oshpark.com/shared_projects/mKdzHGgN)

## Compatibility

 The DMX-TX2 is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3: Hardware Revision 1.2+, Software Version 1.2+
- Arduino Leonardo: Hardware Revision 1.2+, Software Version 1.2+
- Arduino Mega or Mega 2560: Hardware Revision 1.2+, Software Version 1.2+

## Version History

### Rev 1.3

- Switch to 74LS07 for Led driver
- Add pullup resistor for discovery
- Add silkscreen values

### Rev 1.2

- Added buffer to drive LEDs
- Added decoupling capacitors
- Fixed dimmer traces on PCB
- Add IO connector
- Moved to it's own folder since it's not dedicated to the control pro.

### Rev 1.1

- Added buffer to drive LEDs
- Added decoupling capacitors
- Fixed dimmer traces on PCB

### Rev 1.0

- Initial draft
