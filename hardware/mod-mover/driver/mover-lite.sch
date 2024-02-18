EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L Connector_Generic:Conn_01x03 J?
U 1 1 65A63D30
P 10100 2250
F 0 "J?" H 10180 2292 50  0000 L CNN
F 1 "LED PWM 1-2" H 10180 2201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10100 2250 50  0001 C CNN
F 3 "~" H 10100 2250 50  0001 C CNN
	1    10100 2250
	1    0    0    -1  
$EndComp
Text Notes 1750 1700 2    50   ~ 0
Inputs:\nReceiver IO - Digital Out\nReceiver IO - DMX Receive
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J?
U 1 1 65A74970
P 2650 1500
AR Path="/65A70F21/65A74970" Ref="J?"  Part="1" 
AR Path="/65A74970" Ref="J1"  Part="1" 
AR Path="/65B0DCEA/65A74970" Ref="J?"  Part="1" 
F 0 "J?" H 2700 2017 50  0000 C CNN
F 1 "IO EXTENSION" H 2700 1926 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Vertical" H 2650 1500 50  0001 C CNN
F 3 "~" H 2650 1500 50  0001 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
Text Label 3000 1300 0    50   ~ 0
SR-OUT
Text Label 3000 1400 0    50   ~ 0
SR-CLK
Text Label 3000 1500 0    50   ~ 0
~SR_CLR
Text Label 2150 1500 0    50   ~ 0
DAC_A0
Text Label 2150 1400 0    50   ~ 0
DAC_A1
Text Label 2150 1300 0    50   ~ 0
~DAC_WR
Text Label 2100 1600 0    50   ~ 0
DMX-RX
Text Label 3000 1600 0    50   ~ 0
DMX-DIR
$Comp
L power:GND #PWR?
U 1 1 65A7497E
P 3050 1900
AR Path="/65A70F21/65A7497E" Ref="#PWR?"  Part="1" 
AR Path="/65A7497E" Ref="#PWR0104"  Part="1" 
AR Path="/65B0DCEA/65A7497E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 1650 50  0001 C CNN
F 1 "GND" H 3055 1727 50  0000 C CNN
F 2 "" H 3050 1900 50  0001 C CNN
F 3 "" H 3050 1900 50  0001 C CNN
	1    3050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65A74984
P 2350 1900
AR Path="/65A70F21/65A74984" Ref="#PWR?"  Part="1" 
AR Path="/65A74984" Ref="#PWR0105"  Part="1" 
AR Path="/65B0DCEA/65A74984" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 1650 50  0001 C CNN
F 1 "GND" H 2355 1727 50  0000 C CNN
F 2 "" H 2350 1900 50  0001 C CNN
F 3 "" H 2350 1900 50  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65A7498A
P 3050 1050
AR Path="/65A70F21/65A7498A" Ref="#PWR?"  Part="1" 
AR Path="/65A7498A" Ref="#PWR0106"  Part="1" 
AR Path="/65B0DCEA/65A7498A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 900 50  0001 C CNN
F 1 "+5V" H 3065 1223 50  0000 C CNN
F 2 "" H 3050 1050 50  0001 C CNN
F 3 "" H 3050 1050 50  0001 C CNN
	1    3050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65A74990
P 2350 1050
AR Path="/65A70F21/65A74990" Ref="#PWR?"  Part="1" 
AR Path="/65A74990" Ref="#PWR0107"  Part="1" 
AR Path="/65B0DCEA/65A74990" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 900 50  0001 C CNN
F 1 "+5V" H 2365 1223 50  0000 C CNN
F 2 "" H 2350 1050 50  0001 C CNN
F 3 "" H 2350 1050 50  0001 C CNN
	1    2350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1300 2450 1300
Wire Wire Line
	2050 1400 2450 1400
Wire Wire Line
	2050 1500 2450 1500
Wire Wire Line
	2950 1300 3350 1300
Wire Wire Line
	3350 1400 2950 1400
Wire Wire Line
	2950 1500 3350 1500
Wire Wire Line
	3350 1600 2950 1600
Wire Wire Line
	2950 1800 3050 1800
Wire Wire Line
	3050 1800 3050 1900
Wire Wire Line
	2450 1800 2350 1800
Wire Wire Line
	2350 1800 2350 1900
Wire Wire Line
	2950 1200 3050 1200
Wire Wire Line
	3050 1200 3050 1050
Wire Wire Line
	2450 1200 2350 1200
Wire Wire Line
	2350 1200 2350 1050
Entry Wire Line
	1950 1400 2050 1300
Entry Wire Line
	1950 1500 2050 1400
Entry Wire Line
	1950 1600 2050 1500
Entry Wire Line
	3350 1300 3450 1400
Entry Wire Line
	3350 1400 3450 1500
Entry Wire Line
	3350 1500 3450 1600
Entry Wire Line
	3350 1600 3450 1700
Wire Wire Line
	2050 1600 2450 1600
Text Label 2100 1700 0    50   ~ 0
DMX-TX
Wire Wire Line
	2050 1700 2450 1700
Entry Wire Line
	1950 1800 2050 1700
Entry Wire Line
	1950 1700 2050 1600
NoConn ~ 2950 1700
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 65A61FC6
P 5900 3750
F 0 "A?" H 5550 4800 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5300 4700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6050 2800 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5900 2750 50  0001 C CNN
	1    5900 3750
	-1   0    0    -1  
$EndComp
NoConn ~ 5400 3250
NoConn ~ 5400 3150
NoConn ~ 5400 3550
Wire Wire Line
	9900 2250 9800 2250
Wire Wire Line
	3650 6050 3650 6200
$Comp
L Device:R_US R?
U 1 1 65AD7E38
P 3650 5900
AR Path="/65AC16CB/65AD7E38" Ref="R?"  Part="1" 
AR Path="/65AD7E38" Ref="R4"  Part="1" 
AR Path="/65B0DCEA/65AD7E38" Ref="R?"  Part="1" 
F 0 "R?" H 3718 5946 50  0000 L CNN
F 1 "4.7k" H 3718 5855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3690 5890 50  0001 C CNN
F 3 "~" H 3650 5900 50  0001 C CNN
	1    3650 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 65AD7E46
P 4100 6200
AR Path="/65AC16CB/65AD7E46" Ref="R?"  Part="1" 
AR Path="/65AD7E46" Ref="R5"  Part="1" 
AR Path="/65B0DCEA/65AD7E46" Ref="R?"  Part="1" 
F 0 "R?" V 4300 6150 50  0000 L CNN
F 1 "27k" V 4200 6150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4140 6190 50  0001 C CNN
F 3 "~" H 4100 6200 50  0001 C CNN
	1    4100 6200
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65AD7E71
P 4800 5650
AR Path="/65AC16CB/65AD7E71" Ref="R?"  Part="1" 
AR Path="/65AD7E71" Ref="R6"  Part="1" 
AR Path="/65B0DCEA/65AD7E71" Ref="R?"  Part="1" 
F 0 "R?" H 4868 5696 50  0000 L CNN
F 1 "10k" H 4868 5605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4840 5640 50  0001 C CNN
F 3 "~" H 4800 5650 50  0001 C CNN
	1    4800 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 5800 4800 5900
Wire Wire Line
	3950 6200 3650 6200
$Comp
L power:+12V #PWR?
U 1 1 65AD7EAA
P 3650 5300
AR Path="/65AC16CB/65AD7EAA" Ref="#PWR?"  Part="1" 
AR Path="/65AD7EAA" Ref="#PWR0111"  Part="1" 
AR Path="/65B0DCEA/65AD7EAA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3650 5150 50  0001 C CNN
F 1 "+12V" H 3665 5473 50  0000 C CNN
F 2 "" H 3650 5300 50  0001 C CNN
F 3 "" H 3650 5300 50  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 65AD7EC2
P 3400 5250
AR Path="/65AC16CB/65AD7EC2" Ref="R?"  Part="1" 
AR Path="/65AD7EC2" Ref="R3"  Part="1" 
AR Path="/65B0DCEA/65AD7EC2" Ref="R?"  Part="1" 
F 0 "R?" H 3468 5296 50  0000 L CNN
F 1 "4.7k" H 3468 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3440 5240 50  0001 C CNN
F 3 "~" H 3400 5250 50  0001 C CNN
	1    3400 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 65AD7EC8
