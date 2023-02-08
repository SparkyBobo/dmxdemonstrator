EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 20
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS161 U?
U 1 1 63512600
P 5350 2350
AR Path="/62477DE1/63512600" Ref="U?"  Part="1" 
AR Path="/634CB45A/63512600" Ref="U?"  Part="1" 
F 0 "U?" H 5450 3100 50  0000 C CNN
F 1 "74LS163" H 5550 3000 50  0000 C CNN
F 2 "" H 5350 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5350 2350 50  0001 C CNN
	1    5350 2350
	1    0    0    -1  
$EndComp
$Comp
L dk_Logic-Shift-Registers:SN74HC164N U?
U 1 1 63512610
P 3550 5000
AR Path="/62477DE1/63512610" Ref="U?"  Part="1" 
AR Path="/634CB45A/63512610" Ref="U?"  Part="1" 
F 0 "U?" H 3700 5650 60  0000 C CNN
F 1 "74LS164" H 3800 5550 60  0000 C CNN
F 2 "digikey-footprints:DIP-14_W3mm" H 3750 5200 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc164" H 3750 5300 60  0001 L CNN
F 4 "296-8248-5-ND" H 3750 5400 60  0001 L CNN "Digi-Key_PN"
F 5 "SN74HC164N" H 3750 5500 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3750 5600 60  0001 L CNN "Category"
F 7 "Logic - Shift Registers" H 3750 5700 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc164" H 3750 5800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/SN74HC164N/296-8248-5-ND/376946" H 3750 5900 60  0001 L CNN "DK_Detail_Page"
F 10 "IC 8-BIT SHIFT REGISTER 14-DIP" H 3750 6000 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3750 6100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3750 6200 60  0001 L CNN "Status"
	1    3550 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U?
U 3 1 63512617
P 8650 2250
AR Path="/62477DE1/63512617" Ref="U?"  Part="3" 
AR Path="/634CB45A/63512617" Ref="U?"  Part="3" 
F 0 "U?" H 8650 2575 50  0000 C CNN
F 1 "74LS10" H 8650 2484 50  0000 C CNN
F 2 "" H 8650 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 8650 2250 50  0001 C CNN
	3    8650 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U?
U 2 1 6351263A
P 6500 1950
AR Path="/62477DE1/6351263A" Ref="U?"  Part="2" 
AR Path="/634CB45A/6351263A" Ref="U?"  Part="2" 
F 0 "U?" H 6500 2275 50  0000 C CNN
F 1 "74LS10" H 6500 2184 50  0000 C CNN
F 2 "" H 6500 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6500 1950 50  0001 C CNN
	2    6500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2350 4850 2350
Wire Wire Line
	4850 2150 4650 2150
Wire Wire Line
	4650 2050 4850 2050
$Comp
L power:GND #PWR?
U 1 1 63512666
P 4650 2200
AR Path="/62477DE1/63512666" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63512666" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 1950 50  0001 C CNN
F 1 "GND" H 4655 2027 50  0000 C CNN
F 2 "" H 4650 2200 50  0001 C CNN
F 3 "" H 4650 2200 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6351266C
P 4550 1650
AR Path="/62477DE1/6351266C" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/6351266C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 1500 50  0001 C CNN
F 1 "+5V" H 4565 1823 50  0000 C CNN
F 2 "" H 4550 1650 50  0001 C CNN
F 3 "" H 4550 1650 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63512673
P 5350 1550
AR Path="/62477DE1/63512673" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63512673" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 1400 50  0001 C CNN
F 1 "+5V" H 5365 1723 50  0000 C CNN
F 2 "" H 5350 1550 50  0001 C CNN
F 3 "" H 5350 1550 50  0001 C CNN
	1    5350 1550
	1    0    0    -1  
$EndComp
NoConn ~ 5850 2350
Wire Wire Line
	3250 4900 3200 4900
Wire Wire Line
	3200 4900 3200 4350
Wire Wire Line
	3200 4350 3550 4350
Wire Wire Line
	3550 4350 3550 4400
