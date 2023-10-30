EESchema Schematic File Version 4
LIBS:io-analog-core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Analog IO Core (DMX-IO2)"
Date "2023-09-17"
Rev "1.3"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text Label 5250 2850 0    50   ~ 0
~WR
Text Label 2850 4200 0    50   ~ 0
A0
Text Label 2850 4100 0    50   ~ 0
A1
$Comp
L power:GND #PWR?
U 1 1 647F56D9
P 3900 3500
AR Path="/647E1209/647F56D9" Ref="#PWR?"  Part="1" 
AR Path="/647F56D9" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3900 3250 50  0001 C CNN
F 1 "GND" H 3905 3327 50  0000 C CNN
F 2 "" H 3900 3500 50  0001 C CNN
F 3 "" H 3900 3500 50  0001 C CNN
	1    3900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 647F56DF
P 3900 2400
AR Path="/647E1209/647F56DF" Ref="#PWR?"  Part="1" 
AR Path="/647F56DF" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3900 2250 50  0001 C CNN
F 1 "+5V" H 3915 2573 50  0000 C CNN
F 2 "" H 3900 2400 50  0001 C CNN
F 3 "" H 3900 2400 50  0001 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2800 3500 2800
$Comp
L power:GND #PWR?
U 1 1 647F56E6
P 5850 3150
AR Path="/647E1209/647F56E6" Ref="#PWR?"  Part="1" 
AR Path="/647F56E6" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5850 2900 50  0001 C CNN
F 1 "GND" H 5855 2977 50  0000 C CNN
F 2 "" H 5850 3150 50  0001 C CNN
F 3 "" H 5850 3150 50  0001 C CNN
	1    5850 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 647F573E
P 1950 7000
AR Path="/647E1209/647F573E" Ref="C?"  Part="1" 
AR Path="/647F573E" Ref="C1"  Part="1" 
F 0 "C1" H 2065 7046 50  0000 L CNN
F 1 "0.1uF" H 2065 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 1988 6850 50  0001 C CNN
F 3 "~" H 1950 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 1950 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 1950 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 1950 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 1950 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 1950 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 1950 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 1950 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 1950 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 1950 7000 50  0001 C CNN "MO_Detail_Page"
	1    1950 7000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 647F5745
P 4650 7500
AR Path="/647E1209/647F5745" Ref="#PWR?"  Part="1" 
AR Path="/647F5745" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 4650 7250 50  0001 C CNN
F 1 "GND" H 4655 7327 50  0000 C CNN
F 2 "" H 4650 7500 50  0001 C CNN
F 3 "" H 4650 7500 50  0001 C CNN
	1    4650 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 647F574B
P 4650 6500
AR Path="/647E1209/647F574B" Ref="#PWR?"  Part="1" 
AR Path="/647F574B" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4650 6350 50  0001 C CNN
F 1 "+5V" H 4665 6673 50  0000 C CNN
F 2 "" H 4650 6500 50  0001 C CNN
F 3 "" H 4650 6500 50  0001 C CNN
	1    4650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6850 4200 6550
$Comp
L CrazyGiraffe_DMXDemonstrator:74LS164 U?
U 1 1 647F5755
P 3900 3000
AR Path="/647E1209/647F5755" Ref="U?"  Part="1" 
AR Path="/647F5755" Ref="U1"  Part="1" 
F 0 "U1" H 4000 3650 60  0000 C CNN
F 1 "74LS164" H 4150 3550 60  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 2150 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc164" H 1400 2000 60  0001 L CNN
F 4 "en/products/detail/texas-instruments/SN74LS164N/277293" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-1647-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/SN74LS164N?qs=spW5eSrOWB4KbXBVmPSWoA%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "595-SN74LS164N" H 0   0   50  0001 C CNN "MO_PN"
F 8 "8-Bit Parallel-Out Serial Shift Register" H 0   0   50  0001 C CNN "Description"
	1    3900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 647F575C
P 3450 2400
AR Path="/647E1209/647F575C" Ref="#PWR?"  Part="1" 
AR Path="/647F575C" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 3450 2250 50  0001 C CNN
F 1 "+5V" H 3465 2573 50  0000 C CNN
F 2 "" H 3450 2400 50  0001 C CNN
F 3 "" H 3450 2400 50  0001 C CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2400 3450 2800
$Comp
L power:GND #PWR?
U 1 1 647F576A
P 6450 3150
AR Path="/647E1209/647F576A" Ref="#PWR?"  Part="1" 
AR Path="/647F576A" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 6450 2900 50  0001 C CNN
F 1 "GND" H 6455 2977 50  0000 C CNN
F 2 "" H 6450 3150 50  0001 C CNN
F 3 "" H 6450 3150 50  0001 C CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2700 6250 2700
Wire Wire Line
	2850 4200 3000 4200
Wire Wire Line
	2850 4100 3000 4100
Entry Wire Line
	2750 4200 2850 4100
Entry Wire Line
	2750 4300 2850 4200
Entry Wire Line
	5000 2750 5100 2850
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO?
U 1 1 647F577B
P 10900 6850
AR Path="/647E1209/647F577B" Ref="#LOGO?"  Part="1" 
AR Path="/647F577B" Ref="#LOGO1"  Part="1" 
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
Entry Bus Bus
	4600 4850 4700 4750
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J?
U 1 1 647F57A0
P 2750 3100
AR Path="/647E1209/647F57A0" Ref="J?"  Part="1" 
AR Path="/647F57A0" Ref="J1"  Part="1" 
F 0 "J1" H 2800 3617 50  0000 C CNN
F 1 "IO Extension" H 2800 3526 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Horizontal" H 2750 3100 50  0001 C CNN
F 3 "https://www.we-online.com/components/products/datasheet/61201421721.pdf" H 2750 3100 50  0001 C CNN
F 4 "75AJ1395" H 2750 3100 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/wurth-elektronik/612014235221/conn-r-a-header-14pos-2row-2-54mm/dp/75AJ1395" H 2750 3100 50  0001 C CNN "NW_Detail_Page"
F 6 "710-61201421721" H 2750 3100 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Wurth-Elektronik/61201421721?qs=PhR8RmCirEbQk5OcjPFu0A%3D%3D" H 2750 3100 50  0001 C CNN "MO_Detail_Page"
F 8 "732-5407-ND" H 2750 3100 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/würth-elektronik/61201421721/4846921?s=N4IgTCBcDaIAQDYCMYAMSAsYkHZsgF0BfIA" H 2750 3100 50  0001 C CNN "DK_Detail_Page"
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 647F57A7
P 3150 2400
AR Path="/647E1209/647F57A7" Ref="#PWR?"  Part="1" 
AR Path="/647F57A7" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3150 2250 50  0001 C CNN
F 1 "+5V" H 3165 2573 50  0000 C CNN
F 2 "" H 3150 2400 50  0001 C CNN
F 3 "" H 3150 2400 50  0001 C CNN
	1    3150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 647F57AD
