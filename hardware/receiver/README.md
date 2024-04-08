# DMX Demonstrator Receiver (DMX-RX1)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Status : Testing

## Overview

The Receiver is an [Arduino](https://www.arduino.cc/) Shield which accepts the 3-wire data/clock signal from the Transmitter (DMX-TX1) and decodes the data stream to control the brightness of 4 LEDs.

## Online parts list

For a complete list of parts, see:

- [Bill of materials](receiver.bom.md)
- [Part lists](receiver.parts.md)

You can also buy the parts for the Receiver online from a Wishlist:

- Sparkfun: [Common](https://www.sparkfun.com/wish_lists/160406), [DMX-RX1](https://www.sparkfun.com/wish_lists/160542)
- Adafruit: [Common](http://www.adafruit.com/wishlists/589832), [RMX-RX1](https://www.adafruit.com/wishlists/589834). Note that VR1 is not included.

The Receiver needs parts from the common parts list but there are enough parts left over to build a Transmitter (DMX-TX1), Transmitter IO (DMX-TX2), and Frame Scrambler (DMX-FS1).

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-RX1, Rev 1.4](https://oshpark.com/shared_projects/KHwUs20e).

You can read more about ordering pcbs [here](..\pcb.md).

- ## Compatibility

 The DMX-RX1 is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3: Hardware Revision 1.1+, Software Version 1.1+
- Arduino Leonardo: Hardware Revision 1.1+, Software Version  1.1+
- Arduino Mega or Mega 2560: Hardware Revision 1.1+, Software Version 1.2+

## Version History

### Rev 1.4

- Add PWM headers for use with led drivers

### Rev 1.3

- Remove PWM connector

### Rev 1.2

- Moved clock LED to avoid Arduino ICSP connector.
- Add RXCLK to D9 connection for Leonardo PCINT5.

### Rev 1.1

- Fixed shield footprint
- Added error and start code LEDs.
- Added Fcu power plane
- Redid Fcu layout
- Added rounded corners

### Rev 1.0

- Initial draft
