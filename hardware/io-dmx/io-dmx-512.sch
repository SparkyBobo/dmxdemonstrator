EESchema Schematic File Version 4
LIBS:io-dmx-512-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - DMX-512 IO Module (DMX-IO1)"
Date "2023-08-11"
Rev "1.3"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L power:GND #PWR0117
U 1 1 5F4F41D4
P 3500 7400
F 0 "#PWR0117" H 3500 7150 50  0001 C CNN
F 1 "GND" H 3505 7227 50  0000 C CNN
F 2 "" H 3500 7400 50  0001 C CNN
F 3 "" H 3500 7400 50  0001 C CNN
	1    3500 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7400 2800 7100
Wire Wire Line
	2800 6800 2800 6550
Wire Wire Line
	5650 6550 5650 6850
Wire Wire Line
	5650 7150 5650 7450
Wire Wire Line
	6100 7450 6100 7150
Wire Wire Line
	6100 6850 6100 6550
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F5D2833
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX3485 U5
U 1 1 5F5E5E97
P 7400 3600
F 0 "U5" H 7550 4150 50  0000 C CNN
F 1 "MAX3485CPA+" H 7750 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7400 2900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3483-MAX3491.pdf" H 7400 3650 50  0001 C CNN
F 4 "81Y9431" H 7400 3600 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/maxim-integrated-products/max3485cpa/rs422-rs485-transceiver-10mbps/dp/81Y9431?st=max3485" H 7400 3600 50  0001 C CNN "NW_Detail_Page"
F 6 "700-MAX3485CPA" H 7400 3600 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Maxim-Integrated/MAX3485CPA%2b/?qs=LHmEVA8xxfbU8x9nGoNB%2Fw%3D%3D" H 7400 3600 50  0001 C CNN "MO_Detail_Page"
F 8 "MAX3485CPA+-ND" H 7400 3600 50  0001 C CNN "Digi-Key_PN"
F 9 "products/detail/MAX3485CPA%2B/MAX3485CPA%2B-ND/1702227" H 7400 3600 50  0001 C CNN "DK_Page_Detail"
F 10 "RS-485/RS-422 Transceiver" H 7400 3600 50  0001 C CNN "Description"
	1    7400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3700 6900 3700
Wire Wire Line
	6900 3600 7000 3600
Wire Wire Line
	7000 3500 6900 3500
Wire Wire Line
	7000 3800 6900 3800
$Comp
L power:GNDD #PWR0105
U 1 1 5F5EC1FB
P 7400 4350
F 0 "#PWR0105" H 7400 4100 50  0001 C CNN
F 1 "GNDD" H 7404 4195 50  0000 C CNN
F 2 "" H 7400 4350 50  0001 C CNN
F 3 "" H 7400 4350 50  0001 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0106
U 1 1 5F5EC250
P 7400 3000
F 0 "#PWR0106" H 7400 2850 50  0001 C CNN
F 1 "VDD" H 7417 3173 50  0000 C CNN
F 2 "" H 7400 3000 50  0001 C CNN
F 3 "" H 7400 3000 50  0001 C CNN
	1    7400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0107
U 1 1 5F5F113E
P 6500 1950
F 0 "#PWR0107" H 6500 1800 50  0001 C CNN
F 1 "VDD" H 6517 2123 50  0000 C CNN
F 2 "" H 6500 1950 50  0001 C CNN
F 3 "" H 6500 1950 50  0001 C CNN
	1    6500 1950
	1    0    0    -1  
$EndComp
NoConn ~ 6400 3550
Wire Wire Line
	6900 3650 6700 3650
Wire Wire Line
	6600 3300 6700 3300
Wire Wire Line
	6700 3300 6700 3650
Connection ~ 6700 3650
Wire Wire Line
	6000 3350 6000 3300
Wire Wire Line
	6300 3300 6000 3300
Connection ~ 6000 3300
Wire Wire Line
	6000 3300 6000 3250
$Comp
L power:VDD #PWR0108
U 1 1 5F5FDFEB
P 6000 3250
F 0 "#PWR0108" H 6000 3100 50  0001 C CNN
F 1 "VDD" H 6017 3423 50  0000 C CNN
F 2 "" H 6000 3250 50  0001 C CNN
F 3 "" H 6000 3250 50  0001 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0109
U 1 1 5F5FE024
P 6000 3950
F 0 "#PWR0109" H 6000 3700 50  0001 C CNN
F 1 "GNDD" H 6004 3795 50  0000 C CNN
F 2 "" H 6000 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F5FE08B
P 6000 2600
F 0 "#PWR0110" H 6000 2350 50  0001 C CNN
F 1 "GND" H 6005 2427 50  0000 C CNN
F 2 "" H 6000 2600 50  0001 C CNN
F 3 "" H 6000 2600 50  0001 C CNN
	1    6000 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F605513