P 2450 2400
AR Path="/647E1209/647F57AD" Ref="#PWR?"  Part="1" 
AR Path="/647F57AD" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2450 2250 50  0001 C CNN
F 1 "+5V" H 2465 2573 50  0000 C CNN
F 2 "" H 2450 2400 50  0001 C CNN
F 3 "" H 2450 2400 50  0001 C CNN
	1    2450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 647F57B3
P 3150 3500
AR Path="/647E1209/647F57B3" Ref="#PWR?"  Part="1" 
AR Path="/647F57B3" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 3150 3250 50  0001 C CNN
F 1 "GND" H 3155 3327 50  0000 C CNN
F 2 "" H 3150 3500 50  0001 C CNN
F 3 "" H 3150 3500 50  0001 C CNN
	1    3150 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 647F57B9
P 2450 3500
AR Path="/647E1209/647F57B9" Ref="#PWR?"  Part="1" 
AR Path="/647F57B9" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 2450 3250 50  0001 C CNN
F 1 "GND" H 2455 3327 50  0000 C CNN
F 2 "" H 2450 3500 50  0001 C CNN
F 3 "" H 2450 3500 50  0001 C CNN
	1    2450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3500 2450 3400
Wire Wire Line
	3050 2800 3150 2800
Wire Wire Line
	3150 2800 3150 2400
Wire Wire Line
	2450 2400 2450 2800
Wire Wire Line
	2450 2800 2550 2800
Wire Wire Line
	2550 3400 2450 3400
Wire Wire Line
	3050 3400 3150 3400
Wire Wire Line
	3150 3400 3150 3500
Wire Wire Line
	3500 2900 3050 2900
Wire Wire Line
	3500 3100 3050 3100
NoConn ~ 3050 3200
NoConn ~ 3050 3300
Wire Wire Line
	2550 2900 2350 2900
Wire Wire Line
	2350 3000 2550 3000
Wire Wire Line
	2350 3100 2550 3100
NoConn ~ 2550 3200
NoConn ~ 2550 3300
Entry Wire Line
	2250 3000 2350 2900
Entry Wire Line
	2250 3100 2350 3000
Entry Wire Line
	2250 3200 2350 3100
Entry Bus Bus
	2250 4750 2350 4850
Text Label 2450 3100 0    50   ~ 0
A0
Text Label 2450 3000 0    50   ~ 0
A1
Text Label 2450 2900 0    50   ~ 0
~WR
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57D8
P 6250 6950
AR Path="/647E1209/647F57D8" Ref="MH?"  Part="1" 
AR Path="/647F57D8" Ref="MH2"  Part="1" 
F 0 "MH2" H 6350 6996 50  0000 L CNN
F 1 "MountingHole" H 6350 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6950 50  0001 C CNN
F 3 "~" H 6250 6950 50  0001 C CNN
	1    6250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57DF
P 6250 7250
AR Path="/647E1209/647F57DF" Ref="MH?"  Part="1" 
AR Path="/647F57DF" Ref="MH3"  Part="1" 
F 0 "MH3" H 6350 7296 50  0000 L CNN
F 1 "MountingHole" H 6350 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7250 50  0001 C CNN
F 3 "~" H 6250 7250 50  0001 C CNN
	1    6250 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57E6
P 6250 7550
AR Path="/647E1209/647F57E6" Ref="MH?"  Part="1" 
AR Path="/647F57E6" Ref="MH4"  Part="1" 
F 0 "MH4" H 6350 7596 50  0000 L CNN
F 1 "MountingHole" H 6350 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7550 50  0001 C CNN
F 3 "~" H 6250 7550 50  0001 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57ED
P 6250 6650
AR Path="/647E1209/647F57ED" Ref="MH?"  Part="1" 
AR Path="/647F57ED" Ref="MH1"  Part="1" 
F 0 "MH1" H 6350 6696 50  0000 L CNN
F 1 "MountingHole" H 6350 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6650 50  0001 C CNN
F 3 "~" H 6250 6650 50  0001 C CNN
	1    6250 6650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 647F5869
P 4200 6500
AR Path="/647E1209/647F5869" Ref="#FLG?"  Part="1" 
AR Path="/647F5869" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 4200 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 6673 50  0000 C CNN
F 2 "" H 4200 6500 50  0001 C CNN
F 3 "~" H 4200 6500 50  0001 C CNN
	1    4200 6500
	1    0    0    -1  
$EndComp
Text Label 3050 2900 0    50   ~ 0
SR-OUT
Text Label 3050 3000 0    50   ~ 0
SR-CLK
Text Label 3050 3100 0    50   ~ 0
~SR_CLR
Text Label 4300 2600 0    50   ~ 0
D7
Text Label 4300 3300 0    50   ~ 0
D0
Text Label 4300 3200 0    50   ~ 0
D1
Text Label 4300 3100 0    50   ~ 0
D2
Text Label 4300 3000 0    50   ~ 0
D3
Text Label 4300 2900 0    50   ~ 0
D4
Text Label 4300 2800 0    50   ~ 0
D5
Text Label 4300 2700 0    50   ~ 0
D6
Entry Wire Line
	4400 2600 4500 2500
Entry Wire Line
	4400 2700 4500 2600
Entry Wire Line
	4400 2800 4500 2700
Entry Wire Line
	4400 2900 4500 2800
Entry Wire Line
	4400 3000 4500 2900
Entry Wire Line
	4400 3100 4500 3000
Entry Wire Line
	4400 3200 4500 3100
Entry Wire Line
	4400 3300 4500 3200
Wire Wire Line
	3050 3000 3500 3000
Wire Wire Line
	4250 2600 4400 2600
Wire Wire Line
	4250 2700 4400 2700
Wire Wire Line
	4250 2800 4400 2800
Wire Wire Line
	4250 2900 4400 2900
Wire Wire Line
	4250 3000 4400 3000
Wire Wire Line
	4250 3100 4400 3100
Wire Wire Line
	4250 3200 4400 3200
Wire Wire Line
	4250 3300 4400 3300
Entry Bus Bus
	4500 1300 4600 1200
Wire Wire Line
	4650 6500 4650 6550
Wire Wire Line
	4200 7450 4200 7150
Wire Wire Line
	4650 7450 4650 7500
