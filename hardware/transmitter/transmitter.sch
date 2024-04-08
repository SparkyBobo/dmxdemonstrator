EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Transmitter (DMX-TX1)"
Date "2023-12-04"
Rev "1.3"
Comp "Sparky Bobo Designs"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L DMXDemonstrator:Arduino_UNO_R3-MCU_Module A1
U 1 1 5F3035A0
P 6200 3350
F 0 "A1" H 6000 4400 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5750 4300 50  0000 C CNN
F 2 "footprints:ARDUINO_R3_NO_HOLES" H 6350 2300 50  0001 L CNN
F 3 "" H 6000 4400 50  0001 C CNN
F 4 "A_ARDUINO,H_ARDUINO" H 6200 3350 50  0001 C CNN "PartId"
	1    6200 3350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5F3037EB
P 8250 5000
F 0 "J1" H 8330 5042 50  0000 L CNN
F 1 "Output" H 8330 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 8250 5000 50  0001 C CNN
F 3 "~" H 8250 5000 50  0001 C CNN
F 4 "H_1x3_RA" H 8250 5000 50  0001 C CNN "PartId"
	1    8250 5000
	1    0    0    -1  
$EndComp
Text Label 5550 3350 0    50   ~ 0
A0
Text Label 5550 3450 0    50   ~ 0
A1
Text Label 5550 3550 0    50   ~ 0
A2
Text Label 5550 3850 0    50   ~ 0
A5
Text Label 5550 3750 0    50   ~ 0
A4
$Comp
L Device:LED D1
U 1 1 5F304057
P 7700 2050
F 0 "D1" H 7691 2266 50  0000 C CNN
F 1 "DATA" H 7691 2175 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 2050 50  0001 C CNN
F 3 "~" H 7700 2050 50  0001 C CNN
F 4 "LED_GRN" H 7700 2050 50  0001 C CNN "PartId"
	1    7700 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F3040DD
P 8050 2050
F 0 "R1" V 7845 2050 50  0000 C CNN
F 1 "330" V 7936 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 2040 50  0001 C CNN
F 3 "~" H 8050 2050 50  0001 C CNN
F 4 "R_LED" V 8050 2050 50  0001 C CNN "PartId"
	1    8050 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2050 7900 2050
$Comp
L Device:LED D2
U 1 1 5F3048EA
P 7700 2400
F 0 "D2" H 7691 2616 50  0000 C CNN
F 1 "CLOCK" H 7691 2525 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 2400 50  0001 C CNN
F 3 "~" H 7700 2400 50  0001 C CNN
F 4 "LED_RED" H 7700 2400 50  0001 C CNN "PartId"
	1    7700 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F3048F0
P 8050 2400
F 0 "R2" V 7845 2400 50  0000 C CNN
F 1 "330" V 7936 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 2390 50  0001 C CNN
F 3 "~" H 8050 2400 50  0001 C CNN
F 4 "R_LED" V 8050 2400 50  0001 C CNN "PartId"
	1    8050 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2400 7900 2400
$Comp
L power:+5V #PWR0101
U 1 1 5F304B17
P 6000 2350
F 0 "#PWR0101" H 6000 2200 50  0001 C CNN
F 1 "+5V" H 6015 2523 50  0000 C CNN
F 2 "" H 6000 2350 50  0001 C CNN
F 3 "" H 6000 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F304B4E
P 6200 4600
F 0 "#PWR0102" H 6200 4350 50  0001 C CNN
F 1 "GND" H 6205 4427 50  0000 C CNN
F 2 "" H 6200 4600 50  0001 C CNN
F 3 "" H 6200 4600 50  0001 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4450 6100 4500
Wire Wire Line
	6100 4500 6200 4500
Wire Wire Line
	6300 4500 6300 4450
Wire Wire Line
	6200 4450 6200 4500
Connection ~ 6200 4500
Wire Wire Line
	6200 4500 6300 4500
Wire Wire Line
	6200 4600 6200 4500
