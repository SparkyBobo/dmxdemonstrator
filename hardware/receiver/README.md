# DMX Demonstrator Receiver (DMX-RX1)

![status](https://img.shields.io/badge/status-testing-yellow]

## Status : Testing

## Overview

The Receiver is an [Arduino](https://www.arduino.cc/) Shield which accepts the 3-wire data/clock signal from the Transmitter (DMX-TX1) and decodes the data stream to control the brightness of 4 LEDs.

## Online parts list

Sparkfun offers all of the components required for the receiver. You can find a parts lists [here](https://www.sparkfun.com/wish_lists/160542).

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-RX1, Rev 1.3](https://oshpark.com/shared_projects/b6uh6OMa).

## Version History

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
