EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Mini Mover Driver (DMX-MMD)"
Date "2024-02-09"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 65A63D30
P 10250 2250
F 0 "J13" H 10330 2292 50  0000 L CNN
F 1 "LED PWM 1-2" H 10330 2201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 2250 50  0001 C CNN
F 3 "~" H 10250 2250 50  0001 C CNN
	1    10250 2250
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
F 0 "J1" H 2700 2017 50  0000 C CNN
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
$Comp
L power:GND #PWR?
U 1 1 65A7497E
P 3050 1900
AR Path="/65A70F21/65A7497E" Ref="#PWR?"  Part="1" 
AR Path="/65A7497E" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3050 1650 50  0001 C CNN
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
F 0 "#PWR0105" H 2350 1650 50  0001 C CNN
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
F 0 "#PWR0106" H 3050 900 50  0001 C CNN
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
F 0 "#PWR0107" H 2350 900 50  0001 C CNN
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
Entry Wire Line
	1950 1800 2050 1700
Entry Wire Line
	1950 1700 2050 1600
NoConn ~ 2950 1700
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 65A61FC6
P 5900 3750
F 0 "A1" H 5550 4800 50  0000 C CNN
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
	10050 2250 9950 2250
Wire Wire Line
	3650 6050 3650 6200
$Comp
L Device:R_US R?
U 1 1 65AD7E38
P 3650 5900
AR Path="/65AC16CB/65AD7E38" Ref="R?"  Part="1" 
AR Path="/65AD7E38" Ref="R4"  Part="1" 
F 0 "R4" H 3718 5946 50  0000 L CNN
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
F 0 "R5" V 4300 6150 50  0000 L CNN
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
F 0 "R6" H 4868 5696 50  0000 L CNN
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
F 0 "#PWR0111" H 3650 5150 50  0001 C CNN
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
F 0 "R3" H 3468 5296 50  0000 L CNN
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
F 0 "R7" V 6250 5800 50  0000 L CNN
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
F 0 "#PWR0113" H 4650 4500 50  0001 C CNN
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
F 0 "Q1" H 6141 5896 50  0000 L CNN
F 1 "2N3904" H 6141 5805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 6150 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5950 5850 50  0001 L CNN
	1    5950 5850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J10
U 1 1 65AFB5C0
P 7650 2600
F 0 "J10" H 7750 2600 50  0000 L CNN
F 1 "PWM" H 7750 2700 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7650 2600 50  0001 C CNN
F 3 "~" H 7650 2600 50  0001 C CNN
	1    7650 2600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J15
U 1 1 65B02E8F
P 10250 3250
F 0 "J15" H 10300 2950 50  0000 C CNN
F 1 "RGB0" H 10300 3050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10250 3250 50  0001 C CNN
F 3 "~" H 10250 3250 50  0001 C CNN
	1    10250 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J16
U 1 1 65B0317D
P 10250 3850
F 0 "J16" H 10300 3550 50  0000 C CNN
F 1 "RGB1" H 10300 3650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10250 3850 50  0001 C CNN
F 3 "~" H 10250 3850 50  0001 C CNN
	1    10250 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J17
U 1 1 65B034D3
P 10150 4450
F 0 "J17" H 10200 4767 50  0000 C CNN
F 1 "RGB2" H 10200 4676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10150 4450 50  0001 C CNN
F 3 "~" H 10150 4450 50  0001 C CNN
	1    10150 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J18
U 1 1 65B038F1
P 10150 5050
F 0 "J18" H 10200 5367 50  0000 C CNN
F 1 "RGB3" H 10200 5276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10150 5050 50  0001 C CNN
F 3 "~" H 10150 5050 50  0001 C CNN
	1    10150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65B73B7A
P 8650 5200
AR Path="/65A70F21/65B73B7A" Ref="#PWR?"  Part="1" 
AR Path="/65B73B7A" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 8650 4950 50  0001 C CNN
F 1 "GND" H 8655 5027 50  0000 C CNN
F 2 "" H 8650 5200 50  0001 C CNN
F 3 "" H 8650 5200 50  0001 C CNN
	1    8650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4950 8600 5000
Wire Wire Line
	8600 5000 8650 5000
Wire Wire Line
	8700 5000 8700 4950
Wire Wire Line
	8650 5200 8650 5150
Connection ~ 8650 5000
Wire Wire Line
	8650 5000 8700 5000
NoConn ~ 8200 4150
NoConn ~ 8200 4250
$Comp
L Device:R_US R?
U 1 1 65C0D66B
P 8050 4950
AR Path="/65AC16CB/65C0D66B" Ref="R?"  Part="1" 
AR Path="/65C0D66B" Ref="R8"  Part="1" 
F 0 "R8" H 8118 4996 50  0000 L CNN
F 1 "3.3k" H 8118 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8090 4940 50  0001 C CNN
F 3 "~" H 8050 4950 50  0001 C CNN
	1    8050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4700 8050 4700
