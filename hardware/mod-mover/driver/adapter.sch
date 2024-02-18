EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SparkFun-Boards:ARDUINO_MEGA_R3FULL B?
U 1 1 65AF15A7
P 5900 3500
F 0 "B?" H 5900 5860 45  0000 C CNN
F 1 "ARDUINO_MEGA_R3FULL" H 5900 5776 45  0000 C CNN
F 2 "Boards:ARDUINO_MEGA" H 5900 5650 20  0001 C CNN
F 3 "" H 5900 3500 50  0001 C CNN
F 4 "XXX-00000" H 5900 5681 60  0000 C CNN "Field4"
	1    5900 3500
	1    0    0    -1  
$EndComp
Text Notes 1750 1800 2    50   ~ 0
Inputs:\nReceiver IO - Digital Out\nReceiver IO - DMX Receive
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J?
U 1 1 65B10293
P 2650 1600
AR Path="/65A70F21/65B10293" Ref="J?"  Part="1" 
AR Path="/65B10293" Ref="J1"  Part="1" 
AR Path="/65AF4511/65B10293" Ref="J?"  Part="1" 
AR Path="/65B4C92A/65B10293" Ref="J?"  Part="1" 
F 0 "J?" H 2700 2117 50  0000 C CNN
F 1 "IO EXTENSION" H 2700 2026 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Vertical" H 2650 1600 50  0001 C CNN
F 3 "~" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
Text Label 3000 1400 0    50   ~ 0
SR-OUT
Text Label 3000 1500 0    50   ~ 0
SR-CLK
Text Label 3000 1600 0    50   ~ 0
~SR_CLR
Text Label 2150 1600 0    50   ~ 0
DAC_A0
Text Label 2150 1500 0    50   ~ 0
DAC_A1
Text Label 2150 1400 0    50   ~ 0
~DAC_WR
Text Label 2100 1700 0    50   ~ 0
DMX-RX
Text Label 3000 1700 0    50   ~ 0
DMX-DIR
$Comp
L power:GND #PWR?
U 1 1 65B102A1
P 3050 2000
AR Path="/65A70F21/65B102A1" Ref="#PWR?"  Part="1" 
AR Path="/65B102A1" Ref="#PWR0101"  Part="1" 
AR Path="/65AF4511/65B102A1" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B102A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 1750 50  0001 C CNN
F 1 "GND" H 3055 1827 50  0000 C CNN
F 2 "" H 3050 2000 50  0001 C CNN
F 3 "" H 3050 2000 50  0001 C CNN
	1    3050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65B102A7
P 2350 2000
AR Path="/65A70F21/65B102A7" Ref="#PWR?"  Part="1" 
AR Path="/65B102A7" Ref="#PWR0102"  Part="1" 
AR Path="/65AF4511/65B102A7" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B102A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 1750 50  0001 C CNN
F 1 "GND" H 2355 1827 50  0000 C CNN
F 2 "" H 2350 2000 50  0001 C CNN
F 3 "" H 2350 2000 50  0001 C CNN
	1    2350 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65B102AD
P 3050 1150
AR Path="/65A70F21/65B102AD" Ref="#PWR?"  Part="1" 
AR Path="/65B102AD" Ref="#PWR0103"  Part="1" 
AR Path="/65AF4511/65B102AD" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B102AD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 1000 50  0001 C CNN
F 1 "+5V" H 3065 1323 50  0000 C CNN
F 2 "" H 3050 1150 50  0001 C CNN
F 3 "" H 3050 1150 50  0001 C CNN
	1    3050 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65B102B3
P 2350 1150
AR Path="/65A70F21/65B102B3" Ref="#PWR?"  Part="1" 
AR Path="/65B102B3" Ref="#PWR0104"  Part="1" 
AR Path="/65AF4511/65B102B3" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B102B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 1000 50  0001 C CNN
F 1 "+5V" H 2365 1323 50  0000 C CNN
F 2 "" H 2350 1150 50  0001 C CNN
F 3 "" H 2350 1150 50  0001 C CNN
	1    2350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1400 2450 1400
Wire Wire Line
	2050 1500 2450 1500
Wire Wire Line
	2050 1600 2450 1600
Wire Wire Line
	2950 1400 3350 1400
Wire Wire Line
	3350 1500 2950 1500
Wire Wire Line
	2950 1600 3350 1600
Wire Wire Line
	3350 1700 2950 1700
Wire Wire Line
	2950 1900 3050 1900
Wire Wire Line
	3050 1900 3050 2000
Wire Wire Line
	2450 1900 2350 1900
Wire Wire Line
	2350 1900 2350 2000
Wire Wire Line
	2950 1300 3050 1300
Wire Wire Line
	3050 1300 3050 1150
Wire Wire Line
	2450 1300 2350 1300
Wire Wire Line
	2350 1300 2350 1150
Entry Wire Line
	1950 1500 2050 1400
Entry Wire Line
	1950 1600 2050 1500
Entry Wire Line
	1950 1700 2050 1600
Entry Wire Line
	3350 1400 3450 1500
Entry Wire Line
	3350 1500 3450 1600
Entry Wire Line
	3350 1600 3450 1700
Entry Wire Line
	3350 1700 3450 1800
Wire Wire Line
	2050 1700 2450 1700
Text Label 2100 1800 0    50   ~ 0
DMX-TX
Wire Wire Line
	2050 1800 2450 1800
Entry Wire Line
	1950 1900 2050 1800
Entry Wire Line
	1950 1800 2050 1700
NoConn ~ 2950 1800
Entry Bus Bus
	1950 2200 2050 2300
Text Label 3100 3000 2    50   ~ 0
A0
Text Label 3100 3100 2    50   ~ 0
A1
Text Label 3100 3200 2    50   ~ 0
A2
$Comp
L power:+5V #PWR?
U 1 1 65B102DA
P 3050 2600
AR Path="/6841E790/65B102DA" Ref="#PWR?"  Part="1" 
AR Path="/65B102DA" Ref="#PWR0105"  Part="1" 
AR Path="/5F613CCA/65B102DA" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65B102DA" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65B102DA" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B102DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 2450 50  0001 C CNN
F 1 "+5V" H 3065 2773 50  0000 C CNN
F 2 "" H 3050 2600 50  0001 C CNN
F 3 "" H 3050 2600 50  0001 C CNN
	1    3050 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2950 2700 3050 2700
Wire Wire Line
	3050 2700 3050 2600
