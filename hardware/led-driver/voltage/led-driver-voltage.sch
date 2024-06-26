EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Constant Voltage Driver (DMX-DCV)"
Date "2024-02-09"
Rev "1.6"
Comp "Sparky Bobo Designs"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5F594F09
P 7950 2000
F 0 "J5" H 8050 1900 50  0000 L CNN
F 1 "C Out" H 8050 2000 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 7950 2000 50  0001 C CNN
F 3 "~" H 7950 2000 50  0001 C CNN
F 4 "J-381x2,P-381x2" H 7950 2000 50  0001 C CNN "PartId"
	1    7950 2000
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5F3037EB
P 4650 4850
F 0 "J1" H 4730 4892 50  0000 L CNN
F 1 "Input" H 4730 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 4650 4850 50  0001 C CNN
F 3 "~" H 4650 4850 50  0001 C CNN
F 4 "H_1x3_RA,JP_1x3" H 4650 4850 50  0001 C CNN "PartId"
	1    4650 4850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F306EF9
P 5150 5450
F 0 "#PWR0101" H 5150 5200 50  0001 C CNN
F 1 "GND" H 5155 5277 50  0000 C CNN
F 2 "" H 5150 5450 50  0001 C CNN
F 3 "" H 5150 5450 50  0001 C CNN
	1    5150 5450
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F3120EF
P 5300 7450
F 0 "#FLG0101" H 5300 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 7623 50  0000 C CNN
F 2 "" H 5300 7450 50  0001 C CNN
F 3 "~" H 5300 7450 50  0001 C CNN
	1    5300 7450
	-1   0    0    1   
$EndComp
Text Label 4850 4950 0    50   ~ 0
D
Text Label 4850 4750 0    50   ~ 0
C
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5F4DF77C
P 4650 6700
F 0 "J3" H 4550 6400 50  0000 C CNN
F 1 "Power" H 4550 6500 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 4650 6700 50  0001 C CNN
F 3 "~" H 4650 6700 50  0001 C CNN
F 4 "J-381x2,P-381x2" H 4650 6700 50  0001 C CNN "PartId"
	1    4650 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 6700 4900 6700
$Comp
L power:GND #PWR0103
U 1 1 5F4F41D4
P 4900 7450
F 0 "#PWR0103" H 4900 7200 50  0001 C CNN
F 1 "GND" H 4905 7277 50  0000 C CNN
F 2 "" H 4900 7450 50  0001 C CNN
F 3 "" H 4900 7450 50  0001 C CNN
	1    4900 7450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F5EFD36
P 5300 6550
F 0 "#FLG0102" H 5300 6625 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 6723 50  0000 C CNN
F 2 "" H 5300 6550 50  0001 C CNN
F 3 "~" H 5300 6550 50  0001 C CNN
	1    5300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6550 5300 6600
Connection ~ 5300 6600
$Comp
L Device:R_US R1
U 1 1 5F6535F2
P 6250 2400
F 0 "R1" V 6350 2400 50  0000 C CNN
F 1 "10k" V 6450 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6290 2390 50  0001 C CNN
F 3 "~" H 6250 2400 50  0001 C CNN
F 4 "R_10k" V 6250 2400 50  0001 C CNN "PartId"
	1    6250 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F6535F9
P 6850 2600
F 0 "#PWR0104" H 6850 2350 50  0001 C CNN
F 1 "GND" H 6855 2427 50  0000 C CNN
F 2 "" H 6850 2600 50  0001 C CNN
F 3 "" H 6850 2600 50  0001 C CNN
	1    6850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2100 6850 2000
$Comp
L Device:R_US R2
U 1 1 5F657E37
P 6300 3750
F 0 "R2" V 6400 3750 50  0000 C CNN
F 1 "10k" V 6500 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6340 3740 50  0001 C CNN
F 3 "~" H 6300 3750 50  0001 C CNN
F 4 "R_10k" V 6300 3750 50  0001 C CNN "PartId"
	1    6300 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F657E3E
P 6850 3950
F 0 "#PWR0105" H 6850 3700 50  0001 C CNN
F 1 "GND" H 6855 3777 50  0000 C CNN
F 2 "" H 6850 3950 50  0001 C CNN
F 3 "" H 6850 3950 50  0001 C CNN
	1    6850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3750 6450 3750