P 6350 5850
AR Path="/65AC16CB/65AD7EC8" Ref="R?"  Part="1" 
AR Path="/65AD7EC8" Ref="R7"  Part="1" 
AR Path="/65B0DCEA/65AD7EC8" Ref="R?"  Part="1" 
F 0 "R?" V 6250 5800 50  0000 L CNN
F 1 "27k" V 6150 5800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6390 5840 50  0001 C CNN
F 3 "~" H 6350 5850 50  0001 C CNN
	1    6350 5850
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65AD7EEF
P 4650 4650
AR Path="/65AC16CB/65AD7EEF" Ref="#PWR?"  Part="1" 
AR Path="/65AD7EEF" Ref="#PWR0113"  Part="1" 
AR Path="/65B0DCEA/65AD7EEF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 4500 50  0001 C CNN
F 1 "+5V" H 4665 4823 50  0000 C CNN
F 2 "" H 4650 4650 50  0001 C CNN
F 3 "" H 4650 4650 50  0001 C CNN
	1    4650 4650
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 65AD7F2A
P 5950 5850
AR Path="/65AC16CB/65AD7F2A" Ref="Q?"  Part="1" 
AR Path="/65AD7F2A" Ref="Q1"  Part="1" 
AR Path="/65B0DCEA/65AD7F2A" Ref="Q?"  Part="1" 
F 0 "Q?" H 6141 5896 50  0000 L CNN
F 1 "2N3904" H 6141 5805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 6150 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5950 5850 50  0001 L CNN
	1    5950 5850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 65AFB5C0
P 7600 3050
F 0 "J?" H 7700 3050 50  0000 L CNN
F 1 "PWM" H 7700 3150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7600 3050 50  0001 C CNN
F 3 "~" H 7600 3050 50  0001 C CNN
	1    7600 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65B02E8F
P 10100 3250
F 0 "J?" H 10150 2950 50  0000 C CNN
F 1 "RGB0" H 10150 3050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10100 3250 50  0001 C CNN
F 3 "~" H 10100 3250 50  0001 C CNN
	1    10100 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65B0317D
P 10100 3850
F 0 "J?" H 10150 3550 50  0000 C CNN
F 1 "RGB1" H 10150 3650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10100 3850 50  0001 C CNN
F 3 "~" H 10100 3850 50  0001 C CNN
	1    10100 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65B034D3
P 10000 4450
F 0 "J?" H 10050 4767 50  0000 C CNN
F 1 "RGB2" H 10050 4676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10000 4450 50  0001 C CNN
F 3 "~" H 10000 4450 50  0001 C CNN
	1    10000 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 65B038F1
P 10000 5050
F 0 "J?" H 10050 5367 50  0000 C CNN
F 1 "RGB3" H 10050 5276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10000 5050 50  0001 C CNN
F 3 "~" H 10000 5050 50  0001 C CNN
	1    10000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4050 9400 4050
Wire Wire Line
	9400 4050 9400 3950
Wire Wire Line
	9400 3950 9800 3950
Wire Wire Line
	9100 3950 9300 3950
Wire Wire Line
	9300 3950 9300 3850
Wire Wire Line
	9300 3850 9800 3850
Wire Wire Line
	9100 3850 9200 3850
Wire Wire Line
	9200 3850 9200 3750
Wire Wire Line
	9200 3750 9800 3750
Wire Wire Line
	9100 3650 9700 3650
Wire Wire Line
	9100 3550 9600 3550
Wire Wire Line
	9100 3450 9500 3450
$Comp
L power:GND #PWR?
U 1 1 65B73B7A
P 8650 5300
AR Path="/65A70F21/65B73B7A" Ref="#PWR?"  Part="1" 
AR Path="/65B73B7A" Ref="#PWR0101"  Part="1" 
AR Path="/65B0DCEA/65B73B7A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8650 5050 50  0001 C CNN
F 1 "GND" H 8655 5127 50  0000 C CNN
F 2 "" H 8650 5300 50  0001 C CNN
F 3 "" H 8650 5300 50  0001 C CNN
	1    8650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5050 8600 5100
Wire Wire Line
	8600 5100 8650 5100
Wire Wire Line
	8700 5100 8700 5050
Wire Wire Line
	8650 5300 8650 5250
Connection ~ 8650 5100
Wire Wire Line
	8650 5100 8700 5100
NoConn ~ 8200 4250
NoConn ~ 8200 4350
$Comp
L Device:R_US R?
U 1 1 65C0D66B
P 8050 5050
AR Path="/65AC16CB/65C0D66B" Ref="R?"  Part="1" 
AR Path="/65C0D66B" Ref="R8"  Part="1" 
AR Path="/65B0DCEA/65C0D66B" Ref="R?"  Part="1" 
F 0 "R?" H 8118 5096 50  0000 L CNN
F 1 "3.3k" H 8118 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8090 5040 50  0001 C CNN
F 3 "~" H 8050 5050 50  0001 C CNN
	1    8050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4800 8050 4800
Wire Wire Line
	8050 4800 8050 4900
Wire Wire Line
	8050 5200 8050 5250
Wire Wire Line
	8050 5250 8650 5250
Connection ~ 8650 5250
Wire Wire Line
	8650 5250 8650 5100
$Comp
L power:GND #PWR?
U 1 1 65CB1D10
P 9800 2850
AR Path="/65A70F21/65CB1D10" Ref="#PWR?"  Part="1" 
AR Path="/65CB1D10" Ref="#PWR0103"  Part="1" 
AR Path="/65B0DCEA/65CB1D10" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9800 2600 50  0001 C CNN
F 1 "GND" H 9805 2677 50  0000 C CNN
F 2 "" H 9800 2850 50  0001 C CNN
F 3 "" H 9800 2850 50  0001 C CNN
	1    9800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2350 9600 2350
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65A62F71
P 10100 1100
F 0 "J?" H 10250 1050 50  0000 C CNN
F 1 "Pan Servo" H 10400 1150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10100 1100 50  0001 C CNN
F 3 "~" H 10100 1100 50  0001 C CNN
	1    10100 1100
	1    0    0    1   
$EndComp
Wire Wire Line
	9900 1700 9800 1700
Wire Wire Line
	9800 1200 9800 1700
Wire Wire Line
	9900 1200 9800 1200
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65A63303
P 10100 1600
F 0 "J?" H 10250 1550 50  0000 C CNN
F 1 "Tilt Servo" H 10400 1650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10100 1600 50  0001 C CNN
F 3 "~" H 10100 1600 50  0001 C CNN
	1    10100 1600
	1    0    0    1   
$EndComp
Connection ~ 9800 1700
Text Label 9550 1000 0    50   ~ 0
PAN
Text Label 9550 1500 0    50   ~ 0
TILT
Wire Wire Line
	8000 3250 7800 3250
Wire Wire Line
	8100 3150 7800 3150
Wire Wire Line
	8000 4050 8000 3850
Wire Wire Line
	6150 5850 6200 5850
$Comp
L power:GND #PWR?
U 1 1 65AD7EE0
P 5850 6100
AR Path="/65AC16CB/65AD7EE0" Ref="#PWR?"  Part="1" 
AR Path="/65AD7EE0" Ref="#PWR0112"  Part="1" 
AR Path="/65B0DCEA/65AD7EE0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 5850 50  0001 C CNN
F 1 "GND" H 5855 5927 50  0000 C CNN
F 2 "" H 5850 6100 50  0001 C CNN
F 3 "" H 5850 6100 50  0001 C CNN
	1    5850 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 6100 3300 5600
Wire Wire Line
	2850 6100 3300 6100