Text Label 3100 3300 2    50   ~ 0
A3
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 65B102EB
P 2750 3000
AR Path="/5F613CCA/65B102EB" Ref="J?"  Part="1" 
AR Path="/65B102EB" Ref="J4"  Part="1" 
AR Path="/66778914/65B102EB" Ref="J?"  Part="1" 
AR Path="/65AF4511/65B102EB" Ref="J?"  Part="1" 
AR Path="/65B4C92A/65B102EB" Ref="J?"  Part="1" 
F 0 "J?" H 2800 3517 50  0000 C CNN
F 1 "INPUT" H 2800 3426 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 2750 3000 50  0001 C CNN
F 3 "~" H 2750 3000 50  0001 C CNN
	1    2750 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65B102F7
P 3050 3500
AR Path="/5F613CCA/65B102F7" Ref="#PWR?"  Part="1" 
AR Path="/65B102F7" Ref="#PWR0108"  Part="1" 
AR Path="/66778914/65B102F7" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65B102F7" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B102F7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 3250 50  0001 C CNN
F 1 "GND" H 3055 3327 50  0000 C CNN
F 2 "" H 3050 3500 50  0001 C CNN
F 3 "" H 3050 3500 50  0001 C CNN
	1    3050 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 3500 3050 3400
Wire Wire Line
	3050 3400 2950 3400
Wire Wire Line
	2450 3400 2350 3400
Wire Wire Line
	2450 3000 2350 3000
NoConn ~ 2450 2900
NoConn ~ 2450 3100
NoConn ~ 2450 3200
NoConn ~ 2450 3300
NoConn ~ 2950 2800
NoConn ~ 2950 2900
Text Notes 1750 3150 2    50   ~ 0
Inputs:\n0-5v\nControl-Pro
$Comp
L Device:R_US R?
U 1 1 65B16361
P 8550 1250
AR Path="/65AC16CB/65B16361" Ref="R?"  Part="1" 
AR Path="/65B16361" Ref="R1"  Part="1" 
AR Path="/65AF4511/65B16361" Ref="R?"  Part="1" 
AR Path="/65B4C92A/65B16361" Ref="R?"  Part="1" 
F 0 "R?" H 8618 1296 50  0000 L CNN
F 1 "4.7k" H 8618 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8590 1240 50  0001 C CNN
F 3 "~" H 8550 1250 50  0001 C CNN
	1    8550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 65B16367
P 8850 1250
AR Path="/65AC16CB/65B16367" Ref="R?"  Part="1" 
AR Path="/65B16367" Ref="R2"  Part="1" 
AR Path="/65AF4511/65B16367" Ref="R?"  Part="1" 
AR Path="/65B4C92A/65B16367" Ref="R?"  Part="1" 
F 0 "R?" H 8918 1296 50  0000 L CNN
F 1 "4.7k" H 8918 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8890 1240 50  0001 C CNN
F 3 "~" H 8850 1250 50  0001 C CNN
	1    8850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65B1636D
P 8850 1000
AR Path="/65AC16CB/65B1636D" Ref="#PWR?"  Part="1" 
AR Path="/65B1636D" Ref="#PWR0109"  Part="1" 
AR Path="/65AF4511/65B1636D" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B1636D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 850 50  0001 C CNN
F 1 "+5V" H 8865 1173 50  0000 C CNN
F 2 "" H 8850 1000 50  0001 C CNN
F 3 "" H 8850 1000 50  0001 C CNN
	1    8850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1100 8850 1050
Wire Wire Line
	8550 1050 8550 1100
Wire Wire Line
	8850 1000 8850 1050
Connection ~ 8850 1050
Wire Wire Line
	8850 1050 8550 1050
Wire Wire Line
	8550 1400 8550 1600
Wire Wire Line
	8850 1400 8850 1500
Wire Wire Line
	8850 1050 9150 1050
Wire Wire Line
	9150 1050 9150 1700
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 65B16385
P 10400 1700
AR Path="/65AF4511/65B16385" Ref="J?"  Part="1" 
AR Path="/65B16385" Ref="J3"  Part="1" 
AR Path="/65B4C92A/65B16385" Ref="J?"  Part="1" 
F 0 "J?" H 10550 1600 50  0000 C CNN
F 1 "OLED" H 10600 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10400 1700 50  0001 C CNN
F 3 "~" H 10400 1700 50  0001 C CNN
	1    10400 1700
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65B29EC5
P 4900 1300
AR Path="/6841E790/65B29EC5" Ref="#PWR?"  Part="1" 
AR Path="/65B29EC5" Ref="#PWR0114"  Part="1" 
AR Path="/5F613CCA/65B29EC5" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65B29EC5" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65B29EC5" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B29EC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 1150 50  0001 C CNN
F 1 "+5V" H 4915 1473 50  0000 C CNN
F 2 "" H 4900 1300 50  0001 C CNN
F 3 "" H 4900 1300 50  0001 C CNN
	1    4900 1300
	-1   0    0    -1  
$EndComp
NoConn ~ 5200 2000
Wire Wire Line
	4900 1300 4900 1600
Connection ~ 4900 1700
Wire Wire Line
	4900 1700 4900 1800
Connection ~ 4900 1600
Wire Wire Line
	4900 1600 4900 1700
NoConn ~ 5200 1900
NoConn ~ 5200 2100
Text Label 6650 2400 0    50   ~ 0
SR-OUT
Text Label 6650 2500 0    50   ~ 0
SR-CLK
Text Label 6650 2600 0    50   ~ 0
~SR_CLR
Text Label 4800 4000 0    50   ~ 0
DMX-DIR
Wire Wire Line
	4700 3900 5200 3900
Wire Wire Line
	5200 3800 4700 3800
Entry Wire Line
	4700 3900 4600 4000
Entry Wire Line
	4700 3800 4600 3900
Text Label 6650 2900 0    50   ~ 0
DAC_A0
Text Label 6650 2800 0    50   ~ 0
DAC_A1
Text Label 6650 2700 0    50   ~ 0
~DAC_WR
Text Label 4800 3800 0    50   ~ 0
DMX-RX
Text Label 4800 3900 0    50   ~ 0
DMX-TX
Wire Wire Line
	5200 1600 4900 1600
Wire Wire Line
	5200 1700 4900 1700
Wire Wire Line
	5200 1800 4900 1800
NoConn ~ 5200 1500
Wire Wire Line
	9150 1700 10200 1700
Wire Wire Line
	4900 5500 4900 5800
Connection ~ 4900 5400
Wire Wire Line
	4900 5400 4900 5500
Wire Wire Line
	4900 5300 4900 5400
Wire Wire Line
	5200 5300 4900 5300
Wire Wire Line
	5200 5400 4900 5400