Wire Wire Line
	6150 3750 6000 3750
Wire Wire Line
	6850 3450 6850 3350
Wire Wire Line
	4850 4850 5150 4850
Wire Wire Line
	4900 7300 5300 7300
Wire Wire Line
	5700 6600 5700 6550
Wire Wire Line
	5300 6600 5700 6600
Wire Wire Line
	5150 5450 5150 4850
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F615187
P 7250 4850
F 0 "J2" H 7330 4892 50  0000 L CNN
F 1 "Output" H 7330 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 7250 4850 50  0001 C CNN
F 3 "~" H 7250 4850 50  0001 C CNN
F 4 "H_1x3_RA" H 7250 4850 50  0001 C CNN "PartId"
	1    7250 4850
	1    0    0    -1  
$EndComp
Text Label 7050 4950 2    50   ~ 0
D
Text Label 7050 4750 2    50   ~ 0
C
Wire Wire Line
	7050 4850 6750 4850
Wire Wire Line
	4850 4950 6000 4950
Wire Wire Line
	6750 4850 6750 5450
$Comp
L power:GND #PWR0107
U 1 1 5F61744A
P 6750 5450
F 0 "#PWR0107" H 6750 5200 50  0001 C CNN
F 1 "GND" H 6755 5277 50  0000 C CNN
F 2 "" H 6750 5450 50  0001 C CNN
F 3 "" H 6750 5450 50  0001 C CNN
	1    6750 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 3750 6000 4950
Connection ~ 6000 4950
Wire Wire Line
	6000 4950 7050 4950
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5F61B235
P 7950 3350
F 0 "J6" H 8050 3250 50  0000 L CNN
F 1 "D Out" H 8050 3350 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 7950 3350 50  0001 C CNN
F 3 "~" H 7950 3350 50  0001 C CNN
F 4 "J-381x2,P-381x2" H 7950 3350 50  0001 C CNN "PartId"
	1    7950 3350
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 1900 7650 1900
Wire Wire Line
	7650 1900 7650 1800
Wire Wire Line
	7750 3250 7650 3250
Wire Wire Line
	7650 3250 7650 3150
Wire Wire Line
	5300 7450 5300 7300
Wire Wire Line
	4850 4750 5800 4750
Wire Wire Line
	5800 2400 5800 4750
Connection ~ 5800 4750
Wire Wire Line
	5800 4750 7050 4750
Wire Wire Line
	4850 6600 5300 6600
$Comp
L Mechanical:MountingHole MH1
U 1 1 5F62CEA2
P 6300 6650
F 0 "MH1" H 6400 6696 50  0000 L CNN
F 1 "MountingHole" H 6400 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 6650 50  0001 C CNN
F 3 "~" H 6300 6650 50  0001 C CNN
	1    6300 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 5F62CF32
P 6300 6950
F 0 "MH2" H 6400 6996 50  0000 L CNN
F 1 "MountingHole" H 6400 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 6950 50  0001 C CNN
F 3 "~" H 6300 6950 50  0001 C CNN
	1    6300 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 5F62CF6A
P 6300 7250
F 0 "MH3" H 6400 7296 50  0000 L CNN
F 1 "MountingHole" H 6400 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7250 50  0001 C CNN
F 3 "~" H 6300 7250 50  0001 C CNN
	1    6300 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 5F62CFA4
P 6300 7550
F 0 "MH4" H 6400 7596 50  0000 L CNN
F 1 "MountingHole" H 6400 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7550 50  0001 C CNN
F 3 "~" H 6300 7550 50  0001 C CNN
	1    6300 7550
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO2
U 1 1 5F63D8C9
P 10900 6850
F 0 "#LOGO2" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "Aesthetics:OSHW-LOGO-S" H 10900 7144 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
$Comp
L DMXDemonstrator:MOSFET-NCH-FQP30N06L-SparkFun-DiscreteSemi Q1
U 1 1 5F640FDC
P 6750 2300
F 0 "Q1" H 6915 2342 45  0000 L CNN
F 1 "FQP30N06L" H 6915 2258 45  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 6750 2550 20  0001 C CNN
F 3 "" H 6750 2300 50  0001 C CNN
F 4 "Q_NMOSFET,HW-M3-6,HW-M3-NUT" H 6915 2216 60  0001 L CNN "PartId"
	1    6750 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR0106
