EESchema Schematic File Version 4
LIBS:display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L Device:R_US R?
U 1 1 6421B5E9
P 9300 4850
AR Path="/6BB77683/6421B5E9" Ref="R?"  Part="1" 
AR Path="/6421B5E9" Ref="R?"  Part="1" 
AR Path="/64132440/6413313B/6421B5E9" Ref="R?"  Part="1" 
AR Path="/6415E609/6421B5E9" Ref="R?"  Part="1" 
F 0 "R?" V 9095 4850 50  0000 C CNN
F 1 "330" V 9186 4850 50  0000 C CNN
F 2 "" V 9340 4840 50  0001 C CNN
F 3 "~" H 9300 4850 50  0001 C CNN
	1    9300 4850
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6421B5F0
P 8950 4850
AR Path="/6BB77683/6421B5F0" Ref="D?"  Part="1" 
AR Path="/6421B5F0" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/6421B5F0" Ref="D?"  Part="1" 
AR Path="/6415E609/6421B5F0" Ref="D?"  Part="1" 
F 0 "D?" H 8942 5066 50  0000 C CNN
F 1 "CLOCK" H 8942 4975 50  0000 C CNN
F 2 "" H 8950 4850 50  0001 C CNN
F 3 "~" H 8950 4850 50  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4850 9150 4850
Wire Wire Line
	9550 4850 9450 4850
$Comp
L Device:R_US R?
U 1 1 6421B5F9
P 9300 5200
AR Path="/6BB77683/6421B5F9" Ref="R?"  Part="1" 
AR Path="/6421B5F9" Ref="R?"  Part="1" 
AR Path="/64132440/6413313B/6421B5F9" Ref="R?"  Part="1" 
AR Path="/6415E609/6421B5F9" Ref="R?"  Part="1" 
F 0 "R?" V 9095 5200 50  0000 C CNN
F 1 "330" V 9186 5200 50  0000 C CNN
F 2 "" V 9340 5190 50  0001 C CNN
F 3 "~" H 9300 5200 50  0001 C CNN
	1    9300 5200
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6421B600
P 8950 5550
AR Path="/6BB77683/6421B600" Ref="D?"  Part="1" 
AR Path="/6421B600" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/6421B600" Ref="D?"  Part="1" 
AR Path="/6415E609/6421B600" Ref="D?"  Part="1" 
F 0 "D?" H 8942 5766 50  0000 C CNN
F 1 "???" H 8942 5675 50  0000 C CNN
F 2 "" H 8950 5550 50  0001 C CNN
F 3 "~" H 8950 5550 50  0001 C CNN
	1    8950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5200 9550 4850
Wire Wire Line
	9100 5200 9150 5200
Wire Wire Line
	9450 5200 9550 5200
$Comp
L power:+5V #PWR?
U 1 1 6421B60A
P 9550 4700
AR Path="/6841E790/6421B60A" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6421B60A" Ref="#PWR?"  Part="1" 
AR Path="/6421B60A" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313B/6421B60A" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6421B60A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9550 4550 50  0001 C CNN
F 1 "+5V" H 9565 4873 50  0000 C CNN
F 2 "" H 9550 4700 50  0001 C CNN
F 3 "" H 9550 4700 50  0001 C CNN
	1    9550 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9550 4700 9550 4850
Connection ~ 9550 4850
$Comp
L Transistor_Array:ULN2803A U?
U 1 1 6421B614
P 7600 5300
AR Path="/6421B614" Ref="U?"  Part="1" 
AR Path="/6415E609/6421B614" Ref="U?"  Part="1" 
F 0 "U?" H 7600 5867 50  0000 C CNN
F 1 "ULN2803A" H 7600 5776 50  0000 C CNN
F 2 "" H 7650 4650 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 7700 5100 50  0001 C CNN
	1    7600 5300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U?
U 1 1 6421B61B
P -3700 6550
AR Path="/6BB77683/6421B61B" Ref="U?"  Part="1" 
AR Path="/64132440/6413313B/6421B61B" Ref="U?"  Part="1" 
AR Path="/6421B61B" Ref="U?"  Part="1" 
AR Path="/6415E609/6421B61B" Ref="U?"  Part="1" 
F 0 "U?" H -3700 6917 50  0000 C CNN
F 1 "74LS139" H -3700 6826 50  0000 C CNN
F 2 "" H -3700 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H -3700 6550 50  0001 C CNN
	1    -3700 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1850 7000 -1750 7000
Wire Wire Line
	-1750 7000 -1750 6900
$Comp
L Device:LED_Small D?
U 1 1 6421B625
P -2500 6300
AR Path="/6841E790/5F2B4C18/6421B625" Ref="D?"  Part="1" 
AR Path="/6A2CE0CE/6421B625" Ref="D?"  Part="1" 
AR Path="/6F1F2B46/6421B625" Ref="D?"  Part="1" 
AR Path="/6BB77683/6421B625" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/6421B625" Ref="D?"  Part="1" 
AR Path="/6421B625" Ref="D?"  Part="1" 
AR Path="/6415E609/6421B625" Ref="D?"  Part="1" 
F 0 "D?" H -2600 6450 50  0000 C CNN
F 1 "DMX" H -2650 6350 50  0000 C CNN
F 2 "" V -2500 6300 50  0001 C CNN
F 3 "~" V -2500 6300 50  0001 C CNN
	1    -2500 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6421B62C
P -2500 6500
AR Path="/6841E790/5F2B4C18/6421B62C" Ref="D?"  Part="1" 
AR Path="/6A2CE0CE/6421B62C" Ref="D?"  Part="1" 
AR Path="/6F1F2B46/6421B62C" Ref="D?"  Part="1" 
AR Path="/6BB77683/6421B62C" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/6421B62C" Ref="D?"  Part="1" 
AR Path="/6421B62C" Ref="D?"  Part="1" 
AR Path="/6415E609/6421B62C" Ref="D?"  Part="1" 
F 0 "D?" H -2600 6650 50  0000 C CNN
F 1 "FAST" H -2650 6550 50  0000 C CNN
F 2 "" V -2500 6500 50  0001 C CNN
F 3 "~" V -2500 6500 50  0001 C CNN
	1    -2500 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6421B633
