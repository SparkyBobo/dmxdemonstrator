# DMX Demonstrator DMX-512 IO Module (DMX-IO1)

![status](https://img.shields.io/badge/status-prototype-orange)

## Overview

The DMX-512 IO Module is a stand-alone module which generates or receives a DMX-512 signal, allowing the DMS Demonstrator system to communicate with DMX-512-compatible equipment. It can be used with a Receiver (DMX-RX2) to receive or re-transmit DMX-512. It can also be used with a Transmitter (DMX-TX2) to transmit the data stream to DMX-512.

## Online parts list

For a complete list of parts, see:

- [Bill of materials](io-dmx-512.bom.md)
- [Part lists](io-dmx-512.parts.md)

Sadly, Sparkfun and Adafruit do not offer all of the components required for DMX-512 IO Module. Additionally, Digikey does not carry Neutrik for connecting to the DMX devices. The parts can be purchased from [Mouser](https://www.mouser.com/) or [Newark](https://www.newark.com/). Some parts can be purchased from [SparkFun](https://www.sparkfun.com/) and [Adafruit](https://www.adafruit.com/).

### Required components

- U5, MAX485E

  - [MAX485E Data Sheet](https://www.analog.com/media/en/technical-documentation/data-sheets/MAX1487E-MAX491E.pdf)
  - [Mouser 700-MAX485CPA](https://www.mouser.com/ProductDetail/Analog-Devices-Maxim-Integrated/MAX485CPA%2b?qs=1THa7WoU59FcxPgOoQv70A%3D%3D)
  - [Newark 881Y9485](https://www.newark.com/analog-devices/max485cpa/rs422-rs485-transceiver-2-5mbps/dp/81Y9485?ost=max485cpa)

- C5, 0.1uF

  - [SparkFun 8375](https://www.sparkfun.com/products/8375)
  - [Adafruit 753](https://www.adafruit.com/product/753)
  - [Mouser 80-C320C104K5R7301](https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D)
  - [Newark 13K6284](https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432)

- R2, R5, and R7, 470 ohm

  - [Adafruit 2781](https://www.adafruit.com/product/2781)
  - [Mouser 603-CFR-25JT-52-470R](https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D)
  - [Newark 38K0375](https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375)

- J1, 2x7 shrouded right-angle header

  - [Datasheet](https://www.we-online.com/components/products/datasheet/61201421721.pdf)
  - [Mouser 710-61201421721](https://www.mouser.com/ProductDetail/Wurth-Elektronik/61201421721?qs=PhR8RmCirEbQk5OcjPFu0A%3D%3D)
  - [Newark 75AJ1395](https://www.newark.com/wurth-elektronik/612014235221/conn-r-a-header-14pos-2row-2-54mm/dp/75AJ1395)

### DMX Connectors

DMX commonly uses a 5-pin XLR connector. From the [Recommended Practices for DMX-512, 2nd Edition by Adam Bennette](https://tsp.esta.org/tsp/documents/docs/DMX512-A_Guide_(8x10)_ESTA.PDF):

> DMX512-A lines connect with equipment via XLR 5 pin type connectors. A female connector is fitted to a transmitter and a male connector to a receiver.

However, some DMX equipment is equipped 3-pin XLR connectors which does not comply with the USITT spec. That said, the DMX-IO1 supports both XLR-5 and XLR-3 connectors, one male and one female. The design is made for Neutrik connectors (which is not a brand that Digikey carries). There are a few variation of the basic part numbers listed below with different shielding configurations. For instance, Newark only carries the NC3FAH-2, which works fine in place of the NC3FAH.

- XLR, 5-pin male

  - [NC5MAH Datasheet](https://www.neutrik.com/en/product/nc5mah.pdf)
  - [Mouser 568-NC5MAH](https://www.mouser.com/ProductDetail/Neutrik/NC5MAH/?qs=43pPWqpsSNtpdAMzqMXlkw%3D%3D)
  - [Newark 25C4313](https://www.newark.com/neutrik/nc5mah/connector-xlr-audio-plug-5pos/dp/25C4313?ost=nc5mah)

- XLR, 5-pin female

  - [NC5FAH Datasheet](https://www.neutrik.com/en/product/nc5fah.pdf)
  - [Mouser 568-NC5FAH](https://www.mouser.com/ProductDetail/Neutrik/NC5FAH/?qs=JfNPhaIww3Jo8umm7Mfi2w%3D%3D)
  - [Newark 94C1524](https://www.newark.com/neutrik/nc5fah/connector-xlr-receptacle-5-position/dp/94C1524?ost=nc5fah)

- XLR, 3-pin male

  - [NC3MAH Datasheet](https://www.neutrik.com/en/product/nc3mah.pdf)
  - [Mouser 568-NC3MAH](https://www.mouser.com/ProductDetail/Neutrik/NC3MAH/?qs=MO8z%252B%252BLepAHrH1t47qrfbA%3D%3D)
  - [Newark 91F3468](https://www.newark.com/neutrik/nc3mah/connector-xlr-plug-3-position/dp/91F3468?st=nc3mah)

- XLR, 3-pin female

  - [NC3FAH-0 Datasheet](https://www.neutrik.com/en/product/nc3fah-0.pdf)
  - [Mouser 568-NC3FAH](https://www.mouser.com/ProductDetail/Neutrik/NC3FAH/?qs=43pPWqpsSNse2FCN7qQVQw%3D%3D)
  - [Newark 27B4208](https://www.newark.com/neutrik/nc3fah2/connector-xlr-audio-rcpt-3pos/dp/27B4208)

### DMX Termination

From the [Recommended Practices...](https://tsp.esta.org/tsp/documents/docs/DMX512-A_Guide_(8x10)_ESTA.PDF):

> Incorrect or missing termination is probably the single most common reason for faulty DMX512-A systems. The terminator is a resistor fitted between the two data lines (pins 2 & 3 of an XLR 5 pin connector) at the end of the cable furthest from the transmitter.

The DMX-IO1 includes a part to terminate the DMX-512 line. To add termination, populate R1 with a 120 ohm resistor. Add SW1 to make termination selectable or solder a jumper between the two round pads for permanent termination.

- R1 - 120 ohm

  - [Mouser 603-CFR-25JT-52-120R](https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-120R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40ae6q2awCfJoc%3D)
  - [Newark 38K0333](https://www.newark.com/multicomp-pro/mcf-0-25w-120r/carbon-film-resistor-120-ohm-250mw/dp/38K0333)

- SW1 - slide switch SPDT

  - [Data Sheet](https://www.mouser.com/datasheet/2/140/EG-3305192.pdf)
  - [Sparkfun COM-00102](https://www.sparkfun.com/products/102)
  - [Adafruit 805](https://www.adafruit.com/product/805)
  - [Mouser 612-EG1218](https://www.mouser.com/ProductDetail/E-Switch/EG1218?qs=xDsBkp9LkocT0c8K%252B5e%2FgA%3D%3D)|
  - [Newark 15N7301](https://www.newark.com/e-switch/eg1218/slide-switch-spdt-200ma/dp/15N7301?st=eg1218)

### Isolation

From the [Recommended Practices...](https://tsp.esta.org/tsp/documents/docs/DMX512-A_Guide_(8x10)_ESTA.PDF):

> The solution to the grounding problems described above is to disconnect the receiver ground from the DMX512-A line ground / 0V wire, by means of an optical isolation circuit.

The DMX-IO1 shamelessly steals it's isolation design from [SparkFun ESP32 Thing Plus DMX to LED Shield](https://www.sparkfun.com/products/15110) which implements isolation including power supply isolation. Isolation is implemented using the following parts:

- U1, RFM-0505S

  - [RFM-0505S Datasheet](https://recom-power.com/pdf/Econoline/RFM.pdf)
  - [Mouser 5919-RFM-0505S](https://mou.sr/3UqOlN3)
  - [Newark 54AC6727](https://www.newark.com/recom-power/rfm-0505s/dc-dc-converter-5v-0-2a/dp/54AC6727)

- U2-U4, 6N137

  - [6N137 Datasheet](https://www.mouser.com/datasheet/2/427/6n137-1767489.pdf)
  - [Mouser 782-6N137](https://www.mouser.com/ProductDetail/Vishay-Semiconductors/6N137/?qs=xCMk%252BIHWTZMrQz4FyDXhMg%3D%3D)
  - [Newark 52M1895](https://www.newark.com/vishay/6n137/optocoupler-transistor-5300vrms/dp/52M1895?st=6n137)

- C2-C4, 0.1uF

  - [SparkFun 8375](https://www.sparkfun.com/products/8375)
  - [Adafruit 753](https://www.adafruit.com/product/753)
  - [Mouser 80-C320C104K5R7301](https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D)
  - [Newark 13K6284](https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432)

- R3, R4, and R6, 470 ohm

  - [Adafruit 2781](https://www.adafruit.com/product/2781)
  - [Mouser 603-CFR-25JT-52-470R](https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D)
  - [Newark 38K0375](https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375)

You can use the DMX-IO1 without isolation by leaving out these parts (saving about $12 USD) and installing 5 solder bridges to bypass the isolation circuits:

- Omit U1
- Under U1, connect pins 1 and 4 to bypass +5v
- Under U1, connect pins 2 and 3 to bypass GND
- Omit U2
- Under U2, solder JP1 closed to bypass RX
- Omit U3
- Under U3, solder JP2 closed to bypass DIR
- Omit U4
- Under U4, solder JP3 closed to bypass TX
- Omit C2
- Omit C3
- Omit C4
- Omit R3
- Omit R4
- Omit R6

## PCB

You can order the PCBs from [OHS Park](https://oshpark.com/):

- [DMX-IO1, Rev 1.6](https://oshpark.com/shared_projects/F78SkVHp)

You can read more about ordering pcbs [here](..\pcb.md).

## Version History

### Rev 1.6

- Added termination switch
- Change to RFM-0505S
- Change to MAX485E
- Swap A and B on Max485
- Avoid split power planes under WH4
- Remove pads from XLR alignment pins

### Rev 1.5

- Move R5 to make room for R2 silkscreen
- Move R1 to make room for DMX connector

### Rev 1.4

- Fix issue with DMX A and B being reversed
- Group bypass-only resistors together
- Add ISO bypass solder bridges
- Add silkscreen values
- Remove RDM bias resistors

### Rev 1.3

- Remove isolation bypass artifacts from schematic and board, moved to docs only.
- Remove RDM line biasing since the isolation circuit does not support RDM.

### Rev 1.2

- Switched to a stand-alone module

### Rev 1.1

- Moved DMX connectors
- Added bypass pads to U1

### Rev 1.0

- Initial draft
