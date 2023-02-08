EESchema Schematic File Version 4
LIBS:display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX5)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Memory_EPROM:27128 U?
U 1 1 633513CD
P 5150 3700
AR Path="/633513CD" Ref="U?"  Part="1" 
AR Path="/632F1F43/633513CD" Ref="U?"  Part="1" 
AR Path="/63267F40/633513CD" Ref="U?"  Part="1" 
AR Path="/63A5B205/633513CD" Ref="U?"  Part="1" 
F 0 "U?" H 5300 4850 50  0000 C CNN
F 1 "27128" H 5350 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 5150 3700 50  0001 C CNN
F 3 "http://eeshop.unl.edu/pdf/27128.pdf" H 5150 3700 50  0001 C CNN
	1    5150 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 633513E9
P 1650 2850
AR Path="/633513E9" Ref="U?"  Part="1" 
AR Path="/632F1F43/633513E9" Ref="U?"  Part="1" 
AR Path="/63267F40/633513E9" Ref="U?"  Part="1" 
AR Path="/63A5B205/633513E9" Ref="U?"  Part="1" 
F 0 "U?" H 1750 3600 50  0000 C CNN
F 1 "74LS161" H 1850 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1650 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 635885ED
P 9150 3400
AR Path="/63267F40/635885ED" Ref="J?"  Part="1" 
AR Path="/635885ED" Ref="J?"  Part="1" 
AR Path="/63A5B205/635885ED" Ref="J?"  Part="1" 
F 0 "J?" H 9200 4517 50  0000 C CNN
F 1 "Expansion" H 9200 4426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9150 3400 50  0001 C CNN
F 3 "~" H 9150 3400 50  0001 C CNN
	1    9150 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633513F0
P 1650 3650
AR Path="/633513F0" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633513F0" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/633513F0" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/633513F0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 3400 50  0001 C CNN
F 1 "GND" H 1800 3550 50  0000 C CNN
F 2 "" H 1650 3650 50  0001 C CNN
F 3 "" H 1650 3650 50  0001 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3350 1150 3350
Wire Wire Line
	1150 3050 1100 3050
Wire Wire Line
	1150 2650 1000 2650
Wire Wire Line
	1000 2650 1000 2700
Wire Wire Line
	1000 2650 1000 2550
Wire Wire Line
	1000 2550 1150 2550
Connection ~ 1000 2650
Wire Wire Line
	1000 2550 1000 2450
Wire Wire Line
	1000 2450 1150 2450
Connection ~ 1000 2550
Wire Wire Line
	1000 2450 1000 2350
Wire Wire Line
	1000 2350 1150 2350
Connection ~ 1000 2450
$Comp
L power:GND #PWR?
U 1 1 63351403
P 1000 2700
AR Path="/63351403" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63351403" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351403" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63351403" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 2450 50  0001 C CNN
F 1 "GND" H 1005 2527 50  0000 C CNN
F 2 "" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0001 C CNN
	1    1000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2850 1100 2850
Wire Wire Line
	1100 2850 1100 2950
Connection ~ 1100 3050
Wire Wire Line
	1100 3050 850  3050
Wire Wire Line
	1150 2950 1100 2950
Connection ~ 1100 2950
Wire Wire Line
	1100 2950 1100 3050
$Comp
L power:+5V #PWR?
U 1 1 63351410
P 1650 2050
AR Path="/63351410" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63351410" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351410" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63351410" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 1900 50  0001 C CNN
F 1 "+5V" H 1665 2223 50  0000 C CNN
F 2 "" H 1650 2050 50  0001 C CNN
F 3 "" H 1650 2050 50  0001 C CNN
	1    1650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2350 2300 2350
Wire Wire Line
	2150 2450 2300 2450
Wire Wire Line
	2150 2550 2300 2550
Text Notes 2050 3350 0    50   ~ 0
Address\nCounter
Wire Wire Line
	850  2050 850  3050
