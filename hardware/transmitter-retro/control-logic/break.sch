EESchema Schematic File Version 4
LIBS:control-logic-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX3)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L 74xx:74LS161 U?
U 1 1 63417431
P 3650 2850
AR Path="/63417431" Ref="U?"  Part="1" 
AR Path="/632F1F43/63417431" Ref="U?"  Part="1" 
AR Path="/63267F40/63417431" Ref="U?"  Part="1" 
AR Path="/6328016E/63417431" Ref="U?"  Part="1" 
AR Path="/63397143/63417431" Ref="U?"  Part="1" 
AR Path="/634170D9/63417431" Ref="U11"  Part="1" 
F 0 "U11" H 3750 3600 50  0000 C CNN
F 1 "74LS163" H 3850 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3650 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3650 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63417438
P 3650 3650
AR Path="/63417438" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63417438" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63417438" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63417438" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63417438" Ref="#PWR?"  Part="1" 
AR Path="/634170D9/63417438" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 3650 3400 50  0001 C CNN
F 1 "GND" H 3800 3550 50  0000 C CNN
F 2 "" H 3650 3650 50  0001 C CNN
F 3 "" H 3650 3650 50  0001 C CNN
	1    3650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3050 3000 3050
Wire Wire Line
	3150 2650 3000 2650
Wire Wire Line
	3000 2650 3000 2700
Wire Wire Line
	3000 2650 3000 2550
Wire Wire Line
	3000 2550 3150 2550
Connection ~ 3000 2650
Wire Wire Line
	3000 2550 3000 2450
Wire Wire Line
	3000 2450 3150 2450
Connection ~ 3000 2550
$Comp
L power:GND #PWR?
U 1 1 63417448
P 3000 2700
AR Path="/63417448" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63417448" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63417448" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63417448" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63417448" Ref="#PWR?"  Part="1" 
AR Path="/634170D9/63417448" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 3000 2450 50  0001 C CNN
F 1 "GND" H 3005 2527 50  0000 C CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2850 3100 2850
$Comp
L power:+5V #PWR?
U 1 1 63417452
P 3650 2050
AR Path="/63417452" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63417452" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63417452" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63417452" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63417452" Ref="#PWR?"  Part="1" 
AR Path="/634170D9/63417452" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 3650 1900 50  0001 C CNN
F 1 "+5V" H 3665 2223 50  0000 C CNN
F 2 "" H 3650 2050 50  0001 C CNN
F 3 "" H 3650 2050 50  0001 C CNN
	1    3650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2350 4300 2350
Wire Wire Line
	4150 2450 4300 2450
Wire Wire Line
	4150 2550 4300 2550
Wire Wire Line
	2850 2050 2850 2350
$Comp
L power:+5V #PWR?
U 1 1 6341745C
P 2850 2050
AR Path="/6841E790/6341745C" Ref="#PWR?"  Part="1" 
AR Path="/6341745C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6341745C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6341745C" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/6341745C" Ref="#PWR?"  Part="1" 
AR Path="/63397143/6341745C" Ref="#PWR?"  Part="1" 
AR Path="/634170D9/6341745C" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 2850 1900 50  0001 C CNN
F 1 "+5V" H 2865 2223 50  0000 C CNN
F 2 "" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
	1    2850 2050
	1    0    0    -1  
$EndComp
Entry Wire Line
	4300 2350 4400 2250
Entry Wire Line
	4300 2450 4400 2350
Entry Wire Line
	4300 2550 4400 2450
Entry Wire Line
	4300 2650 4400 2550
Wire Wire Line
	4150 2650 4300 2650
Text Label 4150 2350 0    50   ~ 0
B0
Text Label 4150 2450 0    50   ~ 0
B1
Text Label 4150 2550 0    50   ~ 0
B2
Text Label 4150 2650 0    50   ~ 0
B3
Wire Wire Line
	2900 3150 2900 4850
Text HLabel 2700 4850 0    50   Input ~ 0
CLK_TX_IN
Connection ~ 2900 4850
Wire Wire Line
	2700 4850 2900 4850
$Comp
L 74xx:74LS74 U?
U 1 1 63417472
P 5450 2950
AR Path="/63397143/63417472" Ref="U?"  Part="1" 
AR Path="/63417472" Ref="U?"  Part="1" 
AR Path="/634170D9/63417472" Ref="U9"  Part="1" 
F 0 "U9" H 5650 3300 50  0000 C CNN
F 1 "74LS74" H 5650 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 2950 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5450 2950 50  0001 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2850 5100 2850
Wire Wire Line
	5100 2850 5100 3300