Wire Wire Line
	3550 4300 3550 4350
Connection ~ 3550 4350
$Comp
L power:+5V #PWR?
U 1 1 63512685
P 3550 4300
AR Path="/62477DE1/63512685" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63512685" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 4150 50  0001 C CNN
F 1 "+5V" H 3565 4473 50  0000 C CNN
F 2 "" H 3550 4300 50  0001 C CNN
F 3 "" H 3550 4300 50  0001 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6351268B
P 5350 3150
AR Path="/62477DE1/6351268B" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/6351268B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 2900 50  0001 C CNN
F 1 "GND" H 5355 2977 50  0000 C CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63512691
P 3550 5500
AR Path="/62477DE1/63512691" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63512691" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 5250 50  0001 C CNN
F 1 "GND" H 3555 5327 50  0000 C CNN
F 2 "" H 3550 5500 50  0001 C CNN
F 3 "" H 3550 5500 50  0001 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4600 4100 4600
Entry Wire Line
	4100 4600 4200 4500
Entry Wire Line
	4100 4700 4200 4600
Entry Wire Line
	4100 4800 4200 4700
Entry Wire Line
	4100 4900 4200 4800
Entry Wire Line
	4100 5000 4200 4900
Entry Wire Line
	4100 5100 4200 5000
Entry Wire Line
	4100 5200 4200 5100
Wire Wire Line
	3950 4700 4100 4700
Wire Wire Line
	3950 4800 4100 4800
Wire Wire Line
	3950 4900 4100 4900
Wire Wire Line
	3950 5000 4100 5000
Wire Wire Line
	3950 5100 4100 5100
Wire Wire Line
	3950 5200 4100 5200
Entry Wire Line
	8200 2250 8100 2350
Entry Wire Line
	8200 2350 8100 2450
Entry Bus Bus
	4200 4050 4300 3950
Text Label 3950 5200 0    50   ~ 0
SD0
Text Label 3950 5100 0    50   ~ 0
SD1
Text Label 3950 5000 0    50   ~ 0
SD2
Text Label 3950 4900 0    50   ~ 0
SD3
Text Label 3950 4800 0    50   ~ 0
SD4
Text Label 3950 4700 0    50   ~ 0
SB5
Text Label 3950 4600 0    50   ~ 0
SD6
Wire Wire Line
	4650 2050 4650 2150
Connection ~ 4650 2150
Wire Wire Line
	4650 2150 4650 2200
Wire Wire Line
	8350 2250 8200 2250
Wire Wire Line
	8350 2350 8200 2350
Text Label 8350 2250 2    50   ~ 0
SD6
Text Label 8350 2350 2    50   ~ 0
SD7
Text Notes 3750 5600 0    50   ~ 0
Serial Shift \nRegister\n
Text Notes 8350 1800 0    50   ~ 0
Stop Bit Detector
Entry Wire Line
	8100 4950 8200 5050
Entry Wire Line
	8100 4850 8200 4950
Entry Wire Line
	8100 4750 8200 4850
Entry Wire Line
	8100 4650 8200 4750
Entry Wire Line
	8100 4550 8200 4650
Entry Wire Line
	8100 4450 8200 4550
Entry Wire Line
	8100 4350 8200 4450
Wire Wire Line
	8200 5050 8300 5050
Wire Wire Line
	8200 4950 8300 4950
Wire Wire Line
	8200 4850 8300 4850
Wire Wire Line
	8200 4750 8300 4750
Wire Wire Line
	8200 4650 8300 4650
Wire Wire Line
	8200 4550 8300 4550
Wire Wire Line
	8200 4450 8300 4450
Entry Wire Line
	9400 4450 9500 4350
Entry Wire Line
	9400 4550 9500 4450
Entry Wire Line
	9400 4650 9500 4550
Entry Wire Line
	9400 4750 9500 4650
Entry Wire Line
	9400 4850 9500 4750
Entry Wire Line
	9400 4950 9500 4850
Entry Wire Line
	9400 5050 9500 4950