Wire Wire Line
	5200 5500 4900 5500
Connection ~ 4900 5500
$Comp
L power:GND #PWR?
U 1 1 65B89550
P 4900 5800
AR Path="/5F613CCA/65B89550" Ref="#PWR?"  Part="1" 
AR Path="/65B89550" Ref="#PWR0111"  Part="1" 
AR Path="/66778914/65B89550" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65B89550" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B89550" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 5550 50  0001 C CNN
F 1 "GND" H 4905 5627 50  0000 C CNN
F 2 "" H 4900 5800 50  0001 C CNN
F 3 "" H 4900 5800 50  0001 C CNN
	1    4900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5200 4900 5200
Wire Wire Line
	4900 5200 4900 5300
Connection ~ 4900 5300
Wire Wire Line
	5200 5100 4900 5100
Wire Wire Line
	4900 5100 4900 5200
Connection ~ 4900 5200
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BADE7E
P 10400 2200
AR Path="/65B913FD/65BADE7E" Ref="J?"  Part="1" 
AR Path="/65BADE7E" Ref="J2"  Part="1" 
AR Path="/65B4C92A/65BADE7E" Ref="J?"  Part="1" 
F 0 "J?" H 10480 2242 50  0000 L CNN
F 1 "LED PWM 1-2" H 10480 2151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10400 2200 50  0001 C CNN
F 3 "~" H 10400 2200 50  0001 C CNN
	1    10400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2200 10100 2200
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 65BADE85
P 7650 2900
AR Path="/65B913FD/65BADE85" Ref="J?"  Part="1" 
AR Path="/65BADE85" Ref="J6"  Part="1" 
AR Path="/65B4C92A/65BADE85" Ref="J?"  Part="1" 
F 0 "J?" H 7750 2900 50  0000 L CNN
F 1 "PWM" H 7750 3000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7650 2900 50  0001 C CNN
F 3 "~" H 7650 2900 50  0001 C CNN
	1    7650 2900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65BADE8B
P 10400 3200
AR Path="/65B913FD/65BADE8B" Ref="J?"  Part="1" 
AR Path="/65BADE8B" Ref="J7"  Part="1" 
AR Path="/65B4C92A/65BADE8B" Ref="J?"  Part="1" 
F 0 "J?" H 10450 2900 50  0000 C CNN
F 1 "RGB0" H 10450 3000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10400 3200 50  0001 C CNN
F 3 "~" H 10400 3200 50  0001 C CNN
	1    10400 3200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65BADE91
P 10400 3800
AR Path="/65B913FD/65BADE91" Ref="J?"  Part="1" 
AR Path="/65BADE91" Ref="J8"  Part="1" 
AR Path="/65B4C92A/65BADE91" Ref="J?"  Part="1" 
F 0 "J?" H 10450 3500 50  0000 C CNN
F 1 "RGB1" H 10450 3600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10400 3800 50  0001 C CNN
F 3 "~" H 10400 3800 50  0001 C CNN
	1    10400 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65BADE97
P 10300 4400
AR Path="/65B913FD/65BADE97" Ref="J?"  Part="1" 
AR Path="/65BADE97" Ref="J9"  Part="1" 
AR Path="/65B4C92A/65BADE97" Ref="J?"  Part="1" 
F 0 "J?" H 10350 4717 50  0000 C CNN
F 1 "RGB2" H 10350 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10300 4400 50  0001 C CNN
F 3 "~" H 10300 4400 50  0001 C CNN
	1    10300 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65BADE9D
P 10300 5000
AR Path="/65B913FD/65BADE9D" Ref="J?"  Part="1" 
AR Path="/65BADE9D" Ref="J10"  Part="1" 
AR Path="/65B4C92A/65BADE9D" Ref="J?"  Part="1" 
F 0 "J?" H 10350 5317 50  0000 C CNN
F 1 "RGB3" H 10350 5226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10300 5000 50  0001 C CNN
F 3 "~" H 10300 5000 50  0001 C CNN
	1    10300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4000 9600 4000
Wire Wire Line
	9800 3900 10100 3900
Wire Wire Line
	9300 3900 9600 3900
Wire Wire Line
	9800 3800 10100 3800
Wire Wire Line
	9300 3800 9600 3800
Wire Wire Line
	9800 3700 10100 3700
$Comp
L power:GND #PWR?
U 1 1 65BADEAF
P 8850 5250
AR Path="/65A70F21/65BADEAF" Ref="#PWR?"  Part="1" 
AR Path="/65BADEAF" Ref="#PWR0112"  Part="1" 
AR Path="/65B913FD/65BADEAF" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65BADEAF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 5000 50  0001 C CNN
F 1 "GND" H 8855 5077 50  0000 C CNN
F 2 "" H 8850 5250 50  0001 C CNN
F 3 "" H 8850 5250 50  0001 C CNN
	1    8850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5000 8800 5050
Wire Wire Line
	8800 5050 8850 5050
Wire Wire Line
	8900 5050 8900 5000
Wire Wire Line
	8850 5250 8850 5200
Connection ~ 8850 5050
Wire Wire Line
	8850 5050 8900 5050
NoConn ~ 8400 4300
$Comp
L Device:R_US R?
U 1 1 65BADEBD
P 8250 5000
AR Path="/65AC16CB/65BADEBD" Ref="R?"  Part="1" 
AR Path="/65BADEBD" Ref="R3"  Part="1" 
AR Path="/65B913FD/65BADEBD" Ref="R?"  Part="1" 
AR Path="/65B4C92A/65BADEBD" Ref="R?"  Part="1" 
F 0 "R?" H 8318 5046 50  0000 L CNN
F 1 "3.3k" H 8318 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8290 4990 50  0001 C CNN
F 3 "~" H 8250 5000 50  0001 C CNN
	1    8250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4750 8250 4750
Wire Wire Line
	8250 4750 8250 4850
Wire Wire Line
	8250 5150 8250 5200
Wire Wire Line
	8250 5200 8850 5200
Connection ~ 8850 5200
Wire Wire Line
	8850 5200 8850 5050
$Comp
L power:GND #PWR?
U 1 1 65BADEC9
P 10100 2800
AR Path="/65A70F21/65BADEC9" Ref="#PWR?"  Part="1" 
AR Path="/65BADEC9" Ref="#PWR0113"  Part="1" 
AR Path="/65B913FD/65BADEC9" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65BADEC9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10100 2550 50  0001 C CNN
F 1 "GND" H 10105 2627 50  0000 C CNN
F 2 "" H 10100 2800 50  0001 C CNN
F 3 "" H 10100 2800 50  0001 C CNN
	1    10100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2300 9800 2300
