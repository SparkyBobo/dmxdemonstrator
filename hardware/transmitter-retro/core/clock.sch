EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX3)"
Date "2022-09-30"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Device:R_US R?
U 1 1 632F2350
P 4750 2050
AR Path="/632F2350" Ref="R?"  Part="1" 
AR Path="/63268613/632F2350" Ref="R5"  Part="1" 
F 0 "R5" H 4818 2096 50  0000 L CNN
F 1 "3.3k" H 4818 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4790 2040 50  0001 C CNN
F 3 "~" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632F2357
P 3400 2600
AR Path="/632F2357" Ref="C?"  Part="1" 
AR Path="/63268613/632F2357" Ref="C33"  Part="1" 
F 0 "C33" H 3492 2646 50  0000 L CNN
F 1 ".01uF" H 3492 2555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3400 2600 50  0001 C CNN
F 3 "~" H 3400 2600 50  0001 C CNN
	1    3400 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 632F235E
P 4750 1500
AR Path="/632F235E" Ref="R?"  Part="1" 
AR Path="/63268613/632F235E" Ref="R4"  Part="1" 
F 0 "R4" H 4818 1546 50  0000 L CNN
F 1 "1k" H 4818 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4790 1490 50  0001 C CNN
F 3 "~" H 4750 1500 50  0001 C CNN
	1    4750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 632F236C
P 3200 1550
AR Path="/632F236C" Ref="R?"  Part="1" 
AR Path="/63268613/632F236C" Ref="R1"  Part="1" 
F 0 "R1" H 3050 1600 50  0000 L CNN
F 1 "2.2k" H 3000 1500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3240 1540 50  0001 C CNN
F 3 "~" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632F2373
P 4600 2600
AR Path="/632F2373" Ref="C?"  Part="1" 
AR Path="/63268613/632F2373" Ref="C34"  Part="1" 
F 0 "C34" H 4800 2650 50  0000 R CNN
F 1 ".01uF" H 4900 2550 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4600 2600 50  0001 C CNN
F 3 "~" H 4600 2600 50  0001 C CNN
	1    4600 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632F237A
P 4750 2600
AR Path="/632F237A" Ref="C?"  Part="1" 
AR Path="/63268613/632F237A" Ref="C32"  Part="1" 
F 0 "C32" H 4850 2650 50  0000 L CNN
F 1 ".001uF" H 4850 2550 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4750 2600 50  0001 C CNN
F 3 "~" H 4750 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1850 3450 1850
Connection ~ 3200 1850
Wire Wire Line
	3200 1850 3200 1700
$Comp
L Device:C_Small C?
U 1 1 632F238A
P 3200 2600
AR Path="/632F238A" Ref="C?"  Part="1" 
AR Path="/63268613/632F238A" Ref="C31"  Part="1" 
F 0 "C31" H 3100 2650 50  0000 R CNN
F 1 "1uF" H 3100 2550 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3200 2600 50  0001 C CNN
F 3 "~" H 3200 2600 50  0001 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1900 4750 1850
Wire Wire Line
	4750 1850 4550 1850
Connection ~ 4750 1850
Wire Wire Line
	4750 1850 4750 1650
Wire Wire Line
	4750 2500 4750 2250
Wire Wire Line
	4750 2250 4600 2250
Connection ~ 4750 2250
Wire Wire Line
	4750 2250 4750 2200
Wire Wire Line
	4600 2500 4600 2400
Wire Wire Line
	4600 2400 4550 2400
Wire Wire Line
	3450 2400 3400 2400
Wire Wire Line
	3400 2400 3400 2500
Wire Wire Line
	4750 2750 4750 2700
Wire Wire Line
	4600 2700 4600 2750
Wire Wire Line
	4600 2750 4750 2750
Wire Wire Line
	3400 2700 3400 2750
Connection ~ 3400 2750
Wire Wire Line
	3400 2750 4000 2750
$Comp
L power:GND #PWR?
U 1 1 632F23A5
P 4000 2800
AR Path="/632F23A5" Ref="#PWR?"  Part="1" 
AR Path="/63268613/632F23A5" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 4000 2550 50  0001 C CNN
F 1 "GND" H 4150 2700 50  0000 C CNN
F 2 "" H 4000 2800 50  0001 C CNN
F 3 "" H 4000 2800 50  0001 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2800 4000 2750
Wire Wire Line
	4000 2750 4600 2750
