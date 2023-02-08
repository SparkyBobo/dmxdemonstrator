EESchema Schematic File Version 4
LIBS:display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2400 3100 1900 1100
U 6BB77A68
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Comp
L power:GND #PWR?
U 1 1 63393B1C
P 6200 4700
AR Path="/63393B1C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63393B1C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63393B1C" Ref="#PWR?"  Part="1" 
AR Path="/6337F7FF/63393B1C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 4450 50  0001 C CNN
F 1 "GND" H 6350 4600 50  0000 C CNN
F 2 "" H 6200 4700 50  0001 C CNN
F 3 "" H 6200 4700 50  0001 C CNN
	1    6200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4500 6200 4500
Wire Wire Line
	6200 4500 6200 4600
Wire Wire Line
	6100 4600 6200 4600
Connection ~ 6200 4600
Wire Wire Line
	6200 4600 6200 4700
$Comp
L power:GND #PWR?
U 1 1 63393B27
P 5500 4700
AR Path="/63393B27" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63393B27" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63393B27" Ref="#PWR?"  Part="1" 
AR Path="/6337F7FF/63393B27" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5650 4600 50  0000 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4700 5500 4600
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5600 4600 5500 4600
Connection ~ 5500 4600
Wire Wire Line
	5500 4600 5500 4500
$Comp
L power:+5V #PWR?
U 1 1 63393B32
P 6200 2600
AR Path="/63393B32" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63393B32" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63393B32" Ref="#PWR?"  Part="1" 
AR Path="/6337F7FF/63393B32" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 2450 50  0001 C CNN
F 1 "+5V" H 6215 2773 50  0000 C CNN
F 2 "" H 6200 2600 50  0001 C CNN
F 3 "" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6200 2800
Wire Wire Line
	6200 2800 6200 2700
Wire Wire Line
	6100 2700 6200 2700
Connection ~ 6200 2700
Wire Wire Line
	6200 2700 6200 2600
$Comp
L power:+5V #PWR?
U 1 1 63393B3D
P 5500 2600
AR Path="/63393B3D" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63393B3D" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63393B3D" Ref="#PWR?"  Part="1" 
AR Path="/6337F7FF/63393B3D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 2450 50  0001 C CNN
F 1 "+5V" H 5515 2773 50  0000 C CNN
F 2 "" H 5500 2600 50  0001 C CNN
F 3 "" H 5500 2600 50  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5500 2800
Wire Wire Line
	5500 2800 5500 2700
Wire Wire Line
	5600 2700 5500 2700
Connection ~ 5500 2700
Wire Wire Line
	5500 2700 5500 2600
Wire Wire Line
	5600 2900 5400 2900
Wire Wire Line
	5400 3000 5600 3000
Wire Wire Line
	5400 3100 5600 3100
Wire Wire Line
	5400 3200 5600 3200
Wire Wire Line
	5400 3300 5600 3300
Wire Wire Line
	5400 3400 5600 3400
Wire Wire Line
	5400 3500 5600 3500
Entry Wire Line
	5300 2800 5400 2900
Entry Wire Line
	5300 2900 5400 3000
Entry Wire Line
	5300 3000 5400 3100
Entry Wire Line
	5300 3100 5400 3200
Entry Wire Line
	5300 3200 5400 3300
Entry Wire Line
	5300 3300 5400 3400
Entry Wire Line
	5300 3400 5400 3500
Entry Wire Line
	5300 3500 5400 3600
Wire Wire Line
	5400 3600 5600 3600
Text Label 5400 2900 0    50   ~ 0
D0
Text Label 5400 3000 0    50   ~ 0
D1
Text Label 5400 3100 0    50   ~ 0
D2
Text Label 5400 3200 0    50   ~ 0
D3
Text Label 5400 3300 0    50   ~ 0
D4
Text Label 5400 3400 0    50   ~ 0
D5
Text Label 5400 3500 0    50   ~ 0
D6
Text Label 5400 3600 0    50   ~ 0
D7
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 63393B60
P 5800 3600
AR Path="/63267F40/63393B60" Ref="J?"  Part="1" 
AR Path="/63393B60" Ref="J4"  Part="1" 
AR Path="/6337F7FF/63393B60" Ref="J?"  Part="1" 
F 0 "J4" H 5850 4700 50  0000 C CNN
F 1 "Expansion" H 5850 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 5800 3600 50  0001 C CNN
F 3 "~" H 5800 3600 50  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Entry Bus Bus
	5300 2400 5400 2300
Wire Bus Line
	5400 2300 7300 2300
Wire Wire Line
	6100 2900 7150 2900
Wire Wire Line
	6100 3000 7250 3000
Wire Wire Line
	6100 3200 7450 3200
Wire Wire Line
	6100 3400 7150 3400
Wire Wire Line
	8050 3800 6100 3800
Text Label 6250 2900 0    50   ~ 0
~SAMPLE_ASSERT
Text Label 6250 3000 0    50   ~ 0
SAMPLE_LATCH
Text Label 6250 3100 0    50   ~ 0
~SAMPLE_RESET
Text Label 6250 3200 0    50   ~ 0
SAMPLE_SEL0
Text Label 6250 3300 0    50   ~ 0
SAMPLE_SEL1
Wire Wire Line
	7350 3100 6100 3100
Wire Wire Line
	7550 3300 6100 3300
Text Label 6250 3400 0    50   ~ 0
~SHIFT_LOAD
Text Label 6250 3500 0    50   ~ 0
SHIFT_DISABLE
Text Label 6250 3600 0    50   ~ 0
SHIFT_TRANSMIT
Text Label 6250 3700 0    50   ~ 0
DATA_FIXED
Wire Wire Line
	6100 3600 7350 3600
Wire Wire Line
	6100 3700 7450 3700
Wire Wire Line
	7250 3500 6100 3500
Wire Wire Line
	5600 3700 4750 3700
Wire Wire Line
	5600 3800 4650 3800
Wire Wire Line
	5600 3900 4550 3900
Wire Wire Line
	5600 4000 4450 4000
Text Label 5200 3900 0    50   ~ 0
CLK_FAST
Text Label 5200 4000 0    50   ~ 0
CLK_SLOW
Text Label 5200 3800 0    50   ~ 0
CLK_RX
Text Label 5200 3700 0    50   ~ 0
CLK_TX
Text Label 6250 3800 0    50   ~ 0
~FRAME_RESET
NoConn ~ 6100 4000
NoConn ~ 6100 4100
NoConn ~ 6100 4200
NoConn ~ 6100 4300
NoConn ~ 6100 4400
NoConn ~ 5600 4400
NoConn ~ 5600 4300
NoConn ~ 5600 4200
NoConn ~ 5600 4100
$Sheet
S 7300 1550 1950 1100
U 6415E55D
F0 "data" 50
F1 "data.sch" 50
F2 "D[0..7]_IN" I L 7300 2300 50 
$EndSheet
$Sheet
S 2400 1550 1900 1100
U 6415E5B3
F0 "step" 50
F1 "step.sch" 50
$EndSheet
$Sheet
S 2400 4650 1900 1100
U 6415E609
F0 "clock" 50
F1 "clock.sch" 50
$EndSheet
$Sheet
S 7300 4650 1900 1100
U 6415E65F
F0 "shift-sample" 50
F1 "shift-sample.sch" 50
$EndSheet
Wire Wire Line
	6100 3900 7700 3900
Wire Bus Line
	5300 2400 5300 3500
Text Label 6250 3900 0    50   ~ 0
DATA_RX
$EndSCHEMATC