P 5550 1950
F 0 "R2" V 5345 1950 50  0000 C CNN
F 1 "470" V 5436 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5590 1940 50  0001 C CNN
F 3 "~" H 5550 1950 50  0001 C CNN
F 4 "38K0375" V 5550 1950 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375" V 5550 1950 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-470R" V 5550 1950 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D" V 5550 1950 50  0001 C CNN "MO_Detail_Page"
F 8 "2781" V 5550 1950 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2781" V 5550 1950 50  0001 C CNN "AF_Detail_Page"
	1    5550 1950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5F6055A9
P 6000 1900
F 0 "#PWR0111" H 6000 1750 50  0001 C CNN
F 1 "+5V" H 6015 2073 50  0000 C CNN
F 2 "" H 6000 1900 50  0001 C CNN
F 3 "" H 6000 1900 50  0001 C CNN
	1    6000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1950 6000 1950
Wire Wire Line
	6000 1950 6000 1900
Wire Wire Line
	6000 2000 6000 1950
Connection ~ 6000 1950
Wire Wire Line
	5400 1950 5300 1950
Wire Wire Line
	5300 1950 5300 2300
Connection ~ 5300 2300
$Comp
L dk_Optoisolators-Logic-Output:6N137 U4
U 1 1 5F60D784
P 6000 5000
F 0 "U4" H 6200 4800 60  0000 C CNN
F 1 "6N137" H 6300 4700 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6200 5200 60  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/6N137%20Series.pdf" H 6200 5300 60  0001 L CNN
F 4 "160-1791-ND" H 6200 5400 60  0001 L CNN "Digi-Key_PN"
F 5 "6N137" H 6200 5500 60  0001 L CNN "MPN"
F 6 "Isolators" H 6200 5600 60  0001 L CNN "Category"
F 7 "Optoisolators - Logic Output" H 6200 5700 60  0001 L CNN "Family"
F 8 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/6N137%20Series.pdf" H 6200 5800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/6N137/160-1791-ND/1969175" H 6200 5900 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISO 5KV 1CH OPEN COLL 8DIP" H 6200 6000 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 6200 6100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 6200 60  0001 L CNN "Status"
F 13 "52M1895" H 6000 5000 50  0001 C CNN "NW_PN"
F 14 "https://www.newark.com/vishay/6n137/optocoupler-transistor-5300vrms/dp/52M1895?st=6n137" H 6000 5000 50  0001 C CNN "NW_Detail_Page"
F 15 "782-6N137" H 6000 5000 50  0001 C CNN "MO_PN"
F 16 "https://www.mouser.com/ProductDetail/Vishay-Semiconductors/6N137/?qs=xCMk%252BIHWTZMrQz4FyDXhMg%3D%3D" H 6000 5000 50  0001 C CNN "MO_Detail_Page"
	1    6000 5000
	1    0    0    -1  
$EndComp
NoConn ~ 6400 4900
Wire Wire Line
	6900 5000 6700 5000
Wire Wire Line
	6600 4650 6700 4650
Wire Wire Line
	6700 4650 6700 5000
Connection ~ 6700 5000
Wire Wire Line
	6000 4700 6000 4650
Wire Wire Line
	6300 4650 6000 4650
Connection ~ 6000 4650
Wire Wire Line
	6000 4650 6000 4600
$Comp
L power:VDD #PWR0112
U 1 1 5F60D79A
P 6000 4600
F 0 "#PWR0112" H 6000 4450 50  0001 C CNN
F 1 "VDD" H 6017 4773 50  0000 C CNN
F 2 "" H 6000 4600 50  0001 C CNN
F 3 "" H 6000 4600 50  0001 C CNN
	1    6000 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 5F60D7A0
P 6000 5300
F 0 "#PWR0113" H 6000 5050 50  0001 C CNN
F 1 "GNDD" H 6004 5145 50  0000 C CNN
F 2 "" H 6000 5300 50  0001 C CNN
F 3 "" H 6000 5300 50  0001 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5F614DFC
P 5500 3450
F 0 "#PWR0114" H 5500 3300 50  0001 C CNN
F 1 "+5V" H 5515 3623 50  0000 C CNN
F 2 "" H 5500 3450 50  0001 C CNN
F 3 "" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5F614E39
P 5500 4800
F 0 "#PWR0115" H 5500 4650 50  0001 C CNN
F 1 "+5V" H 5515 4973 50  0000 C CNN
F 2 "" H 5500 4800 50  0001 C CNN
F 3 "" H 5500 4800 50  0001 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3550 5500 3550
Wire Wire Line
	5500 3550 5500 3450