Wire Wire Line
	8200 3100 7850 3100
Wire Wire Line
	8300 3000 7850 3000
$Comp
L Device:C C?
U 1 1 65BADEEF
P 7950 3700
AR Path="/647E1209/65BADEEF" Ref="C?"  Part="1" 
AR Path="/65BADEEF" Ref="C1"  Part="1" 
AR Path="/66A5434C/65BADEEF" Ref="C?"  Part="1" 
AR Path="/65B913FD/65BADEEF" Ref="C?"  Part="1" 
AR Path="/65B4C92A/65BADEEF" Ref="C?"  Part="1" 
F 0 "C?" H 8065 3746 50  0000 L CNN
F 1 "0.1uF" H 8065 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7988 3550 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
F 4 "Decoupling Capacitor" H 5200 3650 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 5200 3650 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 5200 3650 50  0001 C CNN "SP_PN"
F 7 "753" H 5200 3650 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 5200 3650 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 5200 3650 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 5200 3650 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 5200 3650 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 5200 3650 50  0001 C CNN "MO_Detail_Page"
	1    7950 3700
	-1   0    0    -1  
$EndComp
NoConn ~ 7850 2800
Wire Wire Line
	8850 2800 8850 2900
Wire Wire Line
	8400 3500 7950 3500
Wire Wire Line
	7950 3500 7950 3550
NoConn ~ 10600 5100
NoConn ~ 10600 5000
NoConn ~ 10600 4900
NoConn ~ 10600 4500
NoConn ~ 10600 4400
NoConn ~ 10600 4300
NoConn ~ 10600 3900
NoConn ~ 10600 3800
NoConn ~ 10600 3700
NoConn ~ 10600 3300
NoConn ~ 10600 3200
NoConn ~ 10600 3100
$Comp
L power:+12V #PWR?
U 1 1 65BADF06
P 8850 2800
AR Path="/65AC16CB/65BADF06" Ref="#PWR?"  Part="1" 
AR Path="/65BADF06" Ref="#PWR0115"  Part="1" 
AR Path="/65B913FD/65BADF06" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65BADF06" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 2650 50  0001 C CNN
F 1 "+12V" H 8865 2973 50  0000 C CNN
F 2 "" H 8850 2800 50  0001 C CNN
F 3 "" H 8850 2800 50  0001 C CNN
	1    8850 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BADF2F
P 10400 5900
AR Path="/65B913FD/65BADF2F" Ref="J?"  Part="1" 
AR Path="/65BADF2F" Ref="J13"  Part="1" 
AR Path="/65B4C92A/65BADF2F" Ref="J?"  Part="1" 
F 0 "J?" H 10480 5942 50  0000 L CNN
F 1 "LED PWM 7-8" H 10480 5851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10400 5900 50  0001 C CNN
F 3 "~" H 10400 5900 50  0001 C CNN
	1    10400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6150 10100 6100
Wire Wire Line
	10200 5900 10100 5900
Wire Wire Line
	9300 4200 9600 4200
Wire Wire Line
	9300 4300 9600 4300
Wire Wire Line
	9300 4400 9600 4400
Wire Wire Line
	10100 5000 9800 5000
$Comp
L power:GND #PWR?
U 1 1 65BADF58
P 10100 6100
AR Path="/65A70F21/65BADF58" Ref="#PWR?"  Part="1" 
AR Path="/65BADF58" Ref="#PWR0116"  Part="1" 
AR Path="/65B913FD/65BADF58" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65BADF58" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10100 5850 50  0001 C CNN
F 1 "GND" H 10105 5927 50  0000 C CNN
F 2 "" H 10100 6100 50  0001 C CNN
F 3 "" H 10100 6100 50  0001 C CNN
	1    10100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5500 10200 5500
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BADF6A
P 10400 5500
AR Path="/65B913FD/65BADF6A" Ref="J?"  Part="1" 
AR Path="/65BADF6A" Ref="J12"  Part="1" 
AR Path="/65B4C92A/65BADF6A" Ref="J?"  Part="1" 
F 0 "J?" H 10480 5542 50  0000 L CNN
F 1 "LED PWM 5-6" H 10480 5451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10400 5500 50  0001 C CNN
F 3 "~" H 10400 5500 50  0001 C CNN
	1    10400 5500
	1    0    0    -1  
$EndComp
Connection ~ 10100 5900
Wire Wire Line
	10100 5900 10100 5500
Connection ~ 10100 6100
Wire Wire Line
	10100 5900 10100 6100
Wire Wire Line
	10100 2200 10100 2600
Wire Wire Line
	10200 2600 10100 2600
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BADF77
P 10400 2600
AR Path="/65B913FD/65BADF77" Ref="J?"  Part="1" 
AR Path="/65BADF77" Ref="J5"  Part="1" 
AR Path="/65B4C92A/65BADF77" Ref="J?"  Part="1" 
F 0 "J?" H 10480 2642 50  0000 L CNN
F 1 "LED PWM 3-4" H 10480 2551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10400 2600 50  0001 C CNN
F 3 "~" H 10400 2600 50  0001 C CNN
	1    10400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2800 10100 2600
Connection ~ 10100 2600
Wire Wire Line
	7850 2900 8850 2900
Wire Wire Line
	8200 4000 8400 4000
Wire Wire Line
	7850 2700 7950 2700
Wire Wire Line
	8300 3900 8400 3900
$Comp
L power:GND #PWR?
U 1 1 65BADF88
P 7950 5250
AR Path="/65A70F21/65BADF88" Ref="#PWR?"  Part="1" 
AR Path="/65BADF88" Ref="#PWR0117"  Part="1" 
AR Path="/65B913FD/65BADF88" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65BADF88" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 5000 50  0001 C CNN
F 1 "GND" H 7955 5077 50  0000 C CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2700 7950 3200
Wire Wire Line
	9800 3200 10100 3200
Wire Wire Line
	8300 3000 8300 3900
Wire Wire Line
	8200 3100 8200 4000