Wire Wire Line
	2850 5000 2950 5000
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65A678EC
P 2650 4900
F 0 "J?" H 2750 4850 50  0000 L CNN
F 1 "Temp" H 2750 4950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 4900 50  0001 C CNN
F 3 "~" H 2650 4900 50  0001 C CNN
	1    2650 4900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 65A674CB
P 2650 6100
F 0 "J?" H 2730 6092 50  0000 L CNN
F 1 "Fan" H 2730 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2650 6100 50  0001 C CNN
F 3 "~" H 2650 6100 50  0001 C CNN
	1    2650 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 5600 3650 5600
Wire Wire Line
	2850 6000 2950 6000
Wire Wire Line
	2850 6200 3200 6200
Wire Wire Line
	2850 6300 3100 6300
Wire Wire Line
	2850 4900 3400 4900
Wire Wire Line
	3300 5600 3650 5600
Connection ~ 3650 5600
Wire Wire Line
	3650 5600 3650 5750
Wire Wire Line
	3400 4900 3400 5100
Connection ~ 3650 6200
Entry Bus Bus
	6800 2200 6900 2300
Entry Bus Bus
	3350 2200 3450 2100
Entry Bus Bus
	1950 2100 2050 2200
Text Label 6450 3150 0    50   ~ 0
DMX_RX
Text Label 6450 3250 0    50   ~ 0
DMX_TX
Text Label 6450 3350 0    50   ~ 0
DMX_DIR
Wire Wire Line
	6400 3150 6800 3150
Wire Wire Line
	6400 3250 6800 3250
Wire Wire Line
	6400 3350 6800 3350
Entry Wire Line
	6800 3150 6900 3050
Entry Wire Line
	6800 3250 6900 3150
Entry Wire Line
	6800 3350 6900 3250
Wire Wire Line
	6400 3450 6800 3450
Entry Wire Line
	6800 3450 6900 3350
Wire Wire Line
	6500 5850 7150 5850
Text Label 6450 3750 0    50   ~ 0
FAN-OUT
Text Label 6550 5850 0    50   ~ 0
FAN_OUT
Text Label 4300 6200 0    50   ~ 0
FAN_IN
Text Label 2950 4800 0    50   ~ 0
TEMP_IN
Wire Wire Line
	2850 4800 4450 4800
Text Label 6450 3650 0    50   ~ 0
FAN_IN
Text Label 5050 4350 0    50   ~ 0
TEMP_IN
Text Label 5200 4150 0    50   ~ 0
SDA
Text Label 5200 4250 0    50   ~ 0
SCL
Wire Wire Line
	5400 4150 3700 4150
Wire Wire Line
	5400 4250 4000 4250
$Comp
L Device:R_US R?
U 1 1 6660AABC
P 4000 3900
AR Path="/65AC16CB/6660AABC" Ref="R?"  Part="1" 
AR Path="/6660AABC" Ref="R2"  Part="1" 
AR Path="/65B0DCEA/6660AABC" Ref="R?"  Part="1" 
F 0 "R?" H 4068 3946 50  0000 L CNN
F 1 "4.7k" H 4068 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4040 3890 50  0001 C CNN
F 3 "~" H 4000 3900 50  0001 C CNN
	1    4000 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6660B7F2
P 3700 3900
AR Path="/65AC16CB/6660B7F2" Ref="R?"  Part="1" 
AR Path="/6660B7F2" Ref="R1"  Part="1" 
AR Path="/65B0DCEA/6660B7F2" Ref="R?"  Part="1" 
F 0 "R?" H 3768 3946 50  0000 L CNN
F 1 "4.7k" H 3768 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3740 3890 50  0001 C CNN
F 3 "~" H 3700 3900 50  0001 C CNN
	1    3700 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6660BD05
P 3700 3650
AR Path="/65AC16CB/6660BD05" Ref="#PWR?"  Part="1" 
AR Path="/6660BD05" Ref="#PWR0109"  Part="1" 
AR Path="/65B0DCEA/6660BD05" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3700 3500 50  0001 C CNN
F 1 "+5V" H 3715 3823 50  0000 C CNN
F 2 "" H 3700 3650 50  0001 C CNN
F 3 "" H 3700 3650 50  0001 C CNN
	1    3700 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 3750 3700 3700
Wire Wire Line
	4000 3700 4000 3750
Wire Wire Line
	3700 3650 3700 3700
Connection ~ 3700 3700
Wire Wire Line
	3700 3700 4000 3700
Wire Wire Line
	4000 4050 4000 4250
Wire Wire Line
	3700 4050 3700 4150
Text Label 6450 4050 0    50   ~ 0
PAN
Text Label 6450 4150 0    50   ~ 0
TILT
Text Label 6450 3950 0    50   ~ 0
SCKI
Text Label 6450 3850 0    50   ~ 0
SDTI
Text Label 3100 2900 2    50   ~ 0
A0
Text Label 3100 3000 2    50   ~ 0
A1
Text Label 3100 3100 2    50   ~ 0
A2
$Comp
L power:+5V #PWR?
U 1 1 66782E11
P 3050 2500
AR Path="/6841E790/66782E11" Ref="#PWR?"  Part="1" 
AR Path="/66782E11" Ref="#PWR0110"  Part="1" 
AR Path="/5F613CCA/66782E11" Ref="#PWR?"  Part="1" 
AR Path="/66778914/66782E11" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/66782E11" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 2350 50  0001 C CNN
F 1 "+5V" H 3065 2673 50  0000 C CNN
F 2 "" H 3050 2500 50  0001 C CNN
F 3 "" H 3050 2500 50  0001 C CNN
	1    3050 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66782E17
P 2350 2500
AR Path="/6841E790/66782E17" Ref="#PWR?"  Part="1" 
AR Path="/66782E17" Ref="#PWR0114"  Part="1" 
AR Path="/5F613CCA/66782E17" Ref="#PWR?"  Part="1" 
AR Path="/66778914/66782E17" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/66782E17" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 2350 50  0001 C CNN
F 1 "+5V" H 2365 2673 50  0000 C CNN
F 2 "" H 2350 2500 50  0001 C CNN
F 3 "" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2600 3050 2600
Wire Wire Line
	3050 2600 3050 2500
Text Label 3100 3200 2    50   ~ 0
A3
Wire Wire Line
	4550 3100 2950 3100
Wire Wire Line
	4450 3200 2950 3200
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 66782E26
P 2750 2900
AR Path="/5F613CCA/66782E26" Ref="J?"  Part="1" 
AR Path="/66782E26" Ref="J2"  Part="1" 
AR Path="/66778914/66782E26" Ref="J?"  Part="1" 
AR Path="/65B0DCEA/66782E26" Ref="J?"  Part="1" 
F 0 "J?" H 2800 3417 50  0000 C CNN
F 1 "INPUT" H 2800 3326 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 2750 2900 50  0001 C CNN
F 3 "~" H 2750 2900 50  0001 C CNN
	1    2750 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66782E2C
P 1950 3400
AR Path="/5F613CCA/66782E2C" Ref="#PWR?"  Part="1" 
AR Path="/66782E2C" Ref="#PWR0115"  Part="1" 
AR Path="/66778914/66782E2C" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/66782E2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 3150 50  0001 C CNN
F 1 "GND" H 1955 3227 50  0000 C CNN
F 2 "" H 1950 3400 50  0001 C CNN
F 3 "" H 1950 3400 50  0001 C CNN
	1    1950 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66782E32
P 3400 3400
AR Path="/5F613CCA/66782E32" Ref="#PWR?"  Part="1" 
AR Path="/66782E32" Ref="#PWR0116"  Part="1" 
AR Path="/66778914/66782E32" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/66782E32" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 3150 50  0001 C CNN
F 1 "GND" H 3405 3227 50  0000 C CNN
F 2 "" H 3400 3400 50  0001 C CNN
F 3 "" H 3400 3400 50  0001 C CNN
	1    3400 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 3400 3400 3300
Wire Wire Line
	3400 3300 2950 3300
Wire Wire Line
	2450 3300 1950 3300
Wire Wire Line
	1950 3300 1950 3400