$Comp
L power:+5V #PWR?
U 1 1 6335141B
P 850 2050
AR Path="/6841E790/6335141B" Ref="#PWR?"  Part="1" 
AR Path="/6335141B" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6335141B" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335141B" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6335141B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 850 1900 50  0001 C CNN
F 1 "+5V" H 865 2223 50  0000 C CNN
F 2 "" H 850 2050 50  0001 C CNN
F 3 "" H 850 2050 50  0001 C CNN
	1    850  2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3350 1000 4050
Wire Wire Line
	850  3150 1150 3150
$Comp
L 74xx:74LS161 U?
U 1 1 63351423
P 3350 2850
AR Path="/63351423" Ref="U?"  Part="1" 
AR Path="/632F1F43/63351423" Ref="U?"  Part="1" 
AR Path="/63267F40/63351423" Ref="U?"  Part="1" 
AR Path="/63A5B205/63351423" Ref="U?"  Part="1" 
F 0 "U?" H 3450 3600 50  0000 C CNN
F 1 "74LS161" H 3550 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3350 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3350 2850 50  0001 C CNN
	1    3350 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6335142A
P 3350 3650
AR Path="/6335142A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6335142A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335142A" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6335142A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 3400 50  0001 C CNN
F 1 "GND" H 3500 3550 50  0000 C CNN
F 2 "" H 3350 3650 50  0001 C CNN
F 3 "" H 3350 3650 50  0001 C CNN
	1    3350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3350 2850 3350
Wire Wire Line
	2850 2650 2700 2650
Wire Wire Line
	2700 2650 2700 2700
Wire Wire Line
	2700 2650 2700 2550
Wire Wire Line
	2700 2550 2850 2550
Connection ~ 2700 2650
Wire Wire Line
	2700 2550 2700 2450
Wire Wire Line
	2700 2450 2850 2450
Connection ~ 2700 2550
Wire Wire Line
	2700 2450 2700 2350
Wire Wire Line
	2700 2350 2850 2350
Connection ~ 2700 2450
$Comp
L power:GND #PWR?
U 1 1 6335143C
P 2700 2700
AR Path="/6335143C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6335143C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335143C" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6335143C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 2450 50  0001 C CNN
F 1 "GND" H 2705 2527 50  0000 C CNN
F 2 "" H 2700 2700 50  0001 C CNN
F 3 "" H 2700 2700 50  0001 C CNN
	1    2700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2850 2800 2850
Wire Wire Line
	2800 2850 2800 2950
$Comp
L power:+5V #PWR?
U 1 1 63351444
P 3350 2050
AR Path="/63351444" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63351444" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351444" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63351444" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 1900 50  0001 C CNN
F 1 "+5V" H 3365 2223 50  0000 C CNN
F 2 "" H 3350 2050 50  0001 C CNN
F 3 "" H 3350 2050 50  0001 C CNN
	1    3350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2350 4000 2350
Wire Wire Line
	3850 2450 4000 2450
Wire Wire Line
	3850 2550 4000 2550
Wire Wire Line
	2550 2050 2550 2950
$Comp
L power:+5V #PWR?
U 1 1 6335144F
P 2550 2050
AR Path="/6841E790/6335144F" Ref="#PWR?"  Part="1" 
AR Path="/6335144F" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6335144F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335144F" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6335144F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2550 1900 50  0001 C CNN
F 1 "+5V" H 2565 2223 50  0000 C CNN
F 2 "" H 2550 2050 50  0001 C CNN
F 3 "" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3350 2550 4050
Wire Wire Line
	2400 3150 2850 3150
Wire Wire Line
	2400 3150 2400 3900
Entry Wire Line
	2300 2350 2400 2250
Entry Wire Line
	2300 2450 2400 2350
Entry Wire Line
	2300 2550 2400 2450
Entry Wire Line
	2300 2650 2400 2550
Wire Wire Line
	2150 2850 2400 2850
Wire Wire Line
	2400 2850 2400 3050
Wire Wire Line
	2150 2650 2300 2650
Wire Wire Line
	2400 3050 2850 3050
Entry Wire Line
	4000 2650 4100 2550