Wire Wire Line
	5100 3300 5800 3300
Wire Wire Line
	5800 3300 5800 3050
Wire Wire Line
	5800 3050 5750 3050
$Comp
L power:+5V #PWR?
U 1 1 63417487
P 5450 2600
AR Path="/63417487" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63417487" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63417487" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63417487" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63417487" Ref="#PWR?"  Part="1" 
AR Path="/634170D9/63417487" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 5450 2450 50  0001 C CNN
F 1 "+5V" H 5465 2773 50  0000 C CNN
F 2 "" H 5450 2600 50  0001 C CNN
F 3 "" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
Entry Bus Bus
	4400 2150 4500 2050
Entry Bus Bus
	6000 2050 6100 2150
Entry Wire Line
	6000 2850 6100 2750
Wire Wire Line
	5750 2850 6000 2850
Text Label 5900 2850 0    50   ~ 0
B4
Text Notes 4600 1750 0    50   ~ 0
Break Counter\n1-27 (26 Steps)\n
Entry Wire Line
	6100 3850 6200 3950
Text Label 6200 3950 0    50   ~ 0
B1
Entry Wire Line
	6100 3100 6200 3200
Entry Wire Line
	6100 3300 6200 3400
Wire Wire Line
	6200 3200 6350 3200
Wire Wire Line
	6200 3400 6350 3400
Text Label 6200 3200 0    50   ~ 0
B3
Text Label 6200 3400 0    50   ~ 0
B4
Wire Wire Line
	2850 2350 3150 2350
Connection ~ 2850 2350
Wire Wire Line
	2850 2350 2850 2950
$Comp
L 74xx:74LS08 U?
U 1 1 634174A2
P 4700 2950
AR Path="/63397143/634174A2" Ref="U?"  Part="1" 
AR Path="/634174A2" Ref="U?"  Part="1" 
AR Path="/634170D9/634174A2" Ref="U3"  Part="1" 
F 0 "U3" H 4700 3275 50  0000 C CNN
F 1 "74LS08" H 4700 3184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4700 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4700 2950 50  0001 C CNN
	1    4700 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 2 1 634174A9
P 7550 2850
AR Path="/63397143/634174A9" Ref="U?"  Part="2" 
AR Path="/634174A9" Ref="U?"  Part="2" 
AR Path="/634170D9/634174A9" Ref="U3"  Part="2" 
F 0 "U3" H 7550 3175 50  0000 C CNN
F 1 "74LS08" H 7550 3084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7550 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7550 2850 50  0001 C CNN
	2    7550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3950 6350 3950
Wire Wire Line
	3000 3050 3000 4700
Wire Wire Line
	2900 4850 4300 4850
Text HLabel 2700 5000 0    50   Input ~ 0
~FRAME_RESET_IN
Text HLabel 9700 2850 2    50   Input ~ 0
DATA_MAB_OUT
Text HLabel 9700 3750 2    50   Input ~ 0
SHIFT_ENABLE_OUT
$Comp
L 74xx:74LS08 U3
U 3 1 6347B901
P 6650 3300
F 0 "U3" H 6650 3625 50  0000 C CNN
F 1 "74LS08" H 6650 3534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6650 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6650 3300 50  0001 C CNN
	3    6650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2950 5000 2950
Wire Wire Line
	4400 3050 4300 3050
Wire Wire Line
	4300 3050 4300 4850
Wire Wire Line
	3100 2850 3100 5000
Wire Wire Line
	4150 2850 4400 2850
Wire Bus Line
	4500 2050 6000 2050
Wire Wire Line
	2700 5000 3100 5000
Wire Wire Line
	5450 2650 5450 2600
Entry Wire Line
	6100 3650 6200 3750
Text Label 6200 3750 0    50   ~ 0
B0
Wire Wire Line
	6200 3750 6350 3750
Wire Wire Line
	6950 3300 7050 3300
$Comp
L 74xx:74LS00 U?
U 1 1 6347D442
P 6650 2750
AR Path="/63397143/6347D442" Ref="U?"  Part="1" 
AR Path="/6347D442" Ref="U?"  Part="1" 
AR Path="/634170D9/6347D442" Ref="U5"  Part="1" 
F 0 "U5" H 6650 3075 50  0000 C CNN
F 1 "74LS00" H 6650 2984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6650 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6650 2750 50  0001 C CNN
	1    6650 2750
	1    0    0    -1  