Text Label 2250 2600 2    50   ~ 0
~HWD_DT
Wire Wire Line
	2450 2700 2350 2700
Wire Wire Line
	2350 2500 2350 2700
Wire Wire Line
	2450 2900 1950 2900
Wire Wire Line
	1950 2900 1950 3300
Connection ~ 1950 3300
Wire Wire Line
	2450 2600 1950 2600
NoConn ~ 2450 2800
NoConn ~ 2450 3000
NoConn ~ 2450 3100
NoConn ~ 2450 3200
Wire Wire Line
	1950 2900 1950 2600
Connection ~ 1950 2900
Text Label 5350 4050 2    50   ~ 0
A0
Text Label 5350 3950 2    50   ~ 0
A1
Text Label 5350 3850 2    50   ~ 0
A2
Text Label 5350 3750 2    50   ~ 0
A3
NoConn ~ 2950 2700
NoConn ~ 2950 2800
Wire Wire Line
	2950 3000 4650 3000
Wire Wire Line
	2950 2900 4750 2900
Text Notes 1750 3050 2    50   ~ 0
Inputs:\n0-5v\nControl-Pro
Text Notes 1750 4900 2    50   ~ 0
Inputs:\nAnalog Temperature
Text Notes 1750 5750 2    50   ~ 0
Output:\n2-pin fan\n3-pin fan\n4-pin fan\n2.00 mm pitch
Text Notes 1750 6300 2    50   ~ 0
Output:\n2-pin fan\n3-pin fan\n4-pin fan\n2.54 mm pitch
$Comp
L power:GND #PWR?
U 1 1 6690BC18
P 3700 4550
AR Path="/5F613CCA/6690BC18" Ref="#PWR?"  Part="1" 
AR Path="/6690BC18" Ref="#PWR0117"  Part="1" 
AR Path="/66778914/6690BC18" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/6690BC18" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3700 4300 50  0001 C CNN
F 1 "GND" H 3705 4377 50  0000 C CNN
F 2 "" H 3700 4550 50  0001 C CNN
F 3 "" H 3700 4550 50  0001 C CNN
	1    3700 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 4550 3700 4450
Wire Wire Line
	3700 3700 3400 3700
Wire Wire Line
	3400 3700 3400 4350
Wire Wire Line
	3400 4350 3050 4350
Wire Wire Line
	2850 4450 2950 4450
$Comp
L power:+5V #PWR?
U 1 1 6695DC0E
P 5700 2700
AR Path="/65AC16CB/6695DC0E" Ref="#PWR?"  Part="1" 
AR Path="/6695DC0E" Ref="#PWR0118"  Part="1" 
AR Path="/65B0DCEA/6695DC0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 2550 50  0001 C CNN
F 1 "+5V" H 5715 2873 50  0000 C CNN
F 2 "" H 5700 2700 50  0001 C CNN
F 3 "" H 5700 2700 50  0001 C CNN
	1    5700 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 2700 5700 2750
NoConn ~ 5800 2750
Wire Wire Line
	6000 2700 6000 2750
Wire Wire Line
	5200 5450 5850 5450
Wire Wire Line
	3700 7500 2950 7500
Wire Wire Line
	3700 7550 3700 7500
$Comp
L power:PWR_FLAG #FLG?
U 1 1 66A65B35
P 3700 7550
AR Path="/647E1209/66A65B35" Ref="#FLG?"  Part="1" 
AR Path="/66A65B35" Ref="#FLG0101"  Part="1" 
AR Path="/66A5434C/66A65B35" Ref="#FLG?"  Part="1" 
AR Path="/65B0DCEA/66A65B35" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 3700 7625 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 7723 50  0000 C CNN
F 2 "" H 3700 7550 50  0001 C CNN
F 3 "~" H 3700 7550 50  0001 C CNN
	1    3700 7550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 66A65B8B
P 6300 1450
AR Path="/647E1209/66A65B8B" Ref="C?"  Part="1" 
AR Path="/66A65B8B" Ref="C2"  Part="1" 
AR Path="/66A5434C/66A65B8B" Ref="C?"  Part="1" 
AR Path="/65B0DCEA/66A65B8B" Ref="C?"  Part="1" 
F 0 "C?" H 6415 1496 50  0000 L CNN
F 1 "0.1uF" H 6415 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 6338 1300 50  0001 C CNN
F 3 "~" H 6300 1450 50  0001 C CNN
F 4 "Decoupling Capacitor" H 4000 1400 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 4000 1400 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 4000 1400 50  0001 C CNN "SP_PN"
F 7 "753" H 4000 1400 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 4000 1400 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 4000 1400 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 4000 1400 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 4000 1400 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 4000 1400 50  0001 C CNN "MO_Detail_Page"
	1    6300 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 1300 6300 1200
$Comp
L Diode:1N5819 D?
U 1 1 66A65BA2
P 3350 6700
AR Path="/64798DC1/66A65BA2" Ref="D?"  Part="1" 
AR Path="/66A65BA2" Ref="D1"  Part="1" 
AR Path="/647E1209/66A65BA2" Ref="D?"  Part="1" 
AR Path="/66A5434C/66A65BA2" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/66A65BA2" Ref="D?"  Part="1" 
F 0 "D?" H 3350 6916 50  0000 C CNN
F 1 "1N5819" H 3350 6825 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3350 6525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3350 6700 50  0001 C CNN
F 4 "COM-10926" H 3450 6750 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 3450 6750 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 3450 6750 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 3450 6750 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 3450 6750 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 3450 6750 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 3450 6750 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 3450 6750 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 3350 6700 50  0001 C CNN "Description"
	1    3350 6700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 6700 3700 6700
$Comp
L power:PWR_FLAG #FLG?
U 1 1 66A65BA9
P 3700 6650
AR Path="/64798DC1/66A65BA9" Ref="#FLG?"  Part="1" 
AR Path="/66A65BA9" Ref="#FLG0102"  Part="1" 
AR Path="/647E1209/66A65BA9" Ref="#FLG?"  Part="1" 
AR Path="/66A5434C/66A65BA9" Ref="#FLG?"  Part="1" 
AR Path="/65B0DCEA/66A65BA9" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 3700 6725 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 6823 50  0000 C CNN
F 2 "" H 3700 6650 50  0001 C CNN
F 3 "~" H 3700 6650 50  0001 C CNN
	1    3700 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6650 3700 6700
Connection ~ 3700 6700
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 66A65BB7
P 2650 6800
AR Path="/647946E8/66A65BB7" Ref="J?"  Part="1" 
AR Path="/66A65BB7" Ref="J8"  Part="1" 
AR Path="/64798DC1/66A65BB7" Ref="J?"  Part="1" 
AR Path="/647E1209/66A65BB7" Ref="J?"  Part="1" 
AR Path="/66A5434C/66A65BB7" Ref="J?"  Part="1" 
AR Path="/65B0DCEA/66A65BB7" Ref="J?"  Part="1" 
F 0 "J?" H 2800 6700 50  0000 C CNN
F 1 "Power" H 2850 6800 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 2650 6800 50  0001 C CNN
F 3 "~" H 2650 6800 50  0001 C CNN
F 4 "277-1106-ND" H 2750 6850 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 2750 6850 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 2750 6850 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 2750 6850 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 2650 6800 50  0001 C CNN "Description"
	1    2650 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 6800 2950 6800
$Comp
L power:GND #PWR?
U 1 1 66A65BC0
P 2950 7550
AR Path="/6BB77A68/66A65BC0" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313E/66A65BC0" Ref="#PWR?"  Part="1" 
AR Path="/647946E8/66A65BC0" Ref="#PWR?"  Part="1" 
AR Path="/66A65BC0" Ref="#PWR0122"  Part="1" 
AR Path="/64798DC1/66A65BC0" Ref="#PWR?"  Part="1" 
AR Path="/647E1209/66A65BC0" Ref="#PWR?"  Part="1" 
AR Path="/66A5434C/66A65BC0" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/66A65BC0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2950 7300 50  0001 C CNN
F 1 "GND" H 2955 7377 50  0000 C CNN
F 2 "" H 2950 7550 50  0001 C CNN
F 3 "" H 2950 7550 50  0001 C CNN
	1    2950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1800 6300 1600