Entry Wire Line
	4000 2550 4100 2450
Entry Wire Line
	4000 2450 4100 2350
Entry Wire Line
	4000 2350 4100 2250
Wire Wire Line
	3850 2650 4000 2650
Entry Bus Bus
	4100 1900 4000 1800
Entry Bus Bus
	2400 1900 2500 1800
Wire Wire Line
	1000 4050 2550 4050
$Comp
L power:GND #PWR?
U 1 1 63351468
P 5150 4800
AR Path="/63351468" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63351468" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351468" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63351468" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 4550 50  0001 C CNN
F 1 "GND" H 5155 4627 50  0000 C CNN
F 2 "" H 5150 4800 50  0001 C CNN
F 3 "" H 5150 4800 50  0001 C CNN
	1    5150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6335146E
P 5150 2600
AR Path="/6335146E" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6335146E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335146E" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/6335146E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 2450 50  0001 C CNN
F 1 "+5V" H 5165 2773 50  0000 C CNN
F 2 "" H 5150 2600 50  0001 C CNN
F 3 "" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4400 4500 4400
Wire Wire Line
	4500 4400 4500 4300
Wire Wire Line
	4750 4300 4500 4300
Connection ~ 4500 4300
Wire Wire Line
	4500 4300 4500 3800
Wire Wire Line
	4750 4500 4650 4500
Wire Wire Line
	4650 4500 4650 4100
Wire Wire Line
	4650 4500 4650 4600
Connection ~ 4650 4500
Wire Wire Line
	4750 4600 4650 4600
Connection ~ 4650 4600
Wire Wire Line
	4650 4600 4650 4800
$Comp
L power:GND #PWR?
U 1 1 63351480
P 4650 4800
AR Path="/63351480" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63351480" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351480" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63351480" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 4550 50  0001 C CNN
F 1 "GND" H 4655 4627 50  0000 C CNN
F 2 "" H 4650 4800 50  0001 C CNN
F 3 "" H 4650 4800 50  0001 C CNN
	1    4650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3600 4650 3600
Wire Wire Line
	4750 3700 4650 3700
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4650 3600
Wire Wire Line
	4750 3800 4650 3800
Connection ~ 4650 3800
Wire Wire Line
	4650 3800 4650 3700
Wire Wire Line
	4750 3900 4650 3900
Connection ~ 4650 3900
Wire Wire Line
	4650 3900 4650 3800
Wire Wire Line
	4750 4000 4650 4000
Connection ~ 4650 4000
Wire Wire Line
	4650 4000 4650 3900
Wire Wire Line
	4750 4100 4650 4100
Connection ~ 4650 4100
Wire Wire Line
	4650 4100 4650 4000
Entry Wire Line
	4500 2700 4600 2800
Entry Wire Line
	4500 2800 4600 2900
Entry Wire Line
	4500 2900 4600 3000
Entry Wire Line
	4500 3000 4600 3100
Entry Wire Line
	4500 3100 4600 3200
Entry Wire Line
	4500 3200 4600 3300
Entry Wire Line
	4500 3300 4600 3400
Entry Wire Line
	4500 3400 4600 3500
$Comp
L power:+5V #PWR?
U 1 1 633514A3
P 4500 3800
AR Path="/633514A3" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633514A3" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/633514A3" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/633514A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 3650 50  0001 C CNN
F 1 "+5V" H 4515 3973 50  0000 C CNN
F 2 "" H 4500 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
	1    4500 3800
	1    0    0    -1  
