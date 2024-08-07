# DMX Demonstrator Transmitter Software

## Overview

The transmitter software is an Arduino sketch design for use with the both the DMX-TX1, the standard transmitter, or DMX-CPAD, the control-pro adapter. The transmitter software automatically detects whether DMX-TX1 or DMX-CPAD is connected.

## Compatibility

 The transmitter software is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3, Version 1.1+
- Arduino Leonardo, Version 1.1+
- Arduino Mega or Mega 2560, Version 1.2+

## Version History

### Rev 1.5

- Added io-dmx module support

### Rev 1.4

- Fix discovery of DMX-TX2, a.k.a., DMX-CPAD
- Allow dimmer level to goto zero
- Changes to work with demo software

### Rev 1.3

- Added compact status for companion software

### Rev 1.2

- Fixed clock mode detection when using control-pro.

### Rev 1.1

- Refactored to capture analog values asynchronously.
- Refactor to add human readable status output.

### Rev 1.0

- Initial draft