NoConn ~ 5700 4050
NoConn ~ 5700 4150
NoConn ~ 5700 2750
NoConn ~ 6100 2350
NoConn ~ 6300 2350
$Comp
L power:GND #PWR0103
U 1 1 5F306EF9
P 7850 5300
F 0 "#PWR0103" H 7850 5050 50  0001 C CNN
F 1 "GND" H 7855 5127 50  0000 C CNN
F 2 "" H 7850 5300 50  0001 C CNN
F 3 "" H 7850 5300 50  0001 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5F308313
P 8300 1850
F 0 "#PWR0104" H 8300 1700 50  0001 C CNN
F 1 "+5V" H 8315 2023 50  0000 C CNN
F 2 "" H 8300 1850 50  0001 C CNN
F 3 "" H 8300 1850 50  0001 C CNN
	1    8300 1850
	1    0    0    -1  
$EndComp
NoConn ~ 5700 2950
NoConn ~ 6700 2750
NoConn ~ 6700 2850
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
$Comp
L power:GND #PWR0105
U 1 1 5F31208D
P 6100 7250
F 0 "#PWR0105" H 6100 7000 50  0001 C CNN
F 1 "GND" H 6105 7077 50  0000 C CNN
F 2 "" H 6100 7250 50  0001 C CNN
F 3 "" H 6100 7250 50  0001 C CNN
	1    6100 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7250 6500 7150
Wire Wire Line
	6500 7150 6100 7150
Wire Wire Line
	6100 7150 6100 7250
$Comp
L Device:LED D8
U 1 1 5F34C092
P 7700 4600
F 0 "D8" H 7691 4816 50  0000 C CNN
F 1 "CLK_SLO" H 7691 4725 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 4600 50  0001 C CNN
F 3 "~" H 7700 4600 50  0001 C CNN
F 4 "LED_GRN" H 7700 4600 50  0001 C CNN "PartId"
	1    7700 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F34C098
P 8050 4600
F 0 "R8" V 7845 4600 50  0000 C CNN
F 1 "330" V 7936 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 4590 50  0001 C CNN
F 3 "~" H 8050 4600 50  0001 C CNN
F 4 "R_LED" V 8050 4600 50  0001 C CNN "PartId"
	1    8050 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 4600 7900 4600
$Comp
L Device:LED D7
U 1 1 5F34C09F
P 7700 4250
F 0 "D7" H 7691 4466 50  0000 C CNN
F 1 "CLK_FST" H 7691 4375 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 4250 50  0001 C CNN
F 3 "~" H 7700 4250 50  0001 C CNN
F 4 "LED_RED" H 7700 4250 50  0001 C CNN "PartId"
	1    7700 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5F34C0A5
P 8050 4250
F 0 "R7" V 7845 4250 50  0000 C CNN
F 1 "330" V 7936 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 4240 50  0001 C CNN
F 3 "~" H 8050 4250 50  0001 C CNN
F 4 "R_LED" V 8050 4250 50  0001 C CNN "PartId"
	1    8050 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 4250 7900 4250
$Comp
L Device:LED D6
U 1 1 5F34D364
P 7700 3850
F 0 "D6" H 7691 4066 50  0000 C CNN
F 1 "DIM0" H 7691 3975 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 3850 50  0001 C CNN
F 3 "~" H 7700 3850 50  0001 C CNN
F 4 "LED_COLORLEDKIT" H 7700 3850 50  0001 C CNN "PartId"
	1    7700 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F34D36A
P 8050 3850
F 0 "R6" V 7845 3850 50  0000 C CNN
F 1 "330" V 7936 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 3840 50  0001 C CNN
F 3 "~" H 8050 3850 50  0001 C CNN
F 4 "R_LED" V 8050 3850 50  0001 C CNN "PartId"
	1    8050 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3850 7900 3850
$Comp
L Device:LED D5
U 1 1 5F34D371
P 7700 3500
F 0 "D5" H 7691 3716 50  0000 C CNN
F 1 "DIM1" H 7691 3625 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 3500 50  0001 C CNN
F 3 "~" H 7700 3500 50  0001 C CNN
F 4 "LED_COLORLEDKIT" H 7700 3500 50  0001 C CNN "PartId"
	1    7700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F34D377