Entry Wire Line
	9400 5150 9500 5050
Wire Wire Line
	9300 4450 9400 4450
Wire Wire Line
	9400 4550 9300 4550
Wire Wire Line
	9300 4650 9400 4650
Wire Wire Line
	9400 4750 9300 4750
Wire Wire Line
	9300 4850 9400 4850
Wire Wire Line
	9400 4950 9300 4950
Wire Wire Line
	9300 5050 9400 5050
Wire Wire Line
	9400 5150 9300 5150
$Comp
L power:+5V #PWR?
U 1 1 6351271E
P 8800 4150
AR Path="/6351271E" Ref="#PWR?"  Part="1" 
AR Path="/62477DE1/6351271E" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/6351271E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8800 4000 50  0001 C CNN
F 1 "+5V" H 8815 4323 50  0000 C CNN
F 2 "" H 8800 4150 50  0001 C CNN
F 3 "" H 8800 4150 50  0001 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
Text Label 9300 4450 0    50   ~ 0
D0
Text Label 9300 4550 0    50   ~ 0
D1
Text Label 9300 4650 0    50   ~ 0
D2
Text Label 9300 4750 0    50   ~ 0
D3
Text Label 9300 4850 0    50   ~ 0
D4
Text Label 9300 4950 0    50   ~ 0
D5
Text Label 9300 5050 0    50   ~ 0
D6
Text Label 9300 5150 0    50   ~ 0
D7
Text Label 8200 4450 0    50   ~ 0
SD0
Text Label 8200 4550 0    50   ~ 0
SD1
Text Label 8200 4650 0    50   ~ 0
SD2
Text Label 8200 4750 0    50   ~ 0
SD3
Text Label 8200 4850 0    50   ~ 0
SD4
Text Label 8200 4950 0    50   ~ 0
SD5
Text Label 8200 5050 0    50   ~ 0
SD6
Text Label 8200 5150 0    50   ~ 0
SD7
$Comp
L power:GND #PWR?
U 1 1 63512740
P 8800 5750
AR Path="/62477DE1/63512740" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63512740" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8800 5500 50  0001 C CNN
F 1 "GND" H 8805 5577 50  0000 C CNN
F 2 "" H 8800 5750 50  0001 C CNN
F 3 "" H 8800 5750 50  0001 C CNN
	1    8800 5750
	1    0    0    -1  
$EndComp
Entry Bus Bus
	9500 4250 9600 4150
Wire Wire Line
	8300 5450 8200 5450
Text HLabel 1800 3950 0    50   Input ~ 0
DATA_RX_IN
Text HLabel 1800 3750 0    50   Input ~ 0
CLK_BIT_IN
Text HLabel 9800 4150 2    50   Input ~ 0
D[0..7]
Wire Wire Line
	4650 2650 4850 2650
Connection ~ 2000 3750
Wire Wire Line
	4550 2450 4850 2450
Wire Wire Line
	4550 2850 4550 2450
Connection ~ 4550 2450
Wire Wire Line
	4550 2850 4850 2850
Text HLabel 9750 2250 2    50   Input ~ 0
~BYTE_VALID_OUT
Wire Wire Line
	3200 4900 3200 5100
Connection ~ 3200 4900
Wire Wire Line
	3200 5100 3250 5100
$Comp
L power:+5V #PWR?
U 1 1 6377E305
P 2650 2650
AR Path="/62477DE1/6377E305" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/6377E305" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 2500 50  0001 C CNN
F 1 "+5V" H 2665 2823 50  0000 C CNN
F 2 "" H 2650 2650 50  0001 C CNN
F 3 "" H 2650 2650 50  0001 C CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1650 4550 1850
Wire Wire Line
	4550 1850 4850 1850
Wire Wire Line
	4850 1950 4550 1950
Wire Wire Line
	3250 4800 2150 4800
Wire Bus Line
	4300 3950 8000 3950