Wire Wire Line
	4650 6850 4650 6550
Wire Wire Line
	4650 7150 4650 7450
Wire Wire Line
	5600 7050 5400 7050
$Comp
L CrazyGiraffe_DMXDemonstrator:TL1431 VR?
U 1 1 647F5A12
P 5200 7050
AR Path="/647E1209/647F5A12" Ref="VR?"  Part="1" 
AR Path="/647F5A12" Ref="VR1"  Part="1" 
F 0 "VR1" H 5100 7150 50  0000 R CNN
F 1 "TL1431" H 5100 7050 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4500 6400 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/TL1431" H 4500 6500 60  0001 L CNN
F 4 "products/detail/texas-instruments/TL1431CLP/380747" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-10130-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TL1431CLPR?qs=UGVLDq%2F29ugvMf6UgtTXcg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "595-TL1431CLPR" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Precision Voltage Reference" H 0   0   50  0001 C CNN "Description"
	1    5200 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 647F5A1A
P 5600 6500
AR Path="/647E1209/647F5A1A" Ref="#PWR?"  Part="1" 
AR Path="/647F5A1A" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 5600 6350 50  0001 C CNN
F 1 "+2V5" H 5615 6673 50  0000 C CNN
F 2 "" H 5600 6500 50  0001 C CNN
F 3 "" H 5600 6500 50  0001 C CNN
	1    5600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6500 5600 6550
$Comp
L power:+5V #PWR?
U 1 1 647F5A2E
P 5850 1800
AR Path="/647E1209/647F5A2E" Ref="#PWR?"  Part="1" 
AR Path="/647F5A2E" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 5850 1650 50  0001 C CNN
F 1 "+5V" H 5865 1973 50  0000 C CNN
F 2 "" H 5850 1800 50  0001 C CNN
F 3 "" H 5850 1800 50  0001 C CNN
	1    5850 1800
	1    0    0    -1  
$EndComp
Connection ~ 5600 7050
Connection ~ 4650 6550
Wire Wire Line
	4200 6550 4650 6550
Connection ~ 4200 6550
$Comp
L Device:R_US R9
U 1 1 64F147BB
P 4950 6550
F 0 "R9" V 4745 6550 50  0000 C CNN
F 1 "1.6k" V 4836 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4990 6540 50  0001 C CNN
F 3 "~" H 4950 6550 50  0001 C CNN
F 4 "59K8662" V 4950 6550 50  0001 C CNN "NW_PN"
F 5 "https://www.newark.com/multicomp-pro/mcmf0w4ff1601a50/metal-film-resistor-1-6kohm-250mw/dp/59K8662" V 4950 6550 50  0001 C CNN "NW_Detail_Page"
F 6 "603-CFR-25JB-52-1K6" V 4950 6550 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/CFR-25JB-52-1K6?qs=oypCK0zG324gUY%252BXSosJrA%3D%3D" V 4950 6550 50  0001 C CNN "MO_Detail_Page"
F 8 "1.6KQBK-ND" V 4950 6550 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/yageo/CFR-25JB-52-1K6/141" V 4950 6550 50  0001 C CNN "DK_Detail_Page"
	1    4950 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 6550 4800 6550
Wire Wire Line
	5100 6550 5200 6550
Wire Wire Line
	5200 6550 5600 6550
Connection ~ 5200 6550
Connection ~ 5600 6550
Wire Wire Line
	5200 6550 5200 6850
Wire Wire Line
	5600 6550 5600 7050
Wire Wire Line
	5600 7450 5600 7400
Connection ~ 4650 7450
Wire Wire Line
	5600 7050 5600 7100
Wire Wire Line
	5200 7250 5200 7450
Connection ~ 5200 7450
Wire Wire Line
	5200 7450 5600 7450
Wire Wire Line
	4200 7450 4650 7450
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC7524CN U3
U 1 1 648A85B8
P 5850 2400
F 0 "U3" H 5950 3050 50  0000 L CNN
F 1 "TLC7524CN" H 5950 2950 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5850 2400 50  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc7524" H 5950 3050 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLC7524CN/277513" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-1868-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLC7524CN?qs=YEaxc5757jOODnhHTXWKGQ%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "595-TLC7524CN" H 0   0   50  0001 C CNN "MO_PN"
F 8 "8-bit Multiplying Digital to Analog Converter" H 0   0   50  0001 C CNN "Description"
	1    5850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 648D45C2
P 6450 1800
AR Path="/647E1209/648D45C2" Ref="#PWR?"  Part="1" 
AR Path="/648D45C2" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 6450 1650 50  0001 C CNN
F 1 "+2V5" H 6465 1973 50  0000 C CNN
F 2 "" H 6450 1800 50  0001 C CNN
F 3 "" H 6450 1800 50  0001 C CNN
	1    6450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2700 6450 3150
Wire Wire Line
	6250 2600 6450 2600
Wire Wire Line
	6450 2600 6450 1800
NoConn ~ 6250 2200
Text Label 5250 2950 0    50   ~ 0
~CS0
Entry Wire Line
	5000 2850 5100 2950
Wire Wire Line
	5100 2850 5450 2850
Wire Wire Line
	5100 2950 5450 2950
Entry Wire Line
	5200 2600 5300 2700
Entry Wire Line
	5200 2500 5300 2600
Entry Wire Line
	5200 2400 5300 2500
Entry Wire Line
	5200 2300 5300 2400
Entry Wire Line
	5200 2200 5300 2300
Entry Wire Line
	5200 2100 5300 2200
Entry Wire Line
	5200 2000 5300 2100
Entry Wire Line
	5200 1900 5300 2000
Wire Wire Line
	5300 2000 5450 2000
Wire Wire Line
	5300 2100 5450 2100
Wire Wire Line
	5300 2200 5450 2200
Wire Wire Line
	5300 2300 5450 2300
Wire Wire Line
	5300 2400 5450 2400
Wire Wire Line
	5300 2500 5450 2500
Wire Wire Line
	5300 2600 5450 2600
Wire Wire Line
	5300 2700 5450 2700
Text Label 5250 4850 0    50   ~ 0
~WR
$Comp
L power:GND #PWR?
U 1 1 6495FAC8
P 5850 5150
AR Path="/647E1209/6495FAC8" Ref="#PWR?"  Part="1" 
AR Path="/6495FAC8" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5850 4900 50  0001 C CNN
F 1 "GND" H 5855 4977 50  0000 C CNN
F 2 "" H 5850 5150 50  0001 C CNN
F 3 "" H 5850 5150 50  0001 C CNN
	1    5850 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6495FACE