Text Notes 1750 6800 2    50   ~ 0
Input:\n12v
$Comp
L Device:CP1 C?
U 1 1 66A65BDB
P 3700 7150
AR Path="/647E1209/66A65BDB" Ref="C?"  Part="1" 
AR Path="/66A65BDB" Ref="C1"  Part="1" 
AR Path="/66A5434C/66A65BDB" Ref="C?"  Part="1" 
AR Path="/65B0DCEA/66A65BDB" Ref="C?"  Part="1" 
F 0 "C?" H 3815 7196 50  0000 L CNN
F 1 "10uF" H 3815 7105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3700 7150 50  0001 C CNN
F 3 "~" H 3700 7150 50  0001 C CNN
F 4 "COM-00523" H 5950 7100 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 5950 7100 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 5950 7100 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 5950 7100 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 5950 7100 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 5950 7100 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 5950 7100 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 5950 7100 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 5950 7100 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 5950 7100 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 3700 7150 50  0001 C CNN "Description"
	1    3700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6700 3700 7000
Wire Wire Line
	3700 7300 3700 7500
Connection ~ 3700 7500
$Comp
L Device:C C?
U 1 1 66A65BFA
P 7750 3750
AR Path="/647E1209/66A65BFA" Ref="C?"  Part="1" 
AR Path="/66A65BFA" Ref="C5"  Part="1" 
AR Path="/66A5434C/66A65BFA" Ref="C?"  Part="1" 
AR Path="/65B0DCEA/66A65BFA" Ref="C?"  Part="1" 
F 0 "C?" H 7865 3796 50  0000 L CNN
F 1 "0.1uF" H 7865 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7788 3600 50  0001 C CNN
F 3 "~" H 7750 3750 50  0001 C CNN
F 4 "Decoupling Capacitor" H 5000 3700 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 5000 3700 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 5000 3700 50  0001 C CNN "SP_PN"
F 7 "753" H 5000 3700 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 5000 3700 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 5000 3700 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 5000 3700 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 5000 3700 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 5000 3700 50  0001 C CNN "MO_Detail_Page"
	1    7750 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 6700 3200 6700
Wire Wire Line
	4250 6200 5100 6200
$Comp
L power:GND #PWR?
U 1 1 66AD5849
P 4800 5900
AR Path="/65AC16CB/66AD5849" Ref="#PWR?"  Part="1" 
AR Path="/66AD5849" Ref="#PWR0123"  Part="1" 
AR Path="/65B0DCEA/66AD5849" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4800 5650 50  0001 C CNN
F 1 "GND" H 4805 5727 50  0000 C CNN
F 2 "" H 4800 5900 50  0001 C CNN
F 3 "" H 4800 5900 50  0001 C CNN
	1    4800 5900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66C19116
P 5850 4850
AR Path="/65AC16CB/66C19116" Ref="#PWR?"  Part="1" 
AR Path="/66C19116" Ref="#PWR0124"  Part="1" 
AR Path="/65B0DCEA/66C19116" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 4600 50  0001 C CNN
F 1 "GND" H 5855 4677 50  0000 C CNN
F 2 "" H 5850 4850 50  0001 C CNN
F 3 "" H 5850 4850 50  0001 C CNN
	1    5850 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 4800 5850 4850
Wire Wire Line
	5800 4750 5800 4800
Wire Wire Line
	5800 4800 5850 4800
Wire Wire Line
	5850 4800 5900 4800
Wire Wire Line
	5900 4800 5900 4750
Connection ~ 5850 4800
Wire Wire Line
	3400 5400 3400 6300
Wire Wire Line
	3400 6300 5200 6300
Wire Wire Line
	5200 5450 5200 6300
Connection ~ 3400 6300
Wire Wire Line
	5850 6050 5850 6100
Connection ~ 2950 6000
Wire Wire Line
	2950 6000 2950 6800
Connection ~ 2950 6800
$Comp
L power:+12V #PWR?
U 1 1 66DF25C7
P 5850 1050
AR Path="/65AC16CB/66DF25C7" Ref="#PWR?"  Part="1" 
AR Path="/66DF25C7" Ref="#PWR0125"  Part="1" 
AR Path="/65B0DCEA/66DF25C7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 900 50  0001 C CNN
F 1 "+12V" H 5865 1223 50  0000 C CNN
F 2 "" H 5850 1050 50  0001 C CNN
F 3 "" H 5850 1050 50  0001 C CNN
	1    5850 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 6700 4100 6700
Text Label 9300 1100 0    50   ~ 0
SERVO_PWR
Wire Wire Line
	4800 5350 4800 5500
Wire Wire Line
	4800 5350 5100 5350
Connection ~ 5100 5350
Wire Wire Line
	5100 5350 5100 6200
Wire Wire Line
	3400 4900 4650 4900
Wire Wire Line
	4650 4900 4650 4650
Connection ~ 3400 4900
NoConn ~ 7800 2950
Wire Wire Line
	8650 2950 8650 3050
Wire Wire Line
	8200 3550 7750 3550
Wire Wire Line
	7750 3550 7750 3600
NoConn ~ 10300 5150
NoConn ~ 10300 5050
NoConn ~ 10300 4950
NoConn ~ 10300 4550
NoConn ~ 10300 4450
NoConn ~ 10300 4350
NoConn ~ 10300 3950
NoConn ~ 10300 3850
NoConn ~ 10300 3750
NoConn ~ 10300 3350
NoConn ~ 10300 3250
NoConn ~ 10300 3150
$Comp
L power:+12V #PWR?
U 1 1 6697EFE3
P 6000 2700
AR Path="/65AC16CB/6697EFE3" Ref="#PWR?"  Part="1" 
AR Path="/6697EFE3" Ref="#PWR0119"  Part="1" 
AR Path="/65B0DCEA/6697EFE3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 2550 50  0001 C CNN
F 1 "+12V" H 6015 2873 50  0000 C CNN
F 2 "" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 65D268D7
P 8650 2950
AR Path="/65AC16CB/65D268D7" Ref="#PWR?"  Part="1" 
AR Path="/65D268D7" Ref="#PWR0102"  Part="1" 
AR Path="/65B0DCEA/65D268D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8650 2800 50  0001 C CNN
F 1 "+12V" H 8665 3123 50  0000 C CNN
F 2 "" H 8650 2950 50  0001 C CNN
F 3 "" H 8650 2950 50  0001 C CNN
	1    8650 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 65D58C17
P 5850 1450
AR Path="/647E1209/65D58C17" Ref="C?"  Part="1" 
AR Path="/65D58C17" Ref="C3"  Part="1" 
AR Path="/66A5434C/65D58C17" Ref="C?"  Part="1" 
AR Path="/65B0DCEA/65D58C17" Ref="C?"  Part="1" 
F 0 "C?" H 5965 1496 50  0000 L CNN
F 1 "0.1uF" H 5965 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5888 1300 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
F 4 "Decoupling Capacitor" H 3100 1400 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 3100 1400 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 3100 1400 50  0001 C CNN "SP_PN"
F 7 "753" H 3100 1400 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 3100 1400 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 3100 1400 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 3100 1400 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 3100 1400 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 3100 1400 50  0001 C CNN "MO_Detail_Page"
	1    5850 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 1800 5850 1800
