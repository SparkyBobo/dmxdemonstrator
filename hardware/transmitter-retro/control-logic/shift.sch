EESchema Schematic File Version 4
LIBS:control-logic-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX3)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text HLabel 8650 4150 2    50   Input ~ 0
~SHIFT_ENABLE_OUT
Text HLabel 8650 3150 2    50   Input ~ 0
~SHIFT_LOAD_OUT
Text HLabel 8650 3650 2    50   Input ~ 0
SHIFT_TRANSMIT_OUT
Text HLabel 8650 1600 2    50   Input ~ 0
DATA_FIXED_OUT
Wire Wire Line
	4050 3050 4000 3050
Wire Wire Line
	4000 3050 4000 2950
Wire Wire Line
	4050 2950 4000 2950
Wire Wire Line
	4050 3250 3900 3250
Wire Wire Line
	3900 3250 3900 3300
Wire Wire Line
	3900 3250 3900 3150
Wire Wire Line
	3900 3150 4050 3150
Connection ~ 3900 3250
$Comp
L power:GND #PWR?
U 1 1 63470022
P 3900 3300
AR Path="/63470022" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63470022" Ref="#PWR0133"  Part="1" 
AR Path="/63267F40/63470022" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63470022" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63470022" Ref="#PWR?"  Part="1" 
F 0 "#PWR0133" H 3900 3050 50  0001 C CNN
F 1 "GND" H 3905 3127 50  0000 C CNN
F 2 "" H 3900 3300 50  0001 C CNN
F 3 "" H 3900 3300 50  0001 C CNN
	1    3900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3450 4000 3450
Wire Wire Line
	3750 2650 3750 3050
$Comp
L power:+5V #PWR?
U 1 1 6347002E
P 3750 2650
AR Path="/6841E790/6347002E" Ref="#PWR?"  Part="1" 
AR Path="/6347002E" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6347002E" Ref="#PWR0134"  Part="1" 
AR Path="/63267F40/6347002E" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/6347002E" Ref="#PWR?"  Part="1" 
AR Path="/63397143/6347002E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0134" H 3750 2500 50  0001 C CNN
F 1 "+5V" H 3765 2823 50  0000 C CNN
F 2 "" H 3750 2650 50  0001 C CNN
F 3 "" H 3750 2650 50  0001 C CNN
	1    3750 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 63470034
P 4550 3450
AR Path="/63470034" Ref="U?"  Part="1" 
AR Path="/632F1F43/63470034" Ref="U3"  Part="1" 
AR Path="/63267F40/63470034" Ref="U?"  Part="1" 
AR Path="/6328016E/63470034" Ref="U?"  Part="1" 
AR Path="/63397143/63470034" Ref="U?"  Part="1" 
F 0 "U3" H 4650 4200 50  0000 C CNN
F 1 "74LS162" H 4750 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4550 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 4550 3450 50  0001 C CNN
	1    4550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3050 3750 3050
Connection ~ 4000 3050
Connection ~ 3750 3050
Wire Wire Line
	3750 3050 3750 3550
Entry Wire Line
	5300 2600 5400 2500
Entry Wire Line
	5300 2800 5400 2700
Wire Wire Line
	5400 2500 5550 2500
Wire Wire Line
	5400 2700 5550 2700
Text Label 5400 2500 0    50   ~ 0
SH2
Text Label 5400 2700 0    50   ~ 0
SH3
Wire Wire Line
	5050 2950 5200 2950
Wire Wire Line
	5050 3050 5200 3050
Wire Wire Line
	5050 3150 5200 3150
Entry Wire Line
	5200 2950 5300 2850
Entry Wire Line
	5200 3050 5300 2950
Entry Wire Line
	5200 3150 5300 3050
Entry Wire Line
	5200 3250 5300 3150
Wire Wire Line
	5050 3250 5200 3250