Wire Wire Line
	8050 4700 8050 4800
Wire Wire Line
	8050 5100 8050 5150
Wire Wire Line
	8050 5150 8650 5150
Connection ~ 8650 5150
Wire Wire Line
	8650 5150 8650 5000
$Comp
L power:GND #PWR?
U 1 1 65CB1D10
P 9950 2850
AR Path="/65A70F21/65CB1D10" Ref="#PWR?"  Part="1" 
AR Path="/65CB1D10" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 9950 2600 50  0001 C CNN
F 1 "GND" H 9955 2677 50  0000 C CNN
F 2 "" H 9950 2850 50  0001 C CNN
F 3 "" H 9950 2850 50  0001 C CNN
	1    9950 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 65A62F71
P 10250 1100
F 0 "J11" H 10400 1050 50  0000 C CNN
F 1 "Pan Servo" H 10550 1150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 1100 50  0001 C CNN
F 3 "~" H 10250 1100 50  0001 C CNN
	1    10250 1100
	1    0    0    1   
$EndComp
Wire Wire Line
	10050 1700 9950 1700
Wire Wire Line
	9950 1200 9950 1700
Wire Wire Line
	10050 1200 9950 1200
$Comp
L Connector_Generic:Conn_01x03 J12
U 1 1 65A63303
P 10250 1600
F 0 "J12" H 10400 1550 50  0000 C CNN
F 1 "Tilt Servo" H 10550 1650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
	1    10250 1600
	1    0    0    1   
$EndComp
Connection ~ 9950 1700
Text Label 9700 1000 0    50   ~ 0
PAN
Text Label 9700 1500 0    50   ~ 0
TILT
Wire Wire Line
	8000 2800 7850 2800
Wire Wire Line
	8100 2700 7850 2700
Wire Wire Line
	6150 5850 6200 5850
$Comp
L power:GND #PWR?
U 1 1 65AD7EE0
P 5850 6100
AR Path="/65AC16CB/65AD7EE0" Ref="#PWR?"  Part="1" 
AR Path="/65AD7EE0" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5850 5850 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J5
U 1 1 65A678EC
P 2650 4900
F 0 "J5" H 2750 4850 50  0000 L CNN
F 1 "Temp" H 2750 4950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 4900 50  0001 C CNN
F 3 "~" H 2650 4900 50  0001 C CNN
	1    2650 4900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 65A674CB
P 2650 6100
F 0 "J7" H 2730 6092 50  0000 L CNN
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
F 0 "R2" H 4068 3946 50  0000 L CNN
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
F 0 "R1" H 3768 3946 50  0000 L CNN
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
F 0 "#PWR0109" H 3700 3500 50  0001 C CNN
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
Text Label 6450 3850 0    50   ~ 0
SCKI
Text Label 6450 3950 0    50   ~ 0
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
F 0 "#PWR0110" H 3050 2350 50  0001 C CNN
F 1 "+5V" H 3065 2673 50  0000 C CNN
F 2 "" H 3050 2500 50  0001 C CNN
F 3 "" H 3050 2500 50  0001 C CNN
	1    3050 2500
	-1   0    0    -1  
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
F 0 "J2" H 2800 3417 50  0000 C CNN
F 1 "INPUT" H 2800 3326 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" H 2750 2900 50  0001 C CNN
F 3 "~" H 2750 2900 50  0001 C CNN
	1    2750 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66782E2C
P 2150 3400
AR Path="/5F613CCA/66782E2C" Ref="#PWR?"  Part="1" 
AR Path="/66782E2C" Ref="#PWR0115"  Part="1" 
AR Path="/66778914/66782E2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 2150 3150 50  0001 C CNN
F 1 "GND" H 2155 3227 50  0000 C CNN
F 2 "" H 2150 3400 50  0001 C CNN
F 3 "" H 2150 3400 50  0001 C CNN
	1    2150 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66782E32
P 3050 3400
AR Path="/5F613CCA/66782E32" Ref="#PWR?"  Part="1" 
AR Path="/66782E32" Ref="#PWR0116"  Part="1" 
AR Path="/66778914/66782E32" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 3050 3150 50  0001 C CNN
F 1 "GND" H 3055 3227 50  0000 C CNN
F 2 "" H 3050 3400 50  0001 C CNN
F 3 "" H 3050 3400 50  0001 C CNN
	1    3050 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 3400 3050 3300
Wire Wire Line
	3050 3300 2950 3300
Text Label 2450 2600 2    50   ~ 0
~HWD_DT
Wire Wire Line
	2450 2600 2150 2600