$EndComp
Text Label 2150 2350 0    50   ~ 0
IA0
Text Label 2150 2450 0    50   ~ 0
IA1
Text Label 2150 2550 0    50   ~ 0
IA2
Text Label 2150 2650 0    50   ~ 0
IA3
Text Label 3850 2350 0    50   ~ 0
IA4
Text Label 3850 2450 0    50   ~ 0
IA5
Text Label 3850 2550 0    50   ~ 0
IA6
Text Label 3850 2650 0    50   ~ 0
IA7
Text Label 4600 2800 0    50   ~ 0
IA0
Text Label 4600 2900 0    50   ~ 0
IA1
Text Label 4600 3000 0    50   ~ 0
IA2
Text Label 4600 3100 0    50   ~ 0
IA3
Text Label 4600 3200 0    50   ~ 0
IA4
Text Label 4600 3300 0    50   ~ 0
IA5
Text Label 4600 3400 0    50   ~ 0
IA6
Text Label 4600 3500 0    50   ~ 0
IA7
Text Notes 5000 2300 0    50   ~ 0
Instruction\nEPROM
Wire Wire Line
	2550 2950 2800 2950
Connection ~ 2800 2950
Wire Wire Line
	2800 2950 2850 2950
Wire Wire Line
	850  3150 850  3900
Wire Wire Line
	4600 2800 4750 2800
Wire Wire Line
	4600 2900 4750 2900
Wire Wire Line
	4600 3000 4750 3000
Wire Wire Line
	4600 3100 4750 3100
Wire Wire Line
	4600 3200 4750 3200
Wire Wire Line
	4600 3300 4750 3300
Wire Wire Line
	4600 3400 4750 3400
Wire Wire Line
	4600 3500 4750 3500
Entry Bus Bus
	4500 1900 4400 1800
Connection ~ 1000 4050
Wire Wire Line
	850  3900 2400 3900
Connection ~ 850  3900
$Comp
L power:GND #PWR?
U 1 1 63C930AB
P 8750 4500
AR Path="/63C930AB" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63C930AB" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63C930AB" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/63C930AB" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63C930AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8750 4250 50  0001 C CNN
F 1 "GND" H 8900 4400 50  0000 C CNN
F 2 "" H 8750 4500 50  0001 C CNN
F 3 "" H 8750 4500 50  0001 C CNN
	1    8750 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 4300 8750 4300
Wire Wire Line
	8750 4300 8750 4400
Wire Wire Line
	8850 4400 8750 4400
Connection ~ 8750 4400
Wire Wire Line
	8750 4400 8750 4500
$Comp
L power:GND #PWR?
U 1 1 63C930B6
P 9450 4500
AR Path="/63C930B6" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63C930B6" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63C930B6" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/63C930B6" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63C930B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9450 4250 50  0001 C CNN
F 1 "GND" H 9600 4400 50  0000 C CNN
F 2 "" H 9450 4500 50  0001 C CNN
F 3 "" H 9450 4500 50  0001 C CNN
	1    9450 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 4500 9450 4400
Wire Wire Line
	9450 4300 9350 4300
Wire Wire Line
	9350 4400 9450 4400
Connection ~ 9450 4400
Wire Wire Line
	9450 4400 9450 4300
$Comp
L power:+5V #PWR?
U 1 1 63C930C1
P 8750 2400
AR Path="/63C930C1" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63C930C1" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63C930C1" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/63C930C1" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63C930C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8750 2250 50  0001 C CNN
F 1 "+5V" H 8765 2573 50  0000 C CNN
F 2 "" H 8750 2400 50  0001 C CNN
F 3 "" H 8750 2400 50  0001 C CNN
	1    8750 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 2600 8750 2600
Wire Wire Line
	8750 2600 8750 2500
Wire Wire Line
	8850 2500 8750 2500
Connection ~ 8750 2500
Wire Wire Line
	8750 2500 8750 2400
$Comp
L power:+5V #PWR?
U 1 1 63C930CC
P 9450 2400
AR Path="/63C930CC" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63C930CC" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63C930CC" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/63C930CC" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63C930CC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9450 2250 50  0001 C CNN
F 1 "+5V" H 9465 2573 50  0000 C CNN
F 2 "" H 9450 2400 50  0001 C CNN
F 3 "" H 9450 2400 50  0001 C CNN
	1    9450 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 2600 9450 2600
Wire Wire Line
	9450 2600 9450 2500
Wire Wire Line
	9350 2500 9450 2500
Connection ~ 9450 2500
Wire Wire Line
	9450 2500 9450 2400