Wire Wire Line
	5600 4900 5500 4900
Wire Wire Line
	5500 4900 5500 4800
Wire Wire Line
	6900 3700 6900 3650
Wire Wire Line
	6900 3600 6900 3650
Connection ~ 6900 3650
Wire Wire Line
	6900 3800 6900 5000
$Comp
L Device:R_US R1
U 1 1 5F6A6B31
P 8100 3650
F 0 "R1" H 8032 3604 50  0000 R CNN
F 1 "120" H 8032 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8140 3640 50  0001 C CNN
F 3 "~" H 8100 3650 50  0001 C CNN
F 4 "38K0333" H 8100 3650 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-120r/carbon-film-resistor-120-ohm-250mw/dp/38K0333" H 8100 3650 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-120R" H 8100 3650 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-120R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40ae6q2awCfJoc%3D" H 8100 3650 50  0001 C CNN "MO_Detail_Page"
F 8 "DMX Termination" H 8100 3650 50  0001 C CNN "Description"
	1    8100 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3400 8100 3500
Connection ~ 8100 3400
Wire Wire Line
	7800 3800 7900 3800
Wire Wire Line
	8000 3900 8100 3900
Wire Wire Line
	8100 3900 8100 3800
Connection ~ 8100 3900
Wire Wire Line
	9000 4100 9000 4200
Wire Wire Line
	8700 3900 8550 3900
Wire Wire Line
	8000 3500 8000 3900
Wire Wire Line
	7800 3500 8000 3500
Wire Wire Line
	7900 3800 7900 3400
Wire Wire Line
	7900 3400 8100 3400
Wire Wire Line
	8450 4200 9000 4200
Wire Wire Line
	8700 3800 8650 3800
$Comp
L power:GNDD #PWR0119
U 1 1 5F71AD0A
P 8650 4350
F 0 "#PWR0119" H 8650 4100 50  0001 C CNN
F 1 "GNDD" H 8654 4195 50  0000 C CNN
F 2 "" H 8650 4350 50  0001 C CNN
F 3 "" H 8650 4350 50  0001 C CNN
	1    8650 4350
	1    0    0    -1  
$EndComp
NoConn ~ 9300 3800
NoConn ~ 9300 3900
Wire Wire Line
	7400 4350 7400 4200
Wire Wire Line
	7400 3100 7400 3000
$Comp
L power:VDD #PWR0120
U 1 1 5F74A25F
P 6100 6550
F 0 "#PWR0120" H 6100 6400 50  0001 C CNN
F 1 "VDD" H 6117 6723 50  0000 C CNN
F 2 "" H 6100 6550 50  0001 C CNN
F 3 "" H 6100 6550 50  0001 C CNN
	1    6100 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0121
U 1 1 5F74A40D
P 6100 7450
F 0 "#PWR0121" H 6100 7200 50  0001 C CNN
F 1 "GNDD" H 6104 7295 50  0000 C CNN
F 2 "" H 6100 7450 50  0001 C CNN
F 3 "" H 6100 7450 50  0001 C CNN
	1    6100 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0122
U 1 1 5F74FC49
P 5650 6550
F 0 "#PWR0122" H 5650 6400 50  0001 C CNN
F 1 "VDD" H 5667 6723 50  0000 C CNN
F 2 "" H 5650 6550 50  0001 C CNN
F 3 "" H 5650 6550 50  0001 C CNN
	1    5650 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0123
U 1 1 5F74FD39
P 5650 7450
F 0 "#PWR0123" H 5650 7200 50  0001 C CNN
F 1 "GNDD" H 5654 7295 50  0000 C CNN
F 2 "" H 5650 7450 50  0001 C CNN
F 3 "" H 5650 7450 50  0001 C CNN
	1    5650 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0125
U 1 1 5F74FE4C
P 4850 7450
F 0 "#PWR0125" H 4850 7200 50  0001 C CNN
F 1 "GNDD" H 4854 7295 50  0000 C CNN
F 2 "" H 4850 7450 50  0001 C CNN
F 3 "" H 4850 7450 50  0001 C CNN
	1    4850 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0126