NoConn ~ 2450 2800
NoConn ~ 2450 3000
NoConn ~ 2450 3100
NoConn ~ 2450 3200
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
F 0 "#PWR0117" H 3700 4300 50  0001 C CNN
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
F 0 "#PWR0118" H 5700 2550 50  0001 C CNN
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
F 0 "#FLG0101" H 3700 7625 50  0001 C CNN
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
F 0 "C2" H 6415 1496 50  0000 L CNN
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
F 0 "D1" H 3350 6916 50  0000 C CNN
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
F 0 "#FLG0102" H 3700 6725 50  0001 C CNN
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
F 0 "J8" H 2800 6700 50  0000 C CNN
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
F 0 "#PWR0122" H 2950 7300 50  0001 C CNN
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
F 0 "C1" H 3815 7196 50  0000 L CNN
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
P 7750 4500
AR Path="/647E1209/66A65BFA" Ref="C?"  Part="1" 
AR Path="/66A65BFA" Ref="C5"  Part="1" 
AR Path="/66A5434C/66A65BFA" Ref="C?"  Part="1" 
F 0 "C5" H 7865 4546 50  0000 L CNN
F 1 "0.1uF" H 7865 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7788 4350 50  0001 C CNN
F 3 "~" H 7750 4500 50  0001 C CNN
F 4 "Decoupling Capacitor" H 5000 4450 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 5000 4450 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 5000 4450 50  0001 C CNN "SP_PN"
F 7 "753" H 5000 4450 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 5000 4450 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 5000 4450 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 5000 4450 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 5000 4450 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 5000 4450 50  0001 C CNN "MO_Detail_Page"
	1    7750 4500
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
F 0 "#PWR0123" H 4800 5650 50  0001 C CNN
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
F 0 "#PWR0124" H 5850 4600 50  0001 C CNN
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
F 0 "#PWR0125" H 5850 900 50  0001 C CNN
F 1 "+12V" H 5865 1223 50  0000 C CNN
F 2 "" H 5850 1050 50  0001 C CNN
F 3 "" H 5850 1050 50  0001 C CNN
	1    5850 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 6700 4100 6700
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
NoConn ~ 7850 2500
Wire Wire Line
	8200 3450 7750 3450
Wire Wire Line
	7750 3450 7750 4350
NoConn ~ 10450 5150
NoConn ~ 10450 5050
NoConn ~ 10450 4950
NoConn ~ 10450 4550
NoConn ~ 10450 4450
NoConn ~ 10450 4350
NoConn ~ 10450 3950
NoConn ~ 10450 3850
NoConn ~ 10450 3750
NoConn ~ 10450 3350
NoConn ~ 10450 3250
NoConn ~ 10450 3150
$Comp
L power:+12V #PWR?
U 1 1 6697EFE3
P 6000 2700
AR Path="/65AC16CB/6697EFE3" Ref="#PWR?"  Part="1" 
AR Path="/6697EFE3" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 6000 2550 50  0001 C CNN
F 1 "+12V" H 6015 2873 50  0000 C CNN
F 2 "" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 65D268D7
P 8650 3100
AR Path="/65AC16CB/65D268D7" Ref="#PWR?"  Part="1" 
AR Path="/65D268D7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 8650 2950 50  0001 C CNN
F 1 "+12V" H 8665 3273 50  0000 C CNN
F 2 "" H 8650 3100 50  0001 C CNN
F 3 "" H 8650 3100 50  0001 C CNN
	1    8650 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 65D58C17
P 5850 1450
AR Path="/647E1209/65D58C17" Ref="C?"  Part="1" 
AR Path="/65D58C17" Ref="C3"  Part="1" 
AR Path="/66A5434C/65D58C17" Ref="C?"  Part="1" 
F 0 "C3" H 5965 1496 50  0000 L CNN
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
P 7650 1000
AR Path="/647946E8/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/65DCBDA2" Ref="J9"  Part="1" 
AR Path="/64798DC1/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/647E1209/65DCBDA2" Ref="J?"  Part="1" 
AR Path="/66A5434C/65DCBDA2" Ref="J?"  Part="1" 
F 0 "J9" H 7550 700 50  0000 C CNN
F 1 "Power" H 7550 800 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 7650 1000 50  0001 C CNN
F 3 "~" H 7650 1000 50  0001 C CNN
F 4 "277-1106-ND" H 7750 1050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 7750 1050 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 7750 1050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 7750 1050 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 7650 1000 50  0001 C CNN "Description"
	1    7650 1000
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N5819 D?
U 1 1 65DDD5A6
P 8250 900
AR Path="/64798DC1/65DDD5A6" Ref="D?"  Part="1" 
AR Path="/65DDD5A6" Ref="D2"  Part="1" 
AR Path="/647E1209/65DDD5A6" Ref="D?"  Part="1" 
AR Path="/66A5434C/65DDD5A6" Ref="D?"  Part="1" 
F 0 "D2" H 8250 1116 50  0000 C CNN
F 1 "1N5819" H 8250 1025 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8250 725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 8250 900 50  0001 C CNN
F 4 "COM-10926" H 8350 950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 8350 950 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 8350 950 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 8350 950 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 8350 950 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 8350 950 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 8350 950 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 8350 950 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 8250 900 50  0001 C CNN "Description"
	1    8250 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 900  8100 900 