Text Label 8850 2800 2    50   ~ 0
SAMPLE_LATCH
Text Label 8850 2900 2    50   ~ 0
~SAMPLE_RESET
Text Label 8850 3000 2    50   ~ 0
SAMPLE_SEL0
Text Label 8850 3100 2    50   ~ 0
SAMPLE_SEL1
Text Label 8850 3200 2    50   ~ 0
~SHIFT_LOAD
Text Label 8850 3300 2    50   ~ 0
SHIFT_DISABLE
Text Label 8850 3400 2    50   ~ 0
SHIFT_TRANSMIT
Text Label 8850 3500 2    50   ~ 0
DATA_FIXED
Wire Wire Line
	9350 3500 9850 3500
Text Label 9600 3500 2    50   ~ 0
CLK_TX
Text Label 8850 3600 2    50   ~ 0
~FRAME_RESET
NoConn ~ 8850 3700
NoConn ~ 8850 3800
NoConn ~ 8850 3900
NoConn ~ 8850 4000
NoConn ~ 8850 4100
NoConn ~ 8850 4200
NoConn ~ 9350 4200
NoConn ~ 9350 4100
NoConn ~ 9350 4000
NoConn ~ 9350 3900
Wire Wire Line
	9850 3500 9850 5450
Wire Wire Line
	9850 5450 850  5450
Wire Wire Line
	850  5450 850  3900
NoConn ~ 9350 2700
NoConn ~ 9350 2800
NoConn ~ 9350 2900
NoConn ~ 9350 3000
NoConn ~ 9350 3100
NoConn ~ 9350 3200
NoConn ~ 9350 3300
NoConn ~ 9350 3400
NoConn ~ 9350 3600
NoConn ~ 9350 3700
NoConn ~ 9350 3800
Wire Wire Line
	1000 5300 8350 5300
Wire Wire Line
	8350 5300 8350 4100
NoConn ~ 3850 2850
NoConn ~ 8850 2700
Wire Wire Line
	5550 3500 6200 3500
$Comp
L 74xx:74LS32 U?
U 3 1 63E3B12B
P 7250 4000
F 0 "U?" H 7250 4325 50  0000 C CNN
F 1 "74LS32" H 7250 4234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7250 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7250 4000 50  0001 C CNN
	3    7250 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 63E3B1AE
P 7950 4100
F 0 "U?" H 7950 4425 50  0000 C CNN
F 1 "74LS32" H 7950 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7950 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7950 4100 50  0001 C CNN
	4    7950 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 63E3B20B
P 4650 6900
F 0 "U?" H 4880 6946 50  0000 L CNN
F 1 "74LS32" H 4880 6855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4650 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4650 6900 50  0001 C CNN
	5    4650 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 634D4622
P 6200 6700
F 0 "MH?" H 6300 6746 50  0000 L CNN
F 1 "MountingHole" H 6300 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 6700 50  0001 C CNN
F 3 "~" H 6200 6700 50  0001 C CNN
	1    6200 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 634D46A2
P 6200 6950
F 0 "MH?" H 6300 6996 50  0000 L CNN
F 1 "MountingHole" H 6300 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 6950 50  0001 C CNN
F 3 "~" H 6200 6950 50  0001 C CNN
	1    6200 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 634D470E
P 6200 7200
F 0 "MH?" H 6300 7246 50  0000 L CNN
F 1 "MountingHole" H 6300 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 7200 50  0001 C CNN
F 3 "~" H 6200 7200 50  0001 C CNN
	1    6200 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 634D4778
P 6200 7450
F 0 "MH?" H 6300 7496 50  0000 L CNN
F 1 "MountingHole" H 6300 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 7450 50  0001 C CNN
F 3 "~" H 6200 7450 50  0001 C CNN
	1    6200 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 681C43A0