U 1 1 5F74FEC4
P 5250 6550
F 0 "#PWR0126" H 5250 6400 50  0001 C CNN
F 1 "VDD" H 5267 6723 50  0000 C CNN
F 2 "" H 5250 6550 50  0001 C CNN
F 3 "" H 5250 6550 50  0001 C CNN
	1    5250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6550 5250 6750
Wire Wire Line
	4700 7150 4850 7150
NoConn ~ 4700 6950
$Comp
L Regulator_Switching:NMA0505SC U1
U 1 1 5F5E628E
P 4200 6950
F 0 "U1" H 4200 7417 50  0000 C CNN
F 1 "NMA0505SC" H 4200 7326 50  0000 C CNN
F 2 "footprints:Converter_DCDC_muRata_NMAxxxxSC_THT_Bypass" H 4200 6600 50  0001 C CIN
F 3 "http://power.murata.com/data/power/ncl/kdc_nma.pdf" H 4200 6950 50  0001 C CNN
F 4 "61K3058" H 4200 6950 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/murata-power-solutions/nma0505sc/dc-dc-converter-iso-pol-2-o-p/dp/61K3058?ost=nma0505sc" H 4200 6950 50  0001 C CNN "NW_Detail_Page"
F 6 "580-NMA0505SC" H 4200 6950 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Murata-Power-Solutions/NMA0505SC/?qs=%2Fha2pyFaduhGNEy44F69mkKiigmHmVay9P4cLoAL7Ps%3D" H 4200 6950 50  0001 C CNN "MO_Detail_Page"
F 8 "Isolated 1W Dual Output DC-DC Converter" H 4200 6950 50  0001 C CNN "Description"
	1    4200 6950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F7CBB6F
P 3100 7400
F 0 "#FLG0102" H 3100 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 7573 50  0000 C CNN
F 2 "" H 3100 7400 50  0001 C CNN
F 3 "~" H 3100 7400 50  0001 C CNN
	1    3100 7400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5F7D2191
P 3100 6550
F 0 "#PWR0127" H 3100 6400 50  0001 C CNN
F 1 "+5V" H 3115 6723 50  0000 C CNN
F 2 "" H 3100 6550 50  0001 C CNN
F 3 "" H 3100 6550 50  0001 C CNN
	1    3100 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 6550 3100 6750
Wire Wire Line
	3100 7400 3100 7150
Wire Wire Line
	3100 7150 3500 7150
Connection ~ 3500 7150
Wire Wire Line
	3500 7150 3700 7150
NoConn ~ 5600 2200
Wire Wire Line
	6550 7450 6550 7150
Wire Wire Line
	6550 6850 6550 6550
$Comp
L power:GNDD #PWR0128
U 1 1 5F7E96CE
P 6550 7450
F 0 "#PWR0128" H 6550 7200 50  0001 C CNN
F 1 "GNDD" H 6554 7295 50  0000 C CNN
F 2 "" H 6550 7450 50  0001 C CNN
F 3 "" H 6550 7450 50  0001 C CNN
	1    6550 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0129
U 1 1 5F7E96C8
P 6550 6550
F 0 "#PWR0129" H 6550 6400 50  0001 C CNN
F 1 "VDD" H 6567 6723 50  0000 C CNN
F 2 "" H 6550 6550 50  0001 C CNN
F 3 "" H 6550 6550 50  0001 C CNN
	1    6550 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 5F7EF59C
P 2800 6550
F 0 "#PWR0130" H 2800 6400 50  0001 C CNN
F 1 "+5V" H 2815 6723 50  0000 C CNN
F 2 "" H 2800 6550 50  0001 C CNN
F 3 "" H 2800 6550 50  0001 C CNN
	1    2800 6550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F747A31
P 2800 7400
F 0 "#PWR0124" H 2800 7150 50  0001 C CNN
F 1 "GND" H 2805 7227 50  0000 C CNN
F 2 "" H 2800 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
Connection ~ 8550 3900
Wire Wire Line
	8450 4200 8450 3400
Wire Wire Line
	9000 3300 9000 3400
Wire Wire Line
	9000 3400 8450 3400
Connection ~ 8450 3400
Wire Wire Line
	8100 3400 8450 3400
Wire Wire Line
	8100 3900 8550 3900
