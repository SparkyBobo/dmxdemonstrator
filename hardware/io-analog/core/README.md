# DMX Demonstrator Analog Core Module (DMX-IO2)

![status](https://img.shields.io/badge/status-prototype-orange)

## Overview

The Analog Core Module is a analog module which produces a voltage output from the DMX signal. This module is designed for use with the Receiver IO Module (DMX-RX2) and other DMX Demonstrator components. The Core module supplies 0 to +2.5V in response to the channel levels. This voltage is then used by the additional modules to produce a variety of (more) useful analog signals.

The reason for building a family of boards is that digital to analog converters (DACs) are a fairly expensive parts. By incorporating them into a common board, they only need to be purchased once. The op-amp on the Core board is used as a driver th generate a singlan strong enough to drive multiple output modules.

DACs also tend to be picky about supply voltages, requiring more input voltage than is required to generate the output voltage. The Texas Instruments TLC7524CN is an excellent choice in that it can convert a parallel signal, which can be extract directly from the DMX stream, and only requires an input voltage that is +2V higher than the output voltage, allowing for a 0 to +2.5V output to be generated from +5v. This allows the Core module to be powered from the DMX module to which is connects and any other voltages required are dependant on the application for that module only.

## Parts

Core Header - https://www.sparkfun.com/products/11896

### Rev 1.3

- Fix issue with A03 and A02 being reversed at Analog Extensions
- Fix issue with A1 and A0 at IO Extension header
- Label D0..D7 correctly
- Swap U4 and U5 in schematic to match board layout
- Change TO-92 footprint
- Add silkscreen values

### Rev 1.2

- Converted to a family of modules so avoid multiple DACs for each analog option
- Standardize layout to allow stacking of analog modules

### Rev 1.1

- Switched to a stand-alone module

### Rev 1.0

- Initial draft
