# DMX Demonstrator DMX Dimmer (DMX-DD1)

## Overview

The digital dimmer is an [Arduino](https://www.arduino.cc/) Shield board designed to communicate with DMX compatible and RDM-compatible equipment.
When used in the DMX Demonstrator, it is used with the receiver to pass the
received dimmer levels to a DMX universe.

## Online parts list

Sadly, Sparkfun does not offer all of the components required for the digital dimmer. Additionally, Digikey does not carry Neutrik for connecting
to the DMX/RDM devices.

The major parts can be purchased from [Mouser](https://www.mouser.com/) or [Newark](https://www.newark.com/). Links and part numbers are listed below.

- U5, MAX3485CPA+ -
[Newark 81Y9431](https://www.newark.com/maxim-integrated-products/max3485cpa/rs422-rs485-transceiver-10mbps/dp/81Y9431?st=max3485)
[Mouser 700-MAX3485CPA](https://www.mouser.com/ProductDetail/Maxim-Integrated/MAX3485CPA%2b/?qs=LHmEVA8xxfbU8x9nGoNB%2Fw%3D%3D)
[MAX3485 Datasheet](https://www.mouser.com/datasheet/2/256/MAX3483_MAX3491-1292143.pdf)

- C2-C5, 0.1uF -
[Newark 13K6284](https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432)
[Mouser 80-C320C104K5R7301](https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D)
[Sparkfun 8375](https://www.sparkfun.com/products/8375)

- R5-10, 470 ohm -
[Newark 38K0375](https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375)
[Mouser 603-CFR-25JT-52-470R](https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D)

- R11 & R13, 680 ohm -
[Newark 38K0387](https://www.newark.com/multicomp-pro/mcf-0-25w-680r/carbon-film-resistor-680-ohm-250mw/dp/38K0387)
[Mouser 603-CFR-25JB-52-680R](https://www.mouser.com/ProductDetail/Yageo/CFR-25JB-52-680R/?qs=sGAEpiMZZMtlubZbdhIBINt%2Ft6Hry3%2FBZYYRBIijkE4%3D)

- R12 - 120 ohm -
[Newark 38K0333](https://www.newark.com/multicomp-pro/mcf-0-25w-120r/carbon-film-resistor-120-ohm-250mw/dp/38K0333)
[Mouser 603-CFR-25JT-52-120R](https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-120R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40ae6q2awCfJoc%3D)

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

- D1-D4
- J1
- R1-R4

### DMX Connectors

Of course DMX commonly uses a 5-pin XLR, it is often used with a 3-pin XLR. I'm not a fan of the 3-pin variant since it is the same as the audio connector making it seem as if DMX and Mic cables can be used interchangeably.

That said, the DMX-DD1 supports both XLR-5 and XLR-3 connectors, one male and one female. You can choose between XLR-5 and XLR-3 but cannot use both at the same time. The design is made for Neutrik connectors (which is not a brand that Digikey carries). There are a few variation of the basic part numbers listed below with different shielding configurations. For instance,
Newark only carries the NC3FAH-2, which works fine in place of the NC3FAH.

- 5-pin male XLR:
[Newark 25C4313](https://www.newark.com/neutrik/nc5mah/connector-xlr-audio-plug-5pos/dp/25C4313?ost=nc5mah)
[Mouser 568-NC5MAH](https://www.mouser.com/ProductDetail/Neutrik/NC5MAH/?qs=43pPWqpsSNtpdAMzqMXlkw%3D%3D)
[NC5MAH Datasheet](https://www.neutrik.com/en/product/nc5mah.pdf)

- 5-pin female XLR:
[Newark 94C1524](https://www.newark.com/neutrik/nc5fah/connector-xlr-receptacle-5-position/dp/94C1524?ost=nc5fah)
[Mouser 568-NC5FAH](https://www.mouser.com/ProductDetail/Neutrik/NC5FAH/?qs=JfNPhaIww3Jo8umm7Mfi2w%3D%3D)
[NC5FAH Datasheet](https://www.neutrik.com/en/product/nc5fah.pdf)

- 3-pin male XLR:
[Newark 91F3468](https://www.newark.com/neutrik/nc3mah/connector-xlr-plug-3-position/dp/91F3468?st=nc3mah)
[Mouser 568-NC3MAH](https://www.mouser.com/ProductDetail/Neutrik/NC3MAH/?qs=MO8z%252B%252BLepAHrH1t47qrfbA%3D%3D)
[NC3MAH Datasheet](https://www.neutrik.com/en/product/nc3mah.pdf)

- 3-pin female XLR:
[Newark 27B4208](https://www.newark.com/neutrik/nc3fah2/connector-xlr-audio-rcpt-3pos/dp/27B4208)
[Mouser 568-NC3FAH](https://www.mouser.com/ProductDetail/Neutrik/NC3FAH/?qs=43pPWqpsSNse2FCN7qQVQw%3D%3D)
[NC3FAH-0 Datasheet](https://www.neutrik.com/en/product/nc3fah-0.pdf)

### Isolation

There are a few different DMX Arduino shields but many of them do not have isolation as recommended by the USITT spec. The DMX-DD1 shamelessly steals it's design from [SparkFun ESP32 Thing Plus DMX to LED Shield](https://www.sparkfun.com/products/15110) which properly implements isolation including power supply isolation. Isolation is implemented using the following parts:

- U1, NMA0505SC:
[Newark 61K3058](https://www.newark.com/murata-power-solutions/nma0505sc/dc-dc-converter-iso-pol-2-o-p/dp/61K3058?ost=nma0505sc)
[Mouser 580-NMA0505SC](https://www.mouser.com/ProductDetail/Murata-Power-Solutions/NMA0505SC/?qs=%2Fha2pyFaduhGNEy44F69mkKiigmHmVay9P4cLoAL7Ps%3D)
[NMA0505SC Datasheet](https://www.mouser.com/datasheet/2/281/kdc_nma-29224.pdf)

- U2-U4, 6N137:
[Newark 52M1895](https://www.newark.com/vishay/6n137/optocoupler-transistor-5300vrms/dp/52M1895?st=6n137)
[Mouser 782-6N137](https://www.mouser.com/ProductDetail/Vishay-Semiconductors/6N137/?qs=xCMk%252BIHWTZMrQz4FyDXhMg%3D%3D)
[6N137 Datasheet](https://www.mouser.com/datasheet/2/427/6n137-1767489.pdf)

You can use the DMX-DD1 without isolation by leaving out these parts and installing 5 solder bridges to bypass the isolation circuits:

- Under U1, you will find a pair of bypass pads for +5v
- Under U1, you will find a pair of bypass pads for GND
- Under U2, you will find a pair of bypass pads for RX
- Under U3, you will find a pair of bypass pads for DIR
- Under U4, you will find a pair of bypass pads for TX

Additionally, the [mathertel.de DMX Shield for Arduino with isolation](http://www.mathertel.de/Arduino/DMXShield.aspx) properly implements isolation as well. In fact, the DMX-DD1 design implements Isolation Bypass modelled after the mathertel.de device, see the "Simplifying opportunities" section for using the mathertel.de with and without isolation as well as making is RDM-compatible.

## PCB

You can order the PCB from [OHS Park](https://oshpark.com/):

- [DMX-DD1, Rev 1.1]()

## Version History

### Rev 1.1

- Moved DMX connectors
- Added bypass pads to U1

### Rev 1.0

- Initial draft

## Other Options

If you don't want to make a DMX-DD1, there are other DMX-compatible shields
which can work with the DMS demonstrator. Here are some other options:

- [DFRobot DMX Shield for Arduino](https://www.dfrobot.com/product-984.html)
- [mathertel.de DMX Shield for Arduino with isolation](http://www.mathertel.de/Arduino/DMXShield.aspx)
- [SK Pang Arduino DMX Shield](http://skpang.co.uk/catalog/arduino-dmx-shield-p-663.html)
- [Conceptinetics DMX Shield for Arduino (RDM Capable)](https://www.tindie.com/products/Conceptinetics/dmx-shield-for-arduino-rdm-capable/)
- [Conceptinetics 2.5kV Isolated DMX 512 Shield for Arduino - R2](https://www.tindie.com/products/Conceptinetics/25kv-isolated-dmx-512-shield-for-arduino-r2/?pt=full_prod_search)
 