P 6450 5150
AR Path="/647E1209/6495FACE" Ref="#PWR?"  Part="1" 
AR Path="/6495FACE" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6450 4900 50  0001 C CNN
F 1 "GND" H 6455 4977 50  0000 C CNN
F 2 "" H 6450 5150 50  0001 C CNN
F 3 "" H 6450 5150 50  0001 C CNN
	1    6450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4700 6250 4700
Entry Wire Line
	5000 4750 5100 4850
$Comp
L power:+5V #PWR?
U 1 1 6495FAD6
P 5850 3800
AR Path="/647E1209/6495FAD6" Ref="#PWR?"  Part="1" 
AR Path="/6495FAD6" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5850 3650 50  0001 C CNN
F 1 "+5V" H 5865 3973 50  0000 C CNN
F 2 "" H 5850 3800 50  0001 C CNN
F 3 "" H 5850 3800 50  0001 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC7524CN U5
U 1 1 6495FADC
P 5850 4400
F 0 "U5" H 6000 5050 50  0000 C CNN
F 1 "TLC7524CN" H 6100 4950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5850 4400 50  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc7524" H 5850 4400 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLC7524CN/277513" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-1868-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLC7524CN?qs=YEaxc5757jOODnhHTXWKGQ%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "595-TLC7524CN" H 0   0   50  0001 C CNN "MO_PN"
F 8 "8-bit Multiplying Digital to Analog Converter" H 0   0   50  0001 C CNN "Description"
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 6495FAE8
P 6450 3800
AR Path="/647E1209/6495FAE8" Ref="#PWR?"  Part="1" 
AR Path="/6495FAE8" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 6450 3650 50  0001 C CNN
F 1 "+2V5" H 6465 3973 50  0000 C CNN
F 2 "" H 6450 3800 50  0001 C CNN
F 3 "" H 6450 3800 50  0001 C CNN
	1    6450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4700 6450 5150
Wire Wire Line
	6250 4600 6450 4600
Wire Wire Line
	6450 4600 6450 3800
NoConn ~ 6250 4200
Text Label 7250 2950 0    50   ~ 0
~CS1
Entry Wire Line
	5000 4850 5100 4950
Wire Wire Line
	5100 4850 5450 4850
Wire Wire Line
	5100 4950 5450 4950
Entry Wire Line
	5200 4600 5300 4700
Entry Wire Line
	5200 4500 5300 4600
Entry Wire Line
	5200 4400 5300 4500
Entry Wire Line
	5200 4300 5300 4400
Entry Wire Line
	5200 4200 5300 4300
Entry Wire Line
	5200 4100 5300 4200
Entry Wire Line
	5200 4000 5300 4100
Entry Wire Line
	5200 3900 5300 4000
Wire Wire Line
	5300 4000 5450 4000
Wire Wire Line
	5300 4100 5450 4100
Wire Wire Line
	5300 4200 5450 4200
Wire Wire Line
	5300 4300 5450 4300
Wire Wire Line
	5300 4400 5450 4400
Wire Wire Line
	5300 4500 5450 4500
Wire Wire Line
	5300 4600 5450 4600
Wire Wire Line
	5300 4700 5450 4700
Text Label 7250 2850 0    50   ~ 0
~WR
$Comp
L power:GND #PWR?
U 1 1 6496801C
P 7850 3150
AR Path="/647E1209/6496801C" Ref="#PWR?"  Part="1" 
AR Path="/6496801C" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 7850 2900 50  0001 C CNN
F 1 "GND" H 7855 2977 50  0000 C CNN
F 2 "" H 7850 3150 50  0001 C CNN
F 3 "" H 7850 3150 50  0001 C CNN
	1    7850 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64968022
P 8450 3150
AR Path="/647E1209/64968022" Ref="#PWR?"  Part="1" 
AR Path="/64968022" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 8450 2900 50  0001 C CNN
F 1 "GND" H 8455 2977 50  0000 C CNN
F 2 "" H 8450 3150 50  0001 C CNN
F 3 "" H 8450 3150 50  0001 C CNN
	1    8450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2700 8250 2700
Entry Wire Line
	7000 2750 7100 2850
$Comp
L power:+5V #PWR?
U 1 1 6496802A
P 7850 1800
AR Path="/647E1209/6496802A" Ref="#PWR?"  Part="1" 
AR Path="/6496802A" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 7850 1650 50  0001 C CNN
F 1 "+5V" H 7865 1973 50  0000 C CNN
F 2 "" H 7850 1800 50  0001 C CNN
F 3 "" H 7850 1800 50  0001 C CNN
	1    7850 1800
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC7524CN U4
U 1 1 64968030
P 7850 2400
F 0 "U4" H 8000 3050 50  0000 C CNN
F 1 "TLC7524CN" H 8100 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7850 2400 50  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc7524" H 7850 2400 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLC7524CN/277513" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-1868-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLC7524CN?qs=YEaxc5757jOODnhHTXWKGQ%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "595-TLC7524CN" H 0   0   50  0001 C CNN "MO_PN"
F 8 "8-bit Multiplying Digital to Analog Converter" H 0   0   50  0001 C CNN "Description"
	1    7850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 6496803C
P 8450 1800
AR Path="/647E1209/6496803C" Ref="#PWR?"  Part="1" 
AR Path="/6496803C" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 8450 1650 50  0001 C CNN
F 1 "+2V5" H 8465 1973 50  0000 C CNN
F 2 "" H 8450 1800 50  0001 C CNN
F 3 "" H 8450 1800 50  0001 C CNN
	1    8450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2700 8450 3150
Wire Wire Line
	8250 2600 8450 2600
Wire Wire Line
	8450 2600 8450 1800
NoConn ~ 8250 2200
Text Label 5250 4950 0    50   ~ 0
~CS2
Entry Wire Line
	7000 2850 7100 2950
Wire Wire Line
	7100 2850 7450 2850
Wire Wire Line
	7100 2950 7450 2950
Entry Wire Line
	7200 2600 7300 2700
Entry Wire Line
	7200 2500 7300 2600
Entry Wire Line
	7200 2400 7300 2500
Entry Wire Line
	7200 2300 7300 2400
Entry Wire Line
	7200 2200 7300 2300
Entry Wire Line
	7200 2100 7300 2200
Entry Wire Line
	7200 2000 7300 2100
Entry Wire Line
	7200 1900 7300 2000
Wire Wire Line
	7300 2000 7450 2000
Wire Wire Line
	7300 2100 7450 2100
Wire Wire Line
	7300 2200 7450 2200
Wire Wire Line
	7300 2300 7450 2300
Wire Wire Line
	7300 2400 7450 2400
