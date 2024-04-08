# DMX Demonstrator Transmitter (DMX-TX1)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Transmitter is an [Arduino](https://www.arduino.cc/) Shield which provides the 3-wire data/clock signal to the Receiver (DMX-RX1) and encode the data stream to control the brightness of 4 LEDs.

## Online parts list

For a complete list of parts, see:

- [Bill of materials](transmitter.bom.md)
- [Part lists](transmitter.parts.md)

You can also buy the parts for the Transmitter online from a Wishlist:

- Sparkfun: [Common](https://www.sparkfun.com/wish_lists/160406), [DMX-TX1](https://www.sparkfun.com/wish_lists/160541)
- Adafruit: [Common](http://www.adafruit.com/wishlists/589832), [DMX-TX1](https://www.adafruit.com/wishlists/589833). Note that VR1 is not included.

The Transmitter needs parts from the common parts list but there are enough parts left over to build a Transmitter IO (DMX-TX2), Receiver (DMX-RX1), and Frame Scrambler (DMX-FS1).

Note: The rotary potentiometer offered by Sparkfun stands a total of 30mm from the board. It's a little tall but perfectly functional, not to mention the sell everything else. However, you can opt for a short potentiometer, the Bourns PTV09A-4020F-B103 is a great choice if the height is a concern for you:

- [DataSheet](https://www.bourns.com/docs/Product-Datasheets/PTV09.pdf)
- [Digikey PTV09A-4020F-B103-ND](https://www.digikey.com/products/en?keywords=PTV09A-4020F-B103)
- [Mouser 652-PTV09A-4020FB103](https://www.mouser.com/ProductDetail/Bourns/PTV09A-4020F-B103?qs=Qzws7J6gxqx9VaKCiVoniw%3D%3D)

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-TX1, Rev 1.3](https://oshpark.com/shared_projects/BYd66lVx)

You can read more about ordering pcbs [here](..\pcb.md).

## Compatibility

 The DMX-TX1 is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3: Hardware Revision 1.1+, Software Version 1.1+
- Arduino Leonardo: Hardware Revision 1.1+, Software Version 1.1+
- Arduino Mega or Mega 2560: Hardware Revision 1.1+, Software Version 1.2+

## Revision History

### Rev 1.3

- Improved surface area of power plane

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
