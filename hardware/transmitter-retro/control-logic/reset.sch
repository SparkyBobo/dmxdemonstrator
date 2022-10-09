EESchema Schematic File Version 4
LIBS:control-logic-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX3)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text HLabel 7700 3650 2    50   Input ~ 0
~FRAME_RESET_OUT
Text HLabel 2800 5050 0    50   Input ~ 0
CLK_TX_IN
Text HLabel 2800 3850 0    50   Input ~ 0
SAMPLE_SEL_MAX
$Comp
L 74xx:74LS161 U?
U 1 1 635901C0
P 5950 3650
AR Path="/635901C0" Ref="U?"  Part="1" 
AR Path="/632F1F43/635901C0" Ref="U?"  Part="1" 
AR Path="/63267F40/635901C0" Ref="U?"  Part="1" 
AR Path="/6328016E/635901C0" Ref="U?"  Part="1" 
AR Path="/63397143/635901C0" Ref="U?"  Part="1" 
AR Path="/6341AE92/635901C0" Ref="U7"  Part="1" 
F 0 "U7" H 6050 4400 50  0000 C CNN
F 1 "74LS161" H 6150 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5950 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 635901D3
P 5050 2850
AR Path="/6841E790/635901D3" Ref="#PWR?"  Part="1" 
AR Path="/635901D3" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/635901D3" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/635901D3" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/635901D3" Ref="#PWR?"  Part="1" 
AR Path="/63397143/635901D3" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/635901D3" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 5050 2700 50  0001 C CNN
F 1 "+5V" H 5065 3023 50  0000 C CNN
F 2 "" H 5050 2850 50  0001 C CNN
F 3 "" H 5050 2850 50  0001 C CNN
	1    5050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3250 5300 3250
Wire Wire Line
	5400 3950 5450 3950
$Comp
L power:+5V #PWR?
U 1 1 635901E5
P 5950 2850
AR Path="/6841E790/635901E5" Ref="#PWR?"  Part="1" 
AR Path="/635901E5" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/635901E5" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/635901E5" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/635901E5" Ref="#PWR?"  Part="1" 
AR Path="/63397143/635901E5" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/635901E5" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 5950 2700 50  0001 C CNN
F 1 "+5V" H 5965 3023 50  0000 C CNN
F 2 "" H 5950 2850 50  0001 C CNN
F 3 "" H 5950 2850 50  0001 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 635901EB
P 5950 4450
AR Path="/635901EB" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/635901EB" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/635901EB" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/635901EB" Ref="#PWR?"  Part="1" 
AR Path="/63397143/635901EB" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/635901EB" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 5950 4200 50  0001 C CNN
F 1 "GND" H 6100 4350 50  0000 C CNN
F 2 "" H 5950 4450 50  0001 C CNN
F 3 "" H 5950 4450 50  0001 C CNN
	1    5950 4450
	1    0    0    -1  
$EndComp
Text Notes 6450 2900 0    50   ~ 0
Packet Break Counter\n13-15 (2 Steps)\n
Wire Wire Line
	6450 3650 6550 3650
Wire Wire Line
	5400 3950 5400 5050
NoConn ~ 6450 3150
NoConn ~ 6450 3250
NoConn ~ 6450 3350
NoConn ~ 6450 3450
Wire Wire Line
	6550 3650 6550 3550
Wire Wire Line
	6550 3550 6650 3550
Wire Wire Line
	6550 3650 6550 3750
Wire Wire Line
	6550 3750 6650 3750
Connection ~ 6550 3650
Wire Wire Line
	7250 3650 7350 3650
Wire Wire Line
	7350 3650 7350 4900
Connection ~ 7350 3650
Wire Wire Line
	7350 3650 7700 3650
Text HLabel 7700 2350 2    50   Input ~ 0
DATA_BREAK_OUT
Wire Wire Line
	7700 2350 4800 2350
Wire Wire Line
	4800 2350 4800 3850
Wire Wire Line
	4800 3850 5450 3850