Wire Wire Line
	7300 2500 7450 2500
Wire Wire Line
	7300 2600 7450 2600
Wire Wire Line
	7300 2700 7450 2700
Text Label 7250 4850 0    50   ~ 0
~WR
$Comp
L power:GND #PWR?
U 1 1 64968081
P 7850 5150
AR Path="/647E1209/64968081" Ref="#PWR?"  Part="1" 
AR Path="/64968081" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7850 4900 50  0001 C CNN
F 1 "GND" H 7855 4977 50  0000 C CNN
F 2 "" H 7850 5150 50  0001 C CNN
F 3 "" H 7850 5150 50  0001 C CNN
	1    7850 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64968087
P 8450 5150
AR Path="/647E1209/64968087" Ref="#PWR?"  Part="1" 
AR Path="/64968087" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 8450 4900 50  0001 C CNN
F 1 "GND" H 8455 4977 50  0000 C CNN
F 2 "" H 8450 5150 50  0001 C CNN
F 3 "" H 8450 5150 50  0001 C CNN
	1    8450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4700 8250 4700
Entry Wire Line
	7000 4750 7100 4850
$Comp
L power:+5V #PWR?
U 1 1 6496808F
P 7850 3800
AR Path="/647E1209/6496808F" Ref="#PWR?"  Part="1" 
AR Path="/6496808F" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 7850 3650 50  0001 C CNN
F 1 "+5V" H 7865 3973 50  0000 C CNN
F 2 "" H 7850 3800 50  0001 C CNN
F 3 "" H 7850 3800 50  0001 C CNN
	1    7850 3800
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC7524CN U6
U 1 1 64968095
P 7850 4400
F 0 "U6" H 8000 5050 50  0000 C CNN
F 1 "TLC7524CN" H 8100 4950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7850 4400 50  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc7524" H 7850 4400 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLC7524CN/277513" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "8-bit Multiplying Digital to Analog Converter" H 0   0   50  0001 C CNN "Description"
F 6 "296-1868-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLC7524CN?qs=YEaxc5757jOODnhHTXWKGQ%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 8 "595-TLC7524CN" H 0   0   50  0001 C CNN "MO_PN"
	1    7850 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 649680A1
P 8450 3800
AR Path="/647E1209/649680A1" Ref="#PWR?"  Part="1" 
AR Path="/649680A1" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 8450 3650 50  0001 C CNN
F 1 "+2V5" H 8465 3973 50  0000 C CNN
F 2 "" H 8450 3800 50  0001 C CNN
F 3 "" H 8450 3800 50  0001 C CNN
	1    8450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4700 8450 5150
Wire Wire Line
	8250 4600 8450 4600
Wire Wire Line
	8450 4600 8450 3800
NoConn ~ 8250 4200
Text Label 7250 4950 0    50   ~ 0
~CS3
Entry Wire Line
	7000 4850 7100 4950
Wire Wire Line
	7100 4850 7450 4850
Wire Wire Line
	7100 4950 7450 4950
Entry Wire Line
	7200 4600 7300 4700
Entry Wire Line
	7200 4500 7300 4600
Entry Wire Line
	7200 4400 7300 4500
Entry Wire Line
	7200 4300 7300 4400
Entry Wire Line
	7200 4200 7300 4300
Entry Wire Line
	7200 4100 7300 4200
Entry Wire Line
	7200 4000 7300 4100
Entry Wire Line
	7200 3900 7300 4000
Wire Wire Line
	7300 4000 7450 4000
Wire Wire Line
	7300 4100 7450 4100
Wire Wire Line
	7300 4200 7450 4200
Wire Wire Line
	7300 4300 7450 4300
Wire Wire Line
	7300 4400 7450 4400
Wire Wire Line
	7300 4500 7450 4500
Wire Wire Line
	7300 4600 7450 4600
Wire Wire Line
	7300 4700 7450 4700
Entry Bus Bus
	5100 1200 5200 1300
Entry Bus Bus
	7100 1200 7200 1300
Entry Bus Bus
	4900 1400 5000 1500
Entry Bus Bus
	6900 1400 7000 1500
$Comp
L 74xx:74LS139 U2
U 1 1 64A20E7C
P 3500 4200
F 0 "U2" H 3500 4567 50  0000 C CNN
F 1 "74LS139" H 3500 4476 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3500 4200 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/sn74ls139a" H 3500 4200 50  0001 C CNN
F 4 "296-1640-5-ND" H 3500 4200 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/SN74LS139AN/277286" H 3500 4200 50  0001 C CNN "DK_Detail_Page"
F 6 "595-SN74LS139AN" H 3500 4200 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/SN74LS139AN?qs=3pnr37ZAbK%2FhW2T3DHZDAw%3D%3D" H 3500 4200 50  0001 C CNN "MO_Detail_Page"
F 8 "Dual 2-line to 4-line decoders" H 3500 4200 50  0001 C CNN "Description"
	1    3500 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U2
U 2 1 64A20F0B
P 3500 5400
F 0 "U2" H 3200 5750 50  0000 C CNN
F 1 "74LS139" H 3200 5050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3500 5400 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/sn74ls139a" H 3500 5400 50  0001 C CNN
F 4 "296-1640-5-ND" H 3500 5400 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/SN74LS139AN/277286" H 3500 5400 50  0001 C CNN "DK_Detail_Page"
F 6 "595-SN74LS139AN" H 3500 5400 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/SN74LS139AN?qs=3pnr37ZAbK%2FhW2T3DHZDAw%3D%3D" H 3500 5400 50  0001 C CNN "MO_Detail_Page"
F 8 "Dual 2-line to 4-line decoders" H 3500 5400 50  0001 C CNN "Description"
	2    3500 5400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U2
U 3 1 64A20F90
P 1050 5450
F 0 "U2" H 750 5800 50  0000 C CNN
F 1 "74LS139" H 750 5100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1050 5450 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/sn74ls139a" H 1050 5450 50  0001 C CNN
F 4 "296-1640-5-ND" H 1050 5450 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/SN74LS139AN/277286" H 1050 5450 50  0001 C CNN "DK_Detail_Page"
F 6 "595-SN74LS139AN" H 1050 5450 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/SN74LS139AN?qs=3pnr37ZAbK%2FhW2T3DHZDAw%3D%3D" H 1050 5450 50  0001 C CNN "MO_Detail_Page"
F 8 "Dual 2-line to 4-line decoders" H 1050 5450 50  0001 C CNN "Description"
	3    1050 5450
	1    0    0    -1  
$EndComp
Text Label 4200 4200 2    50   ~ 0
~CS1
Entry Wire Line
	4350 4300 4250 4200