U 1 1 5F6D48B2
P 5700 6550
F 0 "#PWR0106" H 5700 6450 50  0001 C CNN
F 1 "+VDC" H 5700 6825 50  0000 C CNN
F 2 "" H 5700 6550 50  0001 C CNN
F 3 "" H 5700 6550 50  0001 C CNN
	1    5700 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR0108
U 1 1 5F6D4968
P 7650 3150
F 0 "#PWR0108" H 7650 3050 50  0001 C CNN
F 1 "+VDC" H 7650 3425 50  0000 C CNN
F 2 "" H 7650 3150 50  0001 C CNN
F 3 "" H 7650 3150 50  0001 C CNN
	1    7650 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR0109
U 1 1 5F6D4A8E
P 7650 1800
F 0 "#PWR0109" H 7650 1700 50  0001 C CNN
F 1 "+VDC" H 7650 2075 50  0000 C CNN
F 2 "" H 7650 1800 50  0001 C CNN
F 3 "" H 7650 1800 50  0001 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6700 4900 7300
Connection ~ 4900 7300
Wire Wire Line
	6850 2500 6850 2600
Wire Wire Line
	5800 2400 6100 2400
Wire Wire Line
	6400 2400 6550 2400
Wire Wire Line
	6850 3850 6850 3950
Wire Wire Line
	6850 3350 7750 3350
Wire Wire Line
	6850 2000 7750 2000
Wire Wire Line
	4900 7300 4900 7450
$Comp
L Device:R_US R3
U 1 1 65438E92
P 5800 5200
F 0 "R3" H 5732 5154 50  0000 R CNN
F 1 "10k" H 5732 5245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5840 5190 50  0001 C CNN
F 3 "~" H 5800 5200 50  0001 C CNN
F 4 "R_10k" H 5800 5200 50  0001 C CNN "PartId"
	1    5800 5200
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 65438ED8
P 6000 5200
F 0 "R4" H 6068 5246 50  0000 L CNN
F 1 "10k" H 6068 5155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6040 5190 50  0001 C CNN
F 3 "~" H 6000 5200 50  0001 C CNN
F 4 "R_10k" H 6000 5200 50  0001 C CNN "PartId"
	1    6000 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6543AC2F
P 5900 5450
F 0 "#PWR0102" H 5900 5200 50  0001 C CNN
F 1 "GND" H 5905 5277 50  0000 C CNN
F 2 "" H 5900 5450 50  0001 C CNN
F 3 "" H 5900 5450 50  0001 C CNN
	1    5900 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 5350 5800 5400
Wire Wire Line
	5800 5400 5900 5400
Wire Wire Line
	6000 5400 6000 5350
Wire Wire Line
	5900 5450 5900 5400
Connection ~ 5900 5400
Wire Wire Line
	5900 5400 6000 5400
Wire Wire Line
	6000 5050 6000 4950
Wire Wire Line
	5800 5050 5800 4750
$Comp
L Connector:TestPoint TP1
U 1 1 659D2EC7
P 7450 2350
F 0 "TP1" H 7508 2470 50  0000 L CNN
F 1 "Heatsink" H 7508 2379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7650 2350 50  0001 C CNN
F 3 "~" H 7650 2350 50  0001 C CNN
	1    7450 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 65BF0BA2
P 7450 3700
F 0 "TP2" H 7508 3820 50  0000 L CNN
F 1 "Heatsink" H 7508 3729 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7650 3700 50  0001 C CNN
F 3 "~" H 7650 3700 50  0001 C CNN
	1    7450 3700
	1    0    0    -1  
$EndComp
NoConn ~ 7450 3700
NoConn ~ 7450 2350
$Comp
L DMXDemonstrator:MOSFET-NCH-FQP30N06L-SparkFun-DiscreteSemi Q2
U 1 1 5F63E22E
P 6750 3650
F 0 "Q2" H 6915 3692 45  0000 L CNN
F 1 "FQP30N06L" H 6915 3608 45  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 6750 3900 20  0001 C CNN
F 3 "" H 6750 3650 50  0001 C CNN
F 4 "Q_NMOSFET,HW-M3-6,HW-M3-NUT" H 6915 3566 60  0001 L CNN "PartId"
	1    6750 3650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
