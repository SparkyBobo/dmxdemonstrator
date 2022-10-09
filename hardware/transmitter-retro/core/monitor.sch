EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX3)"
Date "2022-09-30"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text HLabel 4250 3950 0    50   Input ~ 0
CLK_RX_IN
Text HLabel 4250 3250 0    50   Input ~ 0
~SAMPLE_RESET_IN
Text HLabel 4250 3350 0    50   Input ~ 0
SAMPLE_SEL0_IN
Text HLabel 4250 3450 0    50   Input ~ 0
SAMPLE_SEL1_IN
Text HLabel 4250 3150 0    50   Input ~ 0
SAMPLE_LATCH_IN
Text HLabel 4250 3650 0    50   Input ~ 0
~SHIFT_ENABLE_IN
Text HLabel 4250 3550 0    50   Input ~ 0
~SHIFT_LOAD_IN
Text HLabel 4250 3750 0    50   Input ~ 0
SHIFT_TRANSMIT_IN
Text HLabel 4250 2200 0    50   Input ~ 0
D[0..7]
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 636D64C8
P 6000 3550
F 0 "A1" H 6350 2600 50  0000 C CNN
F 1 "Monitor" H 6500 2500 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6150 2600 50  0001 L CNN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6000 2550 50  0001 C CNN
	1    6000 3550
	1    0    0    -1  
$EndComp
NoConn ~ 6500 3350
NoConn ~ 6100 2550
NoConn ~ 5900 2550
Wire Wire Line
	6500 3050 6600 3050
Wire Wire Line
	6600 3050 6600 2950
Wire Wire Line
	6200 2550 6200 2500
Wire Wire Line
	6200 2500 6600 2500
Connection ~ 6600 2500
Wire Wire Line
	6600 2500 6600 2450
Wire Wire Line
	6500 2950 6600 2950
Connection ~ 6600 2950
Wire Wire Line
	6600 2950 6600 2500
Entry Bus Bus
	6750 2200 6850 2300
Entry Wire Line
	6750 3550 6850 3450
Entry Wire Line
	6750 3650 6850 3550
Entry Wire Line
	6750 3750 6850 3650
Entry Wire Line
	6750 3850 6850 3750
Entry Wire Line
	6750 3950 6850 3850
Entry Wire Line
	6750 4050 6850 3950
Entry Wire Line
	6750 4150 6850 4050
Entry Wire Line
	6750 4250 6850 4150
Wire Wire Line
	6500 3550 6750 3550
Wire Wire Line
	6500 3650 6750 3650
Wire Wire Line
	6500 3750 6750 3750
Wire Wire Line
	6500 3850 6750 3850
Wire Wire Line
	6500 3950 6750 3950
Wire Wire Line
	6500 4050 6750 4050
Wire Wire Line
	6500 4150 6750 4150
Wire Wire Line
	6500 4250 6750 4250
$Comp
L power:+5V #PWR?
U 1 1 6376243F
P 6600 2450
AR Path="/6376243F" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6376243F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6376243F" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 6600 2300 50  0001 C CNN
F 1 "+5V" H 6615 2623 50  0000 C CNN
F 2 "" H 6600 2450 50  0001 C CNN
F 3 "" H 6600 2450 50  0001 C CNN
	1    6600 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6376245A
P 6050 4650
AR Path="/6376245A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6376245A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6376245A" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 6050 4400 50  0001 C CNN
F 1 "GND" H 6055 4477 50  0000 C CNN
F 2 "" H 6050 4650 50  0001 C CNN
F 3 "" H 6050 4650 50  0001 C CNN
	1    6050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6000 4600
Wire Wire Line
	6000 4600 6050 4600
Wire Wire Line
	6100 4600 6100 4550
Wire Wire Line
	6050 4650 6050 4600
Connection ~ 6050 4600
Wire Wire Line
	6050 4600 6100 4600
Wire Wire Line
	4250 2950 5500 2950
Wire Wire Line
	4250 3050 5500 3050
Wire Wire Line
	4250 3150 5500 3150
Wire Wire Line
	4250 3250 5500 3250
Wire Wire Line
	4250 3350 5500 3350
Wire Wire Line
	4250 3450 5500 3450
Wire Wire Line
	4250 3550 5500 3550
Wire Wire Line
	4250 3650 5500 3650
NoConn ~ 4800 8250
Text Label 6550 4250 0    50   ~ 0
D0
Text Label 6550 4150 0    50   ~ 0
D1
Text Label 6550 4050 0    50   ~ 0
D2
Text Label 6550 3950 0    50   ~ 0
D3
Text Label 6550 3850 0    50   ~ 0
D4
Text Label 6550 3750 0    50   ~ 0
D5
Text Label 6550 3650 0    50   ~ 0
D6
Text Label 6550 3550 0    50   ~ 0
D7
Wire Wire Line
	4250 3750 5500 3750
Text HLabel 4250 4050 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel 4250 4150 0    50   Input ~ 0
~CLK_SLOW_IN
Wire Wire Line
	5500 3850 4250 3850
Text HLabel 4250 4250 0    50   Input ~ 0
~CLK_STEP_OUT
Wire Bus Line
	4250 2200 6750 2200
Wire Wire Line
	5500 3950 4250 3950
Wire Wire Line
	5500 4050 4250 4050
Text HLabel 4250 2950 0    50   Input ~ 0
~FRAME_RESET_IN
Wire Wire Line
	5500 4150 4250 4150
Text HLabel 4250 3850 0    50   Input ~ 0
DATA_RX_IN
Text HLabel 4250 3050 0    50   Input ~ 0
~SAMPLE_OVERRIDE_IN
Wire Wire Line
	5500 4250 4250 4250
Wire Bus Line
	6850 2300 6850 4150
$EndSCHEMATC