Text Label 5000 4400 0    50   ~ 0
PAN
Text Label 5000 4500 0    50   ~ 0
TILT
Text Label 4850 2600 0    50   ~ 0
TEMP1
Text Label 4850 2700 0    50   ~ 0
TEMP2
Text Label 4850 2800 0    50   ~ 0
TEMP3
Text Label 4850 2900 0    50   ~ 0
TEMP4
Text Label 2400 4750 2    50   ~ 0
LED_G0
Text Label 2400 4850 2    50   ~ 0
LED_B0
Text Label 2400 4950 2    50   ~ 0
LED_R1
Text Label 2400 5050 2    50   ~ 0
LED_R3
Text Label 2400 5150 2    50   ~ 0
LED_G3
Text Label 2400 5250 2    50   ~ 0
LED_B3
Text Label 2400 5350 2    50   ~ 0
LED_R2
Text Label 6700 4600 0    50   ~ 0
FAN0
Text Label 6700 4700 0    50   ~ 0
FAN1
Text Label 6700 4800 0    50   ~ 0
FAN2
Text Label 6650 1500 0    50   ~ 0
FANSP0
Text Label 6650 1600 0    50   ~ 0
FANSP1
Text Label 6650 1700 0    50   ~ 0
FANSP2
Text Label 5000 3300 0    50   ~ 0
A3
Text Label 5000 3200 0    50   ~ 0
A2
Text Label 5000 3100 0    50   ~ 0
A1
Text Label 5000 3000 0    50   ~ 0
A0
Text Label 6650 2200 0    50   ~ 0
SDA
Text Label 6650 2300 0    50   ~ 0
SCL
Text Label 6650 5300 0    50   ~ 0
MOSI
Text Label 6650 5200 0    50   ~ 0
MISO
Text Label 6650 5400 0    50   ~ 0
SCK
Text Label 6650 5500 0    50   ~ 0
SS
Text Label 6650 2000 0    50   ~ 0
SCKI1
Text Label 6650 2100 0    50   ~ 0
SDTI1
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 65D11F9A
P 2650 5050
F 0 "J?" H 2700 6167 50  0000 C CNN
F 1 "MV EXTENSION" H 2700 6076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2650 5050 50  0001 C CNN
F 3 "~" H 2650 5050 50  0001 C CNN
	1    2650 5050
	1    0    0    -1  
$EndComp
Text Label 3000 5250 0    50   ~ 0
PAN
Text Label 3000 5350 0    50   ~ 0
TILT
Text Label 3000 5450 0    50   ~ 0
SERVO2
Text Label 3000 5550 0    50   ~ 0
MTR0A
Text Label 3000 5650 0    50   ~ 0
MTR0B
Text Label 3000 5750 0    50   ~ 0
MTR1A
Text Label 3000 5850 0    50   ~ 0
MTR1B
Text Label 3000 4950 0    50   ~ 0
FAN0
Text Label 3000 5050 0    50   ~ 0
FAN1
Text Label 3000 5150 0    50   ~ 0
FAN2
Text Label 3000 4650 0    50   ~ 0
FANSP0
Text Label 3000 4750 0    50   ~ 0
FANSP1
Text Label 3000 4850 0    50   ~ 0
FANSP2
Text Label 3000 4250 0    50   ~ 0
TEMP1
Text Label 3000 4350 0    50   ~ 0
TEMP2
Text Label 3000 4450 0    50   ~ 0
TEMP3
Text Label 3000 4550 0    50   ~ 0
TEMP4
Text Label 2400 4250 2    50   ~ 0
SCKI1
Text Label 2400 4350 2    50   ~ 0
SDTI1
Text Label 2400 4450 2    50   ~ 0
SDA
Text Label 2400 4550 2    50   ~ 0
SCL
$Comp
L power:+5V #PWR?
U 1 1 65DA41C9
P 3050 4050
AR Path="/6841E790/65DA41C9" Ref="#PWR?"  Part="1" 
AR Path="/65DA41C9" Ref="#PWR0118"  Part="1" 
AR Path="/5F613CCA/65DA41C9" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65DA41C9" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65DA41C9" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65DA41C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 3900 50  0001 C CNN
F 1 "+5V" H 3065 4223 50  0000 C CNN
F 2 "" H 3050 4050 50  0001 C CNN
F 3 "" H 3050 4050 50  0001 C CNN
	1    3050 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65DA466F
P 2350 4050
AR Path="/6841E790/65DA466F" Ref="#PWR?"  Part="1" 
AR Path="/65DA466F" Ref="#PWR0119"  Part="1" 
AR Path="/5F613CCA/65DA466F" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65DA466F" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65DA466F" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65DA466F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 3900 50  0001 C CNN
F 1 "+5V" H 2365 4223 50  0000 C CNN
F 2 "" H 2350 4050 50  0001 C CNN
F 3 "" H 2350 4050 50  0001 C CNN
	1    2350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4150 3050 4050
Wire Wire Line
	2350 4050 2350 4150
Wire Wire Line
	2950 4150 3050 4150
Wire Wire Line
	2450 4150 2350 4150
$Comp
L power:GND #PWR?
U 1 1 65DC78D7
P 3050 6150
AR Path="/65A70F21/65DC78D7" Ref="#PWR?"  Part="1" 
AR Path="/65DC78D7" Ref="#PWR0120"  Part="1" 
AR Path="/65AF4511/65DC78D7" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65DC78D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 5900 50  0001 C CNN
F 1 "GND" H 3055 5977 50  0000 C CNN
F 2 "" H 3050 6150 50  0001 C CNN
F 3 "" H 3050 6150 50  0001 C CNN
	1    3050 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65DC78E1
P 2350 6150
AR Path="/65A70F21/65DC78E1" Ref="#PWR?"  Part="1" 
AR Path="/65DC78E1" Ref="#PWR0121"  Part="1" 
AR Path="/65AF4511/65DC78E1" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65DC78E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 5900 50  0001 C CNN
F 1 "GND" H 2355 5977 50  0000 C CNN
F 2 "" H 2350 6150 50  0001 C CNN
F 3 "" H 2350 6150 50  0001 C CNN
	1    2350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6050 3050 6050
Wire Wire Line
	3050 6050 3050 6150
Wire Wire Line
	2450 6050 2350 6050
Wire Wire Line
	5200 2900 4450 2900
Wire Wire Line
	2950 3000 5200 3000
Wire Wire Line
	2950 3100 5200 3100
Wire Wire Line
	2950 3200 5200 3200
Wire Wire Line
	2950 3300 5200 3300
Wire Wire Line
	4700 4900 5200 4900
Entry Wire Line
	4700 4900 4600 5000
Wire Wire Line
	4700 4800 5200 4800
Wire Wire Line
	4700 4700 5200 4700
Wire Wire Line
	4700 4600 5200 4600
Entry Wire Line
	4600 4900 4700 4800
Entry Wire Line
	4600 4800 4700 4700
Entry Wire Line
	4600 4700 4700 4600
Wire Wire Line
	4700 4500 5200 4500
Wire Wire Line
	4700 4400 5200 4400
Entry Wire Line
	4600 4500 4700 4400