Wire Wire Line
	2950 5000 2950 5500
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 65E54E1D
P 2650 5600
F 0 "J6" H 2730 5592 50  0000 L CNN
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
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 65EFC78F
P 3950 5400
F 0 "JP1" H 3950 5605 50  0000 C CNN
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
L Connector_Generic:Conn_01x04 J4
U 1 1 65F605D1
P 2650 4350
F 0 "J4" H 2800 4250 50  0000 C CNN
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
F 0 "C4" H 5515 1496 50  0000 L CNN
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
F 0 "#PWR0121" H 5400 900 50  0001 C CNN
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
L Mechanical:MountingHole MH5
U 1 1 65ACB9B0
P 5250 6700
F 0 "MH5" H 5350 6746 50  0000 L CNN
F 1 "MountingHole" H 5350 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 6700 50  0001 C CNN
F 3 "~" H 5250 6700 50  0001 C CNN
	1    5250 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH1
U 1 1 65ACC4C9
P 4500 6700
F 0 "MH1" H 4600 6746 50  0000 L CNN
F 1 "MountingHole" H 4600 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 6700 50  0001 C CNN
F 3 "~" H 4500 6700 50  0001 C CNN
	1    4500 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 65ACC945
P 4500 6950
F 0 "MH2" H 4600 6996 50  0000 L CNN
F 1 "MountingHole" H 4600 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 6950 50  0001 C CNN
F 3 "~" H 4500 6950 50  0001 C CNN
	1    4500 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH6
U 1 1 65ACCBAB
P 5250 6950
F 0 "MH6" H 5350 6996 50  0000 L CNN
F 1 "MountingHole" H 5350 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 6950 50  0001 C CNN
F 3 "~" H 5250 6950 50  0001 C CNN
	1    5250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 65ACCFC4
P 4500 7200
F 0 "MH3" H 4600 7246 50  0000 L CNN
F 1 "MountingHole" H 4600 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 7200 50  0001 C CNN
F 3 "~" H 4500 7200 50  0001 C CNN
	1    4500 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH7
U 1 1 65ACD2F2
P 5250 7200
F 0 "MH7" H 5350 7246 50  0000 L CNN
F 1 "MountingHole" H 5350 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 7200 50  0001 C CNN
F 3 "~" H 5250 7200 50  0001 C CNN
	1    5250 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH8
U 1 1 65ACD4EC
P 5250 7450
F 0 "MH8" H 5350 7496 50  0000 L CNN
F 1 "MountingHole" H 5350 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5250 7450 50  0001 C CNN
F 3 "~" H 5250 7450 50  0001 C CNN
	1    5250 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 65ACD81E
P 4500 7450
F 0 "MH4" H 4600 7496 50  0000 L CNN
F 1 "MountingHole" H 4600 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 7450 50  0001 C CNN
F 3 "~" H 4500 7450 50  0001 C CNN
	1    4500 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH9
U 1 1 65D973A8
P 6000 6700
F 0 "MH9" H 6100 6746 50  0000 L CNN
F 1 "MountingHole" H 6100 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 6700 50  0001 C CNN
F 3 "~" H 6000 6700 50  0001 C CNN
	1    6000 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH10
U 1 1 65D97A46
P 6000 6950
F 0 "MH10" H 6100 6996 50  0000 L CNN
F 1 "MountingHole" H 6100 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 6950 50  0001 C CNN
F 3 "~" H 6000 6950 50  0001 C CNN
	1    6000 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH11
U 1 1 65D97A50
P 6000 7200
F 0 "MH11" H 6100 7246 50  0000 L CNN
F 1 "MountingHole" H 6100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 7200 50  0001 C CNN
F 3 "~" H 6000 7200 50  0001 C CNN
	1    6000 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH12
U 1 1 65D97A5A
P 6000 7450
F 0 "MH12" H 6100 7496 50  0000 L CNN
F 1 "MountingHole" H 6100 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6000 7450 50  0001 C CNN
F 3 "~" H 6000 7450 50  0001 C CNN
	1    6000 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6800 2950 7500
$Comp
L Connector_Generic:Conn_01x03 J20
U 1 1 65AE8243
P 10250 6050
F 0 "J20" H 10330 6092 50  0000 L CNN
F 1 "LED PWM 7-8" H 10330 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 6050 50  0001 C CNN
F 3 "~" H 10250 6050 50  0001 C CNN
	1    10250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 6300 9950 6250