$Comp
L parts.library:XLR-3-5 J3
U 1 1 5FA9D811
P 9000 3800
F 0 "J3" H 9000 4150 50  0000 C CNN
F 1 "NC3MAH/NC5MAH" H 9000 4050 50  0000 C CNN
F 2 "footprints:NEUTRIK-NC3MAH-NC5MAH" H 9000 3800 50  0001 C CNN
F 3 "https://www.neutrik.com/en/product/nc5mah.pdf" H 9000 3800 50  0001 C CNN
F 4 "25C4313" H 9000 3800 50  0001 C CNN "NW_PM"
F 5 "https://www.newark.com/neutrik/nc5mah/connector-xlr-audio-plug-5pos/dp/25C4313?ost=nc5mah" H 9000 3800 50  0001 C CNN "NW_Detail_Page"
F 6 "568-NC5MAH" H 9000 3800 50  0001 C CNN "MO"
F 7 "https://www.mouser.com/ProductDetail/Neutrik/NC5MAH/?qs=43pPWqpsSNtpdAMzqMXlkw%3D%3D" H 9000 3800 50  0001 C CNN "MO_Detail_page"
F 8 "DMX Connector" H 9000 3800 50  0001 C CNN "Description"
	1    9000 3800
	1    0    0    -1  
$EndComp
$Comp
L parts.library:XLR-3-5 J2
U 1 1 5FA9D8B9
P 9000 3000
F 0 "J2" H 9000 3350 50  0000 C CNN
F 1 "NC3FAH/NC5FAH" H 9000 3250 50  0000 C CNN
F 2 "footprints:NEUTRIK-NC3FAH-NC5FAH" H 9000 3000 50  0001 C CNN
F 3 "https://www.neutrik.com/en/product/nc5fah.pdf" H 9000 3000 50  0001 C CNN
F 4 "94C1524" H 9000 3000 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/neutrik/nc5fah/connector-xlr-receptacle-5-position/dp/94C1524?ost=nc5fah" H 9000 3000 50  0001 C CNN "NW_Detail_Page"
F 6 "568-NC5FAH" H 9000 3000 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Neutrik/NC5FAH/?qs=JfNPhaIww3Jo8umm7Mfi2w%3D%3D" H 9000 3000 50  0001 C CNN "MO_Detail_Page"
F 8 "DMX Connector" H 9000 3000 50  0001 C CNN "Description"
	1    9000 3000
	1    0    0    -1  
$EndComp
NoConn ~ 9300 3100
NoConn ~ 9300 3000
Wire Wire Line
	8700 3100 8550 3100
Wire Wire Line
	8550 3100 8550 3900
Wire Wire Line
	8650 3800 8650 3650
Wire Wire Line
	8650 3000 8700 3000
Connection ~ 8650 3800
Wire Wire Line
	8650 3000 8650 2850
Wire Wire Line
	8650 2850 8750 2850
Connection ~ 8650 3000
Wire Wire Line
	9250 2850 9450 2850
Wire Wire Line
	9450 2850 9450 3650
Wire Wire Line
	9250 3650 9450 3650
Wire Wire Line
	8750 3650 8650 3650
Connection ~ 8650 3650
Wire Wire Line
	8650 3650 8650 3000
Wire Wire Line
	8650 3800 8650 4350
Wire Wire Line
	8550 3100 8550 2550
Wire Wire Line
	8550 2550 9450 2550
Wire Wire Line
	9450 2550 9450 2850
Connection ~ 8550 3100
Connection ~ 9450 2850
Wire Wire Line
	3500 7150 3500 7400
Wire Wire Line
	6400 2200 6500 2200
Wire Wire Line
	6850 2400 6900 2400
Wire Wire Line
	6500 2200 6500 1950
Wire Wire Line
	4700 6750 5250 6750
Wire Wire Line
	3100 6750 3700 6750
Wire Wire Line
	6900 2400 6900 3500
Wire Wire Line
	6400 2400 6550 2400
Wire Wire Line
	5300 2300 5600 2300
Wire Wire Line
	5450 3750 5600 3750
Wire Wire Line
	6400 3650 6700 3650
Wire Wire Line
	6400 5000 6700 5000
Wire Wire Line
	5450 5100 5600 5100
Wire Notes Line
	5550 5100 5900 5100
Wire Notes Line
	5900 5100 5900 5300
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 63F394AD
P 3850 3650
F 0 "J1" H 3900 4167 50  0000 C CNN
F 1 "IO EXTENSION" H 3900 4076 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Horizontal" H 3850 3650 50  0001 C CNN
F 3 "https://www.we-online.com/components/products/datasheet/61201421721.pdf" H 3850 3650 50  0001 C CNN
F 4 "75AJ1395" H 3850 3650 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/wurth-elektronik/612014235221/conn-r-a-header-14pos-2row-2-54mm/dp/75AJ1395" H 3850 3650 50  0001 C CNN "NW_Detail_Page"
F 6 "710-61201421721" H 3850 3650 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Wurth-Elektronik/61201421721?qs=PhR8RmCirEbQk5OcjPFu0A%3D%3D" H 3850 3650 50  0001 C CNN "MO_Detail_Page"
	1    3850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 63F39564