Connection ~ 4600 2750
Connection ~ 4000 2750
$Comp
L transmitter-pro:556 U?
U 1 1 632F23AF
P 4000 2000
AR Path="/632F23AF" Ref="U?"  Part="1" 
AR Path="/63268613/632F23AF" Ref="U1"  Part="1" 
F 0 "U1" H 4150 2600 45  0000 C CNN
F 1 "556" H 4150 2500 45  0000 C CNN
F 2 "Silicon-Standard:DIP14" H 4000 2500 20  0001 C CNN
F 3 "" H 4000 2000 60  0001 C CNN
	1    4000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2250 4600 2150
Wire Wire Line
	4600 2150 4550 2150
Connection ~ 4600 2250
Wire Wire Line
	4600 2250 4550 2250
Wire Wire Line
	4550 1650 4600 1650
Wire Wire Line
	4600 1650 4600 1300
Wire Wire Line
	4750 1350 4750 1300
Wire Wire Line
	4750 1300 4600 1300
Connection ~ 4600 1300
Wire Wire Line
	4000 2750 4000 2700
Wire Wire Line
	3200 1300 3200 1400
Wire Wire Line
	3200 1300 3400 1300
Wire Wire Line
	3450 1650 3400 1650
Wire Wire Line
	3400 1650 3400 1300
Connection ~ 3400 1300
Wire Wire Line
	3400 1300 4000 1300
Wire Wire Line
	4000 1350 4000 1300
Connection ~ 4000 1300
Wire Wire Line
	4000 1300 4600 1300
Wire Wire Line
	3450 2150 3400 2150
Wire Wire Line
	3400 2150 3400 2250
Connection ~ 3400 2250
Wire Wire Line
	3400 2250 3450 2250
Wire Wire Line
	3450 1750 3300 1750
Wire Wire Line
	4000 1300 4000 1250
Wire Wire Line
	10100 950  7150 950 
Wire Wire Line
	7150 950  7150 1650
Wire Wire Line
	3300 1750 3300 2950
Wire Wire Line
	3200 2250 3400 2250
Wire Wire Line
	3200 2250 3200 2500
Text HLabel 1500 2250 0    50   Input ~ 0
SPD_LO
Text HLabel 1500 1850 0    50   Input ~ 0
SPD_WIPER
Wire Wire Line
	1500 2250 2600 2250
Connection ~ 3200 2250
Wire Wire Line
	3000 1850 3200 1850
Wire Wire Line
	1500 1850 2600 1850
Text HLabel 1500 4000 0    50   Input ~ 0
~CLK_SLOW_IN
$Comp
L Device:R_US R?
U 1 1 636F48BB
P 2850 1850
AR Path="/636F48BB" Ref="R?"  Part="1" 
AR Path="/63268613/636F48BB" Ref="R2"  Part="1" 
F 0 "R2" V 2950 1850 50  0000 C CNN
F 1 "100" V 3050 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2890 1840 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	0    1    -1   0   
$EndComp
Wire Wire Line
	3300 2950 5300 2950
Wire Wire Line
	3200 2750 3400 2750
Wire Wire Line
	3200 2750 3200 2700
Text HLabel 10100 950  2    50   Input ~ 0
CLK_SAMPLE_OUT
Text HLabel 10100 1950 2    50   Input ~ 0
CLK_TX_OUT
Text HLabel 10100 2350 2    50   Input ~ 0
CLK_RX_OUT
Wire Wire Line
	9300 2350 8700 2350
Wire Wire Line
	8700 2350 8700 1950
Wire Wire Line
	8700 1950 10100 1950
Wire Wire Line
	9900 2350 10100 2350