P 2150 6900
AR Path="/5F2B3F8A/681C43A0" Ref="C?"  Part="1" 
AR Path="/5F2B505F/681C43A0" Ref="C?"  Part="1" 
AR Path="/6BB77A68/681C43A0" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/681C43A0" Ref="C?"  Part="1" 
AR Path="/681C43A0" Ref="C?"  Part="1" 
AR Path="/63A5B205/681C43A0" Ref="C?"  Part="1" 
F 0 "C?" H 2265 6946 50  0000 L CNN
F 1 ".01uF" H 2265 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2188 6750 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
	1    2150 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 681C4400
P 2600 6900
AR Path="/5F2B3F8A/681C4400" Ref="C?"  Part="1" 
AR Path="/5F2B505F/681C4400" Ref="C?"  Part="1" 
AR Path="/6BB77A68/681C4400" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/681C4400" Ref="C?"  Part="1" 
AR Path="/681C4400" Ref="C?"  Part="1" 
AR Path="/63A5B205/681C4400" Ref="C?"  Part="1" 
F 0 "C?" H 2715 6946 50  0000 L CNN
F 1 ".01uF" H 2715 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2638 6750 50  0001 C CNN
F 3 "~" H 2600 6900 50  0001 C CNN
	1    2600 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 681C443E
P 3050 6900
AR Path="/5F2B3F8A/681C443E" Ref="C?"  Part="1" 
AR Path="/5F2B505F/681C443E" Ref="C?"  Part="1" 
AR Path="/6BB77A68/681C443E" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/681C443E" Ref="C?"  Part="1" 
AR Path="/681C443E" Ref="C?"  Part="1" 
AR Path="/63A5B205/681C443E" Ref="C?"  Part="1" 
F 0 "C?" H 3165 6946 50  0000 L CNN
F 1 ".01uF" H 3165 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3088 6750 50  0001 C CNN
F 3 "~" H 3050 6900 50  0001 C CNN
	1    3050 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 714E8297
P 3500 6900
AR Path="/5F2B3F8A/714E8297" Ref="C?"  Part="1" 
AR Path="/5F2B505F/714E8297" Ref="C?"  Part="1" 
AR Path="/6BB77A68/714E8297" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/714E8297" Ref="C?"  Part="1" 
AR Path="/714E8297" Ref="C?"  Part="1" 
AR Path="/63A5B205/714E8297" Ref="C?"  Part="1" 
F 0 "C?" H 3615 6946 50  0000 L CNN
F 1 ".01uF" H 3615 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3538 6750 50  0001 C CNN
F 3 "~" H 3500 6900 50  0001 C CNN
	1    3500 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 714E8299
P 3950 6900
AR Path="/5F2B3F8A/714E8299" Ref="C?"  Part="1" 
AR Path="/5F2B505F/714E8299" Ref="C?"  Part="1" 
AR Path="/6BB77A68/714E8299" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/714E8299" Ref="C?"  Part="1" 
AR Path="/714E8299" Ref="C?"  Part="1" 
AR Path="/63A5B205/714E8299" Ref="C?"  Part="1" 
F 0 "C?" H 4065 6946 50  0000 L CNN
F 1 ".01uF" H 4065 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3988 6750 50  0001 C CNN
F 3 "~" H 3950 6900 50  0001 C CNN
	1    3950 6900
	1    0    0    -1  
$EndComp
NoConn ~ 1550 6900
NoConn ~ 1550 7450
NoConn ~ 1550 6350
Wire Wire Line
	950  7550 850  7550
Wire Wire Line
	850  6800 950  6800
Wire Wire Line
	850  7000 950  7000
Connection ~ 850  6800
Wire Wire Line
	850  7350 950  7350
Connection ~ 850  7350
Wire Wire Line
	850  7350 850  7000
$Comp
L power:+5V #PWR?
U 1 1 63EB223B
P 850 6150
AR Path="/63EB223B" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63EB223B" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63EB223B" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/63EB223B" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63EB223B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 850 6000 50  0001 C CNN
F 1 "+5V" H 865 6323 50  0000 C CNN
F 2 "" H 850 6150 50  0001 C CNN
F 3 "" H 850 6150 50  0001 C CNN
	1    850  6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 6400 5450 6350
Wire Wire Line
	5450 6350 4650 6350