Entry Wire Line
	4600 4600 4700 4500
Wire Wire Line
	4700 5000 5200 5000
Entry Wire Line
	4600 5100 4700 5000
Wire Wire Line
	7000 4800 6600 4800
Entry Wire Line
	7100 4900 7000 4800
Wire Wire Line
	7000 4700 6600 4700
Wire Wire Line
	7000 4600 6600 4600
Entry Wire Line
	7100 4700 7000 4600
Entry Wire Line
	7100 4800 7000 4700
Entry Wire Line
	1950 4950 2050 5050
Wire Wire Line
	3350 5650 2950 5650
Entry Wire Line
	7100 2600 7000 2500
Entry Wire Line
	7100 2500 7000 2400
Wire Wire Line
	7000 2400 6600 2400
Wire Wire Line
	7000 2500 6600 2500
Entry Wire Line
	7100 2700 7000 2600
Entry Wire Line
	7100 2800 7000 2700
Entry Wire Line
	7100 2900 7000 2800
Wire Wire Line
	7000 2600 6600 2600
Wire Wire Line
	7000 2700 6600 2700
Wire Wire Line
	7000 2800 6600 2800
Entry Wire Line
	7000 2300 7100 2400
Wire Wire Line
	7000 2900 6600 2900
Entry Wire Line
	7100 1700 7000 1600
Wire Wire Line
	7000 1600 6600 1600
Wire Wire Line
	7000 1700 6600 1700
Entry Wire Line
	7100 2100 7000 2000
Entry Wire Line
	7100 2200 7000 2100
Entry Wire Line
	7100 2300 7000 2200
Wire Wire Line
	7000 2000 6600 2000
Wire Wire Line
	7000 2100 6600 2100
Wire Wire Line
	7000 2200 6600 2200
Entry Wire Line
	7000 2500 7100 2600
Wire Wire Line
	7000 2300 6600 2300
Entry Wire Line
	7100 1600 7000 1500
Wire Wire Line
	7000 1500 6600 1500
$Comp
L power:GND #PWR?
U 1 1 65F586AA
P 2350 3500
AR Path="/5F613CCA/65F586AA" Ref="#PWR?"  Part="1" 
AR Path="/65F586AA" Ref="#PWR0122"  Part="1" 
AR Path="/66778914/65F586AA" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65F586AA" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65F586AA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 3250 50  0001 C CNN
F 1 "GND" H 2355 3327 50  0000 C CNN
F 2 "" H 2350 3500 50  0001 C CNN
F 3 "" H 2350 3500 50  0001 C CNN
	1    2350 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 3400 2350 3500
Wire Wire Line
	2350 3000 2350 3400
Connection ~ 2350 3400
Text Label 2400 5650 2    50   ~ 0
SW2
Text Label 2400 5450 2    50   ~ 0
SW0
Text Label 2400 5550 2    50   ~ 0
SW1
Text Label 6700 4100 0    50   ~ 0
SW0
Text Label 6700 4200 0    50   ~ 0
SW1
Text Label 6700 4300 0    50   ~ 0
SW2
Wire Wire Line
	7000 4300 6600 4300
Entry Wire Line
	7100 4400 7000 4300
Wire Wire Line
	7000 4200 6600 4200
Wire Wire Line
	7000 4100 6600 4100
Entry Wire Line
	7100 4200 7000 4100
Entry Wire Line
	7100 4300 7000 4200
Entry Wire Line
	7100 1800 7000 1700
Entry Wire Line
	7000 2900 7100 3000
Wire Wire Line
	5200 4000 4700 4000
Entry Wire Line
	4700 4000 4600 4100
Wire Wire Line
	2950 4250 4150 4250
Wire Wire Line
	4150 4250 4150 2600
Wire Wire Line
	4150 2600 5200 2600
Wire Wire Line
	2950 4350 4250 4350
Wire Wire Line
	4250 4350 4250 2700
Wire Wire Line
	4250 2700 5200 2700
Wire Wire Line
	2950 4450 4350 4450
Wire Wire Line
	4350 4450 4350 2800
Wire Wire Line
	4350 2800 5200 2800
Wire Wire Line
	2950 4550 4450 4550
Wire Wire Line
	4450 4550 4450 2900
Wire Wire Line
	3350 4850 2950 4850
Entry Wire Line
	3450 4950 3350 4850
Wire Wire Line
	3350 4750 2950 4750
Wire Wire Line
	3350 4650 2950 4650
Entry Wire Line
	3450 4750 3350 4650
Entry Wire Line
	3450 4850 3350 4750
Wire Wire Line
	3350 5550 2950 5550
Wire Wire Line
	3350 5450 2950 5450
Entry Wire Line
	3450 5650 3350 5550
Entry Wire Line
	3450 5550 3350 5450
Wire Wire Line
	3350 5350 2950 5350
Wire Wire Line
	3350 5250 2950 5250
Entry Wire Line
	3450 5350 3350 5250
Entry Wire Line
	3450 5450 3350 5350
Wire Wire Line
	3350 5150 2950 5150
Entry Wire Line
	3450 5250 3350 5150
Wire Wire Line
	3350 5050 2950 5050
Wire Wire Line
	3350 4950 2950 4950
Entry Wire Line
	3450 5050 3350 4950
Entry Wire Line
	3450 5150 3350 5050
Text Label 6650 1800 0    50   ~ 0
SCKI0
Text Label 6650 1900 0    50   ~ 0
SDTI0
Entry Wire Line
	7100 1900 7000 1800
Entry Wire Line
	7100 2000 7000 1900
Wire Wire Line
	7000 1800 6600 1800
Wire Wire Line
	7000 1900 6600 1900
Wire Wire Line
	2950 5950 3050 5950
Wire Wire Line
	3050 5950 3050 6050
Connection ~ 3050 6050
Wire Wire Line
	2350 5950 2350 6050
Connection ~ 2350 6050
Entry Wire Line
	3450 5850 3350 5750
Entry Wire Line
	3450 5950 3350 5850
Wire Wire Line
	3350 5850 2950 5850
Wire Wire Line
	3350 5750 2950 5750
Entry Wire Line
	3450 5750 3350 5650
Entry Wire Line
	1950 4450 2050 4550
Entry Wire Line
	1950 4550 2050 4650
Entry Wire Line
	1950 4650 2050 4750
Entry Wire Line
	1950 4750 2050 4850
Entry Wire Line
	2050 4750 1950 4650
Entry Wire Line
	1950 5050 2050 5150
Entry Wire Line
	1950 5150 2050 5250
