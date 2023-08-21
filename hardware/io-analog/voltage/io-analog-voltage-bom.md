
# Bill Of Materials (BOM)

## Schematic

**Filename:** E:\OpenSource\dmxdemonstrator\hardware\io-analog\voltage\io-analog-voltage.sch

**Date Modified:** 8/20/2023 10:47:27 PM

**Kicad Version:** Eeschema (5.0.0)

**Component Count:** 26

## Parts

Reference|Quantity|Value|Part|Datasheet|Vendor(s)
---------|--------|-----|----|---------|------
C1, C2|2|0.1uF|Decoupling Capacitor|~|[Mouser 80-C320C104K5R7301](https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D), [Newark 13K6284](https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432), [Sparkfun COM-08375](https://www.sparkfun.com/products/8375), [Adafruit 753](https://www.adafruit.com/product/753)
C3, C4|2|10uF|Filter Capacitor|~|[Digikey P10425CT-ND](https://www.digikey.com/en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510), [Mouser 667-ECA-1HM100I](https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I), [Newark ECA-1HM100I](), [Sparkfun COM-00523](https://www.sparkfun.com/products/523), [Adafruit 2195](https://www.adafruit.com/product/2195)
D1|1|1N5819|Reverse Voltage Protection|[Data Sheet](http://www.vishay.com/docs/88525/1n5817.pdf)|[Digikey 1N5819-E3/54GITR-ND](https://www.digikey.com/en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527), [Mouser 625-1N5819-E3](https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D), [Newark 78K2616](https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54), [Sparkfun COM-10926](https://www.sparkfun.com/products/10926)
J1|1|Analog Extension|Arduino Stackable Header - 8 Pin|~|[Mouser 992-8FX1L-254MM](https://www.mouser.com/ProductDetail/Gravitech/8Fx1L-254mm?qs=fkzBJ5HM%252BdAyuablm941Ag%3D%3D), [Sparkfun PRT-09279](https://www.sparkfun.com/products/9279)
J2|1|Output|Screw Terminal|~|[Digikey 277-1109-ND](https://www.digikey.com/en/products/detail/phoenix-contact/1757271/260477), [Mouser 651-1757271](https://www.mouser.com/ProductDetail/Phoenix-Contact/1757271?qs=uD%2FdkN7XIa3szA65xzhSaQ%3D%3D)
J3|1|Power|Screw Terminal|~|[Digikey 277-1106-ND](https://www.digikey.com/en/products/detail/phoenix-contact/1757242/260474), [Mouser 651-1757242](https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D)
J4|1|Power|DC Barrel Jack|[Data Sheet](https://www.sparkfun.com/products/10811)|[Sparkfun CONN-08197](https://www.sparkfun.com/products/10811)
R1, R3, R5, R7|4|22.6k 1%||~|[Digikey 22.6KXBK-ND](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-22K6/13286), [Mouser 603-MFR-25FBF52-22K6](https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-22K6?qs=oAGoVhmvjhyqOVvYs9FeFg%3D%3D)
R2, R4, R6, R8|4|68.1k 1%||~|[Digikey 68.1KXBK-ND](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-68K1/13440), [Mouser 603-MFR-25FBF52-68K1](https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-68K1?qs=oAGoVhmvjhxWiKYWiCojiA%3D%3D)
R9|1|392 1%||~|[Digikey 392XBK-ND](https://www.digikey.com/en/products/detail/yageo/MFR-25FBF52-392R/12919), [Mouser 603-MFR-25FBF52-392R](https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-392R?qs=oAGoVhmvjhy6pvrooMNCwg%3D%3D)
R10|1|2.74k 1%||~|[Digikey 13-MFR-25FRF52-2K74TR-ND](https://www.digikey.com/en/products/detail/yageo/MFR-25FRF52-2K74/14933), [Mouser 603-MFR-25FRF52-2K74](https://www.mouser.com/ProductDetail/YAGEO/MFR-25FRF52-2K74?qs=oAGoVhmvjhwhcYVvwkvvFg%3D%3D)
U1, U2|2|TLV2772|Rail-to-Rail Operational Amplifier|[Data Sheet](https://www.ti.com/lit/ds/slos209g/slos209g.pdf)|[Digikey 296-7592-5-ND](https://www.digikey.com/en/products/detail/texas-instruments/TLV2772CP/374329), [Mouser TLV2772CP](https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D)
U3|1|LM317T|IC REG LIN POS ADJ 1.5A TO220AB|[Data Sheet](http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf)|[Digikey 497-1575-5-ND](https://www.digikey.com//product-detail/en/stmicroelectronics/LM317T/497-1575-5-ND/591677), [Mouser 511-LM317T](https://www.mouser.com/ProductDetail/STMicroelectronics/LM317T?qs=swDD%252BF%252Bps7c8uLyY%252B3mJJw%3D%3D)<!--TABLEROW-->