P -2500 6700
AR Path="/6841E790/5F2B4C18/6421B633" Ref="D?"  Part="1" 
AR Path="/6A2CE0CE/6421B633" Ref="D?"  Part="1" 
AR Path="/6F1F2B46/6421B633" Ref="D?"  Part="1" 
AR Path="/6BB77683/6421B633" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/6421B633" Ref="D?"  Part="1" 
AR Path="/6421B633" Ref="D?"  Part="1" 
AR Path="/6415E609/6421B633" Ref="D?"  Part="1" 
F 0 "D?" H -2600 6850 50  0000 C CNN
F 1 "SLOW" H -2650 6750 50  0000 C CNN
F 2 "" V -2500 6700 50  0001 C CNN
F 3 "~" V -2500 6700 50  0001 C CNN
	1    -2500 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6421B63A
P -2500 6900
AR Path="/6841E790/5F2B4C18/6421B63A" Ref="D?"  Part="1" 
AR Path="/6A2CE0CE/6421B63A" Ref="D?"  Part="1" 
AR Path="/6F1F2B46/6421B63A" Ref="D?"  Part="1" 
AR Path="/6BB77683/6421B63A" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/6421B63A" Ref="D?"  Part="1" 
AR Path="/6421B63A" Ref="D?"  Part="1" 
AR Path="/6415E609/6421B63A" Ref="D?"  Part="1" 
F 0 "D?" H -2600 7050 50  0000 C CNN
F 1 "ADJ" H -2650 6950 50  0000 C CNN
F 2 "" V -2500 6900 50  0001 C CNN
F 3 "~" V -2500 6900 50  0001 C CNN
	1    -2500 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network08_US RN?
U 1 1 6421B641
P -2050 6600
AR Path="/6841E790/5F2B4C18/6421B641" Ref="RN?"  Part="1" 
AR Path="/6A2CE0CE/6421B641" Ref="RN?"  Part="1" 
AR Path="/6F1F2B46/6421B641" Ref="RN?"  Part="1" 
AR Path="/6BB77683/6421B641" Ref="RN?"  Part="1" 
AR Path="/64132440/6413313B/6421B641" Ref="RN?"  Part="1" 
AR Path="/6421B641" Ref="RN?"  Part="1" 
AR Path="/6415E609/6421B641" Ref="RN?"  Part="1" 
F 0 "RN?" V -1550 6600 50  0000 C CNN
F 1 "330" V -1650 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V -1575 6600 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H -2050 6600 50  0001 C CNN
	1    -2050 6600
	0    1    -1   0   
$EndComp
Wire Wire Line
	-2250 6300 -2400 6300
Wire Wire Line
	-2250 6500 -2400 6500
Wire Wire Line
	-2250 6700 -2400 6700
Wire Wire Line
	-2250 6900 -2400 6900
Wire Wire Line
	-3200 6550 -3000 6550
Wire Wire Line
	-3000 6550 -3000 6500
Wire Wire Line
	-3000 6500 -2600 6500
Wire Wire Line
	-3200 6650 -3000 6650
Wire Wire Line
	-3000 6650 -3000 6700
Wire Wire Line
	-3000 6700 -2600 6700
Wire Wire Line
	-3200 6450 -3100 6450
Wire Wire Line
	-3100 6450 -3100 6300
Wire Wire Line
	-3100 6300 -2600 6300
Text Notes -3950 5900 0    50   ~ 0
Clock Speed Display
NoConn ~ -2250 6400
NoConn ~ -2250 6600
NoConn ~ -2250 6800
NoConn ~ -2250 7000
$Comp
L power:+5V #PWR?
U 1 1 6421B65A
P -1750 6900
AR Path="/6841E790/6421B65A" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6421B65A" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313B/6421B65A" Ref="#PWR?"  Part="1" 
AR Path="/6421B65A" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6421B65A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1750 6750 50  0001 C CNN
F 1 "+5V" H -1735 7073 50  0000 C CNN
F 2 "" H -1750 6900 50  0001 C CNN
F 3 "" H -1750 6900 50  0001 C CNN
	1    -1750 6900
	-1   0    0    -1  
$EndComp
Text HLabel -4500 6550 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel -4500 6450 0    50   Input ~ 0
~CLK_SLOW_IN
Wire Wire Line
	-4500 6550 -4200 6550
Wire Wire Line
	-4500 6450 -4200 6450
$Comp
L Device:R_US R?
U 1 1 642A89E9
P 9300 5550
AR Path="/6BB77683/642A89E9" Ref="R?"  Part="1" 
AR Path="/642A89E9" Ref="R?"  Part="1" 
AR Path="/64132440/6413313B/642A89E9" Ref="R?"  Part="1" 
AR Path="/6415E609/642A89E9" Ref="R?"  Part="1" 
F 0 "R?" V 9095 5550 50  0000 C CNN
F 1 "330" V 9186 5550 50  0000 C CNN
F 2 "" V 9340 5540 50  0001 C CNN
F 3 "~" H 9300 5550 50  0001 C CNN
	1    9300 5550
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 642A89F0
P 8950 5200
AR Path="/6BB77683/642A89F0" Ref="D?"  Part="1" 
AR Path="/642A89F0" Ref="D?"  Part="1" 
AR Path="/64132440/6413313B/642A89F0" Ref="D?"  Part="1" 
AR Path="/6415E609/642A89F0" Ref="D?"  Part="1" 
F 0 "D?" H 8942 5416 50  0000 C CNN
F 1 "FRAME_RESET" H 8942 5325 50  0000 C CNN
F 2 "" H 8950 5200 50  0001 C CNN
F 3 "~" H 8950 5200 50  0001 C CNN
	1    8950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5550 9150 5550
Wire Wire Line
	9550 5550 9450 5550
Wire Wire Line
	9550 5200 9550 5550
Wire Wire Line
	-3100 900  -3100 950 
Wire Wire Line
	-5100 900  -5250 900 
Entry Wire Line
	-5350 800  -5250 900 
Wire Wire Line
	-5100 1000 -5250 1000
Entry Wire Line
	-5350 900  -5250 1000
Wire Wire Line
	-5100 1100 -5250 1100
Entry Wire Line
	-5350 1000 -5250 1100
Wire Wire Line
	-5100 1200 -5250 1200
Entry Wire Line
	-5350 1100 -5250 1200
Wire Wire Line
	-5100 1300 -5250 1300
Entry Wire Line
	-5350 1200 -5250 1300
Wire Wire Line
	-5100 1400 -5250 1400
Entry Wire Line
	-5350 1300 -5250 1400
