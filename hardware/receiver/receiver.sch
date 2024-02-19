EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Receiver (DMX-RX1)"
Date "2023-03-02"
Rev "1.3"
Comp "Sparky Bobo Designs"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5F3037EB
P 3950 5050
F 0 "J1" H 4030 5092 50  0000 L CNN
F 1 "Input" H 4030 5001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 3950 5050 50  0001 C CNN
F 3 "~" H 3950 5050 50  0001 C CNN
	1    3950 5050
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5F304057
P 4450 2700
F 0 "D1" H 4441 2916 50  0000 C CNN
F 1 "DATA" H 4441 2825 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4450 2700 50  0001 C CNN
F 3 "~" H 4450 2700 50  0001 C CNN
	1    4450 2700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F3040DD
P 4100 2700
F 0 "R1" V 3895 2700 50  0000 C CNN
F 1 "330" V 3986 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4140 2690 50  0001 C CNN
F 3 "~" H 4100 2700 50  0001 C CNN
	1    4100 2700
	0    -1   1    0   
$EndComp
Wire Wire Line
	4300 2700 4250 2700
$Comp
L Device:LED D2
U 1 1 5F3048EA
P 4450 3050
F 0 "D2" H 4441 3266 50  0000 C CNN
F 1 "CLOCK" H 4441 3175 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4450 3050 50  0001 C CNN
F 3 "~" H 4450 3050 50  0001 C CNN
	1    4450 3050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F3048F0
P 4100 3050
F 0 "R2" V 3895 3050 50  0000 C CNN
F 1 "330" V 3986 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4140 3040 50  0001 C CNN
F 3 "~" H 4100 3050 50  0001 C CNN
	1    4100 3050
	0    -1   1    0   
$EndComp
Wire Wire Line
	4300 3050 4250 3050
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
$Comp
L power:GND #PWR0103
U 1 1 5F306EF9
P 4350 5250
F 0 "#PWR0103" H 4350 5000 50  0001 C CNN
F 1 "GND" H 4355 5077 50  0000 C CNN
F 2 "" H 4350 5250 50  0001 C CNN
F 3 "" H 4350 5250 50  0001 C CNN
	1    4350 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 2700 3900 2700
Wire Wire Line
	3950 3050 3900 3050
Connection ~ 3900 2700
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
Wire Wire Line
	6200 4150 6550 4150
Wire Wire Line
	6550 4150 6550 4950
Wire Wire Line
	6200 4050 6650 4050
Wire Wire Line
	6650 4050 6650 5150
Wire Wire Line
	6950 4250 7150 4250
$Comp
L Device:LED D3
U 1 1 5F3BEC78
P 7300 3050
F 0 "D3" H 7291 3266 50  0000 C CNN
F 1 "DIM3" H 7291 3175 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7300 3050 50  0001 C CNN
F 3 "~" H 7300 3050 50  0001 C CNN
	1    7300 3050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F3BECD4
P 7700 3050
F 0 "R3" V 7495 3050 50  0000 C CNN
F 1 "330" V 7586 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7740 3040 50  0001 C CNN
F 3 "~" H 7700 3050 50  0001 C CNN
	1    7700 3050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5F3BFD29
P 7300 3450
F 0 "D4" H 7291 3666 50  0000 C CNN
F 1 "DIM2" H 7291 3575 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7300 3450 50  0001 C CNN
F 3 "~" H 7300 3450 50  0001 C CNN
	1    7300 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F3BFD2F
P 7700 3450
F 0 "R4" V 7495 3450 50  0000 C CNN
F 1 "330" V 7586 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7740 3440 50  0001 C CNN
F 3 "~" H 7700 3450 50  0001 C CNN
	1    7700 3450
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5F3C1D16
P 7300 3850
F 0 "D5" H 7291 4066 50  0000 C CNN
F 1 "DIM1" H 7291 3975 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7300 3850 50  0001 C CNN
F 3 "~" H 7300 3850 50  0001 C CNN
	1    7300 3850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F3C1D1C
P 7700 3850
F 0 "R5" V 7495 3850 50  0000 C CNN
F 1 "330" V 7586 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7740 3840 50  0001 C CNN
F 3 "~" H 7700 3850 50  0001 C CNN
	1    7700 3850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5F3C1D22
P 7300 4250
F 0 "D6" H 7291 4466 50  0000 C CNN
F 1 "DIM0" H 7291 4375 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7300 4250 50  0001 C CNN
F 3 "~" H 7300 4250 50  0001 C CNN
	1    7300 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F3C1D28
P 7700 4250
F 0 "R6" V 7495 4250 50  0000 C CNN
F 1 "330" V 7586 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7740 4240 50  0001 C CNN
F 3 "~" H 7700 4250 50  0001 C CNN
	1    7700 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3850 8050 3850
Wire Wire Line
	7450 4250 7550 4250
Wire Wire Line
	7850 4250 8050 4250
Wire Wire Line
	7450 3050 7550 3050
Wire Wire Line
	7850 3050 8050 3050
Wire Wire Line
	7450 3450 7550 3450
Wire Wire Line
	7850 3450 8050 3450
Wire Wire Line
	7450 3850 7550 3850
Wire Wire Line
	8050 3850 8050 4250
