EESchema Schematic File Version 4
LIBS:display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6250 4350 6250 4400
Wire Wire Line
	4250 4350 4100 4350
Entry Wire Line
	4000 4250 4100 4350
Wire Wire Line
	4250 4450 4100 4450
Entry Wire Line
	4000 4350 4100 4450
Wire Wire Line
	4250 4550 4100 4550
Entry Wire Line
	4000 4450 4100 4550
Wire Wire Line
	4250 4650 4100 4650
Entry Wire Line
	4000 4550 4100 4650
Wire Wire Line
	4250 4750 4100 4750
Entry Wire Line
	4000 4650 4100 4750
Wire Wire Line
	4250 4850 4100 4850
Entry Wire Line
	4000 4750 4100 4850
Wire Wire Line
	4250 4950 4100 4950
Entry Wire Line
	4000 4850 4100 4950
Wire Wire Line
	4250 5050 4100 5050
Entry Wire Line
	4000 4950 4100 5050
Text Label 4100 4350 0    50   ~ 0
D0
Text Label 4100 4450 0    50   ~ 0
D1
Text Label 4100 4550 0    50   ~ 0
D2
Text Label 4100 4650 0    50   ~ 0
D3
Text Label 4100 4750 0    50   ~ 0
D4
Text Label 4100 4850 0    50   ~ 0
D5
Text Label 4100 4950 0    50   ~ 0
D6
Text Label 4100 5050 0    50   ~ 0
D7
$Comp
L LED:HDSP-4830_2 BAR?
U 1 1 6428CFB1
P 5500 4750
AR Path="/6841E790/5F2B4C18/6428CFB1" Ref="BAR?"  Part="1" 
AR Path="/6A2CE0CE/6428CFB1" Ref="BAR?"  Part="1" 
AR Path="/6F1F2B46/6428CFB1" Ref="BAR?"  Part="1" 
AR Path="/6BB77683/6428CFB1" Ref="BAR?"  Part="1" 
AR Path="/64132440/6413313B/6428CFB1" Ref="BAR?"  Part="1" 
AR Path="/6428CFB1" Ref="BAR?"  Part="1" 
AR Path="/6415E55D/6428CFB1" Ref="BAR?"  Part="1" 
F 0 "BAR?" H 5300 5300 50  0000 L CNN
F 1 "LED" H 5550 5300 50  0000 L CNN
F 2 "Display:HDSP-4830" H 5500 3950 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-1798EN" H 3500 4950 50  0001 C CNN
	1    5500 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 5250 6400 5250
Wire Wire Line
	6400 5250 6400 5100
NoConn ~ 5250 5150
Wire Wire Line
	5300 5150 5250 5150
$Comp
L power:+5V #PWR?
U 1 1 6428CFBC
P 6400 5100
AR Path="/6841E790/6428CFBC" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428CFBC" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313B/6428CFBC" Ref="#PWR?"  Part="1" 
AR Path="/6428CFBC" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428CFBC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 4950 50  0001 C CNN
F 1 "+5V" H 6415 5273 50  0000 C CNN
F 2 "" H 6400 5100 50  0001 C CNN
F 3 "" H 6400 5100 50  0001 C CNN
	1    6400 5100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Network10_US RN?
U 1 1 6428CFC2
P 6150 4750
AR Path="/6841E790/5F2B4C18/6428CFC2" Ref="RN?"  Part="1" 
AR Path="/6A2CE0CE/6428CFC2" Ref="RN?"  Part="1" 
AR Path="/6F1F2B46/6428CFC2" Ref="RN?"  Part="1" 
AR Path="/6BB77683/6428CFC2" Ref="RN?"  Part="1" 
AR Path="/64132440/6413313B/6428CFC2" Ref="RN?"  Part="1" 
AR Path="/6428CFC2" Ref="RN?"  Part="1" 
AR Path="/6415E55D/6428CFC2" Ref="RN?"  Part="1" 
F 0 "RN?" V 5500 4750 50  0000 R CNN
F 1 "330" V 5500 4950 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP11" V 6725 4750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6150 4750 50  0001 C CNN
	1    6150 4750
	0    1    -1   0   
$EndComp
$Comp
L Display_Character:MAN71A U?
U 1 1 6428CFC9
P 6100 2950
AR Path="/6841E790/5F2B4C18/6428CFC9" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/6428CFC9" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/6428CFC9" Ref="U?"  Part="1" 
AR Path="/6BB77683/6428CFC9" Ref="U?"  Part="1" 
AR Path="/63268641/6428CFC9" Ref="U?"  Part="1" 
AR Path="/6341029A/6428CFC9" Ref="U?"  Part="1" 
AR Path="/6428CFC9" Ref="U?"  Part="1" 
AR Path="/6415E55D/6428CFC9" Ref="U?"  Part="1" 
F 0 "U?" H 6100 3617 50  0000 C CNN
F 1 "MAN71A" H 6100 3526 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H 5600 2250 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6110 3290 50  0001 L CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3350 6550 3350
Wire Wire Line
	6550 3350 6550 3250
Wire Wire Line
	6400 3250 6550 3250
Connection ~ 6550 3250
Wire Wire Line
	6550 3250 6550 3150
$Comp
L power:+5V #PWR?
U 1 1 6428CFD5
P 5150 4150
AR Path="/6F1F2B46/6428CFD5" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428CFD5" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6428CFD5" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6428CFD5" Ref="#PWR?"  Part="1" 
AR Path="/6428CFD5" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428CFD5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 4000 50  0001 C CNN
F 1 "+5V" H 5250 4300 50  0000 C CNN
F 2 "" H 5150 4150 50  0001 C CNN
F 3 "" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6428CFDB
P 6550 3150
AR Path="/6F1F2B46/6428CFDB" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428CFDB" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6428CFDB" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6428CFDB" Ref="#PWR?"  Part="1" 
AR Path="/6428CFDB" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428CFDB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 3000 50  0001 C CNN
F 1 "+5V" H 6565 3323 50  0000 C CNN
F 2 "" H 6550 3150 50  0001 C CNN
F 3 "" H 6550 3150 50  0001 C CNN
	1    6550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6428CFE1
