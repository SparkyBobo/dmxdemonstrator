EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "DMX Demonstrator - Transmitter-Retro Core (DMX-TX3)"
Date "2023-05-27"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 633286B9
P 5450 2650
AR Path="/6841E790/633286B9" Ref="#PWR?"  Part="1" 
AR Path="/633286B9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286B9" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5450 2500 50  0001 C CNN
F 1 "+5V" H 5550 2750 50  0000 C CNN
F 2 "" H 5450 2650 50  0001 C CNN
F 3 "" H 5450 2650 50  0001 C CNN
	1    5450 2650
	1    0    0    -1  
$EndComp
NoConn ~ 5950 3050
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
Entry Wire Line
	4750 3550 4850 3650
Entry Wire Line
	4750 3650 4850 3750
Text Label 4850 3750 0    50   ~ 0
D0
Text Label 4850 3650 0    50   ~ 0
D1
Text Label 4850 3550 0    50   ~ 0
D2
Text Label 4850 3450 0    50   ~ 0
D3
Text Label 4850 3350 0    50   ~ 0
D4
Text Label 4850 3250 0    50   ~ 0
D5
Text Label 4850 3150 0    50   ~ 0
D6
Text Label 4850 3050 0    50   ~ 0
D7
Entry Bus Bus
	4650 2550 4750 2650
$Comp
L power:GND #PWR?
U 1 1 633286D9
P 5450 4550
AR Path="/6841E790/633286D9" Ref="#PWR?"  Part="1" 
AR Path="/633286D9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286D9" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5450 4300 50  0001 C CNN
F 1 "GND" H 5600 4450 50  0000 C CNN
F 2 "" H 5450 4550 50  0001 C CNN
F 3 "" H 5450 4550 50  0001 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633286DF
P 5100 2600
AR Path="/6841E790/633286DF" Ref="#PWR?"  Part="1" 
AR Path="/633286DF" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286DF" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5100 2350 50  0001 C CNN
F 1 "GND" H 5105 2427 50  0000 C CNN
F 2 "" H 5100 2600 50  0001 C CNN
F 3 "" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2550 5100 2600
Text Notes 5300 2350 0    50   ~ 0
Data Shift
Wire Wire Line
	4850 3650 4950 3650
Wire Wire Line
	4850 3550 4950 3550
Wire Wire Line
	4850 3450 4950 3450
Wire Wire Line
	4850 3350 4950 3350
Wire Wire Line
	4850 3250 4950 3250
Wire Wire Line
	4850 3150 4950 3150
Wire Wire Line
	4850 3050 4950 3050
Text HLabel 3700 4150 0    50   Input ~ 0
CLK_TX_IN
Wire Wire Line
	6650 4650 6750 4650
Wire Wire Line
	6750 4650 6750 4750
Wire Wire Line
	6750 4750 6850 4750
Wire Wire Line
	5950 2950 6050 2950
$Comp
L 74xx:74LS165 U?
U 1 1 633286A4
P 5450 3550
AR Path="/633286A4" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286A4" Ref="U2"  Part="1" 
F 0 "U2" H 5550 4400 50  0000 C CNN
F 1 "74LS165" H 5650 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5450 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 5450 3550 50  0001 C CNN
	1    5450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4550 6050 4200
Wire Bus Line
	4650 2550 3700 2550
Text HLabel 3700 2550 0    50   Input ~ 0
D[0..7]
Text HLabel 8550 4850 2    50   Input ~ 0
DATA_RX_OUT
Text HLabel 3700 4250 0    50   Input ~ 0
~SHIFT_ENABLE_IN
Text HLabel 3700 3950 0    50   Input ~ 0
~SHIFT_LOAD_IN
Text HLabel 3700 4750 0    50   Input ~ 0
SHIFT_TRANSMIT_IN
Text HLabel 3700 4950 0    50   Input ~ 0
DATA_FIXED_IN
Wire Wire Line
	3700 4950 6850 4950
Wire Wire Line
	6050 4750 3700 4750
Wire Wire Line
	4950 4250 3700 4250
Wire Wire Line
	3700 3950 4950 3950
Wire Wire Line
	3700 4150 4950 4150
Text HLabel 8550 4200 2    50   Input ~ 0
DATA_SHIFT_OUT
Wire Wire Line
	8550 4200 6050 4200
Connection ~ 6050 4200
Wire Wire Line
	6050 4200 6050 2950
Wire Wire Line
	7450 4850 8550 4850
Text HLabel 3700 5150 0    50   Input ~ 0
CLK_RX_IN
Wire Wire Line
	3700 5150 8550 5150
Text HLabel 8550 5150 2    50   Input ~ 0
CLK_RX_OUT
Text Notes 6250 3650 0    50   ~ 0
"The ’LS165A is a 8-bit serial shift registers that shift the data\nin the direction of (D0) toward (D7) when clocked."\n\nWhen shifting, the Q7 output first see the data from D7, then D6, then D5,\netc...  Q7 output will see the data from D0 on the eighth clock pulse on CP.\n\nIn DMX, the least significant bit (LSB) is sent first, which equates to D0.\nTherefore, the D0 but from the bus is connected to the D7 input of the '165\nso that Q7 output first see the data from D0, then D1, then D2, etc...
Wire Wire Line
	4950 2950 4900 2950
Wire Wire Line
	4900 2950 4900 2550
Wire Wire Line
	4900 2550 5100 2550
Text Notes 6050 5950 0    50   ~ 0
The data sent to DATA_RX_OUT is a combination of the shoft register output\nand the data from DATA_FIXED_IN. DATA_FIXED_IN is always feed to  DATA_RX_OUT,\nso any value is has is seen at DATA_RX_OUT. For the portions of the packet that need\nto be 1, DATA_FIXED_IN is 1; for all other portions it is 0. \n\nSHIFT_TRANSMIT_IN combines with the shift register output using an AND gate so the\nshift register output is only sent to DATA_RX_OUT when SHIFT_TRANSMIT_IN is 1.\n\n
Wire Wire Line
	4950 3750 4850 3750
$Comp
L 74xx:74LS08 U12
U 3 1 6459E181
P 6350 4650
AR Path="/632F1F43/6459E181" Ref="U12"  Part="3" 
AR Path="/63268641/6459E181" Ref="U?"  Part="3" 
F 0 "U12" H 6350 4975 50  0000 C CNN
F 1 "74LS08" H 6350 4884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6350 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6350 4650 50  0001 C CNN
	3    6350 4650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U11
U 3 1 645B2287
P 7150 4850
AR Path="/632F1F43/645B2287" Ref="U11"  Part="3" 
AR Path="/6BB77A68/645B2287" Ref="U?"  Part="3" 
F 0 "U11" H 7150 5175 50  0000 C CNN
F 1 "74LS32" H 7150 5084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7150 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7150 4850 50  0001 C CNN
	3    7150 4850
	1    0    0    -1  
$EndComp
Wire Bus Line
	4750 2650 4750 3650
$EndSCHEMATC