Wire Wire Line
	-5100 1500 -5250 1500
Entry Wire Line
	-5350 1400 -5250 1500
Wire Wire Line
	-5100 1600 -5250 1600
Entry Wire Line
	-5350 1500 -5250 1600
Text Label -5250 900  0    50   ~ 0
D0
Text Label -5250 1000 0    50   ~ 0
D1
Text Label -5250 1100 0    50   ~ 0
D2
Text Label -5250 1200 0    50   ~ 0
D3
Text Label -5250 1300 0    50   ~ 0
D4
Text Label -5250 1400 0    50   ~ 0
D5
Text Label -5250 1500 0    50   ~ 0
D6
Text Label -5250 1600 0    50   ~ 0
D7
$Comp
L LED:HDSP-4830_2 BAR?
U 1 1 64361862
P -3850 1300
AR Path="/6841E790/5F2B4C18/64361862" Ref="BAR?"  Part="1" 
AR Path="/6A2CE0CE/64361862" Ref="BAR?"  Part="1" 
AR Path="/6F1F2B46/64361862" Ref="BAR?"  Part="1" 
AR Path="/6BB77683/64361862" Ref="BAR?"  Part="1" 
AR Path="/64132440/6413313B/64361862" Ref="BAR?"  Part="1" 
AR Path="/64361862" Ref="BAR?"  Part="1" 
AR Path="/6415E55D/64361862" Ref="BAR?"  Part="1" 
AR Path="/6415E5B3/64361862" Ref="BAR?"  Part="1" 
AR Path="/6415E609/64361862" Ref="BAR?"  Part="1" 
F 0 "BAR?" H -4050 1850 50  0000 L CNN
F 1 "LED" H -3800 1850 50  0000 L CNN
F 2 "Display:HDSP-4830" H -3850 500 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H -5850 1500 50  0001 C CNN
	1    -3850 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	-3000 1800 -2950 1800
Wire Wire Line
	-2950 1800 -2950 1650
NoConn ~ -4100 1700
Wire Wire Line
	-4050 1700 -4100 1700
$Comp
L power:+5V #PWR?
U 1 1 6436186D
P -2950 1650
AR Path="/6841E790/6436186D" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6436186D" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313B/6436186D" Ref="#PWR?"  Part="1" 
AR Path="/6436186D" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6436186D" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6436186D" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6436186D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -2950 1500 50  0001 C CNN
F 1 "+5V" H -2935 1823 50  0000 C CNN
F 2 "" H -2950 1650 50  0001 C CNN
F 3 "" H -2950 1650 50  0001 C CNN
	1    -2950 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Network10_US RN?
U 1 1 64361873
P -3200 1300
AR Path="/6841E790/5F2B4C18/64361873" Ref="RN?"  Part="1" 
AR Path="/6A2CE0CE/64361873" Ref="RN?"  Part="1" 
AR Path="/6F1F2B46/64361873" Ref="RN?"  Part="1" 
AR Path="/6BB77683/64361873" Ref="RN?"  Part="1" 
AR Path="/64132440/6413313B/64361873" Ref="RN?"  Part="1" 
AR Path="/64361873" Ref="RN?"  Part="1" 
AR Path="/6415E55D/64361873" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/64361873" Ref="RN?"  Part="1" 
AR Path="/6415E609/64361873" Ref="RN?"  Part="1" 
F 0 "RN?" V -3850 1300 50  0000 R CNN
F 1 "330" V -3850 1500 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP11" V -2625 1300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H -3200 1300 50  0001 C CNN
	1    -3200 1300
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6436187A
P -4200 700
AR Path="/6F1F2B46/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6436187A" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6436187A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -4200 550 50  0001 C CNN
F 1 "+5V" H -4100 850 50  0000 C CNN
F 2 "" H -4200 700 50  0001 C CNN
F 3 "" H -4200 700 50  0001 C CNN
	1    -4200 700 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2803A U?
U 1 1 64361880
P -4700 1100
AR Path="/6415E55D/64361880" Ref="U?"  Part="1" 
AR Path="/6415E5B3/64361880" Ref="U?"  Part="1" 
AR Path="/6415E609/64361880" Ref="U?"  Part="1" 
F 0 "U?" H -4700 1667 50  0000 C CNN
F 1 "ULN2803A" H -4700 1576 50  0000 C CNN
F 2 "" H -4650 450 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H -4600 900 50  0001 C CNN
	1    -4700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4300 900  -4050 900 
Wire Wire Line
	-4300 1000 -4050 1000
Wire Wire Line
	-4300 1100 -4050 1100
Wire Wire Line
	-4300 1200 -4050 1200
Wire Wire Line
	-4300 1300 -4050 1300
Wire Wire Line
	-4300 1400 -4050 1400
Wire Wire Line
	-4300 1500 -4050 1500
Wire Wire Line
	-4300 1600 -4050 1600
Wire Wire Line
	-3650 900  -3400 900 
Wire Wire Line
	-3650 1000 -3400 1000
Wire Wire Line
	-3650 1100 -3400 1100
Wire Wire Line
	-3650 1200 -3400 1200
Wire Wire Line
	-3650 1300 -3400 1300
Wire Wire Line
	-3650 1400 -3400 1400
Wire Wire Line
	-3650 1500 -3400 1500
Wire Wire Line
	-3650 1600 -3400 1600
Wire Wire Line
	-3650 1700 -3400 1700
Wire Wire Line
	-3650 1800 -3400 1800
NoConn ~ -4100 1800
Wire Wire Line
	-4050 1800 -4100 1800
$Comp
L power:GND #PWR?
U 1 1 6436189B
P -4700 1800
AR Path="/6F1F2B46/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6436189B" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6436189B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -4700 1550 50  0001 C CNN
F 1 "GND" H -4550 1700 50  0000 C CNN
F 2 "" H -4700 1800 50  0001 C CNN
F 3 "" H -4700 1800 50  0001 C CNN
	1    -4700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4300 800  -4200 800 
Wire Wire Line
	-4200 800  -4200 700 
Text Notes -5100 2250 0    50   ~ 0
This should focus on the point in the stream we are, i.e. break, MAB, etc...
Wire Wire Line
	-3200 6750 -3100 6750
Wire Wire Line
	-3100 6750 -3100 6900
Wire Wire Line
	-3100 6900 -2600 6900