Wire Wire Line
	2150 6350 2150 6750
Wire Wire Line
	2600 6750 2600 6350
Connection ~ 2600 6350
Wire Wire Line
	2600 6350 2150 6350
Wire Wire Line
	3050 6750 3050 6350
Connection ~ 3050 6350
Wire Wire Line
	3050 6350 2600 6350
Wire Wire Line
	3500 6750 3500 6350
Connection ~ 3500 6350
Wire Wire Line
	3500 6350 3050 6350
Wire Wire Line
	3950 6750 3950 6350
Connection ~ 3950 6350
Wire Wire Line
	3950 6350 3500 6350
Wire Wire Line
	4650 6400 4650 6350
Connection ~ 4650 6350
Wire Wire Line
	4650 6350 3950 6350
Wire Wire Line
	5450 7400 5450 7450
Wire Wire Line
	5450 7450 4650 7450
Wire Wire Line
	2150 7450 2150 7050
Wire Wire Line
	2600 7050 2600 7450
Connection ~ 2600 7450
Wire Wire Line
	2600 7450 2150 7450
Wire Wire Line
	3050 7050 3050 7450
Connection ~ 3050 7450
Wire Wire Line
	3050 7450 2600 7450
Wire Wire Line
	3500 7050 3500 7450
Connection ~ 3500 7450
Wire Wire Line
	3500 7450 3050 7450
Wire Wire Line
	3950 7050 3950 7450
Connection ~ 3950 7450
Wire Wire Line
	3950 7450 3500 7450
Wire Wire Line
	4650 7400 4650 7450
Connection ~ 4650 7450
$Comp
L power:GND #PWR?
U 1 1 63F3877C
P 3950 7500
AR Path="/63F3877C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63F3877C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63F3877C" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63F3877C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 7250 50  0001 C CNN
F 1 "GND" H 3955 7327 50  0000 C CNN
F 2 "" H 3950 7500 50  0001 C CNN
F 3 "" H 3950 7500 50  0001 C CNN
	1    3950 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7450 3950 7500
$Comp
L power:+5V #PWR?
U 1 1 63F401EA
P 3950 6300
AR Path="/6841E790/63F401EA" Ref="#PWR?"  Part="1" 
AR Path="/63F401EA" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63F401EA" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63F401EA" Ref="#PWR?"  Part="1" 
AR Path="/63A5B205/63F401EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 6150 50  0001 C CNN
F 1 "+5V" H 3965 6473 50  0000 C CNN
F 2 "" H 3950 6300 50  0001 C CNN
F 3 "" H 3950 6300 50  0001 C CNN
	1    3950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6350 3950 6300
Connection ~ 850  7000
Wire Wire Line
	850  7000 850  6800
Wire Wire Line
	950  6250 850  6250
Connection ~ 850  6250
Wire Wire Line
	850  6250 850  6450
Wire Wire Line
	950  6450 850  6450
Connection ~ 850  6450
Wire Wire Line
	850  6450 850  6800
Text Notes 6150 2700 0    50   ~ 0
Reset: 10001101b (0x4d, 141d)\nThis is the final value in a packet. At this point,\nthe counter will reset and start the break again.\n\nIts' chosen because it's a value which is unlikely\nto be used in a packet, i.e. sample reset and latch \nany dimmer and shift load while enabled while \ntransmitting a break.\n
$Comp
L 74xx:74LS32 U?
U 2 1 63871246
P 6550 5050
AR Path="/63871246" Ref="U?"  Part="2" 
AR Path="/632F1F43/63871246" Ref="U?"  Part="2" 
AR Path="/63267F40/63871246" Ref="U?"  Part="2" 
AR Path="/63A5B205/63871246" Ref="U?"  Part="2" 
F 0 "U?" H 6550 4733 50  0000 C CNN
F 1 "74LS32" H 6550 4824 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6550 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6550 5050 50  0001 C CNN
	2    6550 5050
	1    0    0    1   
$EndComp
Text Notes 7350 4550 2    50   ~ 0
Reset
Wire Wire Line
	6250 3800 6200 3800