Wire Wire Line
	10050 6050 9950 6050
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC59711PWPR U1
U 1 1 65AF22BB
P 8650 3650
F 0 "U1" H 8800 4200 60  0000 C CNN
F 1 "TLC59711" H 8950 4100 60  0000 C CNN
F 2 "digikey-footprints:TSSOP-20-1EP_W4.4mm" H 8850 3850 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc59711" H 8850 3950 60  0001 L CNN
F 4 "296-36745-1-ND" H 8850 4050 60  0001 L CNN "Digi-Key_PN"
F 5 "TLC59711PWPR" H 8850 4150 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8850 4250 60  0001 L CNN "Category"
F 7 "PMIC - LED Drivers" H 8850 4350 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Ftlc59711" H 8850 4450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/TLC59711PWPR/296-36745-1-ND/4341358" H 8850 4550 60  0001 L CNN "DK_Detail_Page"
F 10 "IC LED DRIVER LIN 60MA 20HTSSOP" H 8850 4650 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 8850 4750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8850 4850 60  0001 L CNN "Status"
	1    8650 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65C901C0
P 9950 6250
AR Path="/65A70F21/65C901C0" Ref="#PWR?"  Part="1" 
AR Path="/65C901C0" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 9950 6000 50  0001 C CNN
F 1 "GND" H 9955 6077 50  0000 C CNN
F 2 "" H 9950 6250 50  0001 C CNN
F 3 "" H 9950 6250 50  0001 C CNN
	1    9950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5650 10050 5650
$Comp
L Connector_Generic:Conn_01x03 J19
U 1 1 65AE7B69
P 10250 5650
F 0 "J19" H 10330 5692 50  0000 L CNN
F 1 "LED PWM 5-6" H 10330 5601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 5650 50  0001 C CNN
F 3 "~" H 10250 5650 50  0001 C CNN
	1    10250 5650
	1    0    0    -1  
$EndComp
Connection ~ 9950 6050
Wire Wire Line
	9950 6050 9950 5650
Connection ~ 9950 6250
Wire Wire Line
	9950 6050 9950 6250
Wire Wire Line
	9950 2250 9950 2650
Wire Wire Line
	10050 2650 9950 2650
$Comp
L Connector_Generic:Conn_01x03 J14
U 1 1 65D7829C
P 10250 2650
F 0 "J14" H 10330 2692 50  0000 L CNN
F 1 "LED PWM 3-4" H 10330 2601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 2650 50  0001 C CNN
F 3 "~" H 10250 2650 50  0001 C CNN
	1    10250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2850 9950 2650
Connection ~ 9950 2650
Wire Wire Line
	9950 1700 9950 2250
Connection ~ 9950 2250
Wire Wire Line
	7850 2600 8100 2600
Wire Wire Line
	7850 2400 7900 2400
$Comp
L power:GND #PWR?
U 1 1 65FECEAE
P 7750 5200
AR Path="/65A70F21/65FECEAE" Ref="#PWR?"  Part="1" 
AR Path="/65FECEAE" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 7750 4950 50  0001 C CNN
F 1 "GND" H 7755 5027 50  0000 C CNN
F 2 "" H 7750 5200 50  0001 C CNN
F 3 "" H 7750 5200 50  0001 C CNN
	1    7750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2400 7900 3050
Wire Wire Line
	6400 4150 7350 4150
Wire Wire Line
	6400 4050 7250 4050
$Comp
L power:GND #PWR?
U 1 1 66108D27
P 8100 1100
AR Path="/65A70F21/66108D27" Ref="#PWR?"  Part="1" 
AR Path="/66108D27" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 8100 850 50  0001 C CNN
F 1 "GND" H 8105 927 50  0000 C CNN
F 2 "" H 8100 1100 50  0001 C CNN
F 3 "" H 8100 1100 50  0001 C CNN
	1    8100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1000 8100 1000
Wire Wire Line
	8100 1000 8100 1100
Connection ~ 2950 7500
Wire Wire Line
	2950 7500 2950 7550
$Comp
L power:+12V #PWR?
U 1 1 661F40C6
P 4100 6600
AR Path="/65AC16CB/661F40C6" Ref="#PWR?"  Part="1" 
AR Path="/661F40C6" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4100 6450 50  0001 C CNN
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
F 0 "#PWR0130" H 5850 1650 50  0001 C CNN
F 1 "GND" H 5855 1727 50  0000 C CNN
F 2 "" H 5850 1900 50  0001 C CNN
F 3 "" H 5850 1900 50  0001 C CNN
	1    5850 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 1900 5850 1800
Wire Wire Line
	9550 1600 10050 1600
Wire Wire Line
	9550 1100 10050 1100
Wire Wire Line
	9550 1100 9550 1600
Text Label 9000 900  0    50   ~ 0
SERVO_PWR
Text Notes 1750 4150 2    50   ~ 0
Output:\nStatus Display
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 663F484D
P 2650 3850
F 0 "J3" H 2800 3750 50  0000 C CNN
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
	8100 2700 8100 3850