Wire Wire Line
	8050 3050 8050 3450
$Comp
L power:GND #PWR0113
U 1 1 5F443F49
P 8050 4350
F 0 "#PWR0113" H 8050 4100 50  0001 C CNN
F 1 "GND" H 8055 4177 50  0000 C CNN
F 2 "" H 8050 4350 50  0001 C CNN
F 3 "" H 8050 4350 50  0001 C CNN
	1    8050 4350
	1    0    0    -1  
$EndComp
Text Label 6200 4050 0    50   ~ 0
RX
Text Label 6200 4150 0    50   ~ 0
RXCLK
NoConn ~ 5800 2450
NoConn ~ 6200 3250
NoConn ~ 6200 3150
NoConn ~ 6200 3050
$Comp
L DMXDemonstrator:Arduino_UNO_R3-MCU_Module A1
U 1 1 5F3035A0
P 5700 3450
F 0 "A1" H 5500 4500 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5250 4400 50  0000 C CNN
F 2 "footprints:ARDUINO_R3_NO_HOLES" H 5850 2400 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5500 4500 50  0001 C CNN
	1    5700 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5F407263
P 3900 2450
F 0 "#PWR0104" H 3900 2300 50  0001 C CNN
F 1 "+5V" H 3915 2623 50  0000 C CNN
F 2 "" H 3900 2450 50  0001 C CNN
F 3 "" H 3900 2450 50  0001 C CNN
	1    3900 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3900 2700 3900 3050
Text Label 4950 3850 0    50   ~ 0
~DATA
Text Label 4950 3950 0    50   ~ 0
~CLOCK
Text Label 4150 5150 0    50   ~ 0
RX
Text Label 4150 4950 0    50   ~ 0
RXCLK
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
Wire Wire Line
	4150 5050 4350 5050
Wire Wire Line
	4350 5050 4350 5250
Wire Wire Line
	4600 3050 4800 3050
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
Wire Wire Line
	8050 4350 8050 4250
Connection ~ 8050 4250
Wire Wire Line
	4150 5150 6650 5150
Wire Wire Line
	4150 4950 6550 4950
NoConn ~ 6200 3650
$Comp
L Device:LED D7
U 1 1 5FA8D6CC
P 4450 3400
F 0 "D7" H 4441 3616 50  0000 C CNN
F 1 "ERROR" H 4441 3525 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4450 3400 50  0001 C CNN
F 3 "~" H 4450 3400 50  0001 C CNN
	1    4450 3400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5FA8D6D2
P 4100 3400
F 0 "R7" V 3895 3400 50  0000 C CNN
F 1 "330" V 3986 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4140 3390 50  0001 C CNN
F 3 "~" H 4100 3400 50  0001 C CNN
	1    4100 3400
	0    -1   1    0   
$EndComp
Wire Wire Line
	4300 3400 4250 3400
$Comp
L Device:LED D8
U 1 1 5FA8D6D9
P 4450 3750
F 0 "D8" H 4441 3966 50  0000 C CNN
F 1 "START_CODE" H 4441 3875 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4450 3750 50  0001 C CNN
F 3 "~" H 4450 3750 50  0001 C CNN
	1    4450 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5FA8D6DF
P 4100 3750
F 0 "R8" V 3895 3750 50  0000 C CNN
F 1 "330" V 3986 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4140 3740 50  0001 C CNN
F 3 "~" H 4100 3750 50  0001 C CNN
	1    4100 3750
	0    -1   1    0   
$EndComp
Wire Wire Line
	4300 3750 4250 3750
Wire Wire Line
	3950 3400 3900 3400
Wire Wire Line
	3950 3750 3900 3750
Connection ~ 3900 3400
Wire Wire Line
	3900 3400 3900 3750
Wire Wire Line
	5200 3950 4800 3950
Wire Wire Line
	4900 3850 5200 3850
Wire Wire Line
	4600 2700 4900 2700
Wire Wire Line
	5200 3650 4700 3650
Wire Wire Line
	4700 3650 4700 3400
Wire Wire Line
	4600 3400 4700 3400
Text Label 4950 3650 0    50   ~ 0
~ERR
Text Label 4950 3750 0    50   ~ 0
~SC
Wire Wire Line
	4800 3050 4800 3950
Wire Wire Line
	4900 2700 4900 3850
Wire Wire Line
	3900 3050 3900 3400
Connection ~ 3900 3050
Wire Wire Line
	3900 2450 3900 2700
Wire Wire Line
	4600 3750 5200 3750
Wire Wire Line
	6550 4150 6550 3750
Wire Wire Line
	6550 3750 6200 3750
Connection ~ 6550 4150
Wire Wire Line
	6200 3950 6950 3950
Wire Wire Line
	6200 3350 6950 3350
Connection ~ 8050 3450
Wire Wire Line
	8050 3450 8050 3850
Connection ~ 8050 3850
Wire Wire Line
	6200 3850 7150 3850
Wire Wire Line
	6200 3450 7150 3450
Wire Wire Line
	6950 3950 6950 4250
Wire Wire Line
	6950 3350 6950 3050
Wire Wire Line
	6950 3050 7150 3050
Text Label 6200 3750 0    50   ~ 0
RXCLK
$EndSCHEMATC
