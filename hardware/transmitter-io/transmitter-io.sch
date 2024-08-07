EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Transmitter IO Module (DMX-TX2)"
Date "2024-05-24"
Rev "1.4"
Comp "Sparky Bobo Designs"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L DMXDemonstrator:Arduino_UNO_R3-MCU_Module A1
U 1 1 5F3035A0
P 5450 3400
F 0 "A1" H 5250 4450 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5000 4350 50  0000 C CNN
F 2 "footprints:ARDUINO_R3_NO_HOLES" H 5600 2350 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5250 4450 50  0001 C CNN
F 4 "H_ARDUINO" H 5450 3400 50  0001 C CNN "PartId"
	1    5450 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5F304B17
P 5250 2400
F 0 "#PWR0101" H 5250 2250 50  0001 C CNN
F 1 "+5V" H 5265 2573 50  0000 C CNN
F 2 "" H 5250 2400 50  0001 C CNN
F 3 "" H 5250 2400 50  0001 C CNN
	1    5250 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F304B4E
P 5450 4650
F 0 "#PWR0102" H 5450 4400 50  0001 C CNN
F 1 "GND" H 5455 4477 50  0000 C CNN
F 2 "" H 5450 4650 50  0001 C CNN
F 3 "" H 5450 4650 50  0001 C CNN
	1    5450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4500 5350 4550
Wire Wire Line
	5350 4550 5450 4550
Wire Wire Line
	5550 4550 5550 4500
Wire Wire Line
	5450 4500 5450 4550
Connection ~ 5450 4550
Wire Wire Line
	5450 4550 5550 4550
Wire Wire Line
	5450 4650 5450 4550
NoConn ~ 4950 4100
NoConn ~ 4950 4200
NoConn ~ 4950 2800
NoConn ~ 5350 2400
NoConn ~ 5550 2400
NoConn ~ 4950 3000
NoConn ~ 4950 3200
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F5D2225
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
NoConn ~ 5950 3200
NoConn ~ 5950 3500
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J3
U 1 1 63F5E071
P 7350 2700
F 0 "J3" H 7400 3217 50  0000 C CNN
F 1 "IO EXTENSION" H 7400 3126 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Horizontal" H 7350 2700 50  0001 C CNN
F 3 "~" H 7350 2700 50  0001 C CNN
F 4 "H_IO_RA" H 7350 2700 50  0001 C CNN "PartId"
	1    7350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2800 7150 2800
Wire Wire Line
	5950 2900 7150 2900
$Comp
L power:GND #PWR0118
U 1 1 63F62AE3
P 7000 3100
F 0 "#PWR0118" H 7000 2850 50  0001 C CNN
F 1 "GND" H 7005 2927 50  0000 C CNN
F 2 "" H 7000 3100 50  0001 C CNN
F 3 "" H 7000 3100 50  0001 C CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 63F62B06
P 7800 3100
F 0 "#PWR0119" H 7800 2850 50  0001 C CNN
F 1 "GND" H 7805 2927 50  0000 C CNN
F 2 "" H 7800 3100 50  0001 C CNN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3000 7000 3000
Wire Wire Line
	7000 3000 7000 3100
Wire Wire Line
	7650 3000 7800 3000
Wire Wire Line
	7800 3000 7800 3100
$Comp
L power:+5V #PWR0120
U 1 1 63F67888
P 7800 2200
F 0 "#PWR0120" H 7800 2050 50  0001 C CNN
F 1 "+5V" H 7815 2373 50  0000 C CNN
F 2 "" H 7800 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0001 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 63F678AD
P 7000 2200
F 0 "#PWR0121" H 7000 2050 50  0001 C CNN
F 1 "+5V" H 7015 2373 50  0000 C CNN
F 2 "" H 7000 2200 50  0001 C CNN
F 3 "" H 7000 2200 50  0001 C CNN
	1    7000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2400 7800 2200
Wire Wire Line
	7150 2400 7000 2400
Wire Wire Line
	7000 2400 7000 2200
Connection ~ 7800 2400
Wire Wire Line
	7650 2400 7800 2400
NoConn ~ 7650 2500
NoConn ~ 7650 2600
NoConn ~ 7650 2700
NoConn ~ 7150 2500
NoConn ~ 7150 2600
NoConn ~ 7150 2700
Wire Wire Line
	7650 2800 7800 2800
Wire Wire Line
	7800 2800 7800 2400
NoConn ~ 7650 2900
Text Label 6000 2800 0    50   ~ 0
DMX-RX
Text Label 6000 2900 0    50   ~ 0
DMX-TX
NoConn ~ 4950 3900
NoConn ~ 4950 3800
NoConn ~ 4950 3700
NoConn ~ 4950 3600
NoConn ~ 4950 3500
NoConn ~ 4950 3400
NoConn ~ 5950 3000
NoConn ~ 5950 3100
NoConn ~ 5950 3300
NoConn ~ 5950 3400
NoConn ~ 5950 3600
NoConn ~ 5950 3700
NoConn ~ 5950 3800
NoConn ~ 5950 3900
NoConn ~ 5950 4000
NoConn ~ 5950 4100
Wire Wire Line
	6100 7150 6100 7250
Wire Wire Line
	6500 7150 6100 7150
Wire Wire Line
	6500 7250 6500 7150
$Comp
L power:GND #PWR0105
U 1 1 5F613D80
P 6100 7250
F 0 "#PWR0105" H 6100 7000 50  0001 C CNN
F 1 "GND" H 6105 7077 50  0000 C CNN
F 2 "" H 6100 7250 50  0001 C CNN
F 3 "" H 6100 7250 50  0001 C CNN
	1    6100 7250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F3120EF
P 6500 7250
F 0 "#FLG0101" H 6500 7325 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 7423 50  0000 C CNN
F 2 "" H 6500 7250 50  0001 C CNN
F 3 "~" H 6500 7250 50  0001 C CNN
	1    6500 7250
	-1   0    0    1   
$EndComp
$EndSCHEMATC