Text Notes 8350 2700 0    50   ~ 0
SD7 and SD6 will hold the 2 most recent\nbits from the serial line, which should be\nthe two stop bits.
Text HLabel 1800 6150 0    50   Input ~ 0
~BUS_REQUEST_IN
Text HLabel 9800 6150 2    50   Input ~ 0
~BUS_ACK_OUT
$Comp
L 74xx:74LS04 U?
U 2 1 636D54E9
P 9450 6150
AR Path="/62477DE1/636D54E9" Ref="U?"  Part="2" 
AR Path="/634CB45A/636D54E9" Ref="U?"  Part="2" 
F 0 "U?" H 9450 6467 50  0000 C CNN
F 1 "74LS04" H 9450 6376 50  0000 C CNN
F 2 "" H 9450 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9450 6150 50  0001 C CNN
	2    9450 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 636D5529
P 3000 6150
AR Path="/62477DE1/636D5529" Ref="U?"  Part="2" 
AR Path="/634CB45A/636D5529" Ref="U?"  Part="2" 
F 0 "U?" H 3000 6467 50  0000 C CNN
F 1 "74LS04" H 3000 6376 50  0000 C CNN
F 2 "" H 3000 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3000 6150 50  0001 C CNN
	2    3000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 6150 9750 6150
Wire Wire Line
	8200 5450 8200 6150
$Comp
L power:+5V #PWR?
U 1 1 636E59EE
P 2450 5700
AR Path="/62477DE1/636E59EE" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/636E59EE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 5550 50  0001 C CNN
F 1 "+5V" H 2465 5873 50  0000 C CNN
F 2 "" H 2450 5700 50  0001 C CNN
F 3 "" H 2450 5700 50  0001 C CNN
	1    2450 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 636E5A26
P 2450 5900
F 0 "R?" H 2518 5946 50  0000 L CNN
F 1 "10k" H 2518 5855 50  0000 L CNN
F 2 "" V 2490 5890 50  0001 C CNN
F 3 "~" H 2450 5900 50  0001 C CNN
	1    2450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6050 2450 6150
Wire Wire Line
	2450 5750 2450 5700
Connection ~ 2450 6150
Wire Wire Line
	2450 6150 2700 6150
Wire Wire Line
	1800 6150 2450 6150
Text HLabel 9750 3800 2    50   Input ~ 0
BYTE_LATCH_OUT
Text HLabel 1800 1400 0    50   Input ~ 0
~FRAME_RESET_IN
$Comp
L 74xx:74LS74 U?
U 2 1 6350DD73
P 3850 2450
AR Path="/6353FBDA/6350DD73" Ref="U?"  Part="2" 
AR Path="/634CB45A/6350DD73" Ref="U?"  Part="2" 
F 0 "U?" H 4000 2800 50  0000 C CNN
F 1 "74LS74" H 4050 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3850 2450 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3850 2450 50  0001 C CNN
	2    3850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2750 3850 2950
Wire Wire Line
	3500 2350 3550 2350
Wire Wire Line
	4150 2350 4200 2350
Wire Wire Line
	4200 2350 4200 2000
Wire Wire Line
	4200 2000 3500 2000
Wire Wire Line
	3500 2000 3500 2350
Entry Wire Line
	4100 3950 4200 4050
Text Label 3950 3950 0    50   ~ 0
SD7
Entry Wire Line
	8100 5050 8200 5150
Wire Wire Line
	8300 5150 8200 5150
Wire Wire Line
	4100 3950 2150 3950
Wire Wire Line
	2350 3050 2000 3050
Wire Wire Line
	2650 3350 2650 3400
Wire Wire Line
	2650 3400 2300 3400
Wire Wire Line
	2300 3400 2300 2700
Wire Wire Line
	2300 2700 2650 2700
Wire Wire Line
	2650 2700 2650 2750
Wire Wire Line
	2650 2700 2650 2650
Connection ~ 2650 2700
Wire Wire Line
	3500 2450 3550 2450
Wire Wire Line
	3850 1300 3850 2150
Wire Wire Line
	2000 3750 3500 3750
Wire Wire Line
	4650 2650 4650 3750
Wire Wire Line
	3500 3750 3500 2450