P 4250 3150
F 0 "#PWR0101" H 4250 3000 50  0001 C CNN
F 1 "+5V" H 4265 3323 50  0000 C CNN
F 2 "" H 4250 3150 50  0001 C CNN
F 3 "" H 4250 3150 50  0001 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 63F39599
P 3550 3150
F 0 "#PWR0102" H 3550 3000 50  0001 C CNN
F 1 "+5V" H 3565 3323 50  0000 C CNN
F 2 "" H 3550 3150 50  0001 C CNN
F 3 "" H 3550 3150 50  0001 C CNN
	1    3550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 63F39637
P 3550 4050
F 0 "#PWR0103" H 3550 3800 50  0001 C CNN
F 1 "GND" H 3555 3877 50  0000 C CNN
F 2 "" H 3550 4050 50  0001 C CNN
F 3 "" H 3550 4050 50  0001 C CNN
	1    3550 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 63F39696
P 4250 4050
F 0 "#PWR0104" H 4250 3800 50  0001 C CNN
F 1 "GND" H 4255 3877 50  0000 C CNN
F 2 "" H 4250 4050 50  0001 C CNN
F 3 "" H 4250 4050 50  0001 C CNN
	1    4250 4050
	1    0    0    -1  
$EndComp
NoConn ~ 3650 3450
NoConn ~ 3650 3550
NoConn ~ 3650 3650
NoConn ~ 4150 3450
NoConn ~ 4150 3550
NoConn ~ 4150 3650
Wire Wire Line
	4150 3350 4250 3350
Wire Wire Line
	4250 3350 4250 3150
Wire Wire Line
	3650 3350 3550 3350
Wire Wire Line
	3550 3350 3550 3150
Wire Wire Line
	3550 4050 3550 3950
Wire Wire Line
	3550 3950 3650 3950
Wire Wire Line
	4150 3950 4250 3950
Wire Wire Line
	4250 3950 4250 4050
Wire Wire Line
	3300 3850 3650 3850
Wire Wire Line
	3650 3750 3300 3750
Wire Wire Line
	3300 3750 3300 2300
Wire Wire Line
	3300 2300 5300 2300
Wire Wire Line
	3300 5100 5150 5100
Wire Wire Line
	3300 5100 3300 3850
Wire Wire Line
	4150 3750 5150 3750
$Comp
L Mechanical:MountingHole MH1
U 1 1 63F9E49B
P 7650 6350
F 0 "MH1" H 7750 6396 50  0000 L CNN
F 1 "MountingHole" H 7750 6305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 6350 50  0001 C CNN
F 3 "~" H 7650 6350 50  0001 C CNN
	1    7650 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 63F9E50B
P 8450 6350
F 0 "MH2" H 8550 6396 50  0000 L CNN
F 1 "MountingHole" H 8550 6305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8450 6350 50  0001 C CNN
F 3 "~" H 8450 6350 50  0001 C CNN
	1    8450 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 63F9E563
P 9200 6350
F 0 "MH3" H 9300 6396 50  0000 L CNN
F 1 "MountingHole" H 9300 6305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9200 6350 50  0001 C CNN
F 3 "~" H 9200 6350 50  0001 C CNN
	1    9200 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 63F9E5B7
P 9950 6300
F 0 "MH4" H 10050 6346 50  0000 L CNN
F 1 "MountingHole" H 10050 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9950 6300 50  0001 C CNN
F 3 "~" H 9950 6300 50  0001 C CNN
	1    9950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7150 4850 7450
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 63FA6A35
P 4600 3150
F 0 "#FLG0103" H 4600 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 3323 50  0000 C CNN
F 2 "" H 4600 3150 50  0001 C CNN
F 3 "~" H 4600 3150 50  0001 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3150 4600 3350
Wire Wire Line
	4600 3350 4250 3350