P 8050 3500
F 0 "R5" V 7845 3500 50  0000 C CNN
F 1 "330" V 7936 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 3490 50  0001 C CNN
F 3 "~" H 8050 3500 50  0001 C CNN
F 4 "R_LED" V 8050 3500 50  0001 C CNN "PartId"
	1    8050 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3500 7900 3500
$Comp
L Device:LED D4
U 1 1 5F34E858
P 7700 3100
F 0 "D4" H 7691 3316 50  0000 C CNN
F 1 "DIM2" H 7691 3225 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 3100 50  0001 C CNN
F 3 "~" H 7700 3100 50  0001 C CNN
F 4 "LED_COLORLEDKIT" H 7700 3100 50  0001 C CNN "PartId"
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F34E85E
P 8050 3100
F 0 "R4" V 7845 3100 50  0000 C CNN
F 1 "330" V 7936 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 3090 50  0001 C CNN
F 3 "~" H 8050 3100 50  0001 C CNN
F 4 "R_LED" V 8050 3100 50  0001 C CNN "PartId"
	1    8050 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3100 7900 3100
$Comp
L Device:LED D3
U 1 1 5F34E865
P 7700 2750
F 0 "D3" H 7691 2966 50  0000 C CNN
F 1 "DIM3" H 7691 2875 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7700 2750 50  0001 C CNN
F 3 "~" H 7700 2750 50  0001 C CNN
F 4 "LED_COLORLEDKIT" H 7700 2750 50  0001 C CNN "PartId"
	1    7700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F34E86B
P 8050 2750
F 0 "R3" V 7845 2750 50  0000 C CNN
F 1 "330" V 7936 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8090 2740 50  0001 C CNN
F 3 "~" H 8050 2750 50  0001 C CNN
F 4 "R_LED" V 8050 2750 50  0001 C CNN "PartId"
	1    8050 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2750 7900 2750
Text Notes 3650 3100 0    50   ~ 0
Dimmer Select\nDim0-Dim3
Text Notes 4100 2350 0    50   ~ 0
Dimmer Level\n
Text Notes 4100 4900 0    50   ~ 0
Clock Speed
Text Notes 3600 3550 0    50   ~ 0
Clock Mode\nStop/Slow/Fast
Text Notes 8350 3500 0    50   ~ 0
Select Dim 1\n
Text Notes 8350 3850 0    50   ~ 0
Select Dim 0
Text Notes 8350 2750 0    50   ~ 0
Select Dim 3
Text Notes 8350 3100 0    50   ~ 0
Select Dim 2
Text Notes 3800 3850 0    50   ~ 0
Clock Step
Text Notes 8350 4600 0    50   ~ 0
Clock Slow
Text Notes 8350 4250 0    50   ~ 0
Clock Fast
Wire Wire Line
	5300 3350 5300 2300
Wire Wire Line
	5300 2300 5100 2300
$Comp
L power:+5V #PWR0107
U 1 1 5F6D0DBA
P 4900 2000
F 0 "#PWR0107" H 4900 1850 50  0001 C CNN
F 1 "+5V" H 4915 2173 50  0000 C CNN
F 2 "" H 4900 2000 50  0001 C CNN
F 3 "" H 4900 2000 50  0001 C CNN
	1    4900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3050 4350 3050
Wire Wire Line
	4250 3550 4350 3550
Wire Wire Line
	4350 3850 4250 3850
Wire Wire Line
	4250 3850 4250 3550
Wire Wire Line
	5300 4900 5050 4900
Wire Wire Line
	6700 4050 6900 4050
Wire Wire Line
	6900 4050 6900 4900
Wire Wire Line
	7000 3950 6700 3950
Wire Wire Line
	7100 4600 7550 4600
Wire Wire Line
	7550 4250 7200 4250
Wire Wire Line
	6700 2950 7100 2950
Wire Wire Line
	7100 2950 7100 2050
Wire Wire Line
	7100 2050 7550 2050
Wire Wire Line
	6700 3050 7200 3050
Wire Wire Line
	7200 3050 7200 2400
Wire Wire Line
	7200 2400 7550 2400
Wire Wire Line
	8300 4600 8200 4600
