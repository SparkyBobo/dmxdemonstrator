# DMX Demonstrator Discovery Software

## Overview

The discovery software is an Arduino sketch design for use with the DMX-RX1, the standard receiver, the DMX-TX1, the standard transmitter, the DMX-TX2, the control-pro adapter, and the DMX-FS1, the frame scrambler. The discovery software automatically detects whether DMX-RX1, DMX-TX1, DMX-TX2, or FS-1 is connected.

The discovery software also tests the basic functionality of the connected board.

## Compatibility

 The discovery software is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3, Version 1.0+
- Arduino Leonardo, Version 1.0+
- Arduino Mega or Mega 2560, Version 1.0+

## Version History

### Rev 1.2

- Added detection of DMX-FS1.

### Rev 1.1

- Fixed detection of DMX-TX2/control-pro.
- Fixed test mode of DMX-TX2/control-pro.

### Rev 1.0

- Initial draft