Connection ~ 4250 3350
Text Label 3350 3750 0    50   ~ 0
DMX-RX
Text Label 3350 3850 0    50   ~ 0
DMX-TX
Text Label 4200 3750 0    50   ~ 0
DMX-DIR
NoConn ~ 4150 3850
$Comp
L Device:C C2
U 1 1 64D49F7F
P 2800 6950
F 0 "C2" H 2915 6996 50  0000 L CNN
F 1 "0.1uF" H 2915 6905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2838 6800 50  0001 C CNN
F 3 "~" H 2800 6950 50  0001 C CNN
F 4 "Decoupling Capacitor" H -2850 -50 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 2800 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 2800 6950 50  0001 C CNN "SP_PN"
F 7 "753" H 2800 6950 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 2800 6950 50  0001 C CNN "AF_Detail_Page"
F 9 "13K6284" H 2800 6950 50  0001 C CNN "NW_PN"
F 10 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 2800 6950 50  0001 C CNN "NW_Detail_Page"
F 11 "80-C320C104K5R7301" H 2800 6950 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 2800 6950 50  0001 C CNN "MO_Detail_Page"
	1    2800 6950
	1    0    0    -1  
$EndComp
$Comp
L dk_Optoisolators-Logic-Output:6N137 U3
U 1 1 64D4B0B9
P 6000 3650
F 0 "U3" H 6200 3450 60  0000 C CNN
F 1 "6N137" H 6300 3350 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6200 3850 60  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/6N137%20Series.pdf" H 6200 3950 60  0001 L CNN
F 4 "160-1791-ND" H 6200 4050 60  0001 L CNN "Digi-Key_PN"
F 5 "6N137" H 6200 4150 60  0001 L CNN "MPN"
F 6 "Isolators" H 6200 4250 60  0001 L CNN "Category"
F 7 "Optoisolators - Logic Output" H 6200 4350 60  0001 L CNN "Family"
F 8 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/6N137%20Series.pdf" H 6200 4450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/6N137/160-1791-ND/1969175" H 6200 4550 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISO 5KV 1CH OPEN COLL 8DIP" H 6200 4650 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 6200 4750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 4850 60  0001 L CNN "Status"
F 13 "52M1895" H 6000 3650 50  0001 C CNN "NW_PN"
F 14 "https://www.newark.com/vishay/6n137/optocoupler-transistor-5300vrms/dp/52M1895?st=6n137" H 6000 3650 50  0001 C CNN "NW_Detail_Page"
F 15 "782-6N137" H 6000 3650 50  0001 C CNN "MO_PN"
F 16 "https://www.mouser.com/ProductDetail/Vishay-Semiconductors/6N137/?qs=xCMk%252BIHWTZMrQz4FyDXhMg%3D%3D" H 6000 3650 50  0001 C CNN "MO_Detail_Page"
	1    6000 3650
	1    0    0    -1  
$EndComp
$Comp
L dk_Optoisolators-Logic-Output:6N137 U2
U 1 1 64D4B117
P 6000 2300
F 0 "U2" H 6200 2100 60  0000 C CNN
F 1 "6N137" H 6300 2000 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6200 2500 60  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/6N137%20Series.pdf" H 6200 2600 60  0001 L CNN
F 4 "160-1791-ND" H 6200 2700 60  0001 L CNN "Digi-Key_PN"
F 5 "6N137" H 6200 2800 60  0001 L CNN "MPN"
F 6 "Isolators" H 6200 2900 60  0001 L CNN "Category"
F 7 "Optoisolators - Logic Output" H 6200 3000 60  0001 L CNN "Family"
F 8 "https://media.digikey.com/pdf/Data%20Sheets/Lite-On%20PDFs/6N137%20Series.pdf" H 6200 3100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/6N137/160-1791-ND/1969175" H 6200 3200 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISO 5KV 1CH OPEN COLL 8DIP" H 6200 3300 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 6200 3400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 3500 60  0001 L CNN "Status"
F 13 "52M1895" H 6000 2300 50  0001 C CNN "NW_PN"
F 14 "https://www.newark.com/vishay/6n137/optocoupler-transistor-5300vrms/dp/52M1895?st=6n137" H 6000 2300 50  0001 C CNN "NW_Detail_Page"
F 15 "782-6N137" H 6000 2300 50  0001 C CNN "MO_PN"
F 16 "https://www.mouser.com/ProductDetail/Vishay-Semiconductors/6N137/?qs=xCMk%252BIHWTZMrQz4FyDXhMg%3D%3D" H 6000 2300 50  0001 C CNN "MO_Detail_Page"
	1    6000 2300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 64D4B7E9
P 6700 2400
F 0 "R3" V 6495 2400 50  0000 C CNN
F 1 "470" V 6586 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6740 2390 50  0001 C CNN
F 3 "~" H 6700 2400 50  0001 C CNN
F 4 "38K0375" V 6700 2400 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375" V 6700 2400 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-470R" V 6700 2400 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D" V 6700 2400 50  0001 C CNN "MO_Detail_Page"
F 8 "2781" V 6700 2400 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2781" V 6700 2400 50  0001 C CNN "AF_Detail_Page"
	1    6700 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 64D4B843
