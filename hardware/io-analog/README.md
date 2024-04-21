# DMX Demonstrator Analog IO Modules (DMX-IO2, DMX-IO3, DMX-IO4, DMX-IO5)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Analog IO Modules are a family of modules which generate analog signals. These modules are for use with the Receiver IO Module (DMX-RX2) and other DMX Demonstrator components. The Core module (DMX-IO2) convert the DMX signal into a 0 to +2.5V signal which the other modules then use to generate (more) useful signals. The other modules stack on top of the Core module and are designed to by used at the same time, so you can create a stack of any number of modules with DMX-IO2 on the bottom to generate a variety of signals. Each module will produce its signal in response to channels 1-4 and you can any of the signals, just pick off the signal you want from the appropriate module to control a device. You might use a stack of multiple modules if you wanted to coordinate channels 1-4 to control a variety of devices working in unison, such as a DIY moving head fixture.

## Signal options

### Core Module (DMX-IO2)

The Core module (DMX-IO2) convert the DMX signal into a 0 to +2.5V signal which the other modules then use to generate (more) useful signals. You can use the signal directly via the IO extension header.

### Voltage Module (DMX-IO3)

The Voltage IO module can generate a 0 to adjustable positive voltage which tracks the level of a channel. It is configurable to generate multiple output voltages to adapt it to any voltage range required. The default values
listed in the schematic generate 0 to +10V since this is a common lighting control signal.

### PWM Module (DMX-IO4)

The PWM IO module can generate a 0 to adjustable positive voltage PWM signal where the duty cycle tracks the level of a channel. It is configurable to generate multiple output voltages to adapt it to any voltage range required. The default values
listed in the schematic generate 0 to +10V since this is a common lighting control signal. The PWM IO module can also generate a 0 to +5V PWM signal where the duty cycle tracks the level of a channel. Both outputs can be used at the same time.