Wire Wire Line
	5850 1600 5850 1800
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65DCBDA2
P 7600 1700
AR Path="/647946E8/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/65DCBDA2" Ref="J9"  Part="1" 
AR Path="/64798DC1/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/647E1209/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/66A5434C/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/65B0DCEA/65DCBDA2" Ref="J?"  Part="1" 
F 0 "J?" H 7500 1400 50  0000 C CNN
F 1 "Power" H 7500 1500 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 7600 1700 50  0001 C CNN
F 3 "~" H 7600 1700 50  0001 C CNN
F 4 "277-1106-ND" H 7700 1750 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 7700 1750 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 7700 1750 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 7700 1750 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 7600 1700 50  0001 C CNN "Description"
	1    7600 1700
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N5819 D?
U 1 1 65DDD5A6
P 8250 1600
AR Path="/64798DC1/65DDD5A6" Ref="D?"  Part="1" 
AR Path="/65DDD5A6" Ref="D2"  Part="1" 
AR Path="/647E1209/65DDD5A6" Ref="D?"  Part="1" 
AR Path="/66A5434C/65DDD5A6" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/65DDD5A6" Ref="D?"  Part="1" 
F 0 "D?" H 8250 1816 50  0000 C CNN
F 1 "1N5819" H 8250 1725 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8250 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 8250 1600 50  0001 C CNN
F 4 "COM-10926" H 8350 1650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 8350 1650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 8350 1650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 8350 1650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 8350 1650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 8350 1650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 8350 1650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 8350 1650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 8250 1600 50  0001 C CNN "Description"
	1    8250 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 1600 8100 1600
Wire Wire Line
	2950 5000 2950 5500
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 65E54E1D
P 2650 5600
F 0 "J?" H 2730 5592 50  0000 L CNN
F 1 "Fan" H 2730 5501 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 2650 5600 50  0001 C CNN
F 3 "~" H 2650 5600 50  0001 C CNN
	1    2650 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 5500 2950 5500
Connection ~ 2950 5500
Wire Wire Line
	2950 5500 2950 6000
Wire Wire Line
	2850 5600 3300 5600
Connection ~ 3300 5600
Wire Wire Line
	2850 5700 3200 5700
Wire Wire Line
	3200 5700 3200 6200
Connection ~ 3200 6200
Wire Wire Line
	3200 6200 3650 6200
Wire Wire Line
	2850 5800 3100 5800
Wire Wire Line
	3100 5800 3100 6300
Connection ~ 3100 6300
Wire Wire Line
	3100 6300 3400 6300
$Comp
L Jumper:SolderJumper_3_Bridged12 JP?
U 1 1 65EFC78F
P 3950 5400
F 0 "JP?" H 3950 5605 50  0000 C CNN
F 1 "FAN_PWR" H 3950 5514 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 3950 5400 50  0001 C CNN
F 3 "~" H 3950 5400 50  0001 C CNN
	1    3950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5400 3650 5400
Wire Wire Line
	3650 5400 3650 5300
Wire Wire Line
	4150 5400 4250 5400
Wire Wire Line
	4250 5400 4250 5300
Wire Wire Line
	3950 5550 3950 5600
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 65F605D1
P 2650 4350
F 0 "J?" H 2800 4250 50  0000 C CNN
F 1 "OLED" H 2850 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2650 4350 50  0001 C CNN
F 3 "~" H 2650 4350 50  0001 C CNN
	1    2650 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 5450 5850 5650
Connection ~ 3700 4150
Connection ~ 4000 4250
Wire Wire Line
	2850 4150 3250 4150
Wire Wire Line
	2850 4250 3150 4250
$Comp
L Device:C C?
U 1 1 6608DB1B
P 5400 1450
AR Path="/647E1209/6608DB1B" Ref="C?"  Part="1" 
AR Path="/6608DB1B" Ref="C4"  Part="1" 
AR Path="/66A5434C/6608DB1B" Ref="C?"  Part="1" 
AR Path="/65B0DCEA/6608DB1B" Ref="C?"  Part="1" 
F 0 "C?" H 5515 1496 50  0000 L CNN
F 1 "0.1uF" H 5515 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5438 1300 50  0001 C CNN
F 3 "~" H 5400 1450 50  0001 C CNN
F 4 "Decoupling Capacitor" H 2650 1400 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 2650 1400 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 2650 1400 50  0001 C CNN "SP_PN"
F 7 "753" H 2650 1400 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 2650 1400 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 2650 1400 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 2650 1400 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 2650 1400 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 2650 1400 50  0001 C CNN "MO_Detail_Page"
	1    5400 1450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6608E139
P 5400 1050
AR Path="/65AC16CB/6608E139" Ref="#PWR?"  Part="1" 
AR Path="/6608E139" Ref="#PWR0121"  Part="1" 
AR Path="/65B0DCEA/6608E139" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5400 900 50  0001 C CNN
F 1 "+5V" H 5415 1223 50  0000 C CNN
F 2 "" H 5400 1050 50  0001 C CNN
F 3 "" H 5400 1050 50  0001 C CNN
	1    5400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1050 5400 1300
Wire Wire Line
	5400 1600 5400 1800
Wire Wire Line
	5850 1800 5400 1800
Connection ~ 5850 1800
Wire Wire Line
	6300 1200 5850 1200
Wire Wire Line
	5850 1200 5850 1300
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACB9B0
P 5250 6700
F 0 "MH?" H 5350 6746 50  0000 L CNN
F 1 "MountingHole" H 5350 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 6700 50  0001 C CNN
F 3 "~" H 5250 6700 50  0001 C CNN
	1    5250 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACC4C9
P 4500 6700
F 0 "MH?" H 4600 6746 50  0000 L CNN
F 1 "MountingHole" H 4600 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 6700 50  0001 C CNN
F 3 "~" H 4500 6700 50  0001 C CNN
	1    4500 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACC945
P 4500 6950
F 0 "MH?" H 4600 6996 50  0000 L CNN
F 1 "MountingHole" H 4600 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 6950 50  0001 C CNN
F 3 "~" H 4500 6950 50  0001 C CNN
	1    4500 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACCBAB
P 5250 6950
F 0 "MH?" H 5350 6996 50  0000 L CNN
F 1 "MountingHole" H 5350 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 6950 50  0001 C CNN
F 3 "~" H 5250 6950 50  0001 C CNN
	1    5250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACCFC4
P 4500 7200
F 0 "MH?" H 4600 7246 50  0000 L CNN
F 1 "MountingHole" H 4600 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 7200 50  0001 C CNN
F 3 "~" H 4500 7200 50  0001 C CNN
	1    4500 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACD2F2
P 5250 7200
F 0 "MH?" H 5350 7246 50  0000 L CNN
F 1 "MountingHole" H 5350 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 7200 50  0001 C CNN
F 3 "~" H 5250 7200 50  0001 C CNN
	1    5250 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACD4EC
P 5250 7450
F 0 "MH?" H 5350 7496 50  0000 L CNN
F 1 "MountingHole" H 5350 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 7450 50  0001 C CNN
F 3 "~" H 5250 7450 50  0001 C CNN
	1    5250 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65ACD81E
P 4500 7450
F 0 "MH?" H 4600 7496 50  0000 L CNN
F 1 "MountingHole" H 4600 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 7450 50  0001 C CNN
F 3 "~" H 4500 7450 50  0001 C CNN
	1    4500 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR?
U 1 1 65B3E04B
P 8650 1150
F 0 "#PWR?" H 8650 1050 50  0001 C CNN
F 1 "VDC" H 8650 1425 50  0000 C CNN
F 2 "" H 8650 1150 50  0001 C CNN
F 3 "" H 8650 1150 50  0001 C CNN
	1    8650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1150 8650 1600
Wire Wire Line
	8650 1600 8400 1600
$Comp
L power:VDC #PWR?
U 1 1 65B8C0DE
P 4250 5300
F 0 "#PWR?" H 4250 5200 50  0001 C CNN
F 1 "VDC" H 4250 5575 50  0000 C CNN
F 2 "" H 4250 5300 50  0001 C CNN
F 3 "" H 4250 5300 50  0001 C CNN
	1    4250 5300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65D973A8
P 6000 6700
F 0 "MH?" H 6100 6746 50  0000 L CNN
F 1 "MountingHole" H 6100 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 6700 50  0001 C CNN
F 3 "~" H 6000 6700 50  0001 C CNN
	1    6000 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65D97A46
P 6000 6950
F 0 "MH?" H 6100 6996 50  0000 L CNN
F 1 "MountingHole" H 6100 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 6950 50  0001 C CNN
F 3 "~" H 6000 6950 50  0001 C CNN
	1    6000 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65D97A50