$Comp
L power:GND #PWR?
U 1 1 645C39E9
P -4300 6850
AR Path="/6F1F2B46/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645C39E9" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645C39E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -4300 6600 50  0001 C CNN
F 1 "GND" H -4150 6750 50  0000 C CNN
F 2 "" H -4300 6850 50  0001 C CNN
F 3 "" H -4300 6850 50  0001 C CNN
	1    -4300 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4300 6850 -4300 6750
Wire Wire Line
	-4300 6750 -4200 6750
Connection ~ 9550 5200
Wire Wire Line
	8000 5200 8800 5200
Wire Wire Line
	8000 5100 8350 5100
Wire Wire Line
	8350 5100 8350 4850
Wire Wire Line
	8350 4850 8800 4850
$Comp
L power:+5V #PWR?
U 1 1 645EB3D1
P 8100 4900
AR Path="/6841E790/645EB3D1" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645EB3D1" Ref="#PWR?"  Part="1" 
AR Path="/645EB3D1" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313B/645EB3D1" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645EB3D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 4750 50  0001 C CNN
F 1 "+5V" H 8115 5073 50  0000 C CNN
F 2 "" H 8100 4900 50  0001 C CNN
F 3 "" H 8100 4900 50  0001 C CNN
	1    8100 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 5000 8100 5000
Wire Wire Line
	8100 5000 8100 4900
$Comp
L power:GND #PWR?
U 1 1 645ED858
P 7600 6000
AR Path="/6F1F2B46/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645ED858" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645ED858" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 5750 50  0001 C CNN
F 1 "GND" H 7750 5900 50  0000 C CNN
F 2 "" H 7600 6000 50  0001 C CNN
F 3 "" H 7600 6000 50  0001 C CNN
	1    7600 6000
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:MAN71A U?
U 1 1 645F835C
P 7700 1500
AR Path="/6841E790/5F2B4C18/645F835C" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/645F835C" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/645F835C" Ref="U?"  Part="1" 
AR Path="/6BB77683/645F835C" Ref="U?"  Part="1" 
AR Path="/63268641/645F835C" Ref="U?"  Part="1" 
AR Path="/6341029A/645F835C" Ref="U?"  Part="1" 
AR Path="/645F835C" Ref="U?"  Part="1" 
AR Path="/6415E55D/645F835C" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F835C" Ref="U?"  Part="1" 
AR Path="/6415E609/645F835C" Ref="U?"  Part="1" 
F 0 "U?" H 7700 2167 50  0000 C CNN
F 1 "MAN71A" H 7700 2076 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H 7200 800 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 7710 1840 50  0001 L CNN
	1    7700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1900 8150 1900
Wire Wire Line
	8150 1900 8150 1800
Wire Wire Line
	8000 1800 8150 1800
Connection ~ 8150 1800
Wire Wire Line
	8150 1800 8150 1700
$Comp
L power:+5V #PWR?
U 1 1 645F8368
P 8150 1700
AR Path="/6F1F2B46/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8368" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8368" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8150 1550 50  0001 C CNN
F 1 "+5V" H 8165 1873 50  0000 C CNN
F 2 "" H 8150 1700 50  0001 C CNN
F 3 "" H 8150 1700 50  0001 C CNN
	1    8150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645F836E
P 6350 2100
AR Path="/6F1F2B46/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F836E" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F836E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 1850 50  0001 C CNN
F 1 "GND" H 6500 2000 50  0000 C CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:MAN71A U?
U 1 1 645F8374
P 10400 1500
AR Path="/6841E790/5F2B4C18/645F8374" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/645F8374" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/645F8374" Ref="U?"  Part="1" 
AR Path="/6BB77683/645F8374" Ref="U?"  Part="1" 
AR Path="/63268641/645F8374" Ref="U?"  Part="1" 
AR Path="/6341029A/645F8374" Ref="U?"  Part="1" 
AR Path="/645F8374" Ref="U?"  Part="1" 
AR Path="/6415E55D/645F8374" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F8374" Ref="U?"  Part="1" 
AR Path="/6415E609/645F8374" Ref="U?"  Part="1" 
F 0 "U?" H 10400 2167 50  0000 C CNN
F 1 "MAN71A" H 10400 2076 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H 9900 800 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 10410 1840 50  0001 L CNN
	1    10400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1100 10100 1100
Wire Wire Line
	10000 1200 10100 1200
Wire Wire Line
	10000 1300 10100 1300
Wire Wire Line
	10000 1400 10100 1400
Wire Wire Line
	10000 1500 10100 1500
Wire Wire Line
	10000 1600 10100 1600
Wire Wire Line
	10000 1700 10100 1700
Wire Wire Line
	5850 1100 5700 1100
Wire Wire Line
	5850 1200 5700 1200
Wire Wire Line
	5700 1300 5850 1300
Wire Wire Line
	5850 1400 5700 1400
Wire Wire Line
	8550 1400 8400 1400
Wire Wire Line
	8400 1100 8550 1100
Wire Wire Line
	8400 1300 8550 1300
Text Label 8400 1100 0    50   ~ 0
TA4
Text Label 8400 1200 0    50   ~ 0
TA5
Text Label 8400 1300 0    50   ~ 0
TA6
Text Label 8400 1400 0    50   ~ 0
TA7
Text Label 5700 1100 0    50   ~ 0
TA0
Text Label 5700 1200 0    50   ~ 0
TA1
Text Label 5700 1300 0    50   ~ 0
TA2
Text Label 5700 1400 0    50   ~ 0
TA3
Text Notes 5300 650  0    50   ~ 0
Step Value Display
$Comp
L power:+5V #PWR?
U 1 1 645F8392
P 9050 800
AR Path="/6841E790/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8392" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8392" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9050 650 50  0001 C CNN
F 1 "+5V" H 9065 973 50  0000 C CNN
F 2 "" H 9050 800 50  0001 C CNN
F 3 "" H 9050 800 50  0001 C CNN
	1    9050 800 
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645F8398
P 9050 2100
AR Path="/6F1F2B46/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8398" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8398" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9050 1850 50  0001 C CNN
F 1 "GND" H 9200 2000 50  0000 C CNN
F 2 "" H 9050 2100 50  0001 C CNN
F 3 "" H 9050 2100 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS47 U?
U 1 1 645F839E
P 6350 1400
AR Path="/6341029A/645F839E" Ref="U?"  Part="1" 
AR Path="/645F839E" Ref="U?"  Part="1" 
AR Path="/6415E55D/645F839E" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F839E" Ref="U?"  Part="1" 
AR Path="/6415E609/645F839E" Ref="U?"  Part="1" 
F 0 "U?" H 6500 1950 50  0000 C CNN
F 1 "74LS47" H 6550 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6350 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H 6350 1400 50  0001 C CNN
	1    6350 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS47 U?