$Comp
L 74xx:74LS10 U?
U 2 1 637970D0
P 6950 3650
AR Path="/63268641/637970D0" Ref="U?"  Part="2" 
AR Path="/637970D0" Ref="U?"  Part="2" 
AR Path="/6341AE92/637970D0" Ref="U14"  Part="2" 
F 0 "U14" H 6950 3975 50  0000 C CNN
F 1 "74LS10" H 6950 3884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6950 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6950 3650 50  0001 C CNN
	2    6950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3650 6650 3650
Wire Wire Line
	5050 3450 5450 3450
Connection ~ 5050 3450
Wire Wire Line
	5050 3450 5050 3750
Wire Wire Line
	5050 3350 5450 3350
Connection ~ 5050 3350
Wire Wire Line
	5050 3350 5050 3450
Wire Wire Line
	5050 2850 5050 3150
Wire Wire Line
	5050 3150 5450 3150
Connection ~ 5050 3150
Wire Wire Line
	5050 3150 5050 3350
Wire Wire Line
	5300 3250 5300 3500
$Comp
L power:GND #PWR?
U 1 1 647B1D12
P 5300 3500
AR Path="/647B1D12" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/647B1D12" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/647B1D12" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/647B1D12" Ref="#PWR?"  Part="1" 
AR Path="/63397143/647B1D12" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/647B1D12" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5300 3250 50  0001 C CNN
F 1 "GND" H 5450 3400 50  0000 C CNN
F 2 "" H 5300 3500 50  0001 C CNN
F 3 "" H 5300 3500 50  0001 C CNN
	1    5300 3500
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U6
U 1 1 647B5D21
P 4150 3950
F 0 "U6" H 4300 4300 50  0000 C CNN
F 1 "74LS74" H 4300 4200 50  0000 C CNN
F 2 "" H 4150 3950 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4150 3950 50  0001 C CNN
	1    4150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3850 4800 3850
Connection ~ 4800 3850
NoConn ~ 4450 4050
Wire Wire Line
	5050 3750 5450 3750
Wire Wire Line
	5300 3650 5300 4900
Wire Wire Line
	5300 3650 5450 3650
Connection ~ 5300 4900
Wire Wire Line
	5300 4900 7350 4900
Wire Wire Line
	5050 4150 5050 3750
Wire Wire Line
	5050 4150 5450 4150
Connection ~ 5050 3750
Wire Wire Line
	3850 3950 3750 3950
Wire Wire Line
	4150 4250 4150 4900
Wire Wire Line
	4150 4900 5300 4900
$Comp
L power:+5V #PWR?
U 1 1 647B99E7
P 4150 3550
AR Path="/6841E790/647B99E7" Ref="#PWR?"  Part="1" 
AR Path="/647B99E7" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/647B99E7" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/647B99E7" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/647B99E7" Ref="#PWR?"  Part="1" 
AR Path="/63397143/647B99E7" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/647B99E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 3400 50  0001 C CNN
F 1 "+5V" H 4165 3723 50  0000 C CNN
F 2 "" H 4150 3550 50  0001 C CNN
F 3 "" H 4150 3550 50  0001 C CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3650 4150 3600
$Comp
L 74xx:74LS08 U?
U 4 1 63422E72
P 3450 3950
AR Path="/63268641/63422E72" Ref="U?"  Part="4" 
AR Path="/63422E72" Ref="U?"  Part="4" 
AR Path="/6BB77A68/63422E72" Ref="U?"  Part="4" 
AR Path="/6341AE92/63422E72" Ref="U11"  Part="4" 
F 0 "U11" H 3450 4275 50  0000 C CNN
F 1 "74LS08" H 3450 4184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3450 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3450 3950 50  0001 C CNN
	4    3450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3600 3750 3600
Wire Wire Line
	3750 3600 3750 3850
Connection ~ 4150 3600
Wire Wire Line
	4150 3600 4150 3550
Wire Wire Line
	3750 3850 3850 3850
Wire Wire Line
	3150 4050 3050 4050
Wire Wire Line
	3050 4050 3050 5050
Wire Wire Line
	3050 5050 2800 5050
Wire Wire Line
	3050 5050 5400 5050
Connection ~ 3050 5050
Wire Wire Line
	2800 3850 3150 3850
$EndSCHEMATC
