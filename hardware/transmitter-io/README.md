# DMX Demonstrator Transmitter IO Interface (DMX-TX2)

![status](https://img.shields.io/badge/status-prototype-orange)

## Overview

The Transmitter IO Interface is an [Arduino](https://www.arduino.cc/) Shield which allows the Transmitter (DMX-TX1) connect to the Control Pro (DMX-CP*) and various IO modules, such as the DMX-512 IO Module (DMX-IO1).

## Version History

### Rev 1.3

- Switch to 74LS07 for Led driver
- Add pulldown resistor for discovery
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