Wire Wire Line
	8300 1850 8300 2050
Wire Wire Line
	8200 4250 8300 4250
Wire Wire Line
	8200 3850 8300 3850
Connection ~ 8300 3850
Wire Wire Line
	8300 3850 8300 4250
Wire Wire Line
	8200 3500 8300 3500
Connection ~ 8300 3500
Wire Wire Line
	8300 3500 8300 3850
Wire Wire Line
	8200 3100 8300 3100
Connection ~ 8300 3100
Wire Wire Line
	8300 3100 8300 3500
Wire Wire Line
	8200 2750 8300 2750
Connection ~ 8300 2750
Wire Wire Line
	8300 2750 8300 3100
Wire Wire Line
	8200 2400 8300 2400
Connection ~ 8300 2400
Wire Wire Line
	8300 2400 8300 2750
Wire Wire Line
	8200 2050 8300 2050
Connection ~ 8300 2050
Wire Wire Line
	8300 2050 8300 2400
Text Notes 8350 2400 0    50   ~ 0
Clock
Text Notes 8350 2050 0    50   ~ 0
Data
NoConn ~ 6700 3850
Wire Wire Line
	6700 3650 7100 3650
Wire Wire Line
	7100 3650 7100 4600
Wire Wire Line
	7200 3550 6700 3550
Wire Wire Line
	7200 3550 7200 4250
Wire Wire Line
	7550 3850 7300 3850
Wire Wire Line
	7300 3850 7300 3450
Wire Wire Line
	7300 3450 6700 3450
Wire Wire Line
	6700 3350 7400 3350
Wire Wire Line
	7400 3350 7400 3500
Wire Wire Line
	7400 3500 7550 3500
Wire Wire Line
	6700 3250 7400 3250
Wire Wire Line
	7400 3250 7400 3100
Wire Wire Line
	7400 3100 7550 3100
Wire Wire Line
	6700 3150 7300 3150
Wire Wire Line
	7300 3150 7300 2750
Wire Wire Line
	7300 2750 7550 2750
Wire Wire Line
	5300 4900 5300 3750
$Comp
L power:GND #PWR0108
U 1 1 5F6D6326
P 4250 3950
F 0 "#PWR0108" H 4250 3700 50  0001 C CNN
F 1 "GND" H 4255 3777 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3550 4250 3050
Connection ~ 4250 3550
Wire Wire Line
	5200 3450 5200 3050
Wire Wire Line
	5200 3050 4750 3050
$Comp
L power:+5V #PWR0109
U 1 1 5F3C9029
P 4850 4600
F 0 "#PWR0109" H 4850 4450 50  0001 C CNN
F 1 "+5V" H 4865 4773 50  0000 C CNN
F 2 "" H 4850 4600 50  0001 C CNN
F 3 "" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F3CE166
P 4850 5200
F 0 "#PWR0110" H 4850 4950 50  0001 C CNN
F 1 "GND" H 4855 5027 50  0000 C CNN
F 2 "" H 4850 5200 50  0001 C CNN
F 3 "" H 4850 5200 50  0001 C CNN
	1    4850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F3D0CCD
P 4900 2600
F 0 "#PWR0111" H 4900 2350 50  0001 C CNN
F 1 "GND" H 4905 2427 50  0000 C CNN
F 2 "" H 4900 2600 50  0001 C CNN
F 3 "" H 4900 2600 50  0001 C CNN
	1    4900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3950 4250 3850
Connection ~ 4250 3850
$Comp
L DMXDemonstrator:POTENTIOMETER-PTH-9MM-1_20W-20%-SparkFun-Resistors VR2
U 1 1 5F517499
P 4850 4900
F 0 "VR2" H 4782 4942 45  0000 R CNN
F 1 "10k" H 4782 4858 45  0000 R CNN
F 2 "Resistors:POT-PTH-ALPS" V 4700 4900 20  0001 C CNN
F 3 "" H 4850 4900 60  0001 C CNN
F 4 "RV_CLK" H 4782 4816 60  0001 R CNN "PartId"
	1    4850 4900
	1    0    0    1   