U 1 1 645F83A5
P 9050 1400
AR Path="/6341029A/645F83A5" Ref="U?"  Part="1" 
AR Path="/645F83A5" Ref="U?"  Part="1" 
AR Path="/6415E55D/645F83A5" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F83A5" Ref="U?"  Part="1" 
AR Path="/6415E609/645F83A5" Ref="U?"  Part="1" 
F 0 "U?" H 9200 1950 50  0000 C CNN
F 1 "74LS47" H 9250 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9050 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H 9050 1400 50  0001 C CNN
	1    9050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1700 8500 1800
$Comp
L Device:R_Pack08 RN?
U 1 1 645F83AD
P 9800 1500
AR Path="/6341029A/645F83AD" Ref="RN?"  Part="1" 
AR Path="/645F83AD" Ref="RN?"  Part="1" 
AR Path="/6415E55D/645F83AD" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/645F83AD" Ref="RN?"  Part="1" 
AR Path="/6415E609/645F83AD" Ref="RN?"  Part="1" 
F 0 "RN?" V 9183 1500 50  0000 C CNN
F 1 "330x8" V 9274 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V 10275 1500 50  0001 C CNN
F 3 "~" H 9800 1500 50  0001 C CNN
	1    9800 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 1900 10100 1900
Wire Wire Line
	9700 2000 9700 1900
Wire Wire Line
	9500 1900 9700 1900
Connection ~ 9700 1900
Wire Wire Line
	9700 1900 9700 1800
$Comp
L power:+5V #PWR?
U 1 1 645F83B9
P 9700 1800
AR Path="/6F1F2B46/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F83B9" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F83B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9700 1650 50  0001 C CNN
F 1 "+5V" H 9715 1973 50  0000 C CNN
F 2 "" H 9700 1800 50  0001 C CNN
F 3 "" H 9700 1800 50  0001 C CNN
	1    9700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2000 9700 2000
Wire Wire Line
	9550 1100 9600 1100
Wire Wire Line
	9550 1200 9600 1200
Wire Wire Line
	9550 1300 9600 1300
Wire Wire Line
	9550 1400 9600 1400
Wire Wire Line
	9550 1500 9600 1500
Wire Wire Line
	9550 1600 9600 1600
Wire Wire Line
	9550 1700 9600 1700
$Comp
L Device:R_Pack08 RN?
U 1 1 645F83C7
P 7100 1500
AR Path="/6341029A/645F83C7" Ref="RN?"  Part="1" 
AR Path="/645F83C7" Ref="RN?"  Part="1" 
AR Path="/6415E55D/645F83C7" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/645F83C7" Ref="RN?"  Part="1" 
AR Path="/6415E609/645F83C7" Ref="RN?"  Part="1" 
F 0 "RN?" V 6483 1500 50  0000 C CNN
F 1 "330x8" V 6574 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V 7575 1500 50  0001 C CNN
F 3 "~" H 7100 1500 50  0001 C CNN
	1    7100 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1100 6900 1100
Wire Wire Line
	6850 1200 6900 1200
Wire Wire Line
	6850 1300 6900 1300
Wire Wire Line
	6850 1400 6900 1400
Wire Wire Line
	6850 1500 6900 1500
Wire Wire Line
	6850 1600 6900 1600
Wire Wire Line
	6850 1700 6900 1700
Wire Wire Line
	7300 1700 7400 1700
Wire Wire Line
	7300 1600 7400 1600
Wire Wire Line
	7300 1500 7400 1500
Wire Wire Line
	7300 1400 7400 1400
Wire Wire Line
	7300 1300 7400 1300
Wire Wire Line
	7300 1200 7400 1200
Wire Wire Line
	7300 1100 7400 1100
Wire Wire Line
	7300 1800 7350 1800
Wire Wire Line
	7350 1800 7350 1900
Wire Wire Line
	7350 1900 7400 1900
NoConn ~ 6900 1800
Wire Wire Line
	8500 1600 8550 1600
Wire Wire Line
	8500 1700 8550 1700
Wire Wire Line
	8550 1800 8500 1800
NoConn ~ 9600 1800
Wire Wire Line
	10000 1800 10050 1800
Wire Wire Line
	10050 1800 10050 1900
Text GLabel 8500 1600 0    50   Input ~ 0
LT
Text GLabel 5800 1600 0    50   Input ~ 0
LT
Wire Wire Line
	5800 1600 5850 1600
Wire Wire Line
	5850 1700 5800 1700
Wire Wire Line
	5800 1700 5800 1800
Wire Wire Line
	5800 1800 5850 1800
$Comp
L 74xx:74LS161 U?
U 1 1 645F83EC
P 2150 3550
AR Path="/645F83EC" Ref="U?"  Part="1" 
AR Path="/632F1F43/645F83EC" Ref="U?"  Part="1" 
AR Path="/63267F40/645F83EC" Ref="U?"  Part="1" 
AR Path="/63A5B205/645F83EC" Ref="U?"  Part="1" 
AR Path="/6415E609/645F83EC" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F83EC" Ref="U?"  Part="1" 
F 0 "U?" H 2250 4300 50  0000 C CNN
F 1 "74LS161" H 2350 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2150 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 2150 3550 50  0001 C CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645F83F3
P 2150 4350
AR Path="/645F83F3" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F83F3" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F83F3" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F83F3" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F83F3" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F83F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 4100 50  0001 C CNN
F 1 "GND" H 2300 4250 50  0000 C CNN
F 2 "" H 2150 4350 50  0001 C CNN
F 3 "" H 2150 4350 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4050 1650 4050
Wire Wire Line
	1650 3750 1600 3750
Wire Wire Line
	1650 3350 1500 3350
Wire Wire Line
	1500 3350 1500 3400
Wire Wire Line
	1500 3350 1500 3250
Wire Wire Line
	1500 3250 1650 3250
Connection ~ 1500 3350
Wire Wire Line
	1500 3250 1500 3150
Wire Wire Line
	1500 3150 1650 3150
Connection ~ 1500 3250
Wire Wire Line
	1500 3150 1500 3050