P 6450 3300
F 0 "R5" V 6245 3300 50  0000 C CNN
F 1 "470" V 6336 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6490 3290 50  0001 C CNN
F 3 "~" H 6450 3300 50  0001 C CNN
F 4 "38K0375" V 6450 3300 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375" V 6450 3300 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-470R" V 6450 3300 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D" V 6450 3300 50  0001 C CNN "MO_Detail_Page"
F 8 "2781" V 6450 3300 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2781" V 6450 3300 50  0001 C CNN "AF_Detail_Page"
	1    6450 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 64D4B893
P 5300 3750
F 0 "R4" V 5095 3750 50  0000 C CNN
F 1 "470" V 5186 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5340 3740 50  0001 C CNN
F 3 "~" H 5300 3750 50  0001 C CNN
F 4 "38K0375" V 5300 3750 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375" V 5300 3750 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-470R" V 5300 3750 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D" V 5300 3750 50  0001 C CNN "MO_Detail_Page"
F 8 "2781" V 5300 3750 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2781" V 5300 3750 50  0001 C CNN "AF_Detail_Page"
	1    5300 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 64D4B8DF
P 6450 4650
F 0 "R7" V 6245 4650 50  0000 C CNN
F 1 "470" V 6336 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6490 4640 50  0001 C CNN
F 3 "~" H 6450 4650 50  0001 C CNN
F 4 "38K0375" V 6450 4650 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375" V 6450 4650 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-470R" V 6450 4650 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D" V 6450 4650 50  0001 C CNN "MO_Detail_Page"
F 8 "2781" V 6450 4650 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2781" V 6450 4650 50  0001 C CNN "AF_Detail_Page"
	1    6450 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 64D4B945
P 5300 5100
F 0 "R6" V 5095 5100 50  0000 C CNN
F 1 "470" V 5186 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5340 5090 50  0001 C CNN
F 3 "~" H 5300 5100 50  0001 C CNN
F 4 "38K0375" V 5300 5100 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcf-0-25w-470r/carbon-film-resistor-470-ohm-250mw/dp/38K0375" V 5300 5100 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JT-52-470R" V 5300 5100 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Yageo/CFR-25JT-52-470R/?qs=sGAEpiMZZMtlubZbdhIBIFoOGUvNp40adtovOrQ4BzA%3D" V 5300 5100 50  0001 C CNN "MO_Detail_Page"
F 8 "2781" V 5300 5100 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2781" V 5300 5100 50  0001 C CNN "AF_Detail_Page"
	1    5300 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 64D4BCFF
P 5650 7000
F 0 "C3" H 5765 7046 50  0000 L CNN
F 1 "0.1uF" H 5765 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5688 6850 50  0001 C CNN
F 3 "~" H 5650 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 0   0   50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 5650 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 5650 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 5650 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 5650 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "13K6284" H 5650 7000 50  0001 C CNN "NW_PN"
F 10 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 5650 7000 50  0001 C CNN "NW_Detail_Page"
F 11 "80-C320C104K5R7301" H 5650 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 5650 7000 50  0001 C CNN "MO_Detail_Page"
	1    5650 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 64D4BD67
P 6100 7000
F 0 "C4" H 6215 7046 50  0000 L CNN
F 1 "0.1uF" H 6215 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 6138 6850 50  0001 C CNN
F 3 "~" H 6100 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 450 0   50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 6100 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 6100 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 6100 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 6100 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "13K6284" H 6100 7000 50  0001 C CNN "NW_PN"
F 10 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 6100 7000 50  0001 C CNN "NW_Detail_Page"
F 11 "80-C320C104K5R7301" H 6100 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 6100 7000 50  0001 C CNN "MO_Detail_Page"
	1    6100 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 64D4BDC1
P 6550 7000
F 0 "C5" H 6665 7046 50  0000 L CNN
F 1 "0.1uF" H 6665 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 6588 6850 50  0001 C CNN
F 3 "~" H 6550 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 900 0   50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 6550 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 6550 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 6550 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 6550 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "13K6284" H 6550 7000 50  0001 C CNN "NW_PN"
F 10 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 6550 7000 50  0001 C CNN "NW_Detail_Page"
F 11 "80-C320C104K5R7301" H 6550 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 6550 7000 50  0001 C CNN "MO_Detail_Page"
	1    6550 7000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