Wire Wire Line
	8000 3950 8000 2800
Wire Wire Line
	6400 3650 7050 3650
Wire Wire Line
	7050 3650 7050 5350
Wire Wire Line
	7050 5350 5100 5350
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
Text Label 9150 3350 0    50   ~ 0
LED_B0
Text Label 9150 3450 0    50   ~ 0
LED_G0
Text Label 9650 2150 0    50   ~ 0
LED_R0
Text Label 9150 3750 0    50   ~ 0
LED_B1
Text Label 9150 3850 0    50   ~ 0
LED_G1
Text Label 9150 3950 0    50   ~ 0
LED_R1
Text Label 9150 4150 0    50   ~ 0
LED_B2
Text Label 9150 4250 0    50   ~ 0
LED_G2
Text Label 9150 4350 0    50   ~ 0
LED_R2
Text Label 9150 4600 0    50   ~ 0
LED_B3
Text Label 9150 4700 0    50   ~ 0
LED_G3
Text Label 9150 4800 0    50   ~ 0
LED_R3
Text Label 9150 3550 0    50   ~ 0
LED_R0
Text Label 9650 2350 0    50   ~ 0
LED_G0
Text Label 9650 2550 0    50   ~ 0
LED_B0
Text Label 9650 2750 0    50   ~ 0
LED_R1
Text Label 9150 5850 0    50   ~ 0
LED_R2
Text Label 9150 5950 0    50   ~ 0
LED_G2
Text Label 9150 6050 0    50   ~ 0
LED_B2
Text Label 9150 6150 0    50   ~ 0
LED_R3
Wire Wire Line
	9100 3350 9450 3350
Wire Wire Line
	9100 3450 9450 3450
Wire Wire Line
	9100 3550 9450 3550
Wire Wire Line
	9100 3850 9450 3850
Wire Wire Line
	9100 3950 9450 3950
Wire Wire Line
	9100 4150 9450 4150
Wire Wire Line
	9100 4250 9450 4250
Wire Wire Line
	9100 4350 9450 4350
Wire Wire Line
	9100 4600 9450 4600
Wire Wire Line
	9100 4700 9450 4700
Wire Wire Line
	9100 4800 9450 4800
Wire Wire Line
	9650 3150 9950 3150
Wire Wire Line
	9650 3250 9950 3250
Wire Wire Line
	9650 3350 9950 3350
Wire Wire Line
	9650 3750 9950 3750
Wire Wire Line
	9100 3750 9450 3750
Wire Wire Line
	9650 4550 9950 4550
Wire Wire Line
	9650 4950 9950 4950
Wire Wire Line
	9650 5050 9950 5050
Wire Wire Line
	9650 5150 9950 5150
Wire Wire Line
	9650 2150 10050 2150
Wire Wire Line
	9650 2350 10050 2350
Wire Wire Line
	9650 2550 10050 2550
Wire Wire Line
	9650 2750 10050 2750
Wire Wire Line
	9650 6150 10050 6150
Wire Wire Line
	9650 5950 10050 5950
Wire Wire Line
	9650 5750 10050 5750
Wire Wire Line
	9650 5550 10050 5550
Text Label 9650 5150 0    50   ~ 0
LED_R3
Text Label 9650 5050 0    50   ~ 0
LED_G3
Text Label 9650 4950 0    50   ~ 0
LED_B3
Text Label 9650 4550 0    50   ~ 0
LED_R2
Text Label 9650 4450 0    50   ~ 0
LED_G2
Text Label 9650 4350 0    50   ~ 0
LED_B2
Text Label 9650 3950 0    50   ~ 0
LED_R1
Text Label 9650 3850 0    50   ~ 0
LED_G1
Text Label 9650 3750 0    50   ~ 0
LED_B1
Text Label 9650 3350 0    50   ~ 0
LED_R0
Text Label 9650 3250 0    50   ~ 0
LED_G0
Text Label 9650 3150 0    50   ~ 0
LED_B0
Entry Wire Line
	9550 4450 9650 4350
Entry Wire Line
	9550 4550 9650 4450
Entry Wire Line
	9550 4650 9650 4550
Entry Wire Line
	9550 5050 9650 4950
Entry Wire Line
	9550 5150 9650 5050
Entry Wire Line
	9550 5250 9650 5150
Entry Wire Line
	9450 3750 9550 3850
Entry Wire Line
	9450 3850 9550 3950
Entry Wire Line
	9450 3950 9550 4050
Entry Wire Line
	9450 4150 9550 4250
Entry Wire Line
	9450 4250 9550 4350
Entry Wire Line
	9450 4350 9550 4450
Entry Wire Line
	9450 3350 9550 3450
Entry Wire Line
	9450 3450 9550 3550
Entry Wire Line
	9450 3550 9550 3650
Entry Wire Line
	9450 4600 9550 4700