Wire Wire Line
	1500 3050 1650 3050
Connection ~ 1500 3150
$Comp
L power:GND #PWR?
U 1 1 645F8406
P 1500 3400
AR Path="/645F8406" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8406" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8406" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8406" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8406" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8406" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1500 3150 50  0001 C CNN
F 1 "GND" H 1505 3227 50  0000 C CNN
F 2 "" H 1500 3400 50  0001 C CNN
F 3 "" H 1500 3400 50  0001 C CNN
	1    1500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3550 1600 3550
Wire Wire Line
	1600 3550 1600 3650
Connection ~ 1600 3750
Wire Wire Line
	1600 3750 1350 3750
Wire Wire Line
	1650 3650 1600 3650
Connection ~ 1600 3650
Wire Wire Line
	1600 3650 1600 3750
$Comp
L power:+5V #PWR?
U 1 1 645F8413
P 2150 2750
AR Path="/645F8413" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8413" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8413" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8413" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8413" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8413" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 2600 50  0001 C CNN
F 1 "+5V" H 2165 2923 50  0000 C CNN
F 2 "" H 2150 2750 50  0001 C CNN
F 3 "" H 2150 2750 50  0001 C CNN
	1    2150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 2800 3050
Wire Wire Line
	2650 3150 2800 3150
Wire Wire Line
	2650 3250 2800 3250
Wire Wire Line
	1350 2750 1350 3750
$Comp
L power:+5V #PWR?
U 1 1 645F841D
P 1350 2750
AR Path="/6841E790/645F841D" Ref="#PWR?"  Part="1" 
AR Path="/645F841D" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F841D" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F841D" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F841D" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F841D" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F841D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1350 2600 50  0001 C CNN
F 1 "+5V" H 1365 2923 50  0000 C CNN
F 2 "" H 1350 2750 50  0001 C CNN
F 3 "" H 1350 2750 50  0001 C CNN
	1    1350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4050 1500 4750
Wire Wire Line
	1350 3850 1650 3850
$Comp
L 74xx:74LS161 U?
U 1 1 645F8425
P 4850 3550
AR Path="/645F8425" Ref="U?"  Part="1" 
AR Path="/632F1F43/645F8425" Ref="U?"  Part="1" 
AR Path="/63267F40/645F8425" Ref="U?"  Part="1" 
AR Path="/63A5B205/645F8425" Ref="U?"  Part="1" 
AR Path="/6415E609/645F8425" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F8425" Ref="U?"  Part="1" 
F 0 "U?" H 4950 4300 50  0000 C CNN
F 1 "74LS162" H 5050 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4850 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 4850 3550 50  0001 C CNN
	1    4850 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645F842C
P 4850 4350
AR Path="/645F842C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F842C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F842C" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F842C" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F842C" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F842C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 4100 50  0001 C CNN
F 1 "GND" H 5000 4250 50  0000 C CNN
F 2 "" H 4850 4350 50  0001 C CNN
F 3 "" H 4850 4350 50  0001 C CNN
	1    4850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4050 4350 4050
Wire Wire Line
	4350 3350 4200 3350
Wire Wire Line
	4200 3350 4200 3400
Wire Wire Line
	4200 3350 4200 3250
Wire Wire Line
	4200 3250 4350 3250
Connection ~ 4200 3350
Wire Wire Line
	4200 3250 4200 3150
Wire Wire Line
	4200 3150 4350 3150
Connection ~ 4200 3250
Wire Wire Line
	4200 3150 4200 3050
Wire Wire Line
	4200 3050 4350 3050
Connection ~ 4200 3150
$Comp
L power:GND #PWR?
U 1 1 645F843E
P 4200 3400
AR Path="/645F843E" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F843E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F843E" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F843E" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F843E" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F843E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4200 3150 50  0001 C CNN
F 1 "GND" H 4205 3227 50  0000 C CNN
F 2 "" H 4200 3400 50  0001 C CNN
F 3 "" H 4200 3400 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3550 4300 3550
Wire Wire Line
	4300 3550 4300 3650
$Comp
L power:+5V #PWR?
U 1 1 645F8446
P 4850 2750
AR Path="/645F8446" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8446" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8446" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8446" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8446" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8446" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 2600 50  0001 C CNN
F 1 "+5V" H 4865 2923 50  0000 C CNN
F 2 "" H 4850 2750 50  0001 C CNN
F 3 "" H 4850 2750 50  0001 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3050 5500 3050
Wire Wire Line
	5350 3150 5500 3150
Wire Wire Line
	5350 3250 5500 3250
Wire Wire Line
	4050 2750 4050 3650
$Comp
L power:+5V #PWR?
U 1 1 645F8450
P 4050 2750
AR Path="/6841E790/645F8450" Ref="#PWR?"  Part="1" 
AR Path="/645F8450" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8450" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8450" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8450" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8450" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8450" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 2600 50  0001 C CNN
F 1 "+5V" H 4065 2923 50  0000 C CNN
F 2 "" H 4050 2750 50  0001 C CNN
F 3 "" H 4050 2750 50  0001 C CNN
	1    4050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4050 4050 4750
Wire Wire Line
	3900 3850 4350 3850
Wire Wire Line
	3900 3850 3900 4600
Entry Wire Line
	2800 3050 2900 2950
Entry Wire Line
	2800 3150 2900 3050
Entry Wire Line
	2800 3250 2900 3150
Entry Wire Line
	2800 3350 2900 3250
Wire Wire Line
	2650 3550 3900 3550
Wire Wire Line
	3900 3550 3900 3750
Wire Wire Line
	2650 3350 2800 3350
Wire Wire Line
	3900 3750 4350 3750
Entry Wire Line
	5500 3350 5600 3250
Entry Wire Line
	5500 3250 5600 3150
Entry Wire Line
	5500 3150 5600 3050
Entry Wire Line
	5500 3050 5600 2950
Wire Wire Line
	5350 3350 5500 3350
Wire Wire Line
	1500 4750 4050 4750
Text Label 2650 3050 0    50   ~ 0
IA0
Text Label 2650 3150 0    50   ~ 0
IA1
Text Label 2650 3250 0    50   ~ 0
IA2
Text Label 2650 3350 0    50   ~ 0
IA3
Text Label 5350 3050 0    50   ~ 0
IA4
Text Label 5350 3150 0    50   ~ 0
IA5
Text Label 5350 3250 0    50   ~ 0
IA6
Text Label 5350 3350 0    50   ~ 0
IA7
Wire Wire Line
	4050 3650 4300 3650