Text HLabel 1500 7250 0    50   Input ~ 0
~CLK_STEP_INA
$Comp
L power:+5V #PWR?
U 1 1 63303BD5
P 6500 1200
AR Path="/6841E790/63303BD5" Ref="#PWR?"  Part="1" 
AR Path="/63303BD5" Ref="#PWR?"  Part="1" 
AR Path="/64132440/63303BD5" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63303BD5" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 6500 1050 50  0001 C CNN
F 1 "+5V" H 6515 1373 50  0000 C CNN
F 2 "" H 6500 1200 50  0001 C CNN
F 3 "" H 6500 1200 50  0001 C CNN
	1    6500 1200
	1    0    0    -1  
$EndComp
Text Notes 5950 4300 0    50   ~ 0
Clock Multiplexer:\nS0=0,S1=0: External\nS0=1,S1=0: Fast\nS0=0,S1=1: Slow/Adj\nS0=1,S1=1: Step
Wire Wire Line
	5300 1850 5300 2950
Wire Wire Line
	5300 1850 6000 1850
Wire Wire Line
	5650 1950 6000 1950
Wire Wire Line
	7000 1650 7150 1650
$Comp
L 74xx:74LS04 U8
U 3 1 63357AA3
P 4650 7400
F 0 "U8" H 4650 7717 50  0000 C CNN
F 1 "74LS04" H 4650 7626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4650 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4650 7400 50  0001 C CNN
	3    4650 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6850 1700 6800
$Comp
L 74xx:74LS04 U8
U 4 1 6329DA61
P 9600 2350
F 0 "U8" H 9600 2667 50  0000 C CNN
F 1 "74LS04" H 9600 2576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9600 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9600 2350 50  0001 C CNN
	4    9600 2350
	1    0    0    -1  
$EndComp
Text Notes 4450 1200 0    50   ~ 0
Fast Clock
Text Notes 3100 1200 0    50   ~ 0
Slow/Adj Clock
$Comp
L 74xx:74LS74 U5
U 2 1 63588395
P 5450 6350
F 0 "U5" H 5600 6700 50  0000 C CNN
F 1 "74LS74" H 5650 6600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 6350 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5450 6350 50  0001 C CNN
	2    5450 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U5
U 1 1 63588326
P 3200 6700
F 0 "U5" H 3350 7050 50  0000 C CNN
F 1 "74LS74" H 3400 6950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 6700 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3200 6700 50  0001 C CNN
	1    3200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6700 2750 6700
Wire Wire Line
	3200 7000 3200 7050
Wire Wire Line
	3200 7050 2850 7050
Wire Wire Line
	2850 7050 2850 6300
Wire Wire Line
	2850 6300 3200 6300
Wire Wire Line
	3200 6300 3200 6150
$Comp
L 74xx:74LS32 U7
U 3 1 63653D6B
P 3900 6900
F 0 "U7" H 3900 7225 50  0000 C CNN
F 1 "74LS32" H 3900 7134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3900 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3900 6900 50  0001 C CNN
	3    3900 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6800 3600 6800
Wire Wire Line
	3600 7000 3550 7000
Wire Wire Line
	3550 7000 3550 7150
$Comp
L 74xx:74LS32 U7
U 4 1 63665A56
P 6250 6350
F 0 "U7" H 6250 6675 50  0000 C CNN
F 1 "74LS32" H 6250 6584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6250 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6250 6350 50  0001 C CNN
	4    6250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6450 5950 6450
NoConn ~ 3500 6600
NoConn ~ 5750 6250
Wire Wire Line
	5150 6250 5100 6250
Wire Wire Line
	8700 2350 8700 4650
$Comp
L 74xx:74LS08 U6
U 2 1 6376957E
P 4650 6350
F 0 "U6" H 4650 6675 50  0000 C CNN
F 1 "74LS08" H 4650 6584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4650 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4650 6350 50  0001 C CNN
	2    4650 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6350 6600 6350
Wire Wire Line
	6600 6350 6600 6800
Wire Wire Line
	4350 6250 4300 6250
Wire Wire Line
	4300 6250 4300 5600
Connection ~ 4300 5600
Wire Wire Line
	4350 6450 4300 6450
Wire Wire Line
	4300 6450 4300 6800
Wire Wire Line
	4300 6800 6600 6800
Wire Wire Line
	3200 6300 3200 6400
Connection ~ 3200 6300
Wire Wire Line
	1500 7250 1700 7250