Wire Wire Line
	4250 4200 4000 4200
Text Label 4200 4100 2    50   ~ 0
~CS0
Entry Wire Line
	4350 4200 4250 4100
Wire Wire Line
	4250 4100 4000 4100
Text Label 4200 4400 2    50   ~ 0
~CS3
Entry Wire Line
	4350 4500 4250 4400
Wire Wire Line
	4250 4400 4000 4400
Text Label 4200 4300 2    50   ~ 0
~CS2
Entry Wire Line
	4350 4400 4250 4300
Wire Wire Line
	4250 4300 4000 4300
Entry Bus Bus
	2650 4850 2750 4750
Entry Bus Bus
	4250 4850 4350 4750
Entry Bus Bus
	4700 1500 4800 1400
Wire Bus Line
	4700 1500 4700 4750
$Comp
L power:GND #PWR?
U 1 1 64C42CF9
P 2900 4500
AR Path="/647E1209/64C42CF9" Ref="#PWR?"  Part="1" 
AR Path="/64C42CF9" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2900 4250 50  0001 C CNN
F 1 "GND" H 2905 4327 50  0000 C CNN
F 2 "" H 2900 4500 50  0001 C CNN
F 3 "" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4500 2900 4400
Wire Wire Line
	3000 4400 2900 4400
$Comp
L Device:CP1 C7
U 1 1 64CB0FCF
P 4650 7000
F 0 "C7" H 4900 7050 50  0000 R CNN
F 1 "10uF" H 4950 6950 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 4650 7000 50  0001 C CNN
F 3 "~" H 4650 7000 50  0001 C CNN
F 4 "COM-00523" H 4650 7000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 4650 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 4650 7000 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 4650 7000 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 4650 7000 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 4650 7000 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 4650 7000 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 4650 7000 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 4650 7000 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 4650 7000 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 4650 7000 50  0001 C CNN "Description"
	1    4650 7000
	-1   0    0    -1  
$EndComp
Connection ~ 4200 7450
Wire Wire Line
	1950 7150 1950 7450
Wire Wire Line
	1950 6850 1950 6550
Wire Wire Line
	1950 6550 2400 6550
Wire Wire Line
	2400 6850 2400 6550
Connection ~ 2400 6550
Wire Wire Line
	2400 6550 2850 6550
Wire Wire Line
	2400 7150 2400 7450
Wire Wire Line
	1950 7450 2400 7450
Connection ~ 2400 7450
Wire Wire Line
	2400 7450 2850 7450
Wire Wire Line
	2850 7150 2850 7450
Connection ~ 2850 7450
Wire Wire Line
	2850 7450 3300 7450
Wire Wire Line
	2850 6850 2850 6550
Connection ~ 2850 6550
Wire Wire Line
	2850 6550 3300 6550
Wire Wire Line
	3300 6850 3300 6550
Connection ~ 3300 6550
Wire Wire Line
	3300 6550 3750 6550
Wire Wire Line
	3300 7150 3300 7450
Connection ~ 3300 7450
Wire Wire Line
	3750 7150 3750 7450
Wire Wire Line
	3300 7450 3750 7450
Connection ~ 3750 7450
Wire Wire Line
	3750 7450 4200 7450
Wire Wire Line
	3750 6850 3750 6550
Connection ~ 3750 6550
Wire Wire Line
	3750 6550 4200 6550
Wire Wire Line
	4650 7450 5200 7450
$Comp
L power:+5V #PWR?
U 1 1 64D7ACBC
P 2900 5200
AR Path="/647E1209/64D7ACBC" Ref="#PWR?"  Part="1" 
AR Path="/64D7ACBC" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2900 5050 50  0001 C CNN
F 1 "+5V" H 2915 5373 50  0000 C CNN
F 2 "" H 2900 5200 50  0001 C CNN
F 3 "" H 2900 5200 50  0001 C CNN
	1    2900 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64D8548A
P 1050 4950
AR Path="/647E1209/64D8548A" Ref="#PWR?"  Part="1" 
AR Path="/64D8548A" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 1050 4800 50  0001 C CNN
F 1 "+5V" H 1065 5123 50  0000 C CNN
F 2 "" H 1050 4950 50  0001 C CNN
F 3 "" H 1050 4950 50  0001 C CNN
	1    1050 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64D8550D
P 1050 5950
AR Path="/647E1209/64D8550D" Ref="#PWR?"  Part="1" 
AR Path="/64D8550D" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1050 5700 50  0001 C CNN
F 1 "GND" H 1055 5777 50  0000 C CNN
F 2 "" H 1050 5950 50  0001 C CNN
F 3 "" H 1050 5950 50  0001 C CNN
	1    1050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5600 2900 5600
Wire Wire Line
	2900 5600 2900 5400
Wire Wire Line
	3000 5300 2900 5300
Connection ~ 2900 5300
Wire Wire Line
	2900 5300 2900 5200
Wire Wire Line
	3000 5400 2900 5400
Connection ~ 2900 5400
Wire Wire Line
	2900 5400 2900 5300
NoConn ~ 4000 5300
NoConn ~ 4000 5400
NoConn ~ 4000 5500
NoConn ~ 4000 5600
Wire Wire Line
	6750 5700 8850 5700
Wire Wire Line
	6650 5600 8750 5600
$Comp
L power:GND #PWR?
U 1 1 64ED0ADD
P 10100 3850
AR Path="/647E1209/64ED0ADD" Ref="#PWR?"  Part="1" 
AR Path="/64ED0ADD" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 10100 3600 50  0001 C CNN
F 1 "GND" H 10105 3677 50  0000 C CNN
F 2 "" H 10100 3850 50  0001 C CNN
F 3 "" H 10100 3850 50  0001 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3850 10100 3750
Wire Wire Line
	10100 3750 10200 3750
Wire Wire Line
	10100 3750 10100 3650
Wire Wire Line
	10100 3650 10200 3650
Connection ~ 10100 3750
$Comp
L power:+5V #PWR?
U 1 1 64EF4921
P 10100 2950
AR Path="/647E1209/64EF4921" Ref="#PWR?"  Part="1" 
AR Path="/64EF4921" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 10100 2800 50  0001 C CNN
F 1 "+5V" H 10115 3123 50  0000 C CNN
F 2 "" H 10100 2950 50  0001 C CNN
F 3 "" H 10100 2950 50  0001 C CNN
	1    10100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2950 10100 3050
Wire Wire Line
	10200 3050 10100 3050
Connection ~ 10100 3050
Wire Wire Line
	10100 3050 10100 3150