P 6000 7200
F 0 "MH?" H 6100 7246 50  0000 L CNN
F 1 "MountingHole" H 6100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 7200 50  0001 C CNN
F 3 "~" H 6000 7200 50  0001 C CNN
	1    6000 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65D97A5A
P 6000 7450
F 0 "MH?" H 6100 7496 50  0000 L CNN
F 1 "MountingHole" H 6100 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 7450 50  0001 C CNN
F 3 "~" H 6000 7450 50  0001 C CNN
	1    6000 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6800 2950 7500
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65AE8243
P 10100 6050
F 0 "J?" H 10180 6092 50  0000 L CNN
F 1 "LED PWM 7-8" H 10180 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10100 6050 50  0001 C CNN
F 3 "~" H 10100 6050 50  0001 C CNN
	1    10100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 6300 9800 6250
Wire Wire Line
	9900 6050 9800 6050
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC59711PWPR U?
U 1 1 65AF22BB
P 8650 3750
F 0 "U?" H 8800 4300 60  0000 C CNN
F 1 "TLC59711" H 8950 4200 60  0000 C CNN
F 2 "digikey-footprints:TSSOP-20-1EP_W4.4mm" H 8850 3950 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc59711" H 8850 4050 60  0001 L CNN
F 4 "296-36745-1-ND" H 8850 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "TLC59711PWPR" H 8850 4250 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8850 4350 60  0001 L CNN "Category"
F 7 "PMIC - LED Drivers" H 8850 4450 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc59711" H 8850 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/TLC59711PWPR/296-36745-1-ND/4341358" H 8850 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "IC LED DRIVER LIN 60MA 20HTSSOP" H 8850 4750 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 8850 4850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8850 4950 60  0001 L CNN "Status"
	1    8650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4250 9400 4250
Wire Wire Line
	9400 4250 9400 4350
Wire Wire Line
	9400 4350 9800 4350
Wire Wire Line
	9100 4350 9300 4350
Wire Wire Line
	9300 4350 9300 4450
Wire Wire Line
	9300 4450 9800 4450
Wire Wire Line
	9100 4450 9200 4450
Wire Wire Line
	9200 4450 9200 4550
Wire Wire Line
	9200 4550 9800 4550
Wire Wire Line
	9100 4700 9700 4700
Wire Wire Line
	9700 4700 9700 4950
Wire Wire Line
	9700 4950 9800 4950
Wire Wire Line
	9800 5050 9600 5050
Wire Wire Line
	9600 5050 9600 4800
Wire Wire Line
	9600 4800 9100 4800
Wire Wire Line
	9100 4900 9500 4900
Wire Wire Line
	9500 4900 9500 5150
Wire Wire Line
	9500 5150 9800 5150
$Comp
L power:GND #PWR?
U 1 1 65C901C0
P 9800 6250
AR Path="/65A70F21/65C901C0" Ref="#PWR?"  Part="1" 
AR Path="/65C901C0" Ref="#PWR0108"  Part="1" 
AR Path="/65B0DCEA/65C901C0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9800 6000 50  0001 C CNN
F 1 "GND" H 9805 6077 50  0000 C CNN
F 2 "" H 9800 6250 50  0001 C CNN
F 3 "" H 9800 6250 50  0001 C CNN
	1    9800 6250
	1    0    0    -1  
$EndComp
Connection ~ 9200 4550
Connection ~ 9300 4450
Wire Wire Line
	9400 4350 9400 5950
Connection ~ 9400 4350
Wire Wire Line
	9500 5150 9500 6150
Connection ~ 9500 5150
Wire Wire Line
	9400 5950 9900 5950
Wire Wire Line
	9300 4450 9300 5750
Wire Wire Line
	9200 5550 9200 4550
Wire Wire Line
	9300 5750 9900 5750
Wire Wire Line
	9200 5550 9900 5550
Wire Wire Line
	9800 5650 9900 5650
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65AE7B69
P 10100 5650
F 0 "J?" H 10180 5692 50  0000 L CNN
F 1 "LED PWM 5-6" H 10180 5601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10100 5650 50  0001 C CNN
F 3 "~" H 10100 5650 50  0001 C CNN
	1    10100 5650
	1    0    0    -1  
$EndComp
Connection ~ 9800 6050
Wire Wire Line
	9800 6050 9800 5650
Connection ~ 9800 6250
Wire Wire Line
	9800 6050 9800 6250
Wire Wire Line
	9900 6150 9500 6150
Wire Wire Line
	9800 2250 9800 2650
Wire Wire Line
	9900 2650 9800 2650
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65D7829C
P 10100 2650
F 0 "J?" H 10180 2692 50  0000 L CNN
F 1 "LED PWM 3-4" H 10180 2601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10100 2650 50  0001 C CNN
F 3 "~" H 10100 2650 50  0001 C CNN
	1    10100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2850 9800 2650
Connection ~ 9800 2650
Wire Wire Line
	9800 1700 9800 2250
Connection ~ 9800 2250
Connection ~ 8650 3050
Wire Wire Line
	8650 3050 8650 3250
Wire Wire Line
	7800 3050 8650 3050
Wire Wire Line
	8000 4050 8200 4050
Connection ~ 8100 3950
Wire Wire Line
	7800 2850 7900 2850
Wire Wire Line
	8100 3950 8200 3950
$Comp
L power:GND #PWR?
U 1 1 65FECEAE
P 7750 4150
AR Path="/65A70F21/65FECEAE" Ref="#PWR?"  Part="1" 
AR Path="/65FECEAE" Ref="#PWR0120"  Part="1" 
AR Path="/65B0DCEA/65FECEAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 3900 50  0001 C CNN
F 1 "GND" H 7755 3977 50  0000 C CNN
F 2 "" H 7750 4150 50  0001 C CNN
F 3 "" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2850 7900 4100
Wire Wire Line
	7750 4100 7750 3900
Wire Wire Line
	7750 4100 7900 4100
Wire Wire Line
	7750 4100 7750 4150
Connection ~ 7750 4100
Wire Wire Line
	6400 4150 7350 4150
Wire Wire Line
	7350 4150 7350 2600
Wire Wire Line
	7350 2600 9250 2600
Wire Wire Line
	6400 4050 7250 4050
Wire Wire Line
	7250 4050 7250 2500
Wire Wire Line
	7250 2500 9150 2500
$Comp
L power:GND #PWR?
U 1 1 66108D27
P 8650 1900
AR Path="/65A70F21/66108D27" Ref="#PWR?"  Part="1" 
AR Path="/66108D27" Ref="#PWR0128"  Part="1" 
AR Path="/65B0DCEA/66108D27" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8650 1650 50  0001 C CNN
F 1 "GND" H 8655 1727 50  0000 C CNN
F 2 "" H 8650 1900 50  0001 C CNN
F 3 "" H 8650 1900 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1700 8650 1700
Wire Wire Line
	8650 1700 8650 1900
Wire Wire Line
	9150 1000 9150 2500
Wire Wire Line
	9150 1000 9900 1000
Wire Wire Line
	9250 1500 9900 1500
Wire Wire Line
	9250 1500 9250 2600
Wire Wire Line
	9700 2150 9900 2150
Wire Wire Line
	9500 2550 9900 2550
Wire Wire Line
	9400 3950 9400 2750
Connection ~ 9400 3950
Wire Wire Line
	9400 2750 9900 2750
Connection ~ 2950 7500
Wire Wire Line
	2950 7500 2950 7550
$Comp
L power:+12V #PWR?
U 1 1 661F40C6
P 4100 6600
AR Path="/65AC16CB/661F40C6" Ref="#PWR?"  Part="1" 
AR Path="/661F40C6" Ref="#PWR0129"  Part="1" 
AR Path="/65B0DCEA/661F40C6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 6450 50  0001 C CNN
F 1 "+12V" H 4115 6773 50  0000 C CNN
F 2 "" H 4100 6600 50  0001 C CNN
F 3 "" H 4100 6600 50  0001 C CNN
	1    4100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6600 4100 6700