Connection ~ 4300 3650
Wire Wire Line
	4300 3650 4350 3650
Wire Wire Line
	1350 3850 1350 4600
Connection ~ 1500 4750
Wire Wire Line
	1350 4600 3900 4600
Connection ~ 1350 4600
Wire Wire Line
	1200 4600 1350 4600
Wire Wire Line
	1500 4750 1200 4750
$Comp
L power:GND #PWR?
U 1 1 645F8478
P 7550 4350
AR Path="/645F8478" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8478" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8478" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8478" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8478" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8478" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7550 4100 50  0001 C CNN
F 1 "GND" H 7700 4250 50  0000 C CNN
F 2 "" H 7550 4350 50  0001 C CNN
F 3 "" H 7550 4350 50  0001 C CNN
	1    7550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4050 7050 4050
Wire Wire Line
	7050 3350 6900 3350
Wire Wire Line
	6900 3350 6900 3400
Wire Wire Line
	6900 3350 6900 3250
Wire Wire Line
	6900 3250 7050 3250
Connection ~ 6900 3350
Wire Wire Line
	6900 3150 7050 3150
Connection ~ 6900 3250
Wire Wire Line
	6900 3150 6900 3050
Wire Wire Line
	6900 3050 7050 3050
Connection ~ 6900 3150
$Comp
L power:GND #PWR?
U 1 1 645F8489
P 6900 3400
AR Path="/645F8489" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8489" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8489" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8489" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8489" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8489" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 3150 50  0001 C CNN
F 1 "GND" H 6905 3227 50  0000 C CNN
F 2 "" H 6900 3400 50  0001 C CNN
F 3 "" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3550 7000 3550
Wire Wire Line
	7000 3550 7000 3650
$Comp
L power:+5V #PWR?
U 1 1 645F8491
P 7550 2750
AR Path="/645F8491" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F8491" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F8491" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F8491" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8491" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8491" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7550 2600 50  0001 C CNN
F 1 "+5V" H 7565 2923 50  0000 C CNN
F 2 "" H 7550 2750 50  0001 C CNN
F 3 "" H 7550 2750 50  0001 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3050 8200 3050
Wire Wire Line
	8050 3250 8200 3250
Wire Wire Line
	6750 2750 6750 3650
$Comp
L power:+5V #PWR?
U 1 1 645F849A
P 6750 2750
AR Path="/6841E790/645F849A" Ref="#PWR?"  Part="1" 
AR Path="/645F849A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645F849A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645F849A" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645F849A" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F849A" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F849A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 2600 50  0001 C CNN
F 1 "+5V" H 6765 2923 50  0000 C CNN
F 2 "" H 6750 2750 50  0001 C CNN
F 3 "" H 6750 2750 50  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4050 6750 4750
Wire Wire Line
	6600 3850 7050 3850
Wire Wire Line
	6600 3750 7050 3750
Entry Wire Line
	8200 3350 8300 3250
Entry Wire Line
	8200 3250 8300 3150
Entry Wire Line
	8200 3150 8300 3050
Entry Wire Line
	8200 3050 8300 2950
Wire Wire Line
	8050 3350 8200 3350
Text Label 8050 3050 0    50   ~ 0
IA4
Text Label 8050 3150 0    50   ~ 0
IA5
Text Label 8050 3250 0    50   ~ 0
IA6
Text Label 8050 3350 0    50   ~ 0
IA7
Wire Wire Line
	6750 3650 7000 3650
Connection ~ 7000 3650
Wire Wire Line
	7000 3650 7050 3650
Wire Wire Line
	4050 4750 5700 4750
Wire Wire Line
	3900 4600 6600 4600
Wire Wire Line
	6600 4600 6600 3850
Wire Wire Line
	5350 3550 6600 3550
$Comp
L Display_Character:MAN71A U?
U 1 1 645F84B3
P 5000 1500
AR Path="/6841E790/5F2B4C18/645F84B3" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/645F84B3" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/645F84B3" Ref="U?"  Part="1" 
AR Path="/6BB77683/645F84B3" Ref="U?"  Part="1" 
AR Path="/63268641/645F84B3" Ref="U?"  Part="1" 
AR Path="/6341029A/645F84B3" Ref="U?"  Part="1" 
AR Path="/645F84B3" Ref="U?"  Part="1" 
AR Path="/6415E55D/645F84B3" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F84B3" Ref="U?"  Part="1" 
AR Path="/6415E609/645F84B3" Ref="U?"  Part="1" 
F 0 "U?" H 5000 2167 50  0000 C CNN
F 1 "MAN71A" H 5000 2076 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H 4500 800 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 5010 1840 50  0001 L CNN
	1    5000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1900 5450 1900
Wire Wire Line
	5450 1900 5450 1800
Wire Wire Line
	5300 1800 5450 1800
Connection ~ 5450 1800
Wire Wire Line
	5450 1800 5450 1700
$Comp
L power:+5V #PWR?
U 1 1 645F84BF
P 5450 1700
AR Path="/6F1F2B46/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F84BF" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F84BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 1550 50  0001 C CNN
F 1 "+5V" H 5465 1873 50  0000 C CNN
F 2 "" H 5450 1700 50  0001 C CNN
F 3 "" H 5450 1700 50  0001 C CNN
	1    5450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645F84C5
P 3650 2100
AR Path="/6F1F2B46/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F84C5" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F84C5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3650 1850 50  0001 C CNN
F 1 "GND" H 3800 2000 50  0000 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1100 3000 1100
Wire Wire Line
	3150 1200 3000 1200
Wire Wire Line
	3000 1300 3150 1300
Wire Wire Line
	3150 1400 3000 1400
Text Label 3000 1100 0    50   ~ 0
TA0
Text Label 3000 1200 0    50   ~ 0
TA1
Text Label 3000 1300 0    50   ~ 0
TA2
Text Label 3000 1400 0    50   ~ 0
TA3
$Comp
L 74xx:74LS47 U?
U 1 1 645F84D3
P 3650 1400
AR Path="/6341029A/645F84D3" Ref="U?"  Part="1" 
AR Path="/645F84D3" Ref="U?"  Part="1" 
AR Path="/6415E55D/645F84D3" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F84D3" Ref="U?"  Part="1" 
AR Path="/6415E609/645F84D3" Ref="U?"  Part="1" 
F 0 "U?" H 3800 1950 50  0000 C CNN
F 1 "74LS47" H 3850 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3650 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H 3650 1400 50  0001 C CNN
	1    3650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack08 RN?