Wire Wire Line
	2900 6600 2650 6600
Wire Wire Line
	5450 6650 5450 6900
Wire Wire Line
	2750 5650 2750 6700
Wire Wire Line
	2750 5600 4300 5600
Wire Wire Line
	5450 6050 5450 5900
Wire Wire Line
	5450 5900 6700 5900
$Comp
L 74xx:74LS08 U6
U 3 1 63A6E069
P 5350 7300
F 0 "U6" H 5350 7625 50  0000 C CNN
F 1 "74LS08" H 5350 7534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5350 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5350 7300 50  0001 C CNN
	3    5350 7300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U8
U 6 1 63A6E114
P 6050 7300
F 0 "U8" H 6050 7617 50  0000 C CNN
F 1 "74LS04" H 6050 7526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6050 7300 50  0001 C CNN
	6    6050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 7300 5750 7300
Wire Wire Line
	5400 1650 5550 1650
Wire Wire Line
	7550 1950 7400 1950
Wire Wire Line
	7400 1950 7400 2000
Wire Wire Line
	7400 1950 7400 1850
Wire Wire Line
	7400 1850 7550 1850
Connection ~ 7400 1950
Wire Wire Line
	7400 1850 7400 1750
Wire Wire Line
	7400 1750 7550 1750
Connection ~ 7400 1850
Wire Wire Line
	7400 1750 7400 1650
Wire Wire Line
	7400 1650 7550 1650
Connection ~ 7400 1750
$Comp
L power:GND #PWR?
U 1 1 6339910F
P 7400 2000
AR Path="/6339910F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6339910F" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6339910F" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7400 1750 50  0001 C CNN
F 1 "GND" H 7500 1900 50  0000 C CNN
F 2 "" H 7400 2000 50  0001 C CNN
F 3 "" H 7400 2000 50  0001 C CNN
	1    7400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63399115
P 8050 1350
AR Path="/63399115" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63399115" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63399115" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 8050 1200 50  0001 C CNN
F 1 "+5V" H 8065 1523 50  0000 C CNN
F 2 "" H 8050 1350 50  0001 C CNN
F 3 "" H 8050 1350 50  0001 C CNN
	1    8050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6339911F
P 7300 1350
AR Path="/6841E790/6339911F" Ref="#PWR?"  Part="1" 
AR Path="/6339911F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6339911F" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6339911F" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 7300 1200 50  0001 C CNN
F 1 "+5V" H 7315 1523 50  0000 C CNN
F 2 "" H 7300 1350 50  0001 C CNN
F 3 "" H 7300 1350 50  0001 C CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2450 7550 2450
Wire Wire Line
	8550 1950 8700 1950
Wire Wire Line
	7300 2250 7550 2250
Wire Wire Line
	7300 2150 7300 1350
Wire Wire Line
	7300 2150 7550 2150
$Comp
L 74xx:74LS161 U?
U 1 1 63399130
P 8050 2150
AR Path="/63399130" Ref="U?"  Part="1" 
AR Path="/63268641/63399130" Ref="U?"  Part="1" 
AR Path="/63268613/63399130" Ref="U3"  Part="1" 
F 0 "U3" H 8150 2900 50  0000 C CNN
F 1 "74LS163" H 8250 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8050 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2650 7300 2650
Wire Wire Line
	7300 2650 7300 2350
$Comp
L power:GND #PWR?
U 1 1 6339913E
P 8050 2950
AR Path="/63268641/6339913E" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6339913E" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 8050 2700 50  0001 C CNN
F 1 "GND" H 8055 2777 50  0000 C CNN
F 2 "" H 8050 2950 50  0001 C CNN
F 3 "" H 8050 2950 50  0001 C CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2350 7300 2250
Connection ~ 7300 2150
Connection ~ 7300 2250
Wire Wire Line
	7300 2250 7300 2150
Wire Wire Line
	7300 2350 7550 2350
Connection ~ 7300 2350
NoConn ~ 8550 1650
NoConn ~ 8550 1750
NoConn ~ 8550 1850
NoConn ~ 8550 2150
Wire Wire Line
	7150 1650 7150 2450