P 4750 3550
AR Path="/6F1F2B46/6428CFE1" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428CFE1" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6428CFE1" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6428CFE1" Ref="#PWR?"  Part="1" 
AR Path="/6428CFE1" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428CFE1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 3300 50  0001 C CNN
F 1 "GND" H 4900 3450 50  0000 C CNN
F 2 "" H 4750 3550 50  0001 C CNN
F 3 "" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:MAN71A U?
U 1 1 6428CFE7
P 8800 2950
AR Path="/6841E790/5F2B4C18/6428CFE7" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/6428CFE7" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/6428CFE7" Ref="U?"  Part="1" 
AR Path="/6BB77683/6428CFE7" Ref="U?"  Part="1" 
AR Path="/63268641/6428CFE7" Ref="U?"  Part="1" 
AR Path="/6341029A/6428CFE7" Ref="U?"  Part="1" 
AR Path="/6428CFE7" Ref="U?"  Part="1" 
AR Path="/6415E55D/6428CFE7" Ref="U?"  Part="1" 
F 0 "U?" H 8800 3617 50  0000 C CNN
F 1 "MAN71A" H 8800 3526 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H 8300 2250 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 8810 3290 50  0001 L CNN
	1    8800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2550 8500 2550
Wire Wire Line
	8400 2650 8500 2650
Wire Wire Line
	8400 2750 8500 2750
Wire Wire Line
	8400 2850 8500 2850
Wire Wire Line
	8400 2950 8500 2950
Wire Wire Line
	8400 3050 8500 3050
Wire Wire Line
	8400 3150 8500 3150
Wire Wire Line
	4250 2550 4100 2550
Wire Wire Line
	4250 2650 4100 2650
Wire Wire Line
	4100 2750 4250 2750
Wire Wire Line
	4250 2850 4100 2850
Wire Wire Line
	6950 2850 6800 2850
Wire Wire Line
	6800 2550 6950 2550
Wire Wire Line
	6800 2650 6950 2650
Wire Wire Line
	6800 2750 6950 2750
Text Label 6800 2550 0    50   ~ 0
TA4
Text Label 6800 2650 0    50   ~ 0
TA5
Text Label 6800 2750 0    50   ~ 0
TA6
Text Label 6800 2850 0    50   ~ 0
TA7
Text Label 4100 2550 0    50   ~ 0
TA0
Text Label 4100 2650 0    50   ~ 0
TA1
Text Label 4100 2750 0    50   ~ 0
TA2
Text Label 4100 2850 0    50   ~ 0
TA3
Text Notes 4950 1900 0    50   ~ 0
Data Value Display
$Comp
L power:+5V #PWR?
U 1 1 6428D006
P 7450 2250
AR Path="/6841E790/6428D006" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428D006" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6428D006" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6428D006" Ref="#PWR?"  Part="1" 
AR Path="/6428D006" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428D006" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 2100 50  0001 C CNN
F 1 "+5V" H 7465 2423 50  0000 C CNN
F 2 "" H 7450 2250 50  0001 C CNN
F 3 "" H 7450 2250 50  0001 C CNN
	1    7450 2250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6428D00C
P 7450 3550
AR Path="/6F1F2B46/6428D00C" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428D00C" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6428D00C" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6428D00C" Ref="#PWR?"  Part="1" 
AR Path="/6428D00C" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428D00C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 3300 50  0001 C CNN
F 1 "GND" H 7600 3450 50  0000 C CNN
F 2 "" H 7450 3550 50  0001 C CNN
F 3 "" H 7450 3550 50  0001 C CNN
	1    7450 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS47 U?
U 1 1 6428D012
P 4750 2850
AR Path="/6341029A/6428D012" Ref="U?"  Part="1" 
AR Path="/6428D012" Ref="U?"  Part="1" 
AR Path="/6415E55D/6428D012" Ref="U?"  Part="1" 
F 0 "U?" H 4900 3400 50  0000 C CNN
F 1 "74LS47" H 4950 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4750 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H 4750 2850 50  0001 C CNN
	1    4750 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS47 U?
U 1 1 6428D019
P 7450 2850
AR Path="/6341029A/6428D019" Ref="U?"  Part="1" 
AR Path="/6428D019" Ref="U?"  Part="1" 
AR Path="/6415E55D/6428D019" Ref="U?"  Part="1" 
F 0 "U?" H 7600 3400 50  0000 C CNN
F 1 "74LS47" H 7650 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7450 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H 7450 2850 50  0001 C CNN
	1    7450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3150 6900 3250
$Comp
L Device:R_Pack08 RN?
U 1 1 6428D021
P 8200 2950
AR Path="/6341029A/6428D021" Ref="RN?"  Part="1" 
AR Path="/6428D021" Ref="RN?"  Part="1" 
AR Path="/6415E55D/6428D021" Ref="RN?"  Part="1" 
F 0 "RN?" V 7583 2950 50  0000 C CNN
F 1 "330x8" V 7674 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V 8675 2950 50  0001 C CNN
F 3 "~" H 8200 2950 50  0001 C CNN
	1    8200 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 3350 8500 3350
Wire Wire Line
	9300 3350 9300 3250
Wire Wire Line
	9100 3250 9300 3250
Connection ~ 9300 3250
Wire Wire Line
	9300 3250 9300 3150
$Comp
L power:+5V #PWR?
U 1 1 6428D02D
P 9300 3150
AR Path="/6F1F2B46/6428D02D" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6428D02D" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6428D02D" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6428D02D" Ref="#PWR?"  Part="1" 
AR Path="/6428D02D" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6428D02D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9300 3000 50  0001 C CNN
F 1 "+5V" H 9315 3323 50  0000 C CNN
F 2 "" H 9300 3150 50  0001 C CNN
F 3 "" H 9300 3150 50  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3350 9300 3350
Wire Wire Line
	7950 2550 8000 2550
Wire Wire Line
	7950 2650 8000 2650
Wire Wire Line
	7950 2750 8000 2750
Wire Wire Line
	7950 2850 8000 2850
Wire Wire Line
	7950 2950 8000 2950
Wire Wire Line
	7950 3050 8000 3050
Wire Wire Line
	7950 3150 8000 3150
$Comp
L Device:R_Pack08 RN?
U 1 1 6428D03B
P 5500 2950
AR Path="/6341029A/6428D03B" Ref="RN?"  Part="1" 
AR Path="/6428D03B" Ref="RN?"  Part="1" 
AR Path="/6415E55D/6428D03B" Ref="RN?"  Part="1" 
F 0 "RN?" V 4883 2950 50  0000 C CNN
F 1 "330x8" V 4974 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V 5975 2950 50  0001 C CNN
F 3 "~" H 5500 2950 50  0001 C CNN
	1    5500 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2550 5300 2550
Wire Wire Line
	5250 2650 5300 2650
Wire Wire Line
	5250 2750 5300 2750