$EndComp
$Comp
L DMXDemonstrator:POTENTIOMETER_SLIDE-20MM-1_10W-20%-SparkFun-Resistors VR1
U 1 1 5F51752E
P 4900 2300
F 0 "VR1" H 4832 2342 45  0000 R CNN
F 1 "10k" H 4832 2258 45  0000 R CNN
F 2 "Resistors:SLIDER-SMALL" V 4750 2300 20  0001 C CNN
F 3 "" H 4900 2300 60  0001 C CNN
F 4 "RV_DIM_SM,RV_DIM_SM_KNOB" H 4832 2216 60  0001 R CNN "PartId"
	1    4900 2300
	1    0    0    1   
$EndComp
$Comp
L DMXDemonstrator:MOMENTARY-SWITCH-SPST-PTH-12MM-SparkFun-Switches S1
U 1 1 5F53A7F8
P 4550 3050
F 0 "S1" H 4550 3254 45  0000 C CNN
F 1 "DIM_SELECT" H 4550 3170 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_12MM" H 4550 3250 20  0001 C CNN
F 3 "" H 4550 3050 50  0001 C CNN
F 4 "S_MOM" H 4550 3181 60  0001 C CNN "PartId"
	1    4550 3050
	1    0    0    -1  
$EndComp
$Comp
L DMXDemonstrator:MOMENTARY-SWITCH-SPST-PTH-12MM-SparkFun-Switches S2
U 1 1 5F53A858
P 4550 3550
F 0 "S2" H 4550 3754 45  0000 C CNN
F 1 "CLOCK_MODE" H 4550 3670 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_12MM" H 4550 3750 20  0001 C CNN
F 3 "" H 4550 3550 50  0001 C CNN
F 4 "S_MOM" H 4550 3681 60  0001 C CNN "PartId"
	1    4550 3550
	1    0    0    -1  
$EndComp
$Comp
L DMXDemonstrator:MOMENTARY-SWITCH-SPST-PTH-12MM-SparkFun-Switches S3
U 1 1 5F53A8A0
P 4550 3850
F 0 "S3" H 4550 4054 45  0000 C CNN
F 1 "CLOCK_STEP" H 4550 3970 45  0000 C CNN
F 2 "Switches:TACTILE_SWITCH_PTH_12MM" H 4550 4050 20  0001 C CNN
F 3 "" H 4550 3850 50  0001 C CNN
F 4 "S_MOM" H 4550 3981 60  0001 C CNN "PartId"
	1    4550 3850
	1    0    0    -1  
$EndComp
NoConn ~ 5700 3650
Wire Wire Line
	8300 4250 8300 4600
Connection ~ 8300 4250
Wire Wire Line
	5300 3350 5700 3350
Wire Wire Line
	5200 3450 5700 3450
Wire Wire Line
	4750 3550 5700 3550
Wire Wire Line
	5300 3750 5700 3750
Wire Wire Line
	4750 3850 5700 3850
NoConn ~ 6700 3750
Text Label 6750 3950 0    50   ~ 0
RX
Text Label 6750 4050 0    50   ~ 0
RXCLK
Text Label 6750 3450 0    50   ~ 0
~DIM0
Text Label 6750 3350 0    50   ~ 0
~DIM1
Text Label 6750 3250 0    50   ~ 0
~DIM2
Text Label 6750 3150 0    50   ~ 0
~DIM3
Text Label 6750 2950 0    50   ~ 0
~DATA
Text Label 6750 3050 0    50   ~ 0
~CLOCK
Text Label 6750 3550 0    50   ~ 0
~CLK_FST
Text Label 6750 3650 0    50   ~ 0
~CLK_SLO
Wire Wire Line
	8050 4900 6900 4900
Text Label 7950 5100 0    50   ~ 0
RX
Text Label 7800 4900 0    50   ~ 0
RXCLK
NoConn ~ 5700 3150
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
Wire Wire Line
	7850 5000 8050 5000
Wire Wire Line
	7850 5000 7850 5300
Wire Wire Line
	7000 5100 8050 5100
Wire Wire Line
	7000 3950 7000 5100
$EndSCHEMATC