Wire Wire Line
	5850 1050 5850 1200
Connection ~ 5850 1200
$Comp
L power:GND #PWR?
U 1 1 6623D2C0
P 5850 1900
AR Path="/65A70F21/6623D2C0" Ref="#PWR?"  Part="1" 
AR Path="/6623D2C0" Ref="#PWR0130"  Part="1" 
AR Path="/65B0DCEA/6623D2C0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 1650 50  0001 C CNN
F 1 "GND" H 5855 1727 50  0000 C CNN
F 2 "" H 5850 1900 50  0001 C CNN
F 3 "" H 5850 1900 50  0001 C CNN
	1    5850 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 1900 5850 1800
Wire Wire Line
	8650 1600 9050 1600
Connection ~ 8650 1600
Wire Wire Line
	9050 1600 9900 1600
Wire Wire Line
	9050 1100 9900 1100
Connection ~ 9050 1600
Wire Wire Line
	9050 1100 9050 1600
Text Label 9300 1600 0    50   ~ 0
SERVO_PWR
Text Notes 1750 4150 2    50   ~ 0
Output:\nStatus Display
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 663F484D
P 2650 3850
F 0 "J?" H 2800 3750 50  0000 C CNN
F 1 "OLED" H 2850 3850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2650 3850 50  0001 C CNN
F 3 "~" H 2650 3850 50  0001 C CNN
	1    2650 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 3950 2950 3950
Wire Wire Line
	2950 3950 2950 4450
Connection ~ 2950 4450
Wire Wire Line
	2950 4450 3700 4450
Wire Wire Line
	3050 4350 3050 3850
Wire Wire Line
	3050 3850 2850 3850
Connection ~ 3050 4350
Wire Wire Line
	3050 4350 2850 4350
Wire Wire Line
	2850 3750 3150 3750
Wire Wire Line
	3150 3750 3150 4250
Connection ~ 3150 4250
Wire Wire Line
	3150 4250 4000 4250
Wire Wire Line
	3250 4150 3250 3650
Wire Wire Line
	3250 3650 2850 3650
Connection ~ 3250 4150
Wire Wire Line
	3250 4150 3700 4150
Wire Wire Line
	9700 3350 9700 2150
Wire Wire Line
	9700 3650 9700 3350
Connection ~ 9700 3350
Wire Wire Line
	9700 3350 9800 3350
Wire Wire Line
	9600 3250 9600 2350
Wire Wire Line
	9600 3550 9600 3250
Connection ~ 9600 3250
Wire Wire Line
	9600 3250 9800 3250
Wire Wire Line
	9500 3150 9500 2550
Wire Wire Line
	9500 3450 9500 3150
Connection ~ 9500 3150
Wire Wire Line
	9500 3150 9800 3150
Text Notes 7600 2300 0    50   ~ 0
D9\n
Text Notes 7600 2400 0    50   ~ 0
D10
Text Label 6450 4250 0    50   ~ 0
~SR_CLR
Text Label 6450 4350 0    50   ~ 0
SR-CLK
Text Label 6450 4450 0    50   ~ 0
SR-OUT
Text Label 6450 3550 0    50   ~ 0
DAC_A1
Text Label 6450 3450 0    50   ~ 0
DAC_A0
Text Label 5050 4450 0    50   ~ 0
~DAC_WR
Wire Wire Line
	6400 3750 7150 3750
Wire Wire Line
	8100 3150 8100 3950
Wire Wire Line
	6400 3850 8000 3850
Connection ~ 8000 3850
Wire Wire Line
	8000 3850 8000 3250
Wire Wire Line
	6400 3650 7050 3650
Wire Wire Line
	7050 3650 7050 5350
Wire Wire Line
	7050 5350 5100 5350
Wire Wire Line
	6400 3950 8100 3950
Wire Wire Line
	7150 3750 7150 5850
Wire Wire Line
	6400 4250 6800 4250
Wire Wire Line
	6800 4350 6400 4350
Wire Wire Line
	6400 4450 6800 4450
Entry Wire Line
	6800 4250 6900 4350
Entry Wire Line
	6800 4350 6900 4450
Entry Wire Line
	6800 4450 6900 4550
Entry Bus Bus
	6800 5100 6900 5000
Wire Bus Line
	6800 5100 5000 5100
Entry Bus Bus
	4900 5000 5000 5100
Wire Wire Line
	5400 3950 4650 3950
Wire Wire Line
	5400 4350 4450 4350
Wire Wire Line
	4450 4350 4450 4800
Wire Wire Line
	4750 2900 4750 4050
Wire Wire Line
	4750 4050 5400 4050
Wire Wire Line
	4650 3000 4650 3950
Wire Wire Line
	4550 3100 4550 3850
Wire Wire Line
	4550 3850 5400 3850
Wire Wire Line
	4450 3200 4450 3750
Wire Wire Line
	4450 3750 5400 3750
Entry Wire Line
	4900 4550 5000 4450
Wire Wire Line
	5000 4450 5400 4450
Entry Bus Bus
	4800 2200 4900 2300
Wire Wire Line
	6400 3550 6800 3550
Entry Wire Line
	6800 3550 6900 3450
Text Label 13500 3750 0    50   ~ 0
PAN
Text Label 13500 3850 0    50   ~ 0
TILT
Text Label 13500 3950 0    50   ~ 0
SERVO_3
Text Label 13500 4050 0    50   ~ 0
SERVO_4
Text Label 11850 3750 0    50   ~ 0
TEMP1
Text Label 11850 3850 0    50   ~ 0
TEMP2
Text Label 11850 3950 0    50   ~ 0
TEMP3
Text Label 11850 4050 0    50   ~ 0
TEMP4
Text Label 13100 3750 0    50   ~ 0
LED_1
Text Label 13100 3850 0    50   ~ 0
LED_2
Text Label 13100 3950 0    50   ~ 0
LED_3
Text Label 13100 4050 0    50   ~ 0
LED_4
Text Label 13100 4150 0    50   ~ 0
LED_5
Text Label 13100 4250 0    50   ~ 0
LED_6
Text Label 13100 4350 0    50   ~ 0
LED_7
Text Label 13100 4450 0    50   ~ 0
LED_8
Text Label 13100 4550 0    50   ~ 0
LED_9
Text Label 13100 4650 0    50   ~ 0
LED_10
Text Label 13100 4750 0    50   ~ 0
LED_11
Text Label 13100 4850 0    50   ~ 0
LED_12
Text Label 12200 3750 0    50   ~ 0
FAN0
Text Label 12200 3850 0    50   ~ 0
FAN1
Text Label 12200 3950 0    50   ~ 0
FAN2
Text Label 12200 4050 0    50   ~ 0
FAN3
Text Label 12550 3750 0    50   ~ 0
FANSP0
Text Label 12550 3850 0    50   ~ 0
FANSP1
Text Label 12550 3950 0    50   ~ 0
FANSP2
Text Label 12550 4050 0    50   ~ 0
FANSP3
Text Label 14050 3750 0    50   ~ 0
MOTOR_0A
Text Label 14050 3850 0    50   ~ 0
MOTOR_0B
Text Label 14050 3950 0    50   ~ 0
MOTOR_1A
Text Label 14050 4050 0    50   ~ 0
MOTOR_1B
Text Notes 13600 4300 0    50   ~ 0
32 pins total
Text Label 14750 3750 0    50   ~ 0
+5V
Text Label 14750 3850 0    50   ~ 0
+5V
Text Label 14750 3950 0    50   ~ 0
GND
Text Label 14750 4050 0    50   ~ 0
GND
Wire Bus Line
	4900 2300 4900 5000
Wire Bus Line
	6900 4350 6900 5000
Wire Bus Line
	2050 2200 6800 2200
Wire Bus Line
	3450 1400 3450 2100
Wire Bus Line
	1950 1400 1950 2100
Wire Bus Line
	6900 2300 6900 3450
$EndSCHEMATC