Wire Wire Line
	5250 2850 5300 2850
Wire Wire Line
	5250 2950 5300 2950
Wire Wire Line
	5250 3050 5300 3050
Wire Wire Line
	5250 3150 5300 3150
Wire Wire Line
	5700 3150 5800 3150
Wire Wire Line
	5700 3050 5800 3050
Wire Wire Line
	5700 2950 5800 2950
Wire Wire Line
	5700 2850 5800 2850
Wire Wire Line
	5700 2750 5800 2750
Wire Wire Line
	5700 2650 5800 2650
Wire Wire Line
	5700 2550 5800 2550
Wire Wire Line
	5700 3250 5750 3250
Wire Wire Line
	5750 3250 5750 3350
Wire Wire Line
	5750 3350 5800 3350
NoConn ~ 5300 3250
Wire Wire Line
	6900 3050 6950 3050
Wire Wire Line
	6900 3150 6950 3150
Wire Wire Line
	6950 3250 6900 3250
NoConn ~ 8000 3250
Wire Wire Line
	8400 3250 8450 3250
Wire Wire Line
	8450 3250 8450 3350
Entry Wire Line
	4000 2450 4100 2550
Entry Bus Bus
	3900 1950 4000 2050
Entry Wire Line
	4000 2550 4100 2650
Entry Wire Line
	4000 2650 4100 2750
Entry Wire Line
	4000 2750 4100 2850
Entry Wire Line
	6700 2450 6800 2550
Entry Bus Bus
	6600 1950 6700 2050
Entry Wire Line
	6700 2550 6800 2650
Entry Wire Line
	6700 2650 6800 2750
Entry Wire Line
	6700 2750 6800 2850
Text GLabel 6900 3050 0    50   Input ~ 0
LT
Text GLabel 4200 3050 0    50   Input ~ 0
LT
Wire Wire Line
	4200 3050 4250 3050
Wire Wire Line
	4250 3150 4200 3150
Wire Wire Line
	4200 3150 4200 3250
Wire Wire Line
	4200 3250 4250 3250
$Comp
L Transistor_Array:ULN2803A U?
U 1 1 642EA015
P 4650 4550
F 0 "U?" H 4650 5117 50  0000 C CNN
F 1 "ULN2803A" H 4650 5026 50  0000 C CNN
F 2 "" H 4700 3900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 4750 4350 50  0001 C CNN
	1    4650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4350 5300 4350
Wire Wire Line
	5050 4450 5300 4450
Wire Wire Line
	5050 4550 5300 4550
Wire Wire Line
	5050 4650 5300 4650
Wire Wire Line
	5050 4750 5300 4750
Wire Wire Line
	5050 4850 5300 4850
Wire Wire Line
	5050 4950 5300 4950
Wire Wire Line
	5050 5050 5300 5050
Wire Wire Line
	5700 4350 5950 4350
Wire Wire Line
	5700 4450 5950 4450
Wire Wire Line
	5700 4550 5950 4550
Wire Wire Line
	5700 4650 5950 4650
Wire Wire Line
	5700 4750 5950 4750
Wire Wire Line
	5700 4850 5950 4850
Wire Wire Line
	5700 4950 5950 4950
Wire Wire Line
	5700 5050 5950 5050
Wire Wire Line
	5700 5150 5950 5150
Wire Wire Line
	5700 5250 5950 5250
NoConn ~ 5250 5250
Wire Wire Line
	5300 5250 5250 5250
$Comp
L power:GND #PWR?
U 1 1 64323925
P 4650 5250
AR Path="/6F1F2B46/64323925" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/64323925" Ref="#PWR?"  Part="1" 
AR Path="/63268641/64323925" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/64323925" Ref="#PWR?"  Part="1" 
AR Path="/64323925" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/64323925" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 5000 50  0001 C CNN
F 1 "GND" H 4800 5150 50  0000 C CNN
F 2 "" H 4650 5250 50  0001 C CNN
F 3 "" H 4650 5250 50  0001 C CNN
	1    4650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4250 5150 4250
Wire Wire Line
	5150 4250 5150 4150
Text HLabel 2350 1950 0    50   Input ~ 0
D[0..7]_IN
Text Notes 6700 1500 0    50   ~ 0
Can we do this as 0-255?
Text Notes 4650 5900 0    50   ~ 0
Do this for sure.
Text Notes 7150 4600 0    50   ~ 0
Can we show sampled and latched data?
$Comp
L Display_Character:MAN71A U?
U 1 1 64594153
P -3000 -1450
AR Path="/6841E790/5F2B4C18/64594153" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/64594153" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/64594153" Ref="U?"  Part="1" 
AR Path="/6BB77683/64594153" Ref="U?"  Part="1" 
AR Path="/63268641/64594153" Ref="U?"  Part="1" 
AR Path="/6341029A/64594153" Ref="U?"  Part="1" 
AR Path="/64594153" Ref="U?"  Part="1" 
AR Path="/6415E55D/64594153" Ref="U?"  Part="1" 
AR Path="/6415E5B3/64594153" Ref="U?"  Part="1" 
F 0 "U?" H -3000 -783 50  0000 C CNN
F 1 "MAN71A" H -3000 -874 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H -3500 -2150 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H -2990 -1110 50  0001 L CNN
	1    -3000 -1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2700 -1050 -2550 -1050
Wire Wire Line
	-2550 -1050 -2550 -1150
Wire Wire Line
	-2700 -1150 -2550 -1150
Connection ~ -2550 -1150
Wire Wire Line
	-2550 -1150 -2550 -1250
$Comp
L power:+5V #PWR?
U 1 1 6459415F
P -2550 -1250
AR Path="/6F1F2B46/6459415F" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6459415F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6459415F" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6459415F" Ref="#PWR?"  Part="1" 
AR Path="/6459415F" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6459415F" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6459415F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -2550 -1400 50  0001 C CNN
F 1 "+5V" H -2535 -1077 50  0000 C CNN
F 2 "" H -2550 -1250 50  0001 C CNN
F 3 "" H -2550 -1250 50  0001 C CNN
	1    -2550 -1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64594165
