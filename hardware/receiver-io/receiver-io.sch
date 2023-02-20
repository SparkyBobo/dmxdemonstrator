EESchema Schematic File Version 4
LIBS:receiver-io-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Receiver (DMX-RX2)"
Date "2020-12-30"
Rev "1.2"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L power:+5V #PWR0101
U 1 1 5F304B17
P 5500 2450
F 0 "#PWR0101" H 5500 2300 50  0001 C CNN
F 1 "+5V" H 5515 2623 50  0000 C CNN
F 2 "" H 5500 2450 50  0001 C CNN
F 3 "" H 5500 2450 50  0001 C CNN
	1    5500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4550 5600 4600
Wire Wire Line
	5600 4600 5700 4600
Wire Wire Line
	5800 4600 5800 4550
Wire Wire Line
	5700 4550 5700 4600
Connection ~ 5700 4600
Wire Wire Line
	5700 4600 5800 4600
Wire Wire Line
	5700 4700 5700 4600
NoConn ~ 5200 4150
NoConn ~ 5200 4250
NoConn ~ 5200 2850
NoConn ~ 5600 2450
NoConn ~ 5200 3050
NoConn ~ 6200 2850
NoConn ~ 6200 2950
Text Label 6200 3350 0    50   ~ 0
~DIM3
Text Label 6200 3450 0    50   ~ 0
~DIM2
Text Label 6200 3850 0    50   ~ 0
~DIM1
Text Label 6200 3950 0    50   ~ 0
~DIM0
NoConn ~ 5200 3250
Text Label 6200 4050 0    50   ~ 0
RX
Text Label 6200 4150 0    50   ~ 0
RXCLK
NoConn ~ 5800 2450
NoConn ~ 6200 3250
NoConn ~ 6200 3150
NoConn ~ 6200 3050
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5F3035A0
P 5700 3450
F 0 "A1" H 5500 4500 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5250 4400 50  0000 C CNN
F 2 "footprints:ARDUINO_R3_NO_HOLES" H 5850 2400 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5500 4500 50  0001 C CNN
	1    5700 3450
	-1   0    0    -1  
$EndComp
Text Label 4950 3850 0    50   ~ 0
~DATA
Text Label 4950 3950 0    50   ~ 0
~CLOCK
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F5D2833
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "Aesthetics:OSHW-LOGO-S" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
NoConn ~ 5200 3550
NoConn ~ 5200 3450
NoConn ~ 6200 3550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F629800
P 6550 7450
F 0 "#FLG0101" H 6550 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6550 7623 50  0000 C CNN
F 2 "" H 6550 7450 50  0001 C CNN
F 3 "~" H 6550 7450 50  0001 C CNN
	1    6550 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F6298F8
P 6150 7450
F 0 "#PWR0105" H 6150 7200 50  0001 C CNN
F 1 "GND" H 6155 7277 50  0000 C CNN
F 2 "" H 6150 7450 50  0001 C CNN
F 3 "" H 6150 7450 50  0001 C CNN
	1    6150 7450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 7450 6150 7350
Wire Wire Line
	6150 7350 6550 7350
Wire Wire Line
	6550 7350 6550 7450
NoConn ~ 6200 3650
Text Label 4950 3650 0    50   ~ 0
~ERR
Text Label 4950 3750 0    50   ~ 0
~SC
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J?
U 1 1 63F361C9
P 8250 1500
F 0 "J?" H 8300 2017 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 8300 1926 50  0000 C CNN
F 2 "" H 8250 1500 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J?
U 1 1 63F36245
P 8250 2550
F 0 "J?" H 8300 3067 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 8300 2976 50  0000 C CNN
F 2 "" H 8250 2550 50  0001 C CNN
F 3 "~" H 8250 2550 50  0001 C CNN
	1    8250 2550
	1    0    0    -1  
$EndComp
Text Notes 6300 3200 0    50   ~ 0
D0-D4\nReserved\nFor DMX\nShield
$Comp
L power:GND #PWR0102
U 1 1 5F304B4E
P 5700 4700
F 0 "#PWR0102" H 5700 4450 50  0001 C CNN
F 1 "GND" H 5705 4527 50  0000 C CNN
F 2 "" H 5700 4700 50  0001 C CNN
F 3 "" H 5700 4700 50  0001 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