Connection ~ 7150 1650
Connection ~ 8700 1950
$Comp
L Device:R_US R?
U 1 1 6347633F
P 1700 7000
AR Path="/6347633F" Ref="R?"  Part="1" 
AR Path="/63268613/6347633F" Ref="R11"  Part="1" 
F 0 "R11" H 1550 7050 50  0000 L CNN
F 1 "10k" H 1500 6950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1740 6990 50  0001 C CNN
F 3 "~" H 1700 7000 50  0001 C CNN
	1    1700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6600 2650 7150
Wire Wire Line
	2650 7150 3550 7150
Wire Wire Line
	1700 7150 1700 7250
$Comp
L 74xx:74LS08 U6
U 4 1 63500ED3
P 2200 7150
F 0 "U6" H 2200 7475 50  0000 C CNN
F 1 "74LS08" H 2200 7384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2200 7150 50  0001 C CNN
	4    2200 7150
	1    0    0    -1  
$EndComp
Connection ~ 2650 7150
Wire Wire Line
	1900 7050 1850 7050
Wire Wire Line
	1850 7050 1850 6500
Wire Wire Line
	1850 6500 1500 6500
Text HLabel 1500 6500 0    50   Input ~ 0
~CLK_STEP_INB
$Comp
L Device:R_US R?
U 1 1 6352ADE7
P 1850 6250
AR Path="/6352ADE7" Ref="R?"  Part="1" 
AR Path="/63268613/6352ADE7" Ref="R10"  Part="1" 
F 0 "R10" H 1650 6300 50  0000 L CNN
F 1 "10k" H 1650 6200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1890 6240 50  0001 C CNN
F 3 "~" H 1850 6250 50  0001 C CNN
	1    1850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3800 2150 3900
Text HLabel 1500 3900 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel 10100 4550 2    50   Input ~ 0
~CLK_SLOW_OUT
Text HLabel 10100 4450 2    50   Input ~ 0
~CLK_FAST_OUT
$Comp
L 74xx:74LS74 U4
U 1 1 6394DF68
P 3500 4100
F 0 "U4" H 3650 4450 50  0000 C CNN
F 1 "74LS74" H 3700 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3500 4100 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3500 4100 50  0001 C CNN
	1    3500 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U4
U 2 1 6394E00D
P 4650 4100
F 0 "U4" H 4850 4450 50  0000 C CNN
F 1 "74LS74" H 4850 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4650 4100 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4650 4100 50  0001 C CNN
	2    4650 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7400 5050 7400
Wire Wire Line
	10100 4450 5850 4450
Wire Wire Line
	4350 4100 4200 4100
Wire Wire Line
	4200 4100 4200 4650
Wire Wire Line
	4200 4650 3050 4650
Wire Wire Line
	3050 4650 3050 4100
Wire Wire Line
	3050 4100 3200 4100
Wire Wire Line
	3500 4400 3500 4450
Wire Wire Line
	4650 4400 4650 4450
Wire Wire Line
	3800 4000 3900 4000
Wire Wire Line
	3900 4000 3900 4550
NoConn ~ 3800 4200
NoConn ~ 4950 4200
Wire Wire Line
	5400 950  1450 950 
Text HLabel 1450 950  0    50   Input ~ 0
CLK_EXT_IN
Wire Wire Line
	5400 950  5400 1650
$Comp
L Device:R_US R?
U 1 1 63A0E79F
P 5550 1450
AR Path="/63A0E79F" Ref="R?"  Part="1" 
AR Path="/63268613/63A0E79F" Ref="R6"  Part="1" 
F 0 "R6" H 5350 1500 50  0000 L CNN
F 1 "10k" H 5350 1400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5590 1440 50  0001 C CNN
F 3 "~" H 5550 1450 50  0001 C CNN
	1    5550 1450
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U2
U 1 1 64301AD7
P 6500 2250
F 0 "U2" H 6650 3100 50  0000 C CNN
F 1 "74LS151" H 6700 3000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6500 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 6500 2250 50  0001 C CNN
	1    6500 2250
	1    0    0    -1  
$EndComp
NoConn ~ 7000 1750
NoConn ~ 6000 2050
NoConn ~ 6000 2250
NoConn ~ 6000 2350
NoConn ~ 6000 2150
Wire Wire Line
	5750 2550 6000 2550