P -4350 -850
AR Path="/6F1F2B46/64594165" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/64594165" Ref="#PWR?"  Part="1" 
AR Path="/63268641/64594165" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/64594165" Ref="#PWR?"  Part="1" 
AR Path="/64594165" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/64594165" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594165" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -4350 -1100 50  0001 C CNN
F 1 "GND" H -4200 -950 50  0000 C CNN
F 2 "" H -4350 -850 50  0001 C CNN
F 3 "" H -4350 -850 50  0001 C CNN
	1    -4350 -850
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:MAN71A U?
U 1 1 6459416B
P -300 -1450
AR Path="/6841E790/5F2B4C18/6459416B" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/6459416B" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/6459416B" Ref="U?"  Part="1" 
AR Path="/6BB77683/6459416B" Ref="U?"  Part="1" 
AR Path="/63268641/6459416B" Ref="U?"  Part="1" 
AR Path="/6341029A/6459416B" Ref="U?"  Part="1" 
AR Path="/6459416B" Ref="U?"  Part="1" 
AR Path="/6415E55D/6459416B" Ref="U?"  Part="1" 
AR Path="/6415E5B3/6459416B" Ref="U?"  Part="1" 
F 0 "U?" H -300 -783 50  0000 C CNN
F 1 "MAN71A" H -300 -874 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H -800 -2150 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H -290 -1110 50  0001 L CNN
	1    -300 -1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-700 -1850 -600 -1850
Wire Wire Line
	-700 -1750 -600 -1750
Wire Wire Line
	-700 -1650 -600 -1650
Wire Wire Line
	-700 -1550 -600 -1550
Wire Wire Line
	-700 -1450 -600 -1450
Wire Wire Line
	-700 -1350 -600 -1350
Wire Wire Line
	-700 -1250 -600 -1250
Wire Wire Line
	-4850 -1850 -5000 -1850
Wire Wire Line
	-4850 -1750 -5000 -1750
Wire Wire Line
	-5000 -1650 -4850 -1650
Wire Wire Line
	-4850 -1550 -5000 -1550
Wire Wire Line
	-2150 -1550 -2300 -1550
Wire Wire Line
	-2300 -1850 -2150 -1850
Wire Wire Line
	-2300 -1650 -2150 -1650
Text Label -2300 -1850 0    50   ~ 0
TA4
Text Label -2300 -1750 0    50   ~ 0
TA5
Text Label -2300 -1650 0    50   ~ 0
TA6
Text Label -2300 -1550 0    50   ~ 0
TA7
Text Label -5000 -1850 0    50   ~ 0
TA0
Text Label -5000 -1750 0    50   ~ 0
TA1
Text Label -5000 -1650 0    50   ~ 0
TA2
Text Label -5000 -1550 0    50   ~ 0
TA3
Text Notes -4150 -2500 0    50   ~ 0
Step Value Display
$Comp
L power:+5V #PWR?
U 1 1 64594189
P -1650 -2150
AR Path="/6841E790/64594189" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/64594189" Ref="#PWR?"  Part="1" 
AR Path="/63268641/64594189" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/64594189" Ref="#PWR?"  Part="1" 
AR Path="/64594189" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/64594189" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594189" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1650 -2300 50  0001 C CNN
F 1 "+5V" H -1635 -1977 50  0000 C CNN
F 2 "" H -1650 -2150 50  0001 C CNN
F 3 "" H -1650 -2150 50  0001 C CNN
	1    -1650 -2150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6459418F
P -1650 -850
AR Path="/6F1F2B46/6459418F" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6459418F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6459418F" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6459418F" Ref="#PWR?"  Part="1" 
AR Path="/6459418F" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6459418F" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6459418F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1650 -1100 50  0001 C CNN
F 1 "GND" H -1500 -950 50  0000 C CNN
F 2 "" H -1650 -850 50  0001 C CNN
F 3 "" H -1650 -850 50  0001 C CNN
	1    -1650 -850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS47 U?
U 1 1 64594195
P -4350 -1550
AR Path="/6341029A/64594195" Ref="U?"  Part="1" 
AR Path="/64594195" Ref="U?"  Part="1" 
AR Path="/6415E55D/64594195" Ref="U?"  Part="1" 
AR Path="/6415E5B3/64594195" Ref="U?"  Part="1" 
F 0 "U?" H -4200 -1000 50  0000 C CNN
F 1 "74LS47" H -4150 -1100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H -4350 -1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H -4350 -1550 50  0001 C CNN
	1    -4350 -1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS47 U?
U 1 1 6459419C
P -1650 -1550
AR Path="/6341029A/6459419C" Ref="U?"  Part="1" 
AR Path="/6459419C" Ref="U?"  Part="1" 
AR Path="/6415E55D/6459419C" Ref="U?"  Part="1" 
AR Path="/6415E5B3/6459419C" Ref="U?"  Part="1" 
F 0 "U?" H -1500 -1000 50  0000 C CNN
F 1 "74LS47" H -1450 -1100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H -1650 -1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H -1650 -1550 50  0001 C CNN
	1    -1650 -1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2200 -1250 -2200 -1150
$Comp
L Device:R_Pack08 RN?
U 1 1 645941A4
P -900 -1450
AR Path="/6341029A/645941A4" Ref="RN?"  Part="1" 
AR Path="/645941A4" Ref="RN?"  Part="1" 
AR Path="/6415E55D/645941A4" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/645941A4" Ref="RN?"  Part="1" 
F 0 "RN?" V -1517 -1450 50  0000 C CNN
F 1 "330x8" V -1426 -1450 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V -425 -1450 50  0001 C CNN
F 3 "~" H -900 -1450 50  0001 C CNN
	1    -900 -1450
	0    1    1    0   
$EndComp
Wire Wire Line
	-650 -1050 -600 -1050
Wire Wire Line
	-1000 -950 -1000 -1050
Wire Wire Line
	-1200 -1050 -1000 -1050
Connection ~ -1000 -1050
Wire Wire Line
	-1000 -1050 -1000 -1150
$Comp
L power:+5V #PWR?
U 1 1 645941B0
P -1000 -1150
AR Path="/6F1F2B46/645941B0" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645941B0" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645941B0" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645941B0" Ref="#PWR?"  Part="1" 
AR Path="/645941B0" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645941B0" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645941B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1000 -1300 50  0001 C CNN
F 1 "+5V" H -985 -977 50  0000 C CNN
F 2 "" H -1000 -1150 50  0001 C CNN
F 3 "" H -1000 -1150 50  0001 C CNN
	1    -1000 -1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1200 -950 -1000 -950
Wire Wire Line
	-1150 -1850 -1100 -1850
Wire Wire Line
	-1150 -1750 -1100 -1750
Wire Wire Line
	-1150 -1650 -1100 -1650
Wire Wire Line
	-1150 -1550 -1100 -1550
Wire Wire Line
	-1150 -1450 -1100 -1450
Wire Wire Line
	-1150 -1350 -1100 -1350