Text Label 5050 2950 0    50   ~ 0
SH0
Text Label 5050 3050 0    50   ~ 0
SH1
Text Label 5050 3150 0    50   ~ 0
SH2
Text Label 5050 3250 0    50   ~ 0
SH3
$Comp
L 74xx:74LS32 U?
U 1 1 6347005E
P 5800 3150
AR Path="/63397143/6347005E" Ref="U?"  Part="1" 
AR Path="/632F1F43/6347005E" Ref="U15"  Part="1" 
F 0 "U15" H 5800 3475 50  0000 C CNN
F 1 "74LS32" H 5800 3384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5800 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5800 3150 50  0001 C CNN
	1    5800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1500 7250 1500
Wire Wire Line
	6250 2050 6450 2050
Wire Wire Line
	7850 1600 8650 1600
Wire Wire Line
	6150 2600 6250 2600
Entry Wire Line
	5300 3550 5400 3650
Entry Wire Line
	5300 3750 5400 3850
Wire Wire Line
	5400 3850 5550 3850
Text Label 5400 3650 0    50   ~ 0
SH2
Text Label 5400 3850 0    50   ~ 0
SH3
$Comp
L 74xx:74LS32 U?
U 2 1 63470077
P 6750 1950
AR Path="/63397143/63470077" Ref="U?"  Part="2" 
AR Path="/632F1F43/63470077" Ref="U15"  Part="2" 
F 0 "U15" H 6750 2275 50  0000 C CNN
F 1 "74LS32" H 6750 2184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 1950 50  0001 C CNN
	2    6750 1950
	1    0    0    -1  
$EndComp
Entry Wire Line
	5300 2950 5400 3050
Entry Wire Line
	5300 4700 5400 4800
Wire Wire Line
	5400 3050 5500 3050
Text Label 5400 3050 0    50   ~ 0
SH2
Text Label 5400 4800 0    50   ~ 0
SH1
Wire Wire Line
	6250 2600 6250 2050
Wire Wire Line
	7150 4250 7300 4250
Wire Wire Line
	7900 4150 8650 4150
NoConn ~ 5050 3450
Wire Wire Line
	6250 4600 6450 4600
Wire Wire Line
	5400 4800 6450 4800
Wire Wire Line
	7050 4700 7150 4700
Wire Wire Line
	7150 4700 7150 4950
Entry Wire Line
	5300 3150 5400 3250
Wire Wire Line
	5400 3250 5500 3250
Text Label 5400 3250 0    50   ~ 0
SH3
Wire Wire Line
	6250 2600 6250 4600
Connection ~ 6250 2600
Wire Wire Line
	3150 3650 4050 3650
$Comp
L power:GND #PWR?
U 1 1 634700C1
P 4550 4250
AR Path="/634700C1" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/634700C1" Ref="#PWR0135"  Part="1" 
AR Path="/63267F40/634700C1" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/634700C1" Ref="#PWR?"  Part="1" 
AR Path="/63397143/634700C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0135" H 4550 4000 50  0001 C CNN
F 1 "GND" H 4700 4150 50  0000 C CNN
F 2 "" H 4550 4250 50  0001 C CNN
F 3 "" H 4550 4250 50  0001 C CNN
	1    4550 4250
	1    0    0    -1  
$EndComp
Text Notes 4250 2350 0    50   ~ 0
Shift Counter\n3-14 (12 Steps)\n
Wire Wire Line
	4750 4950 7150 4950
Wire Wire Line
	4150 5050 4000 5050
Text HLabel 3150 3650 0    50   Input ~ 0
SHIFT_ENABLE_IN
Text HLabel 3100 1500 0    50   Input ~ 0
DATA_MAB_IN
Text HLabel 3150 3750 0    50   Input ~ 0
CLK_TX_IN
Text HLabel 3150 5350 0    50   Input ~ 0
~FRAME_RESET_IN
Wire Wire Line
	3150 5350 4850 5350
Wire Wire Line
	3150 3750 4050 3750
Wire Wire Line
	4750 5150 4850 5150
Wire Wire Line
	4850 5150 4850 5350
