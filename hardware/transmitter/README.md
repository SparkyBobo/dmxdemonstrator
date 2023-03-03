# DMX Demonstrator Transmitter (DMX-TX1)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Transmitter is an [Arduino](https://www.arduino.cc/) Shield which provides the 3-wire data/clock signal to the Receiver (DMX-RX1) and encode the data stream to control the brightness of 4 LEDs.

## Online parts list

Sparkfun offers all of the components required for the transmitter. You can find a parts lists [here](https://www.sparkfun.com/wish_lists/160541).

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

Note: The rotary potentiometer offered by sparkfun stands a total of 30mm from the board. It's a little tall but perfectly functional, not to mention the sell everything else. However, you can opt for a short potentiometer, the Bourns PTV09A-4020F-B103 is a great choice:

- [DataSheet](https://www.bourns.com/docs/Product-Datasheets/PTV09.pdf)
- [Digikey PTV09A-4020F-B103-ND](https://www.digikey.com/products/en?keywords=PTV09A-4020F-B103)
- [Mouser 652-PTV09A-4020FB103](https://www.mouser.com/ProductDetail/Bourns/PTV09A-4020F-B103?qs=Qzws7J6gxqx9VaKCiVoniw%3D%3D)

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-TX1, Rev 1.2](https://oshpark.com/shared_projects/O0oApXTk)

## Version History

### Rev 1.2

- Moved Clock LED to avoid Arduino ICSP connector.
- Relabeled the clock fast and slow LED connections in the
  schematic to match the board layout.

### Rev 1.1

- Fixed shield footprint
- Added Fcu power plane
- Redid Fcu layout
- Added rounded corners

### Rev 1.0

- Initial draft
