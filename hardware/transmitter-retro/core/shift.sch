EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L 74xx:74LS08 U?
U 1 1 633286AB
P 6350 4450
AR Path="/633286AB" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286AB" Ref="U6"  Part="1" 
F 0 "U6" H 6350 4775 50  0000 C CNN
F 1 "74LS08" H 6350 4684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6350 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6350 4450 50  0001 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 633286B2
P 7150 4650
AR Path="/633286B2" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286B2" Ref="U7"  Part="1" 
F 0 "U7" H 7150 4975 50  0000 C CNN
F 1 "74LS32" H 7150 4884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7150 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7150 4650 50  0001 C CNN
	1    7150 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 633286B9
P 5450 2450
AR Path="/6841E790/633286B9" Ref="#PWR?"  Part="1" 
AR Path="/633286B9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286B9" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5450 2300 50  0001 C CNN
F 1 "+5V" H 5550 2550 50  0000 C CNN
F 2 "" H 5450 2450 50  0001 C CNN
F 3 "" H 5450 2450 50  0001 C CNN
	1    5450 2450
	1    0    0    -1  
$EndComp
NoConn ~ 5950 2850
Entry Wire Line
	4750 2750 4850 2850
Entry Wire Line
	4750 2850 4850 2950
Entry Wire Line
	4750 2950 4850 3050
Entry Wire Line
	4750 3050 4850 3150
Entry Wire Line
	4750 3150 4850 3250
Entry Wire Line
	4750 3250 4850 3350
Entry Wire Line
	4750 3350 4850 3450
Entry Wire Line
	4750 3450 4850 3550
Text Label 4850 2850 0    50   ~ 0
D0
Text Label 4850 2950 0    50   ~ 0
D1
Text Label 4850 3050 0    50   ~ 0
D2
Text Label 4850 3150 0    50   ~ 0
D3
Text Label 4850 3250 0    50   ~ 0
D4
Text Label 4850 3350 0    50   ~ 0
D5
Text Label 4850 3450 0    50   ~ 0
D6
Text Label 4850 3550 0    50   ~ 0
D7
Entry Bus Bus
	4750 2100 4850 2000
$Comp
L power:GND #PWR?
U 1 1 633286D9
P 5450 4350
AR Path="/6841E790/633286D9" Ref="#PWR?"  Part="1" 
AR Path="/633286D9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286D9" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5450 4100 50  0001 C CNN
F 1 "GND" H 5600 4250 50  0000 C CNN
F 2 "" H 5450 4350 50  0001 C CNN
F 3 "" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633286DF
P 5100 2400
AR Path="/6841E790/633286DF" Ref="#PWR?"  Part="1" 
AR Path="/633286DF" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286DF" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5100 2150 50  0001 C CNN
F 1 "GND" H 5105 2227 50  0000 C CNN
F 2 "" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2750 4950 2350
Wire Wire Line
	4950 2350 5100 2350
Wire Wire Line
	5100 2350 5100 2400
Text Notes 5850 2500 0    50   ~ 0
Shift\nRegister
Wire Wire Line
	4850 2850 4950 2850
Wire Wire Line
	4850 2950 4950 2950
Wire Wire Line
	4850 3050 4950 3050
Wire Wire Line
	4850 3150 4950 3150
Wire Wire Line
	4850 3250 4950 3250
Wire Wire Line
	4850 3350 4950 3350
Wire Wire Line
	4850 3450 4950 3450
Wire Wire Line
	4850 3550 4950 3550
Text HLabel 3700 3950 0    50   Input ~ 0
CLK_TX_IN
Wire Wire Line
	6650 4450 6750 4450
Wire Wire Line
	6750 4450 6750 4550
Wire Wire Line
	6750 4550 6850 4550
Wire Wire Line
	5950 2750 6050 2750
$Comp
L 74xx:74LS165 U?
U 1 1 633286A4
P 5450 3350
AR Path="/633286A4" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286A4" Ref="U10"  Part="1" 
F 0 "U10" H 5550 4200 50  0000 C CNN
F 1 "74LS165" H 5650 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5450 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 5450 3350 50  0001 C CNN
	1    5450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4650 7550 4650
Wire Wire Line
	6050 4350 6050 4000
Wire Bus Line
	4850 2000 7650 2000
Text HLabel 7650 2000 2    50   Input ~ 0
D[0..7]
Text HLabel 7650 4650 2    50   Input ~ 0
DATA_RX_OUT
Text HLabel 3700 4050 0    50   Input ~ 0
~SHIFT_ENABLE_IN
Text HLabel 3700 3750 0    50   Input ~ 0
~SHIFT_LOAD_IN
Text HLabel 3700 4550 0    50   Input ~ 0
SHIFT_TRANSMIT_IN
Text HLabel 3700 4750 0    50   Input ~ 0
DATA_FIXED_IN
Wire Wire Line
	3700 4750 6850 4750
Wire Wire Line
	6050 4550 3700 4550
Wire Wire Line
	4950 4050 3700 4050
Text HLabel 3700 1250 0    50   Input ~ 0
~CLK_SLOW_IN
Text HLabel 7650 1050 2    50   Input ~ 0
~CLK_STEP_OUT
Text HLabel 3700 1050 0    50   Input ~ 0
~CLK_STEP_IN
Text HLabel 3700 1150 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel 7650 1250 2    50   Input ~ 0
~CLK_SLOW_OUT
Text HLabel 7650 1150 2    50   Input ~ 0
~CLK_FAST_OUT
Text HLabel 7650 1400 2    50   Input ~ 0
CLK_RX_OUT
Text HLabel 3700 1400 0    50   Input ~ 0
CLK_RX_IN
Wire Wire Line
	7650 1400 7550 1400
Wire Wire Line
	3700 1150 7650 1150
Wire Wire Line
	3700 1250 7650 1250
Wire Wire Line
	7650 1050 3700 1050
Text HLabel 7650 4750 2    50   Input ~ 0
DATA_OUT
Text HLabel 7650 1500 2    50   Input ~ 0
CLK_OUT
Wire Wire Line
	7650 4750 7550 4750
Wire Wire Line
	7550 4750 7550 4650
Connection ~ 7550 4650
Wire Wire Line
	7550 4650 7650 4650
Wire Wire Line
	7650 1500 7550 1500
Wire Wire Line
	7550 1500 7550 1400
Connection ~ 7550 1400
Wire Wire Line
	7550 1400 3700 1400
Wire Wire Line
	3700 3750 4950 3750
Wire Wire Line
	3700 3950 4950 3950
Text HLabel 7550 4000 2    50   Input ~ 0
DATA_SHIFT_OUT
Wire Wire Line
	7550 4000 6050 4000
Connection ~ 6050 4000
Wire Wire Line
	6050 4000 6050 2750
Wire Bus Line
	4750 2100 4750 3450
$EndSCHEMATC
