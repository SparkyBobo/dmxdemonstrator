# DMX Demonstrator Constant Current LED Driver (DMX-DCC)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Constant Current LED Driver is stand-along module which takes 2 logic signals and amplifies the output for a larger current load such as an led chip. Most led chips require a constant current as opposed to a constant voltage, this board implements a constant-current driver using the AL8660/AL8661 led driver module. It can be modified to provide 350ma, 700ma, or 900ma depending on the needs of your led.

## Parts

There are two options for building this board, a through-hole version which is easy to solder, and a surface-mount version which is a bit harder to solder.

For the a surface-mount version:

- [Bill of materials](led-driver-current.bom.md)
- [Part lists](led-driver-current.parts.md)

For the a through-hole version:

- [Bill of materials](led-driver-current.bom.module.md)
- [Part lists](led-driver-current.parts.module.md)

You can also buy the parts for the through-hole version online from a Wishlist:

- Sparkfun: [Common](https://www.sparkfun.com/wish_lists/160406), [DMX-DCC](https://www.sparkfun.com/wish_lists/175548)

## Current Selection

For the surface-mount version, you can pick the constant current value using R1 & R2:

- 350ma: 0.33 OHM
- 700ma: 0.15 OHM
- 900ma: 0.1 OHM (specified in the BOM and parts list)
- 1/2 Watt
- 1% Tolerance
- Footprint 1206 (3216 Metric)

For the through-hole version based on the [Sparkfun FemtoBuck](https://www.sparkfun.com/products/13716), see the [Hookup Guide](https://learn.sparkfun.com/tutorials/femtobuck-constant-current-led-driver-hookup-guide-v13):

> The most recent revision has a small solder jumper, highlighted above, that can be closed with a glob of solder to double the output current
> from 330mA to 660mA. We suggest closing this jumper before soldering headers, terminals, or wires to the nearby holes.

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-DCC, Rev 1.1](https://oshpark.com/shared_projects/NdE986eJ).

## Version History

### Rev 1.1

- Switched to larger SMD diodes
- Switched to larger SMD AL8661
- Changed power plane layout
- Move filter capacitor near power source

### Rev 1.0

- Initial draft
