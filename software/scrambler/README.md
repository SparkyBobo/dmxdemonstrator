# DMX Demonstrator Frame Scrambler Software

## Overview

The frame scrambler software is an Arduino sketch design for use with the DMX-FS1, the frame scrambler.

## Compatibility

 The frame scrambler software is compatible with the following Arduino platforms:

![compat](https://img.shields.io/badge/compat-verified-brightgreen)

- Arduino Uno R3,  Version 1.1+
- Arduino Leonardo, Version 1.1+
- Arduino Mega or Mega 2560, Version 1.2+

## Version History

### Rev 1.1

- Add cr/lf to startup messages so companion software can discover it.
- Fix issue where scrambler didn't detect tx clock on Uno

### Rev 1.0

- Initial draft