Entry Wire Line
	1950 5350 2050 5450
Entry Wire Line
	1950 5250 2050 5350
Entry Wire Line
	1950 5450 2050 5550
Entry Wire Line
	1950 5550 2050 5650
Entry Wire Line
	1950 5650 2050 5750
Wire Wire Line
	2050 5550 2450 5550
Entry Wire Line
	2050 5650 1950 5550
Wire Wire Line
	2050 5650 2450 5650
Wire Wire Line
	2050 4850 2450 4850
Wire Wire Line
	2050 4350 2450 4350
Wire Wire Line
	2050 4450 2450 4450
Wire Wire Line
	2050 4550 2450 4550
Wire Wire Line
	2050 4650 2450 4650
Wire Wire Line
	2050 4750 2450 4750
Wire Wire Line
	2050 4250 2450 4250
Wire Wire Line
	2050 5050 2450 5050
Wire Wire Line
	2050 4950 2450 4950
Wire Wire Line
	2050 5250 2450 5250
Wire Wire Line
	2050 5450 2450 5450
Wire Wire Line
	2050 5150 2450 5150
Wire Wire Line
	2050 5350 2450 5350
Text Label 2400 5850 2    50   ~ 0
SW4
Text Label 2400 5750 2    50   ~ 0
SW3
Wire Wire Line
	2050 5750 2450 5750
Entry Wire Line
	2050 5850 1950 5750
Wire Wire Line
	2050 5850 2450 5850
Wire Wire Line
	7000 5200 6600 5200
Entry Wire Line
	7100 5300 7000 5200
Wire Wire Line
	7000 5300 6600 5300
Entry Wire Line
	7100 5400 7000 5300
Wire Wire Line
	7000 5400 6600 5400
Entry Wire Line
	7100 5500 7000 5400
Entry Wire Line
	7100 5600 7000 5500
Wire Wire Line
	7000 5500 6600 5500
Text Label 6700 4400 0    50   ~ 0
SW3
Text Label 6700 4500 0    50   ~ 0
SW4
Wire Wire Line
	7000 4500 6600 4500
Entry Wire Line
	7100 4600 7000 4500
Wire Wire Line
	7000 4400 6600 4400
Entry Wire Line
	7100 4500 7000 4400
Wire Bus Line
	2050 2300 3350 2300
Entry Bus Bus
	3350 2300 3450 2400
Entry Bus Bus
	7000 6200 7100 6100
Entry Bus Bus
	4500 6200 4600 6100
Entry Bus Bus
	3450 6100 3550 6200
Wire Wire Line
	2350 5950 2450 5950
Text Label 2400 2700 2    50   ~ 0
~HWD_DT
Wire Wire Line
	2350 3000 2350 2700
Connection ~ 2350 3000
Wire Wire Line
	2350 2700 2450 2700
Wire Wire Line
	2350 6050 2350 6150
Entry Wire Line
	1950 4350 2050 4450
Entry Wire Line
	1950 4250 2050 4350
Entry Wire Line
	1950 4150 2050 4250
Entry Wire Line
	1950 4850 2050 4950
NoConn ~ 5200 2500
NoConn ~ 5200 2400
NoConn ~ 5200 2300
NoConn ~ 5200 2200
NoConn ~ 5200 3400
NoConn ~ 5200 3500
NoConn ~ 5200 3600
NoConn ~ 5200 3700
NoConn ~ 5200 4100
NoConn ~ 5200 4200
NoConn ~ 5200 4300
NoConn ~ 6600 5100
NoConn ~ 6600 5000
NoConn ~ 6600 4900
NoConn ~ 6600 3000
NoConn ~ 6600 3100
NoConn ~ 6600 3200
NoConn ~ 6600 3300
NoConn ~ 6600 3400
NoConn ~ 6600 3500
NoConn ~ 6600 3600
NoConn ~ 6600 3700
NoConn ~ 6600 3800
NoConn ~ 6600 3900
NoConn ~ 6600 4000
Entry Wire Line
	7100 4000 7200 3900
Entry Wire Line
	7100 4100 7200 4000
Wire Wire Line
	7200 3900 8300 3900
Connection ~ 8300 3900
Text Label 7250 4000 0    50   ~ 0
SDTI0
Text Label 7250 3900 0    50   ~ 0
SCKI0
Entry Wire Line
	7100 1600 7200 1500
Entry Wire Line
	7100 1700 7200 1600
Wire Wire Line
	7200 1500 8850 1500
Wire Wire Line
	7200 1600 8550 1600
Text Label 7250 1500 0    50   ~ 0
SDA
Text Label 7250 1600 0    50   ~ 0
SCL
Wire Wire Line
	7950 3850 7950 5250
$Comp
L power:GND #PWR?
U 1 1 66952864
P 7950 3200
AR Path="/65A70F21/66952864" Ref="#PWR?"  Part="1" 
AR Path="/66952864" Ref="#PWR?"  Part="1" 
AR Path="/65B913FD/66952864" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/66952864" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 2950 50  0001 C CNN
F 1 "GND" H 7955 3027 50  0000 C CNN
F 2 "" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0001 C CNN
	1    7950 3200
	1    0    0    -1  
$EndComp
Connection ~ 8850 2900
Wire Wire Line
	8850 2900 8850 3200
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC59711PWPR U?
U 1 1 65BADF40
P 8850 3700
AR Path="/65B913FD/65BADF40" Ref="U?"  Part="1" 
AR Path="/65BADF40" Ref="U1"  Part="1" 
AR Path="/65B4C92A/65BADF40" Ref="U?"  Part="1" 
F 0 "U?" H 9000 4250 60  0000 C CNN
F 1 "TLC59711" H 9150 4150 60  0000 C CNN
F 2 "digikey-footprints:TSSOP-20-1EP_W4.4mm" H 9050 3900 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc59711" H 9050 4000 60  0001 L CNN
F 4 "296-36745-1-ND" H 9050 4100 60  0001 L CNN "Digi-Key_PN"
F 5 "TLC59711PWPR" H 9050 4200 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 9050 4300 60  0001 L CNN "Category"
F 7 "PMIC - LED Drivers" H 9050 4400 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc59711" H 9050 4500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/TLC59711PWPR/296-36745-1-ND/4341358" H 9050 4600 60  0001 L CNN "DK_Detail_Page"
F 10 "IC LED DRIVER LIN 60MA 20HTSSOP" H 9050 4700 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 9050 4800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9050 4900 60  0001 L CNN "Status"
	1    8850 3700
	1    0    0    -1  
