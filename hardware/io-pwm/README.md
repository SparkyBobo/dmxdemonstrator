# DMX Demonstrator PWM IO Module (DMX-IO3)

![status](https://img.shields.io/badge/status-prototype-orange]

## Overview

The PWM IO Module is a stand-alone module which generates a pulse-width-modulated analog signal where the duty cycle corresponds to the channels brightness. This module is for us with the Receiver IO Module (DMX-RX2) and other DMX Demonstrator components. The voltage of the PWM signal is 0-10v by default but can be changed by adjusting the voltage regulator resistors.

## Dimmer Options

he 0-10v PWM signal is used in a wide variety of commercial dimmers as well. Some notable products include:

- Mean Well LED Switching Power Supply - PWM Series
  - LED dimmers compatible with 0-10z dimming, Universal AC input range, Short circuit, over-load, over-voltage, and over-temperature protection, Waterproof IP67-rated
  - [24v Output](https://www.superbrightleds.com/moreinfo/constant-voltage-power-supplies/mean-well-led-power-supply-pwm-series-40-120w-24v-dimmable/3206/)
  - [12v Output](https://www.superbrightleds.com/moreinfo/constant-voltage-power-supplies/mean-well-led-power-supply-pwm-series-40-120w-12v-dimmable/3205/)

### Rev 1.1

- Switched to a stand-along module

### Rev 1.0

- Initial draft
