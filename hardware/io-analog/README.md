# DMX Demonstrator Analog IO Modules (DMX-IO2, DMX-IO3, DMX-IO4, DMX-IO5)

![status](https://img.shields.io/badge/status-prototype-orange)

## Overview

The PWM IO Modules are a family of modules which generate  analog signals. These modules are for use with the Receiver IO Module (DMX-RX2) and other DMX Demonstrator components. The Core module (DMX-IO2) convert the DMX signal into a 0 to +2.5V signla which the other modules then use to generate (more) useful signals. The other modules then stack on top of the Core module to produce different signals. The modules are designs to by used at the same time, so you can create a stack of any number of modules with DMX-IO2 on the bottom to generate a variety of signals. Each module will produce it's signal in response to channel 1-4 and you can use the signals, just pick off the signal you want from the appropriate module to control a device. You might use a stack of multiple modules if you wanted to coordinate channels 1-4 to control a variety of devices working in unison, such as a DIY moving head fixture.

## Parts

Core Header - https://www.sparkfun.com/products/11896
Tall Header - https://www.sparkfun.com/products/16279

## Signal options