Wire Wire Line
	4750 2350 4750 1300
Text Notes 2850 2300 0    50   ~ 0
Latch the reset\npulse from the\nDATA_RX start\nbit to enable \nthe counter.
$Comp
L 74xx:74LS08 U?
U 1 1 63AA341A
P 3450 1300
F 0 "U?" H 3450 1625 50  0000 C CNN
F 1 "74LS08" H 3450 1534 50  0000 C CNN
F 2 "" H 3450 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3450 1300 50  0001 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1200 3000 1200
Wire Wire Line
	3000 1200 3000 850 
Text Notes 2300 1250 0    50   ~ 0
Create a reset\npulse from the\nFRAME_RESET\nand the counter's\nBYTE_RECEIVED.
Text Notes 2550 4650 0    50   ~ 0
Shift the date\nfrom DATA_RX\nto capture all \n8 bits of data.\n
Wire Wire Line
	2150 2950 2350 2950
Wire Wire Line
	4150 2550 4850 2550
Wire Wire Line
	2000 5000 3250 5000
Wire Wire Line
	1800 3750 2000 3750
Connection ~ 2150 3950
NoConn ~ 3950 5300
Entry Bus Bus
	8000 3950 8100 4050
Wire Wire Line
	2000 3050 2000 3750
Text Notes 1950 2700 0    50   ~ 0
Create a reset\npulse from the\nDATA_RX start\nbit.
Wire Wire Line
	2150 2950 2150 3950
$Comp
L 74xx:74LS74 U?
U 1 1 6354ACFA
P 2650 3050
AR Path="/6353FBDA/6354ACFA" Ref="U?"  Part="1" 
AR Path="/634CB45A/6354ACFA" Ref="U?"  Part="1" 
F 0 "U?" H 2800 3400 50  0000 C CNN
F 1 "74LS74" H 2850 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2650 3050 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2650 3050 50  0001 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2950 3850 2950
Connection ~ 3500 3750
Wire Wire Line
	3500 3750 4650 3750
Wire Wire Line
	1800 1400 3150 1400
Wire Wire Line
	3750 1300 3850 1300
Wire Wire Line
	3850 1300 4750 1300
Connection ~ 3850 1300
$Comp
L 74xx:74LS10 U?
U 1 1 63D15BE3
P 6500 2600
F 0 "U?" H 6500 2925 50  0000 C CNN
F 1 "74LS10" H 6500 2834 50  0000 C CNN
F 2 "" H 6500 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Connection ~ 4550 1850
Wire Wire Line
	4550 1850 4550 1950
Connection ~ 4550 1950
Wire Wire Line
	4550 1950 4550 2450
$Comp
L power:+5V #PWR?
U 1 1 63D266A2
P 7600 5050
AR Path="/62477DE1/63D266A2" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63D266A2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 4900 50  0001 C CNN
F 1 "+5V" H 7615 5223 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5750 7600 5800
Wire Wire Line
	7600 5800 7250 5800
Wire Wire Line
	7250 5800 7250 5100
Wire Wire Line
	7250 5100 7600 5100
Wire Wire Line
	7600 5100 7600 5150
Wire Wire Line
	7600 5100 7600 5050
Connection ~ 7600 5100
NoConn ~ 7900 5550
Wire Wire Line
	6900 5350 7300 5350
Text Notes 7300 4800 0    50   ~ 0
Create a clock\npulse from the\nshift counter\noutput.
Wire Wire Line
	7900 5350 7950 5350
Wire Wire Line
	7000 5450 7000 3750
Wire Wire Line
	7000 3750 4650 3750
Wire Wire Line
	7000 5450 7300 5450
Connection ~ 4650 3750
Wire Wire Line
	5950 1850 5950 2500
Wire Wire Line
	6150 1950 6150 2150
Wire Wire Line
	5850 1850 5950 1850
Connection ~ 5950 1850
Wire Wire Line
	5950 1850 6200 1850
Wire Wire Line
	6200 2500 5950 2500
Wire Wire Line
	6050 1950 6050 2700