Wire Wire Line
	-1150 -1250 -1100 -1250
$Comp
L Device:R_Pack08 RN?
U 1 1 645941BE
P -3600 -1450
AR Path="/6341029A/645941BE" Ref="RN?"  Part="1" 
AR Path="/645941BE" Ref="RN?"  Part="1" 
AR Path="/6415E55D/645941BE" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/645941BE" Ref="RN?"  Part="1" 
F 0 "RN?" V -4217 -1450 50  0000 C CNN
F 1 "330x8" V -4126 -1450 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V -3125 -1450 50  0001 C CNN
F 3 "~" H -3600 -1450 50  0001 C CNN
	1    -3600 -1450
	0    1    1    0   
$EndComp
Wire Wire Line
	-3850 -1850 -3800 -1850
Wire Wire Line
	-3850 -1750 -3800 -1750
Wire Wire Line
	-3850 -1650 -3800 -1650
Wire Wire Line
	-3850 -1550 -3800 -1550
Wire Wire Line
	-3850 -1450 -3800 -1450
Wire Wire Line
	-3850 -1350 -3800 -1350
Wire Wire Line
	-3850 -1250 -3800 -1250
Wire Wire Line
	-3400 -1250 -3300 -1250
Wire Wire Line
	-3400 -1350 -3300 -1350
Wire Wire Line
	-3400 -1450 -3300 -1450
Wire Wire Line
	-3400 -1550 -3300 -1550
Wire Wire Line
	-3400 -1650 -3300 -1650
Wire Wire Line
	-3400 -1750 -3300 -1750
Wire Wire Line
	-3400 -1850 -3300 -1850
Wire Wire Line
	-3400 -1150 -3350 -1150
Wire Wire Line
	-3350 -1150 -3350 -1050
Wire Wire Line
	-3350 -1050 -3300 -1050
NoConn ~ -3800 -1150
Wire Wire Line
	-2200 -1350 -2150 -1350
Wire Wire Line
	-2200 -1250 -2150 -1250
Wire Wire Line
	-2150 -1150 -2200 -1150
NoConn ~ -1100 -1150
Wire Wire Line
	-700 -1150 -650 -1150
Wire Wire Line
	-650 -1150 -650 -1050
Text GLabel -2200 -1350 0    50   Input ~ 0
LT
Text GLabel -4900 -1350 0    50   Input ~ 0
LT
Wire Wire Line
	-4900 -1350 -4850 -1350
Wire Wire Line
	-4850 -1250 -4900 -1250
Wire Wire Line
	-4900 -1250 -4900 -1150
Wire Wire Line
	-4900 -1150 -4850 -1150
$Comp
L 74xx:74LS161 U?
U 1 1 645941E3
P -8550 600
AR Path="/645941E3" Ref="U?"  Part="1" 
AR Path="/632F1F43/645941E3" Ref="U?"  Part="1" 
AR Path="/63267F40/645941E3" Ref="U?"  Part="1" 
AR Path="/63A5B205/645941E3" Ref="U?"  Part="1" 
AR Path="/6415E609/645941E3" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645941E3" Ref="U?"  Part="1" 
F 0 "U?" H -8450 1350 50  0000 C CNN
F 1 "74LS161" H -8350 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H -8550 600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H -8550 600 50  0001 C CNN
	1    -8550 600 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645941EA
P -8550 1400
AR Path="/645941EA" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645941EA" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645941EA" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645941EA" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645941EA" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645941EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -8550 1150 50  0001 C CNN
F 1 "GND" H -8400 1300 50  0000 C CNN
F 2 "" H -8550 1400 50  0001 C CNN
F 3 "" H -8550 1400 50  0001 C CNN
	1    -8550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-9200 1100 -9050 1100
Wire Wire Line
	-9050 800  -9100 800 
Wire Wire Line
	-9050 400  -9200 400 
Wire Wire Line
	-9200 400  -9200 450 
Wire Wire Line
	-9200 400  -9200 300 
Wire Wire Line
	-9200 300  -9050 300 
Connection ~ -9200 400 
Wire Wire Line
	-9200 300  -9200 200 
Wire Wire Line
	-9200 200  -9050 200 
Connection ~ -9200 300 
Wire Wire Line
	-9200 200  -9200 100 
Wire Wire Line
	-9200 100  -9050 100 
Connection ~ -9200 200 
$Comp
L power:GND #PWR?
U 1 1 645941FD
P -9200 450
AR Path="/645941FD" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/645941FD" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645941FD" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/645941FD" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/645941FD" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645941FD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -9200 200 50  0001 C CNN
F 1 "GND" H -9195 277 50  0000 C CNN
F 2 "" H -9200 450 50  0001 C CNN
F 3 "" H -9200 450 50  0001 C CNN
	1    -9200 450 
	1    0    0    -1  
$EndComp
Wire Wire Line
	-9050 600  -9100 600 
Wire Wire Line
	-9100 600  -9100 700 
Connection ~ -9100 800 
Wire Wire Line
	-9100 800  -9350 800 
Wire Wire Line
	-9050 700  -9100 700 
Connection ~ -9100 700 
Wire Wire Line
	-9100 700  -9100 800 
$Comp
L power:+5V #PWR?
U 1 1 6459420A
P -8550 -200
AR Path="/6459420A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6459420A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6459420A" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6459420A" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6459420A" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6459420A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -8550 -350 50  0001 C CNN
F 1 "+5V" H -8535 -27 50  0000 C CNN
F 2 "" H -8550 -200 50  0001 C CNN
F 3 "" H -8550 -200 50  0001 C CNN
	1    -8550 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-8050 100  -7900 100 
Wire Wire Line
	-8050 200  -7900 200 
Wire Wire Line
	-8050 300  -7900 300 
Wire Wire Line
	-9350 -200 -9350 800 
$Comp
L power:+5V #PWR?
U 1 1 64594214
P -9350 -200
AR Path="/6841E790/64594214" Ref="#PWR?"  Part="1" 
AR Path="/64594214" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594214" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594214" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594214" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594214" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594214" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -9350 -350 50  0001 C CNN
F 1 "+5V" H -9335 -27 50  0000 C CNN
F 2 "" H -9350 -200 50  0001 C CNN
F 3 "" H -9350 -200 50  0001 C CNN
	1    -9350 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-9200 1100 -9200 1800
Wire Wire Line
	-9350 900  -9050 900 