$EndComp
NoConn ~ 8400 4200
Text Label 9350 3600 0    50   ~ 0
LED_R0
Text Label 9350 3500 0    50   ~ 0
LED_G0
Text Label 9350 4000 0    50   ~ 0
LED_R1
Text Label 9350 3800 0    50   ~ 0
LED_B1
Text Label 9350 4400 0    50   ~ 0
LED_R2
Text Label 9350 4300 0    50   ~ 0
LED_G2
Wire Wire Line
	9300 3400 9600 3400
Entry Wire Line
	9600 3400 9700 3500
Entry Wire Line
	9700 3400 9800 3300
Entry Wire Line
	9700 3300 9800 3200
Entry Wire Line
	9700 3200 9800 3100
Entry Wire Line
	9700 2800 9800 2700
Entry Wire Line
	9700 2600 9800 2500
Entry Wire Line
	9700 2400 9800 2300
Entry Wire Line
	9700 2200 9800 2100
Wire Wire Line
	9300 3500 9600 3500
Wire Wire Line
	9600 3600 9300 3600
Entry Wire Line
	9600 3500 9700 3600
Entry Wire Line
	9600 3600 9700 3700
Entry Wire Line
	9600 3800 9700 3900
Entry Wire Line
	9600 3900 9700 4000
Entry Wire Line
	9600 4000 9700 4100
Entry Wire Line
	9600 4200 9700 4300
Entry Wire Line
	9600 4300 9700 4400
Entry Wire Line
	9600 4400 9700 4500
Entry Wire Line
	9600 4650 9700 4750
Entry Wire Line
	9600 4750 9700 4850
Entry Wire Line
	9600 4850 9700 4950
Wire Wire Line
	9300 4850 9600 4850
Wire Wire Line
	9300 4750 9600 4750
Wire Wire Line
	9300 4650 9600 4650
Wire Wire Line
	9800 4900 10100 4900
Wire Wire Line
	9800 4300 10100 4300
Wire Wire Line
	9800 4400 10100 4400
Wire Wire Line
	9800 4500 10100 4500
Wire Wire Line
	9800 5100 10100 5100
Wire Wire Line
	9800 3100 10100 3100
Wire Wire Line
	9800 3300 10100 3300
Entry Wire Line
	9700 3800 9800 3700
Entry Wire Line
	9700 3900 9800 3800
Entry Wire Line
	9700 4000 9800 3900
Entry Wire Line
	9700 4400 9800 4300
Entry Wire Line
	9700 4500 9800 4400
Entry Wire Line
	9700 4600 9800 4500
Entry Wire Line
	9700 5200 9800 5100
Entry Wire Line
	9700 5100 9800 5000
Entry Wire Line
	9700 5000 9800 4900
Wire Wire Line
	8200 4000 7200 4000
Connection ~ 8200 4000
Wire Wire Line
	10200 2100 9800 2100
Wire Wire Line
	9800 2500 10200 2500
Wire Wire Line
	9800 2700 10200 2700
Text Label 9350 4200 0    50   ~ 0
LED_B2
Text Label 9350 4850 0    50   ~ 0
LED_R3
Text Label 9350 4750 0    50   ~ 0
LED_G3
Text Label 9350 4650 0    50   ~ 0
LED_B3
Text Label 9350 3400 0    50   ~ 0
LED_B0
Text Label 9350 3900 0    50   ~ 0
LED_G1
Text Label 9800 3300 0    50   ~ 0
LED_R0
Text Label 9800 2100 0    50   ~ 0
LED_R0
Text Label 9800 3200 0    50   ~ 0
LED_G0
Text Label 9800 2300 0    50   ~ 0
LED_G0
Text Label 9800 2500 0    50   ~ 0
LED_B0
Text Label 9800 3100 0    50   ~ 0
LED_B0
Text Label 9800 2700 0    50   ~ 0
LED_R1
Text Label 9800 3900 0    50   ~ 0
LED_R1
Text Label 9800 3800 0    50   ~ 0
LED_G1
Text Label 9800 3700 0    50   ~ 0
LED_B1
Text Label 9800 4300 0    50   ~ 0
LED_B2
Text Label 9800 4400 0    50   ~ 0
LED_G2
Text Label 9800 4500 0    50   ~ 0
LED_R2
Text Label 9800 5100 0    50   ~ 0
LED_R3
Text Label 9800 5000 0    50   ~ 0
LED_G3
Text Label 9800 4900 0    50   ~ 0
LED_B3
Wire Wire Line
	10200 5600 9800 5600
Entry Wire Line
	9700 5900 9800 5800
Entry Wire Line
	9700 5900 9800 5800
Entry Wire Line
	9700 5700 9800 5600
Entry Wire Line
	9700 5500 9800 5400
Wire Wire Line
	10200 5400 9800 5400
Wire Wire Line
	9800 5800 10200 5800
Wire Wire Line
	9800 6000 10200 6000
Text Label 9800 5400 0    50   ~ 0
LED_R3
Text Label 9800 5600 0    50   ~ 0
LED_G3
Text Label 9800 5800 0    50   ~ 0
LED_B3
Text Label 9800 6000 0    50   ~ 0
LED_R2
Entry Wire Line
	9700 2800 9800 2700
Entry Bus Bus
	9600 6200 9700 6100
Entry Wire Line
	9700 6100 9800 6000
Wire Wire Line
	10100 2200 10100 1800
Connection ~ 10100 2200
Wire Wire Line
	10100 1800 10200 1800
Connection ~ 8550 1600
Connection ~ 8850 1500
Wire Wire Line
	8550 1600 10200 1600
Wire Wire Line
	8850 1500 10200 1500
Text Label 10050 1500 0    50   ~ 0
SDA
Text Label 10050 1600 0    50   ~ 0
SCL
Text Label 10050 1700 0    50   ~ 0
+5V
Text Label 10200 1800 2    50   ~ 0
GND
Text Label 2400 4650 2    50   ~ 0
LED_R0
Text Label 4900 4700 0    50   ~ 0
MTR0A
Text Label 4900 4800 0    50   ~ 0
MTR0B
Text Label 4900 4900 0    50   ~ 0
MTR1A
Text Label 4900 5000 0    50   ~ 0
MTR1B
Text Label 4850 4600 0    50   ~ 0
SERVO2
Wire Bus Line
	3550 6200 9600 6200
Wire Bus Line
	4600 3900 4600 6100
Wire Bus Line
	9700 2200 9700 6100
Wire Bus Line
	3450 1500 3450 6100
Wire Bus Line
	1950 1500 1950 5750
Wire Bus Line
	7100 1600 7100 6100
$EndSCHEMATC