Entry Wire Line
	9450 4700 9550 4800
Entry Wire Line
	9450 4800 9550 4900
Entry Wire Line
	9550 6050 9650 6150
Entry Wire Line
	9550 5850 9650 5950
Entry Wire Line
	9550 5650 9650 5750
Entry Wire Line
	9550 5450 9650 5550
Entry Wire Line
	9550 3850 9650 3750
Entry Wire Line
	9550 3950 9650 3850
Entry Wire Line
	9550 4050 9650 3950
Entry Wire Line
	9550 3250 9650 3150
Entry Wire Line
	9550 3350 9650 3250
Entry Wire Line
	9550 3450 9650 3350
Entry Wire Line
	9550 2850 9650 2750
Entry Wire Line
	9550 2650 9650 2550
Entry Wire Line
	9550 2450 9650 2350
Entry Wire Line
	9550 2250 9650 2150
Wire Wire Line
	9650 3850 9950 3850
Wire Wire Line
	9650 3950 9950 3950
Wire Wire Line
	9650 4350 9950 4350
Wire Wire Line
	9650 4450 9950 4450
$Comp
L power:VSS #PWR01
U 1 1 677990B3
P 9550 800
F 0 "#PWR01" H 9550 650 50  0001 C CNN
F 1 "VSS" H 9567 973 50  0000 C CNN
F 2 "" H 9550 800 50  0001 C CNN
F 3 "" H 9550 800 50  0001 C CNN
	1    9550 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR02
U 1 1 67799862
P 4250 5300
F 0 "#PWR02" H 4250 5150 50  0001 C CNN
F 1 "VSS" H 4267 5473 50  0000 C CNN
F 2 "" H 4250 5300 50  0001 C CNN
F 3 "" H 4250 5300 50  0001 C CNN
	1    4250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1100 9550 900 
Entry Wire Line
	9450 5950 9550 5850
Entry Wire Line
	9450 5850 9550 5750
Entry Wire Line
	9450 6150 9550 6050
$Comp
L Device:R_Network05_US RN2
U 1 1 65EF3466
P 8900 6050
F 0 "RN2" V 9317 6050 50  0000 C CNN
F 1 "RGBW2" V 9226 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 9275 6050 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8900 6050 50  0001 C CNN
	1    8900 6050
	0    -1   -1   0   
$EndComp
Entry Wire Line
	9450 6050 9550 5950
Wire Wire Line
	9450 5850 9100 5850
Wire Wire Line
	9100 5950 9450 5950
Wire Wire Line
	9100 6050 9450 6050
Wire Wire Line
	9100 6150 9450 6150
NoConn ~ 9100 6250
Wire Wire Line
	8700 6250 8650 6250
Wire Wire Line
	8650 6250 8650 5900
$Comp
L power:+5V #PWR?
U 1 1 65FAC8E7
P 8650 5900
AR Path="/65AC16CB/65FAC8E7" Ref="#PWR?"  Part="1" 
AR Path="/65FAC8E7" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 8650 5750 50  0001 C CNN
F 1 "+5V" H 8665 6073 50  0000 C CNN
F 2 "" H 8650 5900 50  0001 C CNN
F 3 "" H 8650 5900 50  0001 C CNN
	1    8650 5900
	-1   0    0    -1  
$EndComp
Entry Wire Line
	9450 2250 9550 2350
Entry Wire Line
	9450 2150 9550 2250
Entry Wire Line
	9450 2450 9550 2550
$Comp
L Device:R_Network05_US RN1
U 1 1 65FAE3CC
P 8900 2350
F 0 "RN1" V 9317 2350 50  0000 C CNN
F 1 "RGBW1" V 9226 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 9275 2350 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8900 2350 50  0001 C CNN
	1    8900 2350
	0    -1   -1   0   
$EndComp
Entry Wire Line
	9450 2350 9550 2450
Wire Wire Line
	9450 2150 9100 2150
Wire Wire Line
	9100 2250 9450 2250
Wire Wire Line
	9100 2350 9450 2350
Wire Wire Line
	9100 2450 9450 2450
NoConn ~ 9100 2550
Wire Wire Line
	8700 2550 8650 2550
Wire Wire Line
	8650 2550 8650 2200
$Comp
L power:+5V #PWR?
U 1 1 65FAE3DE
P 8650 2200
AR Path="/65AC16CB/65FAE3DE" Ref="#PWR?"  Part="1" 
AR Path="/65FAE3DE" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 8650 2050 50  0001 C CNN
F 1 "+5V" H 8665 2373 50  0000 C CNN
F 2 "" H 8650 2200 50  0001 C CNN
F 3 "" H 8650 2200 50  0001 C CNN
	1    8650 2200
	-1   0    0    -1  