Wire Wire Line
	6850 4500 6900 4500
Wire Wire Line
	6950 4100 6900 4100
Wire Wire Line
	6950 3900 6850 3900
Wire Wire Line
	6900 4100 6900 4500
Wire Wire Line
	6250 4000 6100 4000
Wire Wire Line
	6250 4400 6000 4400
Wire Wire Line
	1000 4050 1000 5300
Wire Wire Line
	5550 2900 5700 2900
Wire Wire Line
	5550 3400 6000 3400
Wire Wire Line
	6200 3800 6200 3500
Connection ~ 6200 3500
$Comp
L 74xx:74LS00 U?
U 1 1 639D9D08
P 6550 3900
F 0 "U?" H 6550 4225 50  0000 C CNN
F 1 "74LS00" H 6550 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6550 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6550 3900 50  0001 C CNN
	1    6550 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 3 1 639D9E78
P 1250 6900
F 0 "U?" H 1250 7225 50  0000 C CNN
F 1 "74LS00" H 1250 7134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1250 6900 50  0001 C CNN
	3    1250 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3300 5900 3300
Wire Wire Line
	5550 3200 5800 3200
Wire Wire Line
	5900 4600 6250 4600
$Comp
L 74xx:74LS32 U?
U 1 1 639F9CBD
P 6550 4500
F 0 "U?" H 6550 4825 50  0000 C CNN
F 1 "74LS32" H 6550 4734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6550 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6550 4500 50  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5150 6250 5150
Wire Wire Line
	5700 5150 5700 2900
Connection ~ 5700 2900
Wire Wire Line
	5800 3200 5800 4950
Wire Wire Line
	5800 4950 6250 4950
Connection ~ 5800 3200
Wire Wire Line
	6100 4000 6100 2800
Connection ~ 6100 2800
Wire Wire Line
	5550 2800 6100 2800
Wire Wire Line
	5900 4600 5900 3300
Connection ~ 5900 3300
Wire Wire Line
	6000 3400 6000 4400
Connection ~ 6000 3400
Wire Wire Line
	6850 5050 7600 5050
Wire Wire Line
	7600 5050 7600 4200
Wire Wire Line
	7600 4200 7650 4200
Wire Wire Line
	7550 4000 7650 4000
Wire Wire Line
	8250 4100 8350 4100
Connection ~ 8350 4100
Wire Wire Line
	8350 3600 8350 4100
Wire Wire Line
	5550 3000 8850 3000
Wire Wire Line
	5550 3100 8850 3100
Wire Wire Line
	8350 3600 8850 3600
Wire Wire Line
	6200 3500 8850 3500
Wire Wire Line
	5700 2900 8850 2900
Wire Wire Line
	5800 3200 8850 3200
Wire Wire Line
	6100 2800 8850 2800
Wire Wire Line
	5900 3300 8850 3300
Wire Wire Line
	6000 3400 8850 3400
$Comp
L 74xx:74LS00 U?
U 2 1 63AF0D80
P 1250 6350
F 0 "U?" H 1250 6675 50  0000 C CNN
F 1 "74LS00" H 1250 6584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1250 6350 50  0001 C CNN
	2    1250 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 4 1 639D9EE1
P 1250 7450
F 0 "U?" H 1250 7775 50  0000 C CNN
F 1 "74LS00" H 1250 7684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1250 7450 50  0001 C CNN
	4    1250 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7350 850  7550
Wire Wire Line
	850  6150 850  6250
$Comp
L 74xx:74LS00 U?
U 5 1 63AF9174
P 5450 6900
F 0 "U?" H 5680 6946 50  0000 L CNN
F 1 "74LS00" H 5680 6855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5450 6900 50  0001 C CNN
	5    5450 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7450 4650 7450
Wire Bus Line
	2500 1800 4400 1800
Wire Bus Line
	2400 1900 2400 2550
Wire Bus Line
	4100 1900 4100 2550
Wire Bus Line
	4500 1900 4500 3400
$EndSCHEMATC