$Comp
L 74xx:74LS161 U?
U 1 1 6459421C
P -5850 600
AR Path="/6459421C" Ref="U?"  Part="1" 
AR Path="/632F1F43/6459421C" Ref="U?"  Part="1" 
AR Path="/63267F40/6459421C" Ref="U?"  Part="1" 
AR Path="/63A5B205/6459421C" Ref="U?"  Part="1" 
AR Path="/6415E609/6459421C" Ref="U?"  Part="1" 
AR Path="/6415E5B3/6459421C" Ref="U?"  Part="1" 
F 0 "U?" H -5750 1350 50  0000 C CNN
F 1 "74LS162" H -5650 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H -5850 600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H -5850 600 50  0001 C CNN
	1    -5850 600 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64594223
P -5850 1400
AR Path="/64594223" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594223" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594223" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594223" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594223" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594223" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -5850 1150 50  0001 C CNN
F 1 "GND" H -5700 1300 50  0000 C CNN
F 2 "" H -5850 1400 50  0001 C CNN
F 3 "" H -5850 1400 50  0001 C CNN
	1    -5850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6650 1100 -6350 1100
Wire Wire Line
	-6350 400  -6500 400 
Wire Wire Line
	-6500 400  -6500 450 
Wire Wire Line
	-6500 400  -6500 300 
Wire Wire Line
	-6500 300  -6350 300 
Connection ~ -6500 400 
Wire Wire Line
	-6500 300  -6500 200 
Wire Wire Line
	-6500 200  -6350 200 
Connection ~ -6500 300 
Wire Wire Line
	-6500 200  -6500 100 
Wire Wire Line
	-6500 100  -6350 100 
Connection ~ -6500 200 
$Comp
L power:GND #PWR?
U 1 1 64594235
P -6500 450
AR Path="/64594235" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594235" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594235" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594235" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594235" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594235" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -6500 200 50  0001 C CNN
F 1 "GND" H -6495 277 50  0000 C CNN
F 2 "" H -6500 450 50  0001 C CNN
F 3 "" H -6500 450 50  0001 C CNN
	1    -6500 450 
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6350 600  -6400 600 
Wire Wire Line
	-6400 600  -6400 700 
$Comp
L power:+5V #PWR?
U 1 1 6459423D
P -5850 -200
AR Path="/6459423D" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6459423D" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6459423D" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6459423D" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6459423D" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6459423D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -5850 -350 50  0001 C CNN
F 1 "+5V" H -5835 -27 50  0000 C CNN
F 2 "" H -5850 -200 50  0001 C CNN
F 3 "" H -5850 -200 50  0001 C CNN
	1    -5850 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5350 100  -5200 100 
Wire Wire Line
	-5350 200  -5200 200 
Wire Wire Line
	-5350 300  -5200 300 
Wire Wire Line
	-6650 -200 -6650 700 
$Comp
L power:+5V #PWR?
U 1 1 64594247
P -6650 -200
AR Path="/6841E790/64594247" Ref="#PWR?"  Part="1" 
AR Path="/64594247" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594247" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594247" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594247" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594247" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594247" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -6650 -350 50  0001 C CNN
F 1 "+5V" H -6635 -27 50  0000 C CNN
F 2 "" H -6650 -200 50  0001 C CNN
F 3 "" H -6650 -200 50  0001 C CNN
	1    -6650 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6650 1100 -6650 1800
Wire Wire Line
	-6800 900  -6350 900 
Wire Wire Line
	-6800 900  -6800 1650
Entry Wire Line
	-7900 100  -7800 0   
Entry Wire Line
	-7900 200  -7800 100 
Entry Wire Line
	-7900 300  -7800 200 
Entry Wire Line
	-7900 400  -7800 300 
Wire Wire Line
	-8050 600  -6800 600 
Wire Wire Line
	-6800 600  -6800 800 
Wire Wire Line
	-8050 400  -7900 400 
Wire Wire Line
	-6800 800  -6350 800 
Entry Wire Line
	-5200 400  -5100 300 
Entry Wire Line
	-5200 300  -5100 200 
Entry Wire Line
	-5200 200  -5100 100 
Entry Wire Line
	-5200 100  -5100 0   
Wire Wire Line
	-5350 400  -5200 400 
Wire Wire Line
	-9200 1800 -6650 1800
Text Label -8050 100  0    50   ~ 0
IA0
Text Label -8050 200  0    50   ~ 0
IA1
Text Label -8050 300  0    50   ~ 0
IA2
Text Label -8050 400  0    50   ~ 0
IA3
Text Label -5350 100  0    50   ~ 0
IA4
Text Label -5350 200  0    50   ~ 0
IA5
Text Label -5350 300  0    50   ~ 0
IA6
Text Label -5350 400  0    50   ~ 0
IA7
Wire Wire Line
	-6650 700  -6400 700 
Connection ~ -6400 700 
Wire Wire Line
	-6400 700  -6350 700 
Wire Wire Line
	-9350 900  -9350 1650
Connection ~ -9200 1800
Wire Wire Line
	-9350 1650 -6800 1650
Connection ~ -9350 1650
Wire Wire Line
	-9500 1650 -9350 1650
Wire Wire Line
	-9200 1800 -9500 1800
$Comp
L power:GND #PWR?
U 1 1 6459426F
P -3150 1400
AR Path="/6459426F" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6459426F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6459426F" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6459426F" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/6459426F" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6459426F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3150 1150 50  0001 C CNN
F 1 "GND" H -3000 1300 50  0000 C CNN
F 2 "" H -3150 1400 50  0001 C CNN
F 3 "" H -3150 1400 50  0001 C CNN
	1    -3150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3950 1100 -3650 1100
Wire Wire Line
	-3650 400  -3800 400 
Wire Wire Line
	-3800 400  -3800 450 
Wire Wire Line
	-3800 400  -3800 300 
Wire Wire Line
	-3800 300  -3650 300 
Connection ~ -3800 400 
Wire Wire Line
	-3800 200  -3650 200 
Connection ~ -3800 300 
Wire Wire Line
	-3800 200  -3800 100 
Wire Wire Line
	-3800 100  -3650 100 
Connection ~ -3800 200 
$Comp
L power:GND #PWR?
U 1 1 64594280
P -3800 450
AR Path="/64594280" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594280" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594280" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594280" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594280" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594280" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3800 200 50  0001 C CNN
F 1 "GND" H -3795 277 50  0000 C CNN
F 2 "" H -3800 450 50  0001 C CNN
F 3 "" H -3800 450 50  0001 C CNN
	1    -3800 450 
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3650 600  -3700 600 
Wire Wire Line
	-3700 600  -3700 700 