$EndComp
Text Label 9150 2150 0    50   ~ 0
LED_R0
Text Label 9150 2250 0    50   ~ 0
LED_G0
Text Label 9150 2350 0    50   ~ 0
LED_B0
Text Label 9150 2450 0    50   ~ 0
LED_R1
Connection ~ 9550 1100
Wire Wire Line
	7250 1400 9650 1400
Wire Wire Line
	9650 1400 9650 1000
Wire Wire Line
	7250 1400 7250 4050
Wire Wire Line
	9650 1000 10050 1000
Wire Wire Line
	8400 900  8900 900 
Wire Wire Line
	7350 1500 10050 1500
Connection ~ 9550 900 
Wire Wire Line
	9550 900  9550 800 
Wire Wire Line
	7350 4150 7350 1500
Text Label 9650 5550 0    50   ~ 0
LED_R2
Text Label 9650 5750 0    50   ~ 0
LED_G2
Text Label 9650 5950 0    50   ~ 0
LED_B2
Text Label 9650 6150 0    50   ~ 0
LED_R3
Text Label 3000 1600 0    50   ~ 0
DMX-DIR
Text Label 2100 1600 0    50   ~ 0
DMX-RX
Text Label 6450 3150 0    50   ~ 0
DMX-RX
Text Label 6450 3250 0    50   ~ 0
DMX-TX
Text Label 6450 3350 0    50   ~ 0
DMX-DIR
Text Label 2100 1700 0    50   ~ 0
DMX-TX
Wire Wire Line
	2950 1600 3350 1600
Wire Wire Line
	2450 1600 2050 1600
Wire Wire Line
	2450 1700 2050 1700
Wire Wire Line
	6800 3150 6400 3150
Wire Wire Line
	6400 3250 6800 3250
Wire Wire Line
	6400 3350 6800 3350
Wire Wire Line
	8650 3100 8650 3150
Wire Wire Line
	6400 3850 8100 3850
Wire Wire Line
	6400 3950 8000 3950
Wire Wire Line
	7750 4650 7750 5200
Connection ~ 8100 3850
Wire Wire Line
	8100 3850 8200 3850
Connection ~ 8000 3950
Wire Wire Line
	8000 3950 8200 3950
$Comp
L power:+12V #PWR?
U 1 1 6669459C
P 8100 2200
AR Path="/65AC16CB/6669459C" Ref="#PWR?"  Part="1" 
AR Path="/6669459C" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 8100 2050 50  0001 C CNN
F 1 "+12V" H 8115 2373 50  0000 C CNN
F 2 "" H 8100 2200 50  0001 C CNN
F 3 "" H 8100 2200 50  0001 C CNN
	1    8100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2200 8100 2600
$Comp
L power:GND #PWR?
U 1 1 666B8FFB
P 7900 3050
AR Path="/65A70F21/666B8FFB" Ref="#PWR?"  Part="1" 
AR Path="/666B8FFB" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 7900 2800 50  0001 C CNN
F 1 "GND" H 7905 2877 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3300 2350 3300
Wire Wire Line
	2150 2600 2150 3400
Wire Wire Line
	2350 3400 2350 3300
$Comp
L power:GND #PWR?
U 1 1 668938CA
P 2350 3400
AR Path="/5F613CCA/668938CA" Ref="#PWR?"  Part="1" 
AR Path="/668938CA" Ref="#PWR0114"  Part="1" 
AR Path="/66778914/668938CA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 2350 3150 50  0001 C CNN
F 1 "GND" H 2355 3227 50  0000 C CNN
F 2 "" H 2350 3400 50  0001 C CNN
F 3 "" H 2350 3400 50  0001 C CNN
	1    2350 3400
	-1   0    0    -1  
$EndComp
NoConn ~ 2450 2700
NoConn ~ 2450 2900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6695C204
P 8900 800
AR Path="/64798DC1/6695C204" Ref="#FLG?"  Part="1" 
AR Path="/6695C204" Ref="#FLG0103"  Part="1" 
AR Path="/647E1209/6695C204" Ref="#FLG?"  Part="1" 
AR Path="/66A5434C/6695C204" Ref="#FLG?"  Part="1" 
F 0 "#FLG0103" H 8900 875 50  0001 C CNN
F 1 "PWR_FLAG" H 8900 973 50  0000 C CNN
F 2 "" H 8900 800 50  0001 C CNN
F 3 "~" H 8900 800 50  0001 C CNN
	1    8900 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 800  8900 900 
Wire Bus Line
	4900 2300 4900 5000
Wire Bus Line
	6900 4350 6900 5000
Wire Bus Line
	2050 2200 6800 2200
Wire Bus Line
	6900 2300 6900 3450
Wire Bus Line
	3450 1400 3450 2100
Wire Bus Line
	1950 1400 1950 2100
Wire Bus Line
	9550 2250 9550 6050
Connection ~ 8900 900 
Wire Wire Line
	8900 900  9550 900 
$EndSCHEMATC
