# DMX Demonstrator Disrupter (DMX-FS1)

## Overview

The Frame Scrambler is an [Arduino](https://www.arduino.cc/) Shield board designed to accept the 3-wire data/clock signal from the transmitter, decode the data stream, and re-transmit the stream to the receiver. It can impact the data bit being sent to the receiver by changing a 0 to a 1 or a 1 to a 0.

When using the scrambler, you might consider adding two more display-pros if you already plan to use a display-pro. Normally, 1 display-pro is used to display the clock and data sent between the transmitter and receiver. Since the scrambler changes the data
pin so it is different between the transmitter and receiver, an additional display-pro highlights the difference between the incoming and outgoing data. You can replicate all of the LEDs on the scrambler with an additional display-pro, highlighting the
incoming data and clock, the outgoing data and clock, the enabled LED of the scrambler and the scrambled LED of the scrambler. The enabled output of the scramblers display port is selectable between enabled (default) and outgoing data via solder bridge JP1.

## Online parts list

For a complete list of parts, see:

- [Bill of materials](scrambler.bom.md)
- [Part lists](scrambler.parts.md)

You can also buy the parts for the Frame Scrambler online from a Wishlist:

- Sparkfun: [Common](https://www.sparkfun.com/wish_lists/160406), [DMX-FS1](https://www.sparkfun.com/wish_lists/173714)
- Adafruit: [Common](http://www.adafruit.com/wishlists/589832), [DMX-FS1](http://www.adafruit.com/wishlists/590130)

The Frame Scrambler needs parts from the common parts list but there are enough parts left over to build a Transmitter (DMX-TX1), Transmitter IO (DMX-TX2), and Receiver (DMX-RX1).

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-FS1, Rev 1.1](https://oshpark.com/shared_projects/A815QTi9)

You can read more about ordering pcbs [here](../pcb.md).

## Compatibility

 The DMX-FS1 is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3: Hardware Revision 1.0+, Software Version 1.0+
- Arduino Leonardo: Hardware Revision 1.0+, Software Version 1.0+
- Arduino Mega or Mega 2560: Hardware Revision 1.0+, Software Version 1.0+

## Revision History

### Rev 1.1

- Add resistor for discover

### Rev 1.0

- Initial draft