Wire Wire Line
	6200 2050 5850 2050
Wire Wire Line
	6050 1950 5850 1950
Wire Wire Line
	6150 1950 6200 1950
Wire Wire Line
	6150 2600 6200 2600
Wire Wire Line
	6050 2700 6200 2700
Wire Wire Line
	5850 2150 6150 2150
Connection ~ 6150 2150
Wire Wire Line
	6150 2150 6150 2600
Wire Wire Line
	6900 2600 6800 2600
Wire Wire Line
	6900 2600 6900 5350
Connection ~ 8200 6150
Wire Wire Line
	8200 6150 9150 6150
Wire Bus Line
	9600 4150 9800 4150
Wire Wire Line
	3300 6150 8200 6150
Wire Wire Line
	8950 2250 9750 2250
Wire Wire Line
	7950 5350 8300 5350
Wire Wire Line
	7950 3800 9750 3800
Wire Wire Line
	7950 3800 7950 5350
$Comp
L power:+5V #PWR?
U 1 1 63E8DCDF
P 7600 1650
AR Path="/62477DE1/63E8DCDF" Ref="#PWR?"  Part="1" 
AR Path="/634CB45A/63E8DCDF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 1500 50  0001 C CNN
F 1 "+5V" H 7615 1823 50  0000 C CNN
F 2 "" H 7600 1650 50  0001 C CNN
F 3 "" H 7600 1650 50  0001 C CNN
	1    7600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2350 7600 2400
Wire Wire Line
	7600 2400 7250 2400
Wire Wire Line
	7250 2400 7250 1700
Wire Wire Line
	7250 1700 7600 1700
Wire Wire Line
	7600 1700 7600 1750
Wire Wire Line
	7600 1700 7600 1650
Connection ~ 7600 1700
NoConn ~ 7900 1950
$Comp
L 74xx:74LS74 U?
U 1 1 63E8DCEE
P 7600 2050
AR Path="/6353FBDA/63E8DCEE" Ref="U?"  Part="1" 
AR Path="/634CB45A/63E8DCEE" Ref="U?"  Part="1" 
F 0 "U?" H 7750 2400 50  0000 C CNN
F 1 "74LS74" H 7800 2300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7600 2050 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 7600 2050 50  0001 C CNN
	1    7600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2150 8100 2150
Wire Wire Line
	7000 2050 7300 2050
Wire Wire Line
	7000 2050 7000 3750
Connection ~ 7000 3750
Text Notes 7250 1400 0    50   ~ 0
Create a latch\npulse from the\nshift counter\noutput.
Wire Wire Line
	2150 3950 2150 4800
Wire Wire Line
	1800 3950 2150 3950
Wire Wire Line
	2000 5000 2000 3750
NoConn ~ 2950 3150
Wire Wire Line
	8100 850  8100 2150
Connection ~ 8100 2150
Wire Wire Line
	8100 2150 8350 2150
Wire Wire Line
	3000 850  8100 850 
Wire Wire Line
	6800 1950 7300 1950
$Comp
L 74xx:74LS374 U?
U 1 1 63F08126
P 8800 4950
F 0 "U?" H 9000 5700 50  0000 C CNN
F 1 "74LS374" H 9000 5600 50  0000 C CNN
F 2 "" H 8800 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 8800 4950 50  0001 C CNN
	1    8800 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U?
U 1 1 63D266B4
P 7600 5450
AR Path="/6353FBDA/63D266B4" Ref="U?"  Part="1" 
AR Path="/634CB45A/63D266B4" Ref="U?"  Part="1" 
F 0 "U?" H 7750 5800 50  0000 C CNN
F 1 "74LS74" H 7800 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7600 5450 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 7600 5450 50  0001 C CNN
	1    7600 5450
	1    0    0    -1  
$EndComp
Connection ~ 7950 5350
Wire Bus Line
	4200 4050 4200 5100
Wire Bus Line
	9500 4250 9500 5050
Wire Bus Line
	8100 2350 8100 5050
$EndSCHEMATC