$Comp
L power:+5V #PWR0136
U 1 1 6337BD0E
P 4550 2650
F 0 "#PWR0136" H 4550 2500 50  0001 C CNN
F 1 "+5V" H 4565 2823 50  0000 C CNN
F 2 "" H 4550 2650 50  0001 C CNN
F 3 "" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3150 6350 3150
Wire Wire Line
	7300 4050 7150 4050
Wire Wire Line
	7150 4050 7150 4150
Text HLabel 3100 1850 0    50   Input ~ 0
DATA_BREAK_IN
Wire Wire Line
	3100 1850 6450 1850
Wire Wire Line
	7050 1950 7150 1950
Wire Wire Line
	7150 1950 7150 1700
Wire Wire Line
	7150 1700 7250 1700
$Comp
L 74xx:74LS08 U10
U 2 1 6375104F
P 4450 5050
F 0 "U10" H 4450 5375 50  0000 C CNN
F 1 "74LS08" H 4450 5284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4450 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4450 5050 50  0001 C CNN
	2    4450 5050
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U15
U 3 1 6375129D
P 7550 1600
F 0 "U15" H 7550 1925 50  0000 C CNN
F 1 "74LS32" H 7550 1834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7550 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7550 1600 50  0001 C CNN
	3    7550 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U?
U 3 1 637A582E
P 7600 4150
AR Path="/637A582E" Ref="U?"  Part="3" 
AR Path="/632F1F43/637A582E" Ref="U14"  Part="3" 
F 0 "U14" H 7600 4475 50  0000 C CNN
F 1 "74LS10" H 7600 4384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7600 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 7600 4150 50  0001 C CNN
	3    7600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3650 5550 3650
$Comp
L 74xx:74LS08 U10
U 4 1 637AB56A
P 6750 3650
AR Path="/632F1F43/637AB56A" Ref="U10"  Part="4" 
AR Path="/637AB56A" Ref="U?"  Part="4" 
F 0 "U10" H 6750 3975 50  0000 C CNN
F 1 "74LS08" H 6750 3884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6750 3650 50  0001 C CNN
	4    6750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3650 7150 3650
Wire Wire Line
	6450 3550 6350 3550
Wire Wire Line
	6350 3550 6350 3150
Connection ~ 6350 3150
Wire Wire Line
	6350 3150 8650 3150
Wire Wire Line
	6150 3750 6450 3750
Wire Wire Line
	7150 4050 7150 3650
Connection ~ 7150 4050
Connection ~ 7150 3650
Wire Wire Line
	7150 3650 8650 3650
$Comp
L 74xx:74LS00 U12
U 3 1 637C2048
P 5850 3750
F 0 "U12" H 5850 4075 50  0000 C CNN
F 1 "74LS00" H 5850 3984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5850 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5850 3750 50  0001 C CNN
	3    5850 3750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U12
U 4 1 637C2099
P 6750 4700
F 0 "U12" H 6750 5025 50  0000 C CNN
F 1 "74LS00" H 6750 4934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6750 4700 50  0001 C CNN
	4    6750 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U10
U 3 1 637C22D8
P 5850 2600
F 0 "U10" H 5850 2925 50  0000 C CNN
F 1 "74LS08" H 5850 2834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5850 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5850 2600 50  0001 C CNN
	3    5850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4150 7150 4150
Connection ~ 7150 4150
Wire Wire Line
	7150 4150 7150 4250
Wire Wire Line
	5400 4600 5550 4600
Entry Wire Line
	5300 4500 5400 4600
Text Label 5400 4600 0    50   ~ 0
SH0
NoConn ~ 5550 4600
Wire Wire Line
	3750 3550 4050 3550
Wire Wire Line
	4000 3450 4000 5050
Wire Wire Line
	4050 3950 3750 3950
Wire Wire Line
	3750 3950 3750 3550
Connection ~ 3750 3550
Wire Bus Line
	5300 2600 5300 4700
$EndSCHEMATC