$Comp
L power:+5V #PWR?
U 1 1 64594288
P -3150 -200
AR Path="/64594288" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594288" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594288" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594288" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594288" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594288" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3150 -350 50  0001 C CNN
F 1 "+5V" H -3135 -27 50  0000 C CNN
F 2 "" H -3150 -200 50  0001 C CNN
F 3 "" H -3150 -200 50  0001 C CNN
	1    -3150 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2650 100  -2500 100 
Wire Wire Line
	-2650 300  -2500 300 
Wire Wire Line
	-3950 -200 -3950 700 
$Comp
L power:+5V #PWR?
U 1 1 64594291
P -3950 -200
AR Path="/6841E790/64594291" Ref="#PWR?"  Part="1" 
AR Path="/64594291" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64594291" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64594291" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/64594291" Ref="#PWR?"  Part="1" 
AR Path="/6415E609/64594291" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594291" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3950 -350 50  0001 C CNN
F 1 "+5V" H -3935 -27 50  0000 C CNN
F 2 "" H -3950 -200 50  0001 C CNN
F 3 "" H -3950 -200 50  0001 C CNN
	1    -3950 -200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3950 1100 -3950 1800
Wire Wire Line
	-4100 900  -3650 900 
Wire Wire Line
	-4100 800  -3650 800 
Entry Wire Line
	-2500 400  -2400 300 
Entry Wire Line
	-2500 300  -2400 200 
Entry Wire Line
	-2500 200  -2400 100 
Entry Wire Line
	-2500 100  -2400 0   
Wire Wire Line
	-2650 400  -2500 400 
Text Label -2650 100  0    50   ~ 0
IA4
Text Label -2650 200  0    50   ~ 0
IA5
Text Label -2650 300  0    50   ~ 0
IA6
Text Label -2650 400  0    50   ~ 0
IA7
Wire Wire Line
	-3950 700  -3700 700 
Connection ~ -3700 700 
Wire Wire Line
	-3700 700  -3650 700 
Wire Wire Line
	-6650 1800 -3950 1800
Wire Wire Line
	-6800 1650 -4100 1650
Wire Wire Line
	-4100 1650 -4100 900 
Wire Wire Line
	-5350 600  -4100 600 
$Comp
L Display_Character:MAN71A U?
U 1 1 645942AA
P -5700 -1450
AR Path="/6841E790/5F2B4C18/645942AA" Ref="U?"  Part="1" 
AR Path="/6A2CE0CE/645942AA" Ref="U?"  Part="1" 
AR Path="/6F1F2B46/645942AA" Ref="U?"  Part="1" 
AR Path="/6BB77683/645942AA" Ref="U?"  Part="1" 
AR Path="/63268641/645942AA" Ref="U?"  Part="1" 
AR Path="/6341029A/645942AA" Ref="U?"  Part="1" 
AR Path="/645942AA" Ref="U?"  Part="1" 
AR Path="/6415E55D/645942AA" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645942AA" Ref="U?"  Part="1" 
F 0 "U?" H -5700 -783 50  0000 C CNN
F 1 "MAN71A" H -5700 -874 50  0000 C CNN
F 2 "Display_7Segment:MAN71A" H -6200 -2150 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H -5690 -1110 50  0001 L CNN
	1    -5700 -1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5400 -1050 -5250 -1050
Wire Wire Line
	-5250 -1050 -5250 -1150
Wire Wire Line
	-5400 -1150 -5250 -1150
Connection ~ -5250 -1150
Wire Wire Line
	-5250 -1150 -5250 -1250
$Comp
L power:+5V #PWR?
U 1 1 645942B6
P -5250 -1250
AR Path="/6F1F2B46/645942B6" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645942B6" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645942B6" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645942B6" Ref="#PWR?"  Part="1" 
AR Path="/645942B6" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645942B6" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645942B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -5250 -1400 50  0001 C CNN
F 1 "+5V" H -5235 -1077 50  0000 C CNN
F 2 "" H -5250 -1250 50  0001 C CNN
F 3 "" H -5250 -1250 50  0001 C CNN
	1    -5250 -1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645942BC
P -7050 -850
AR Path="/6F1F2B46/645942BC" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645942BC" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645942BC" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645942BC" Ref="#PWR?"  Part="1" 
AR Path="/645942BC" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645942BC" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645942BC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -7050 -1100 50  0001 C CNN
F 1 "GND" H -6900 -950 50  0000 C CNN
F 2 "" H -7050 -850 50  0001 C CNN
F 3 "" H -7050 -850 50  0001 C CNN
	1    -7050 -850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-7550 -1850 -7700 -1850
Wire Wire Line
	-7550 -1750 -7700 -1750
Wire Wire Line
	-7700 -1650 -7550 -1650
Wire Wire Line
	-7550 -1550 -7700 -1550
Text Label -7700 -1850 0    50   ~ 0
TA0
Text Label -7700 -1750 0    50   ~ 0
TA1
Text Label -7700 -1650 0    50   ~ 0
TA2
Text Label -7700 -1550 0    50   ~ 0
TA3
$Comp
L 74xx:74LS47 U?
U 1 1 645942CA
P -7050 -1550
AR Path="/6341029A/645942CA" Ref="U?"  Part="1" 
AR Path="/645942CA" Ref="U?"  Part="1" 
AR Path="/6415E55D/645942CA" Ref="U?"  Part="1" 
AR Path="/6415E5B3/645942CA" Ref="U?"  Part="1" 
F 0 "U?" H -6900 -1000 50  0000 C CNN
F 1 "74LS47" H -6850 -1100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H -7050 -1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS47" H -7050 -1550 50  0001 C CNN
	1    -7050 -1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack08 RN?
U 1 1 645942D1
P -6300 -1450
AR Path="/6341029A/645942D1" Ref="RN?"  Part="1" 
AR Path="/645942D1" Ref="RN?"  Part="1" 
AR Path="/6415E55D/645942D1" Ref="RN?"  Part="1" 
AR Path="/6415E5B3/645942D1" Ref="RN?"  Part="1" 
F 0 "RN?" V -6917 -1450 50  0000 C CNN
F 1 "330x8" V -6826 -1450 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" V -5825 -1450 50  0001 C CNN
F 3 "~" H -6300 -1450 50  0001 C CNN
	1    -6300 -1450
	0    1    1    0   
$EndComp
Wire Wire Line
	-6550 -1850 -6500 -1850
Wire Wire Line
	-6550 -1750 -6500 -1750
Wire Wire Line
	-6550 -1650 -6500 -1650