U 1 1 645F84DA
P 4400 1500
AR Path="/6341029A/645F84DA" Ref="RN?"  Part="1" 
AR Path="/645F84DA" Ref="RN?"  Part="1" 
AR Path="/6415E55D/645F84DA" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/645F84DA" Ref="RN?"  Part="1" 
AR Path="/6415E609/645F84DA" Ref="RN?"  Part="1" 
F 0 "RN?" V 3783 1500 50  0000 C CNN
F 1 "330x8" V 3874 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V 4875 1500 50  0001 C CNN
F 3 "~" H 4400 1500 50  0001 C CNN
	1    4400 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 1100 4200 1100
Wire Wire Line
	4150 1200 4200 1200
Wire Wire Line
	4150 1300 4200 1300
Wire Wire Line
	4150 1400 4200 1400
Wire Wire Line
	4150 1500 4200 1500
Wire Wire Line
	4150 1600 4200 1600
Wire Wire Line
	4150 1700 4200 1700
Wire Wire Line
	4600 1700 4700 1700
Wire Wire Line
	4600 1600 4700 1600
Wire Wire Line
	4600 1500 4700 1500
Wire Wire Line
	4600 1400 4700 1400
Wire Wire Line
	4600 1300 4700 1300
Wire Wire Line
	4600 1200 4700 1200
Wire Wire Line
	4600 1100 4700 1100
Wire Wire Line
	4600 1800 4650 1800
Wire Wire Line
	4650 1800 4650 1900
Wire Wire Line
	4650 1900 4700 1900
NoConn ~ 4200 1800
Entry Wire Line
	2900 1200 3000 1100
Entry Wire Line
	2900 1300 3000 1200
Entry Wire Line
	2900 1400 3000 1300
Entry Wire Line
	2900 1500 3000 1400
Text GLabel 3100 1600 0    50   Input ~ 0
LT
Wire Wire Line
	3100 1600 3150 1600
Wire Wire Line
	3150 1700 3100 1700
Wire Wire Line
	3100 1700 3100 1800
Wire Wire Line
	3100 1800 3150 1800
Wire Wire Line
	8400 1200 8550 1200
Wire Wire Line
	10700 1900 10850 1900
Wire Wire Line
	10850 1900 10850 1800
Wire Wire Line
	10700 1800 10850 1800
Connection ~ 10850 1800
Wire Wire Line
	10850 1800 10850 1700
$Comp
L power:+5V #PWR?
U 1 1 645F8502
P 10850 1700
AR Path="/6F1F2B46/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8502" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8502" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10850 1550 50  0001 C CNN
F 1 "+5V" H 10865 1873 50  0000 C CNN
F 2 "" H 10850 1700 50  0001 C CNN
F 3 "" H 10850 1700 50  0001 C CNN
	1    10850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3550 6600 3750
Wire Wire Line
	6900 3150 6900 3250
Connection ~ 3900 4600
Connection ~ 4050 4750
Entry Wire Line
	5600 1200 5700 1100
Entry Wire Line
	5600 1300 5700 1200
Entry Wire Line
	5600 1400 5700 1300
Entry Wire Line
	5600 1500 5700 1400
Entry Wire Line
	8300 1200 8400 1100
Entry Wire Line
	8300 1300 8400 1200
Entry Wire Line
	8300 1400 8400 1300
Entry Wire Line
	8300 1500 8400 1400
Wire Wire Line
	8050 3150 8200 3150
$Comp
L 74xx:74LS161 U?
U 1 1 645F8515
P 7550 3550
AR Path="/645F8515" Ref="U?"  Part="1" 
AR Path="/632F1F43/645F8515" Ref="U?"  Part="1" 
AR Path="/63267F40/645F8515" Ref="U?"  Part="1" 
AR Path="/63A5B205/645F8515" Ref="U?"  Part="1" 
AR Path="/6415E609/645F8515" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645F8515" Ref="U?"  Part="1" 
F 0 "U?" H 7650 4300 50  0000 C CNN
F 1 "74LS162" H 7750 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7550 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 7550 3550 50  0001 C CNN
	1    7550 3550
	1    0    0    -1  
$EndComp
NoConn ~ 8050 3550
$Comp
L power:+5V #PWR?
U 1 1 645F851D
P 6350 800
AR Path="/6841E790/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F851D" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F851D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 650 50  0001 C CNN
F 1 "+5V" H 6365 973 50  0000 C CNN
F 2 "" H 6350 800 50  0001 C CNN
F 3 "" H 6350 800 50  0001 C CNN
	1    6350 800 
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 645F8523
P 3650 800
AR Path="/6841E790/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645F8523" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645F8523" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3650 650 50  0001 C CNN
F 1 "+5V" H 3665 973 50  0000 C CNN
F 2 "" H 3650 800 50  0001 C CNN
F 3 "" H 3650 800 50  0001 C CNN
	1    3650 800 
	-1   0    0    -1  
$EndComp
Text HLabel 1200 4600 0    50   Input ~ 0
CLK_TX_IN
Text HLabel 1200 4750 0    50   Input ~ 0
~FRAME_RESET
Wire Wire Line
	6600 5100 6600 4600
Wire Wire Line
	6600 5100 7200 5100
Connection ~ 6600 4600
$Comp
L 74xx:74LS00 U?
U 1 1 646AE7B6
P 6150 5200
F 0 "U?" H 6150 5525 50  0000 C CNN
F 1 "74LS00" H 6150 5434 50  0000 C CNN
F 2 "" H 6150 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6150 5200 50  0001 C CNN
	1    6150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5300 5700 5300
Wire Wire Line
	5700 5300 5700 5100
Connection ~ 5700 4750
Wire Wire Line
	5700 4750 6750 4750
Wire Wire Line
	5850 5100 5700 5100
Connection ~ 5700 5100
Wire Wire Line
	5700 5100 5700 4750
Wire Wire Line
	6450 5200 7200 5200
Wire Bus Line
	2900 1200 2900 3250
Wire Bus Line
	5600 1200 5600 3250
Wire Bus Line
	8300 1200 8300 3250
$EndSCHEMATC
