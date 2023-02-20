# DMX Demonstrator Receiver (DMX-RX2)

## Overview

The receiver is an [Arduino](https://www.arduino.cc/) Shield board designed to accept the 3-wire data/clock signal from the transmitter and decode the data stream to control the brightness of 4 LEDs. It also has additional output for use with external LED drivers.

## Online parts list

Sparkfun offers all of the components required for the receiver. You can find a parts lists [here](https://www.sparkfun.com/wish_lists/160542).

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-RX1, Rev 1.2](https://oshpark.com/shared_projects/VdwUWld0).

## Version History

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