$EndComp
Entry Wire Line
	6100 2750 6200 2850
Text Label 6200 2850 0    50   ~ 0
B1
Wire Wire Line
	6200 2850 6350 2850
Entry Wire Line
	6100 2550 6200 2650
Text Label 6200 2650 0    50   ~ 0
B0
Wire Wire Line
	6200 2650 6350 2650
Wire Wire Line
	7250 2950 7050 2950
Wire Wire Line
	7050 2950 7050 3300
Wire Wire Line
	7850 2850 9700 2850
Wire Wire Line
	3000 4700 8000 4700
Wire Wire Line
	6950 2750 7250 2750
Wire Wire Line
	7250 3650 7050 3650
Wire Wire Line
	7050 3650 7050 3300
Connection ~ 7050 3300
Wire Wire Line
	7850 4300 8000 4300
Wire Wire Line
	8000 4300 8000 4700
Wire Wire Line
	3100 5000 5450 5000
Connection ~ 3100 5000
Wire Wire Line
	5450 3250 5450 5000
Text HLabel 9700 4300 2    50   Input ~ 0
SAMPLE_ENABLE_OUT
Wire Wire Line
	8750 4100 8750 4050
$Comp
L power:+5V #PWR?
U 1 1 63463239
P 8750 4050
AR Path="/63463239" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63463239" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63463239" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63463239" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63463239" Ref="#PWR?"  Part="1" 
AR Path="/634170D9/63463239" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 8750 3900 50  0001 C CNN
F 1 "+5V" H 8765 4223 50  0000 C CNN
F 2 "" H 8750 4050 50  0001 C CNN
F 3 "" H 8750 4050 50  0001 C CNN
	1    8750 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U?
U 2 1 63417479
P 8750 4400
AR Path="/63397143/63417479" Ref="U?"  Part="2" 
AR Path="/63417479" Ref="U?"  Part="2" 
AR Path="/634170D9/63417479" Ref="U9"  Part="2" 
F 0 "U9" H 8900 4750 50  0000 C CNN
F 1 "74LS74" H 8950 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8750 4400 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 8750 4400 50  0001 C CNN
	2    8750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4850 8350 4850
Wire Wire Line
	8350 4850 8350 4400
Wire Wire Line
	8350 4400 8450 4400
Connection ~ 4300 4850
Wire Wire Line
	5450 5000 8750 5000
Wire Wire Line
	8750 5000 8750 4700
Connection ~ 5450 5000
Wire Wire Line
	9050 4300 9700 4300
Wire Wire Line
	6950 3850 7150 3850
Wire Wire Line
	7050 3650 7050 4400
Wire Wire Line
	7050 4400 7250 4400
Connection ~ 7050 3650
Wire Wire Line
	7150 3850 7150 4200
Wire Wire Line
	7150 4200 7250 4200
Connection ~ 7150 3850
Wire Wire Line
	7150 3850 7250 3850
Wire Wire Line
	8450 4300 8350 4300
Wire Wire Line
	8350 4300 8350 3750
Wire Wire Line
	7850 3750 8350 3750
Connection ~ 8350 3750
Wire Wire Line
	8350 3750 9700 3750
NoConn ~ 9050 4500
$Comp
L 74xx:74LS08 U3
U 4 1 6374F211
P 6650 3850
F 0 "U3" H 6650 4175 50  0000 C CNN
F 1 "74LS08" H 6650 4084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6650 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6650 3850 50  0001 C CNN
	4    6650 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U4
U 1 1 637509BD
P 7550 3750
F 0 "U4" H 7550 4075 50  0000 C CNN
F 1 "74LS08" H 7550 3984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7550 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7550 3750 50  0001 C CNN
	1    7550 3750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U5
U 2 1 63750F16
P 7550 4300
F 0 "U5" H 7550 4625 50  0000 C CNN
F 1 "74LS00" H 7550 4534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7550 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7550 4300 50  0001 C CNN
	2    7550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2300 6350 2300
Entry Wire Line
	6100 2200 6200 2300
Text Label 6200 2300 0    50   ~ 0
B2
NoConn ~ 6350 2300
Wire Wire Line
	2850 2950 3150 2950
Wire Wire Line
	3150 3350 2850 3350
Wire Wire Line
	2850 3350 2850 2950
Connection ~ 2850 2950
Wire Wire Line
	2900 3150 3150 3150
Wire Bus Line
	4400 2150 4400 2550
Wire Bus Line
	6100 2150 6100 3850
$EndSCHEMATC
