# DMX Demonstrator Disrupter (DMX-FS1)

## Overview

The disrupter is an [Arduino](https://www.arduino.cc/) Shield board designed to accept the 3-wire data/clock signal from the transmitter, decode the data stream, and re-transmit the stream to the receiver. It can impact the data bit being sent to the receiver by changing a 0 to a 1 or a 1 to a 0.

When using the scrambler, you might consider adding two more display-pros if you already plan to use a display-pro. Normally, 1 display-pro is used to display the clock and data sent between the transmitter and receiver. Since the scrambler changes the data
pin so it is different between the transmitter and receiver, an additional display-pro highlights the difference between the incoming and outgoing data. You can replicate all of the LEDs on the scrambler with an additional display-pro, highlighting the
incoming data and clock, the outgoing data and clock, the enabled LED of the scrambler and the scrambled LED of the scrambler. The enabled output of the scramblers display port is selectable between enabled (default) and outgoing data via solder bridge JP1.

## Online parts list

Sparkfun offers all of the components required for the receiver. You can find a parts lists [here](https://www.sparkfun.com/wish_lists/173714).

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-FS1, Rev 1.0](https://oshpark.com/shared_projects/??????)

## Version History

### Rev 1.0

- Initial draft