Wire Wire Line
	5850 2650 6000 2650
Wire Wire Line
	6000 2750 5950 2750
Wire Wire Line
	5950 2750 5950 2950
Wire Wire Line
	5950 3300 6500 3300
Wire Wire Line
	6500 3300 6500 3250
Wire Wire Line
	6000 2950 5950 2950
Connection ~ 5950 2950
Wire Wire Line
	5950 2950 5950 3300
Wire Wire Line
	6500 3300 6500 3350
Connection ~ 6500 3300
Wire Wire Line
	4950 4000 5850 4000
Wire Wire Line
	5750 4550 5750 2550
Wire Wire Line
	1500 3900 2150 3900
Connection ~ 2150 3900
Wire Wire Line
	1500 4000 1750 4000
Wire Wire Line
	1750 3800 1750 4000
$Comp
L Device:R_US R?
U 1 1 63536C51
P 2150 3650
AR Path="/63536C51" Ref="R?"  Part="1" 
AR Path="/63268613/63536C51" Ref="R8"  Part="1" 
F 0 "R8" H 1950 3700 50  0000 L CNN
F 1 "10k" H 1950 3600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2190 3640 50  0001 C CNN
F 3 "~" H 2150 3650 50  0001 C CNN
	1    2150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6400 1850 6500
Connection ~ 1850 6500
$Comp
L Device:R_US R?
U 1 1 63540EEA
P 1750 3650
AR Path="/63540EEA" Ref="R?"  Part="1" 
AR Path="/63268613/63540EEA" Ref="R7"  Part="1" 
F 0 "R7" H 1550 3700 50  0000 L CNN
F 1 "10k" H 1550 3600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1790 3640 50  0001 C CNN
F 3 "~" H 1750 3650 50  0001 C CNN
	1    1750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3500 1750 3450
Wire Wire Line
	1750 3450 2150 3450
Wire Wire Line
	2150 3450 2150 3500
Wire Wire Line
	2150 3400 2150 3450
Connection ~ 2150 3450
$Comp
L power:+5V #PWR?
U 1 1 6359368B
P 4000 1250
AR Path="/6841E790/6359368B" Ref="#PWR?"  Part="1" 
AR Path="/6359368B" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6359368B" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6359368B" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4000 1100 50  0001 C CNN
F 1 "+5V" H 4015 1423 50  0000 C CNN
F 2 "" H 4000 1250 50  0001 C CNN
F 3 "" H 4000 1250 50  0001 C CNN
	1    4000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 635936D0
P 2150 3400
AR Path="/6841E790/635936D0" Ref="#PWR?"  Part="1" 
AR Path="/635936D0" Ref="#PWR?"  Part="1" 
AR Path="/64132440/635936D0" Ref="#PWR?"  Part="1" 
AR Path="/63268613/635936D0" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 2150 3250 50  0001 C CNN
F 1 "+5V" H 2165 3573 50  0000 C CNN
F 2 "" H 2150 3400 50  0001 C CNN
F 3 "" H 2150 3400 50  0001 C CNN
	1    2150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63593715
P 3500 3800
AR Path="/6841E790/63593715" Ref="#PWR?"  Part="1" 
AR Path="/63593715" Ref="#PWR?"  Part="1" 
AR Path="/64132440/63593715" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63593715" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 3500 3650 50  0001 C CNN
F 1 "+5V" H 3515 3973 50  0000 C CNN
F 2 "" H 3500 3800 50  0001 C CNN
F 3 "" H 3500 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6359DDFE
P 4650 3800
AR Path="/6841E790/6359DDFE" Ref="#PWR?"  Part="1" 
AR Path="/6359DDFE" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6359DDFE" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6359DDFE" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 4650 3650 50  0001 C CNN
F 1 "+5V" H 4665 3973 50  0000 C CNN
F 2 "" H 4650 3800 50  0001 C CNN
F 3 "" H 4650 3800 50  0001 C CNN
	1    4650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4450 4650 4450
