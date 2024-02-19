# DMX Demonstrator Control Pro  (DMX-CP*)

![status](https://img.shields.io/badge/status-verified-brightgreen)

## Overview

The Control Pro is built to work with either transmitter or transmitter-retro. When used with an Arduino, an additional board, the Transmitter IO Interface (DMX-TX2), is required to connect the Control Pro to the Arduino. The transmitter software automatically detects whether DMX-TX1, the standard transmitter, or DMX-TX2, the Transmitter IO Interface, is connected.

The Control Pro is designed so that a series of components are sandwiched between 2 circuit boards. As a result, the heights of the components are fairly sensitive in order to make things line up nicely. The DMX-CPDB and DMX-CPCB boards contains all the parts and are the bottom of the sandwich, the DMX-CPDF and DMX-CPCB are the faceplate, i.e. the tops of the sandwich. If you are wondering why there are 4 total boards, see _PCB->Quality vs Price_ below.

## Online parts list

Sparkfun offers some, but not all, of the components required for the Control Pro. For the parts they can supply, you can find a parts lists [here](https://www.sparkfun.com/wish_lists/160543).

Additionally, you'll need some parts from the common parts lists as well. You can find the common parts list [here](https://www.sparkfun.com/wish_lists/160406). The rainbow LED pack include 2 sets of LED so if you are building more than 2 transmitters or receivers, make sure to buy 1 pack for every 2 transmitters/receivers.

## PCB

You can order the PCBs from [OHS Park](https://oshpark.com/):

- [Clock Control: DMX-CPCB, Rev 1.3](https://oshpark.com/shared_projects/llBuRZd8)
- [Clock Faceplate: DMX-CPCF, Rev 1.3](https://oshpark.com/shared_projects/S9LARHyr)
- [Dimmer Control: DMX-CPDB, Rev 1.3](https://oshpark.com/shared_projects/O76YiRT8)
- [Dimmer Faceplate: DMX-CPDF, Rev 1.3](https://oshpark.com/shared_projects/bZqKigQF)

### Quality vs Price

While it is counterintuitive (and in some cases wrong), splitting the clock controls and dimmer controls on different boards reduces cost. Many PCB manufacturers offer a fixed cost for board smaller than a certain size. These boards are 100mm x 100mm, which is standard max size for many low-cost board manufacturers. Others like OHSPark charge by the square inch and therefore the separate control approach is more expensive. Revision 1.1 was a single set of boards 180mm x 90mm for which OHSPark charges about $250US for 3 copies of both boards. Revision 1.3 is more expensive from OHSPark but can be as cheap as $20US for 5 copies of all 4 boards from cheaper board manufacturers. Yes, there is a quality BIG difference between those prices but the cheaper board will work just fine.

OHSPark offers really great quality at great prices, they are easy to work with, manufacture 100% in the US, and their support is excellent. I use OHSPark for most things I build, expect when the cost is super high. Lower cost boards can be had but if you specify the same quality board OHSPark offers, you will find OHSPark to be competitive. Yes, the links above are for the more expensive OHSPark board for the reason I listed above plus ease of use: You can upload the file directly from Kicad and they can produce a board. Better yet, they will save that board for others to order. They make it so easy to order for a project like this it's silly not to use them.

I offer this opinion freely and do not receive any compensation from OHSPark.

## Parts

The Control Pro is designed so that a series of components are sandwiched between 2 circuit boards. As a result, the heights of the components are fairly sensitive in order to make things line up nicely. Here are the parts for which I designed. The DMX-CPDB and DMX-CPCB boards contains all the parts and are the bottom of the sandwich, the DMX-CPDF and DMX-CPCB are the faceplate, i.e. the tops of the sandwich. If you are wondering why there are 4 total boards, see _PCB->Quality vs Price_.

### Slider Potentiometers

Getting a potentiometer and knob combo that would work with the rest of the components was probably the hardest part of part selection.
I had initially ordered some 60mm 10k sliders from SparkFun with matching knobs and they measures about 25mm from the bottom of the
part to the bottom of the knob, which is way too tall for the other components! I landed on a combination of Bourns PTA Series
sliders with an knob available from Sparkfun (and others). During this process, I opted for a 45mm travel to keep the board smaller/cheaper
while still offering good mechanical resolution. The specific parts I designed for are:

- Dimmer Sliders: Bournes PTA4543-2015DPB103, quantity 4:
  - [Data sheet](https://www.mouser.com/datasheet/2/54/pta-778345.pdf)
  - [Digikey PTA4543-2015DPB103-ND](https://www.digikey.com/products/en?keywords=PTA4543-2015DPB103-ND)
  - [Mouser 652-PTA45432015DPB10](https://www.mouser.com/ProductDetail/Bourns/PTA4543-2015DPB103?qs=U%2FacTlguYxbmwS%2FtylIWJw%3D%3D)
- Knobs: Eagle 450-3051, quantity 4:
  - [Datasheet](https://www.mouser.com/datasheet/2/209/EPD-200140-1171100.pdf)
  - [Mouser 450-3051](https://www.mouser.com/ProductDetail/Eagle-Plastic-Devices/450-3051?qs=hTs5c5NaUrTeABpuQnP9ug%3D%3D)
  - [Sparkfun COM-09120](https://www.sparkfun.com/products/9120) - Included in online parts list

### Toggle Switches

Just about any miniature toggle switch will do, many manufacturers make a switch in a similar size. I specifically used the E-Switch Series 100 Miniature Toggle Switches, specifically:

- Clock Speed: E-Switch 100DP3T1B1M1QEH, quantity 1:
  - [Datasheet](https://sten-eswitch-13110800-production.s3.amazonaws.com/system/asset/product_line/data_sheet/129/100.pdf)
  - [Digikey EG2413-ND](https://www.digikey.com/products/en?keywords=100DP3T1B1M1QEH)
  - [Mouser 612-100-H1111](https://www.mouser.com/ProductDetail/E-Switch/100DP3T1B1M1QEH?qs=g8hxKYs5b3yy1L1GZVrx5w%3D%3D)
- Clock Step: E-Switch 100SP2T1B1M1QEH, quantity 1:
  - [Datasheet](https://sten-eswitch-13110800-production.s3.amazonaws.com/system/asset/product_line/data_sheet/129/100.pdf)
  - [Digikey EG2373-ND](https://www.digikey.com/product-detail/en/e-switch/100SP2T1B1M1QEH/EG2373-ND/378842)
  - [Mouser 612-100-B1111](https://www.mouser.com/ProductDetail/E-Switch/100SP2T1B1M1QEH?qs=HKd%2Fp3M7KlWCZ%252BGqDexPKQ%3D%3D)

### Rotary Potentiometer

With the toggle and sliders determining the basic component height, I searched for a rotary potentiometer to fit the requirements and once again found a Bournes product. It has a 6mm "D"/flattened shaft so just about any 6mm flattened shaft knob will work but something with a set screw will help secure it. I did not find a great choice at Digikey or Mouser but Amazon and EBay has a ton of choices, designed for use with musical instruments.

Sparkfun offers a potentiometer and knob that make an excellent choice. The knob even [goes to 11](https://en.wikipedia.org/wiki/Up_to_eleven). The Sparkfun part is not a Bournes PTV09A-4030F-B103 but it's the same physical size and resistance.

Specifically:

- Clock Speed Control: Bournes PTV09A-4030F-B103, quantity 1:
  - [Datasheet](https://www.bourns.com/docs/Product-Datasheets/PTV09.pdf)
  - [Digikey 118-PTV09A-4030F-B103-ND](https://www.digikey.com/en/products/detail/bourns-inc/PTV09A-4030F-B103/3820581)
  - [Mouser 652-PTV09A-4030FB103](https://www.mouser.com/ProductDetail/Bourns/PTV09A-4030F-B103?qs=Zq5ylnUbLm4pfFuWlwC80Q%3D%3D)
  - [Sparkfun COM-09288](https://www.sparkfun.com/products/9288) - Included in online parts list
- Knob, quantity 1:
  - [Sparkfun COM-11951](https://www.sparkfun.com/products/11951) - Included in online parts list

### LEDs and Spacers

Luckily most LEDs have leads long enough to make it from the bottom to top board so nothing special is needed here, just make sure to have 17.5mm of lead length. Most LEDs have a voltage and current range near 2v and 10ma and the design will accommodate variances easily.

I like the [Sparkfun rainbow LED Kit](https://www.sparkfun.com/products/12903) which gives you 2 each of 6 colors, letting you match colors for dimmers 1-4, data and clock on both the transmitter and receiver without re-using colors. This LED kit is included in the common parts list. However, they will need a bit of added stability, which is where an LED spacer is needed. Something between 16mm and 17mm will work fine. Here's a suitable one:

- LED: T1 3/4 or 5mm Led in various colors, quantity 1:
  - [Sparkfun rainbow LED Kit](https://www.sparkfun.com/products/12903) - Included in common online parts list
- LED Spacer: Würth 705820170, quantity 8:
  - [Data sheet](https://www.we-online.de/katalog/datasheet/705820xxx_overview.pdf)
  - [Digikey 732-11617-ND](https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/705820170/732-11617-ND/7681962)
  - [Mouser 710-705820170](https://www.mouser.com/ProductDetail/Wurth-Elektronik/705820170?qs=wr8lucFkNMUaK6Cwpwjx5Q%3D%3D)

The rainbow LED kit includes 1 red and one green LED for the data and clock. However, there are 3 sets of data and clock LEDs on the three boards. Also, there are 2 LEDs to verify detection of the Control Pro, one on each board. These LEDs are included in the Control Pro online parts list [here](https://www.sparkfun.com/wish_lists/160543).

### Cable and Connector

To connect the controller to the transmitter, you'll need some cables and connectors. Ribbon cable makes a nice choice for this and you can find pre-made ribbon cable assemblies on Amazon and EBay easily. I've designed for a 16 pin cable. I recommend shrouded headers for connecting to PCBs and it ensures you don't plug the cable in backwards. Here are some suitable headers:

- Header: Würth Elektronik 61201621721, quantity 4:
  - [Datasheet](https://www.we-online.com/components/products/datasheet/61201621721.pdf)
  - [Digikey 732-2099-ND](https://www.digikey.com/en/products/detail/w%C3%BCrth-elektronik/61201621721/2060595)
  - [Mouser 710-61201621721](https://www.mouser.com/ProductDetail/Wurth-Elektronik/61201621721?qs=ZtY9WdtwX56ShT0tAQh3qw%3D%3D)
- Header: 3M 30316-6002HB, quantity 1:
  - [Datasheet](https://www.mouser.com/datasheet/2/1/78-5100-0818-4_D-221281.pdf)
  - [Digikey 3M11931-ND](https://www.digikey.com/products/en?keywords=30316-6002HB)
  - [Mouser 517-30316-6002](https://www.mouser.com/ProductDetail/3M-Electronic-Solutions-Division/30316-6002HB?qs=QV10cN0MjFtE79zTqp0XZw%3D%3D)
- Cable, quantity 2:
  - [Amazon: Antrader 30CM 16-Pin IDC Connector Flat Ribbon Cable](https://smile.amazon.com/dp/B07FZWH9S6/ref=cm_sw_em_r_mt_dp_n0-BFbMSE9MJX )

### Standoff and Feet

Finally, you'll need some standoffs to hold the boards together and some feet to avoid the bottom PCB from dragging across the table. You can adjust the screw size and add some washers or plexiglass if you like to create a smooth bottom surface. The standoffs should be 18mm in length and the boards are designed for an M3 screw. Amazon and EBay offer tons of options. I even found [purple ones on EBay](https://www.ebay.com/itm/M3-Aluminum-Alloy-Female-Hex-Hexagon-Threaded-Bush-Sleeve-Standoff-Pillar-Spacer/174350100853?ssPageName=STRK%3AMEBIDX%3AIT&var=473550930125&_trksid=p2060353.m1438.l2649).

- Standoff: Keystone 24476/24446/25531 (M3, 18mm length), quantity 4:
  - [Digikey 36-24476-ND, stainless steel](https://www.digikey.com/product-detail/en/keystone-electronics/24476/36-24476-ND/1532963)
  - [Digikey 36-24446-ND, aluminum](https://www.digikey.com/product-detail/en/keystone-electronics/24446/36-24446-ND/1532945)
  - [Digikey 36-25513-ND, nylon](https://www.digikey.com/product-detail/en/keystone-electronics/25513/36-25513-ND/1532191)
  - [Mouser 534-24476, stainless steel](https://www.mouser.com/ProductDetail/Keystone-Electronics/24476?qs=UWqYQ%2F2cZWsNG8Fm%2FRkk0Q%3D%3D)
  - [Mouser 534-24436, aluminum](https://www.mouser.com/ProductDetail/Keystone-Electronics/24436?qs=UWqYQ%2F2cZWv7%252B7DoeljlhQ%3D%3D)
  - [Mouser 534-25513, nylon](https://www.mouser.com/ProductDetail/Keystone-Electronics/25513?qs=UWqYQ%2F2cZWtItbFiR1P%2F3w%3D%3D)
  - [Ebay M3 Aluminum Alloy Red, Blue, Purple, Black, Gold, Silver](https://www.ebay.com/itm/M3-Aluminum-Alloy-Female-Hex-Hexagon-Threaded-Bush-Sleeve-Standoff-Pillar-Spacer/174350100853?ssPageName=STRK%3AMEBIDX%3AIT&var=473550930125&_trksid=p2060353.m1438.l2649)

### Passive components

The Control Pro has a few passive listed on the schematic and are included in the common parts list [here](https://www.sparkfun.com/wish_lists/160406).

## Version History

### Rev 1.3

- Add copper pours to both faceplates
- No changes to control boards.

### Rev 1.2

#### DMX-CPC*

- Split clock controls out to its own PCB
- Added 2nd 16 pin connector to daisy chain with DMX-CPD*.
- Switched to horizontal 16 pin connectors since vertical was too tall with a cable plugged in
- Swapped the clock speed and step switches to match the order on the TX1
- Swapped the data and clock LEDs to match the order on the TX1

#### DMX-CPD*

- Split dimmer controls out to its own PCB
- Added 2nd 16 pin connector to daisy chain with DMX-CPC*.
- Switched to horizontal 16 pin connectors since vertical was too tall with a cable plugged in

### Rev 1.1

#### DMX-CPB

- Added rounded corners.

#### DMX-CPF

- Removed copper from 3rd slider slot by enlarging slot width.
- Added rounded corners.

### Rev 1.0

- Initial draft, all boards.
