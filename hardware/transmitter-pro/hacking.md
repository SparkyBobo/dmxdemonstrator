# Hacking

The DMX Demonstrator transmitter pro is designed to be hacked. A few extension points are built into the Core board
to enable customization beyond what the logic circuit is capable of controlling.

## Clock

The CLK_EXT input allows a circuit drive the sample clock and tx clock counter. This can
be used to inject a clock signal of your choice. The external clock input is selectable by
unplugging the control pro clock board or by 

## Sample

The sampling counter can be controlled from a source other than the control pro dimmer board.
To select the external input, pull ~BUS_REQUEST low. When the sample circuit has released the
data bus, the ~BUS_ACK signal will be pulled low. At this point, you are free to drive the data
bus and inject any data you'd like into the shift register.

## Shift Register

The data bus feeds the shift register. Normally. The data bus is driven by the sample counter.
To provide an alternate value to the data bus, pull ~BUS_REQUEST low. When the sample counter
has released the data bus, the ~BUS_ACK signal will be pulled low. At this point, you are free
to drive the data bus and inject any data you'd like into the shift register.

From there, the ~SHIFT_LOAD, ~SHIFT_ENABLE, and ~SHIFT_TRANSMIT pins control the shift register,
allowing you to shift the data onto the serial bus, if enabled, or directly to DATA_SHIFT_OUT.