$Comp
L Device:R_US R?
U 1 1 635BBAA2
P 2600 2050
AR Path="/635BBAA2" Ref="R?"  Part="1" 
AR Path="/63268613/635BBAA2" Ref="R3"  Part="1" 
F 0 "R3" H 2400 2100 50  0000 L CNN
F 1 "1M" H 2400 2000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2640 2040 50  0001 C CNN
F 3 "~" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3900 3050 3900
Wire Wire Line
	2500 3800 2500 4450
Wire Wire Line
	2500 3500 2500 3450
Wire Wire Line
	2500 3450 2150 3450
Text HLabel 1500 4450 0    50   Input ~ 0
~CLK_EXT_SEL_IN
Connection ~ 2500 4450
Wire Wire Line
	1750 4000 3200 4000
Wire Wire Line
	4350 4000 4200 4000
Wire Wire Line
	4200 4000 4200 3550
Wire Wire Line
	4200 3550 3050 3550
Wire Wire Line
	3050 3550 3050 3900
Wire Wire Line
	5550 1600 5550 1650
Connection ~ 5550 1650
Wire Wire Line
	5550 1650 6000 1650
Wire Wire Line
	5550 1300 5550 1250
Wire Wire Line
	5550 1250 6500 1250
Wire Wire Line
	6500 1200 6500 1250
Wire Wire Line
	6500 1250 6500 1350
Connection ~ 6500 1250
$Comp
L power:+5V #PWR?
U 1 1 63762EEC
P 1850 6100
AR Path="/6841E790/63762EEC" Ref="#PWR?"  Part="1" 
AR Path="/63762EEC" Ref="#PWR?"  Part="1" 
AR Path="/64132440/63762EEC" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63762EEC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 1850 5950 50  0001 C CNN
F 1 "+5V" H 1865 6273 50  0000 C CNN
F 2 "" H 1850 6100 50  0001 C CNN
F 3 "" H 1850 6100 50  0001 C CNN
	1    1850 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6376307D
P 1700 6800
AR Path="/6841E790/6376307D" Ref="#PWR?"  Part="1" 
AR Path="/6376307D" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6376307D" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6376307D" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1700 6650 50  0001 C CNN
F 1 "+5V" H 1715 6973 50  0000 C CNN
F 2 "" H 1700 6800 50  0001 C CNN
F 3 "" H 1700 6800 50  0001 C CNN
	1    1700 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 637630C2
P 3200 6150
AR Path="/6841E790/637630C2" Ref="#PWR?"  Part="1" 
AR Path="/637630C2" Ref="#PWR?"  Part="1" 
AR Path="/64132440/637630C2" Ref="#PWR?"  Part="1" 
AR Path="/63268613/637630C2" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 3200 6000 50  0001 C CNN
F 1 "+5V" H 3215 6323 50  0000 C CNN
F 2 "" H 3200 6150 50  0001 C CNN
F 3 "" H 3200 6150 50  0001 C CNN
	1    3200 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637631D3
P 6500 3350
AR Path="/63268641/637631D3" Ref="#PWR?"  Part="1" 
AR Path="/63268613/637631D3" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 6500 3100 50  0001 C CNN
F 1 "GND" H 6505 3177 50  0000 C CNN
F 2 "" H 6500 3350 50  0001 C CNN
F 3 "" H 6500 3350 50  0001 C CNN
	1    6500 3350
	1    0    0    -1  
$EndComp
Connection ~ 1700 7250
Wire Wire Line
	1700 7250 1900 7250
Wire Wire Line
	5000 6900 5000 7200
Wire Wire Line
	5000 7200 5050 7200
Wire Wire Line
	4350 7400 4300 7400
Wire Wire Line
	4300 7400 4300 6800
Wire Wire Line
	6700 7300 6350 7300
Wire Wire Line
	6700 5900 6700 7300
Text Notes 3300 5550 0    50   ~ 0
Step Clock\nStarts a cycle of CLK_TX from hi to lo to hi.
Wire Wire Line
	4550 1750 5550 1750
Wire Wire Line
	4950 6350 5000 6350
Wire Wire Line
	5000 6350 5000 5700
Connection ~ 5000 6350
Wire Wire Line
	5000 6350 5150 6350
Wire Wire Line
	5950 6250 5850 6250