Wire Wire Line
	10200 3150 10100 3150
Wire Wire Line
	6250 4300 6650 4300
Wire Wire Line
	6650 4300 6650 5600
Wire Wire Line
	6250 2300 6750 2300
Wire Wire Line
	6750 2300 6750 5700
Wire Wire Line
	8250 4300 8650 4300
Wire Wire Line
	4200 6500 4200 6550
Text Label 10050 3250 0    50   ~ 0
AO3
Text Label 10050 3350 0    50   ~ 0
AO2
Text Label 10050 3450 0    50   ~ 0
AO1
Text Label 10050 3550 0    50   ~ 0
AO0
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U7
U 1 1 6511AB4A
P 9350 2400
F 0 "U7" H 9350 2767 50  0000 C CNN
F 1 "TLV2772" H 9350 2676 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9350 2400 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 9350 2400 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   -1400 50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   -1400 50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   -1400 50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   -1400 50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   -1400 50  0001 C CNN "Description"
	1    9350 2400
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U7
U 2 1 6511ABB9
P 9350 4500
F 0 "U7" H 9350 4867 50  0000 C CNN
F 1 "TLV2772" H 9350 4776 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9350 4500 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 9350 4500 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   0   50  0001 C CNN "Description"
	2    9350 4500
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U8
U 3 1 6511AC32
P 1400 7000
F 0 "U8" H 1500 7050 50  0000 R CNN
F 1 "TLV2772" H 1650 6950 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1400 7000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 1400 7000 50  0001 C CNN
	3    1400 7000
	-1   0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U8
U 1 1 6511AD0D
P 9350 3800
F 0 "U8" H 9350 4167 50  0000 C CNN
F 1 "TLV2772" H 9350 4076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9350 3800 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 9350 3800 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   1400 50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   1400 50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   1400 50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   1400 50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   1400 50  0001 C CNN "Description"
	1    9350 3800
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U8
U 2 1 6511AD82
P 9350 3100
F 0 "U8" H 9350 3467 50  0000 C CNN
F 1 "TLV2772" H 9350 3376 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9350 3100 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 9350 3100 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   0   50  0001 C CNN "Description"
	2    9350 3100
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U7
U 3 1 6511ADEF
P 1150 7000
F 0 "U7" H 850 7050 50  0000 L CNN
F 1 "TLV2772" H 700 6950 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1150 7000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 1150 7000 50  0001 C CNN
	3    1150 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 6511B18C
P 10400 3350
F 0 "J3" H 10480 3342 50  0000 L CNN
F 1 "Analog Extension" H 10480 3251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10400 3350 50  0001 C CNN
F 3 "~" H 10400 3350 50  0001 C CNN
F 4 "PRT-11895" H 10400 3350 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/11895" H 10400 3350 50  0001 C CNN "SP_Detail_Page"
F 6 "992-8FX1-254MM" H 10400 3350 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Gravitech/8Fx1-254mm?qs=Vxac6xGyzPk0zR%2F1vGr2Gg%3D%3D" H 10400 3350 50  0001 C CNN "MO_Detail_Page"
F 8 "Header - 8 Pin" H 10400 3350 50  0001 C CNN "Description"
	1    10400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4500 9700 4500
Wire Wire Line
	9050 3900 8950 3900
Wire Wire Line
	8950 3900 8950 4050
Wire Wire Line
	8950 4050 9700 4050
Wire Wire Line
	9700 4050 9700 3800
Wire Wire Line
	9700 3800 9650 3800
Wire Wire Line
	9050 4600 8950 4600
Wire Wire Line
	8950 4600 8950 4750
Wire Wire Line
	8950 4750 9700 4750
Wire Wire Line
	9700 4750 9700 4500
Wire Wire Line
	9050 3200 8950 3200
Wire Wire Line
	8950 3200 8950 3350
Wire Wire Line
	8950 3350 9700 3350
Wire Wire Line
	9700 3350 9700 3100
Wire Wire Line
	9700 3100 9650 3100
Wire Wire Line
	9050 2500 8950 2500
Wire Wire Line
	8950 2500 8950 2650
Wire Wire Line
	8950 2650 9700 2650
Wire Wire Line
	9700 2650 9700 2400
Wire Wire Line
	9700 2400 9650 2400
Wire Wire Line
	9050 4400 8850 4400
Wire Wire Line
	8850 4400 8850 5700
Wire Wire Line
	9050 3700 8750 3700
Wire Wire Line
	8750 3700 8750 5600
Wire Wire Line
	8250 2300 9050 2300
Wire Wire Line
	8650 3000 9050 3000
Wire Wire Line
	8650 3000 8650 4300
Connection ~ 1950 6550
Wire Wire Line
	1050 6550 1500 6550
Wire Wire Line
	1500 6700 1500 6550
Connection ~ 1500 6550
Wire Wire Line
	1500 6550 1950 6550
Wire Wire Line
	1050 6550 1050 6700
Wire Wire Line
	1050 7300 1050 7450
Wire Wire Line
	1050 7450 1500 7450
Connection ~ 1950 7450
Wire Wire Line
	1500 7300 1500 7450
Connection ~ 1500 7450
Wire Wire Line
	1500 7450 1950 7450
Text Notes 10500 3700 0    50   ~ 0
Analog Output\n0v-2.5v
$Comp
L power:PWR_FLAG #FLG?
U 1 1 64BE351C
P 4200 7500
AR Path="/647E1209/64BE351C" Ref="#FLG?"  Part="1" 
AR Path="/64BE351C" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 4200 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 7673 50  0000 C CNN
F 2 "" H 4200 7500 50  0001 C CNN
F 3 "~" H 4200 7500 50  0001 C CNN
	1    4200 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 7500 4200 7450
$Comp
L power:PWR_FLAG #FLG?
U 1 1 64BF9D93
P 5950 6500
AR Path="/647E1209/64BF9D93" Ref="#FLG?"  Part="1" 
AR Path="/64BF9D93" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 5950 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 5950 6673 50  0000 C CNN
F 2 "" H 5950 6500 50  0001 C CNN
F 3 "~" H 5950 6500 50  0001 C CNN
	1    5950 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6550 5950 6500
Wire Wire Line
	5600 6550 5950 6550
$Comp
L Device:C C?
U 1 1 64E35A2C
P 2400 7000
AR Path="/647E1209/64E35A2C" Ref="C?"  Part="1" 
AR Path="/64E35A2C" Ref="C2"  Part="1" 
F 0 "C2" H 2515 7046 50  0000 L CNN
F 1 "0.1uF" H 2515 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2438 6850 50  0001 C CNN
F 3 "~" H 2400 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 2400 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 2400 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 2400 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 2400 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 2400 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 2400 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 2400 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 2400 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 2400 7000 50  0001 C CNN "MO_Detail_Page"
	1    2400 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E35A8E