Wire Wire Line
	-6550 -1550 -6500 -1550
Wire Wire Line
	-6550 -1450 -6500 -1450
Wire Wire Line
	-6550 -1350 -6500 -1350
Wire Wire Line
	-6550 -1250 -6500 -1250
Wire Wire Line
	-6100 -1250 -6000 -1250
Wire Wire Line
	-6100 -1350 -6000 -1350
Wire Wire Line
	-6100 -1450 -6000 -1450
Wire Wire Line
	-6100 -1550 -6000 -1550
Wire Wire Line
	-6100 -1650 -6000 -1650
Wire Wire Line
	-6100 -1750 -6000 -1750
Wire Wire Line
	-6100 -1850 -6000 -1850
Wire Wire Line
	-6100 -1150 -6050 -1150
Wire Wire Line
	-6050 -1150 -6050 -1050
Wire Wire Line
	-6050 -1050 -6000 -1050
NoConn ~ -6500 -1150
Entry Wire Line
	-7800 -1750 -7700 -1850
Entry Wire Line
	-7800 -1650 -7700 -1750
Entry Wire Line
	-7800 -1550 -7700 -1650
Entry Wire Line
	-7800 -1450 -7700 -1550
Text GLabel -7600 -1350 0    50   Input ~ 0
LT
Wire Wire Line
	-7600 -1350 -7550 -1350
Wire Wire Line
	-7550 -1250 -7600 -1250
Wire Wire Line
	-7600 -1250 -7600 -1150
Wire Wire Line
	-7600 -1150 -7550 -1150
Wire Wire Line
	-2300 -1750 -2150 -1750
Wire Wire Line
	0    -1050 150  -1050
Wire Wire Line
	150  -1050 150  -1150
Wire Wire Line
	0    -1150 150  -1150
Connection ~ 150  -1150
Wire Wire Line
	150  -1150 150  -1250
$Comp
L power:+5V #PWR?
U 1 1 645942F9
P 150 -1250
AR Path="/6F1F2B46/645942F9" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/645942F9" Ref="#PWR?"  Part="1" 
AR Path="/63268641/645942F9" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/645942F9" Ref="#PWR?"  Part="1" 
AR Path="/645942F9" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/645942F9" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/645942F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 150 -1400 50  0001 C CNN
F 1 "+5V" H 165 -1077 50  0000 C CNN
F 2 "" H 150 -1250 50  0001 C CNN
F 3 "" H 150 -1250 50  0001 C CNN
	1    150  -1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4100 600  -4100 800 
Wire Wire Line
	-3800 200  -3800 300 
Connection ~ -6800 1650
Connection ~ -6650 1800
Entry Wire Line
	-5100 -1750 -5000 -1850
Entry Wire Line
	-5100 -1650 -5000 -1750
Entry Wire Line
	-5100 -1550 -5000 -1650
Entry Wire Line
	-5100 -1450 -5000 -1550
Entry Wire Line
	-2400 -1750 -2300 -1850
Entry Wire Line
	-2400 -1650 -2300 -1750
Entry Wire Line
	-2400 -1550 -2300 -1650
Entry Wire Line
	-2400 -1450 -2300 -1550
Wire Wire Line
	-2650 200  -2500 200 
$Comp
L 74xx:74LS161 U?
U 1 1 6459430C
P -3150 600
AR Path="/6459430C" Ref="U?"  Part="1" 
AR Path="/632F1F43/6459430C" Ref="U?"  Part="1" 
AR Path="/63267F40/6459430C" Ref="U?"  Part="1" 
AR Path="/63A5B205/6459430C" Ref="U?"  Part="1" 
AR Path="/6415E609/6459430C" Ref="U?"  Part="1" 
AR Path="/6415E5B3/6459430C" Ref="U?"  Part="1" 
F 0 "U?" H -3050 1350 50  0000 C CNN
F 1 "74LS162" H -2950 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H -3150 600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H -3150 600 50  0001 C CNN
	1    -3150 600 
	1    0    0    -1  
$EndComp
NoConn ~ -2650 600 
$Comp
L power:+5V #PWR?
U 1 1 64594314
P -4350 -2150
AR Path="/6841E790/64594314" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/64594314" Ref="#PWR?"  Part="1" 
AR Path="/63268641/64594314" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/64594314" Ref="#PWR?"  Part="1" 
AR Path="/64594314" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/64594314" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/64594314" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -4350 -2300 50  0001 C CNN
F 1 "+5V" H -4335 -1977 50  0000 C CNN
F 2 "" H -4350 -2150 50  0001 C CNN
F 3 "" H -4350 -2150 50  0001 C CNN
	1    -4350 -2150
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6459431A
P -7050 -2150
AR Path="/6841E790/6459431A" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6459431A" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6459431A" Ref="#PWR?"  Part="1" 
AR Path="/6341029A/6459431A" Ref="#PWR?"  Part="1" 
AR Path="/6459431A" Ref="#PWR?"  Part="1" 
AR Path="/6415E55D/6459431A" Ref="#PWR?"  Part="1" 
AR Path="/6415E5B3/6459431A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -7050 -2300 50  0001 C CNN
F 1 "+5V" H -7035 -1977 50  0000 C CNN
F 2 "" H -7050 -2150 50  0001 C CNN
F 3 "" H -7050 -2150 50  0001 C CNN
	1    -7050 -2150
	-1   0    0    -1  
$EndComp
Text HLabel -9500 1650 0    50   Input ~ 0
CLK_TX_IN
Text HLabel -9500 1800 0    50   Input ~ 0
~FRAME_RESET
Wire Bus Line
	2350 1950 6600 1950
Wire Bus Line
	6700 2050 6700 2750
Wire Bus Line
	-7800 -1750 -7800 300 
Wire Bus Line
	-5100 -1750 -5100 300 
Wire Bus Line
	-2400 -1750 -2400 300 
Wire Bus Line
	4000 2050 4000 4950
$Comp
L 74xx:74LS373 U?
U 1 1 645B2494
P -7600 4300
F 0 "U?" H -7600 5278 50  0000 C CNN
F 1 "74LS373" H -7600 5187 50  0000 C CNN
F 2 "" H -7600 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H -7600 4300 50  0001 C CNN
	1    -7600 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS373 U?
U 1 1 645B2508
P -4900 4300
F 0 "U?" H -4900 5278 50  0000 C CNN
F 1 "74LS373" H -4900 5187 50  0000 C CNN
F 2 "" H -4900 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H -4900 4300 50  0001 C CNN
	1    -4900 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