Wire Wire Line
	5850 6250 5850 5800
Wire Wire Line
	2500 7150 2650 7150
Wire Wire Line
	5100 6250 5100 5800
Wire Wire Line
	5650 1950 5650 5700
Wire Wire Line
	5650 5700 5000 5700
Wire Wire Line
	5550 1750 5550 4650
Connection ~ 5550 1750
Wire Wire Line
	5550 1750 6000 1750
Text Label 5950 4450 0    50   ~ 0
S1
Text Label 5950 4550 0    50   ~ 0
S0
Text Notes 9000 2900 0    50   ~ 0
CLK_RX is the same frequency at CLK_TX\nand offset by 2x frequency. So the rising edge\nof CLK_RX is occurs midway between the rising\nedges of CLK_TX.
Text Notes 8850 1450 0    50   ~ 0
CLK_SAMPLE is 16x CLK_TX. From\nrising edge to rising edge of CLK_TX,\nCLK_SAMPLE has 32 rising edges.
Text Notes 1550 2150 0    50   ~ 0
To external\npotentiometer
Wire Wire Line
	2600 1900 2600 1850
Connection ~ 2600 1850
Wire Wire Line
	2600 1850 2700 1850
Wire Wire Line
	2600 2200 2600 2250
Connection ~ 2600 2250
Wire Wire Line
	2600 2250 3200 2250
$Comp
L Device:R_US R?
U 1 1 639E1B8D
P 2500 3650
AR Path="/639E1B8D" Ref="R?"  Part="1" 
AR Path="/63268613/639E1B8D" Ref="R9"  Part="1" 
F 0 "R9" H 2300 3700 50  0000 L CNN
F 1 "10k" H 2300 3600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2540 3640 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4450 3500 4450
Wire Wire Line
	5850 2650 5850 4000
Wire Wire Line
	1500 4450 2500 4450
Connection ~ 1750 4000
Connection ~ 3500 4450
Wire Wire Line
	3900 4550 5750 4550
Connection ~ 5750 4550
Wire Wire Line
	5750 4550 10100 4550
Wire Wire Line
	5850 4000 5850 4450
Connection ~ 5850 4000
Connection ~ 8700 2350
Text Label 5950 4650 0    50   ~ 0
CLK_TX
Wire Wire Line
	4300 5600 5550 5600
Text Label 5150 5600 0    50   ~ 0
CLK_FAST
Text Label 5150 5700 0    50   ~ 0
CLK_STEP
Text Label 5150 5800 0    50   ~ 0
CLK_TX
Wire Wire Line
	5850 4650 5850 5800
Wire Wire Line
	5100 5800 5850 5800
Connection ~ 5850 5800
Wire Wire Line
	5850 4650 8700 4650
Text Label 5650 1750 0    50   ~ 0
CLK_FAST
Text Label 5650 1850 0    50   ~ 0
CLK_SLOW
Text Label 5650 1950 0    50   ~ 0
CLK_STEP
Text Label 5650 1650 0    50   ~ 0
CLK_EXT
Text Label 5850 2650 0    50   ~ 0
S1
Text Label 5850 2550 0    50   ~ 0
S0
Wire Wire Line
	4200 4650 5550 4650
Connection ~ 4200 4650
Connection ~ 5550 4650
Wire Wire Line
	5550 4650 5550 5600
Text Notes 1500 4650 0    50   ~ 0
CLK_EXT_SEL sets S0=S1=0, selecting\nthe CLK_EXT input to feed the clock.
Text Notes 3050 3500 0    50   ~ 0
S0 and S1 are set on the rising edge\nof the fast clock.
Text Notes 3550 6300 0    50   ~ 0
Create a reset\npulse from the\nCLK_STEP inputs
Text Notes 4450 6700 0    50   ~ 0
Send CLK_FAST\nto CLK_STEP
Text Notes 5600 6750 0    50   ~ 0
Enable CLK_STEP while\nCLK_TX is high, then low.
Wire Wire Line
	4200 6900 5000 6900
Connection ~ 5000 6900
Wire Wire Line
	5000 6900 5450 6900
Connection ~ 4300 6800
$EndSCHEMATC