P 2850 7000
AR Path="/647E1209/64E35A8E" Ref="C?"  Part="1" 
AR Path="/64E35A8E" Ref="C3"  Part="1" 
F 0 "C3" H 2965 7046 50  0000 L CNN
F 1 "0.1uF" H 2965 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2888 6850 50  0001 C CNN
F 3 "~" H 2850 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 2850 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 2850 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 2850 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 2850 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 2850 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 2850 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 2850 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 2850 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 2850 7000 50  0001 C CNN "MO_Detail_Page"
	1    2850 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E35B08
P 3300 7000
AR Path="/647E1209/64E35B08" Ref="C?"  Part="1" 
AR Path="/64E35B08" Ref="C4"  Part="1" 
F 0 "C4" H 3415 7046 50  0000 L CNN
F 1 "0.1uF" H 3415 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3338 6850 50  0001 C CNN
F 3 "~" H 3300 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 3300 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 3300 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 3300 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 3300 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 3300 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 3300 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 3300 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 3300 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 3300 7000 50  0001 C CNN "MO_Detail_Page"
	1    3300 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E35B6E
P 3750 7000
AR Path="/647E1209/64E35B6E" Ref="C?"  Part="1" 
AR Path="/64E35B6E" Ref="C5"  Part="1" 
F 0 "C5" H 3865 7046 50  0000 L CNN
F 1 "0.1uF" H 3865 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3788 6850 50  0001 C CNN
F 3 "~" H 3750 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 3750 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 3750 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 3750 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 3750 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 3750 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 3750 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 3750 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 3750 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 3750 7000 50  0001 C CNN "MO_Detail_Page"
	1    3750 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E35BDE
P 4200 7000
AR Path="/647E1209/64E35BDE" Ref="C?"  Part="1" 
AR Path="/64E35BDE" Ref="C6"  Part="1" 
F 0 "C6" H 4315 7046 50  0000 L CNN
F 1 "0.1uF" H 4315 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4238 6850 50  0001 C CNN
F 3 "~" H 4200 7000 50  0001 C CNN
F 4 "Decoupling Capacitor" H 4200 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 4200 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 4200 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 4200 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 4200 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 4200 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 4200 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 4200 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 4200 7000 50  0001 C CNN "MO_Detail_Page"
	1    4200 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E35C48
P 5600 7250
AR Path="/647E1209/64E35C48" Ref="C?"  Part="1" 
AR Path="/64E35C48" Ref="C8"  Part="1" 
F 0 "C8" H 5715 7296 50  0000 L CNN
F 1 "0.1uF" H 5715 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5638 7100 50  0001 C CNN
F 3 "~" H 5600 7250 50  0001 C CNN
F 4 "Decoupling Capacitor" H 5600 7250 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 5600 7250 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 5600 7250 50  0001 C CNN "SP_PN"
F 7 "753" H 5600 7250 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 5600 7250 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 5600 7250 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 5600 7250 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 5600 7250 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 5600 7250 50  0001 C CNN "MO_Detail_Page"
	1    5600 7250
	-1   0    0    -1  
$EndComp
Text Label 7300 2000 0    50   ~ 0
D7
Text Label 7300 2700 0    50   ~ 0
D0
Text Label 7300 2600 0    50   ~ 0
D1
Text Label 7300 2500 0    50   ~ 0
D2
Text Label 7300 2400 0    50   ~ 0
D3
Text Label 7300 2300 0    50   ~ 0
D4
Text Label 7300 2200 0    50   ~ 0
D5
Text Label 7300 2100 0    50   ~ 0
D6
Text Label 5300 2000 0    50   ~ 0
D7
Text Label 5300 2700 0    50   ~ 0
D0
Text Label 5300 2600 0    50   ~ 0
D1
Text Label 5300 2500 0    50   ~ 0
D2
Text Label 5300 2400 0    50   ~ 0
D3
Text Label 5300 2300 0    50   ~ 0
D4
Text Label 5300 2200 0    50   ~ 0
D5
Text Label 5300 2100 0    50   ~ 0
D6
Text Label 5300 4000 0    50   ~ 0
D7
Text Label 5300 4700 0    50   ~ 0
D0
Text Label 5300 4600 0    50   ~ 0
D1
Text Label 5300 4500 0    50   ~ 0
D2
Text Label 5300 4400 0    50   ~ 0
D3
Text Label 5300 4300 0    50   ~ 0
D4
Text Label 5300 4200 0    50   ~ 0
D5
Text Label 5300 4100 0    50   ~ 0
D6
Text Label 7300 4000 0    50   ~ 0
D7
Text Label 7300 4700 0    50   ~ 0
D0
Text Label 7300 4600 0    50   ~ 0
D1
Text Label 7300 4500 0    50   ~ 0
D2
Text Label 7300 4400 0    50   ~ 0
D3
Text Label 7300 4300 0    50   ~ 0
D4
Text Label 7300 4200 0    50   ~ 0
D5
Text Label 7300 4100 0    50   ~ 0
D6
Wire Wire Line
	10200 3550 9950 3550
Wire Wire Line
	9950 3550 9950 4500
Wire Wire Line
	9950 4500 9700 4500
Connection ~ 9700 4500
Wire Wire Line
	10200 3450 9950 3450
Wire Wire Line
	9950 3450 9950 2400
Wire Wire Line
	9950 2400 9700 2400
Connection ~ 9700 2400
Wire Wire Line
	10200 3350 9850 3350
Wire Wire Line
	9850 3350 9850 3800
Wire Wire Line
	9850 3800 9700 3800
Connection ~ 9700 3800
Wire Wire Line
	10200 3250 9850 3250
Wire Wire Line
	9850 3250 9850 3100
Wire Wire Line
	9850 3100 9700 3100
Wire Bus Line
	2750 4200 2750 4750
Wire Bus Line
	4600 1200 7100 1200
Wire Bus Line
	4800 1400 6900 1400
Wire Bus Line
	2250 3000 2250 4750
Wire Bus Line
	2350 4850 4600 4850
Wire Bus Line
	4350 4200 4350 4750
Wire Bus Line
	7000 1500 7000 4850
Wire Bus Line
	5000 1500 5000 4850
Wire Bus Line
	4500 1300 4500 3200
Wire Bus Line
	5200 1300 5200 4600
Wire Bus Line
	7200 1300 7200 4600
Connection ~ 9700 3100
$EndSCHEMATC
