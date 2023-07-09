EESchema Schematic File Version 4
LIBS:io-analog-pwm-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Analog IO PWM (DMX-IO4)"
Date "2023-07-01"
Rev "1.2"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L power:GND #PWR0111
U 1 1 5F4012A9
P 6750 3450
F 0 "#PWR0111" H 6750 3200 50  0001 C CNN
F 1 "GND" H 6755 3277 50  0000 C CNN
F 2 "" H 6750 3450 50  0001 C CNN
F 3 "" H 6750 3450 50  0001 C CNN
	1    6750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3450 6750 3350
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 5F42826E
P 7100 3150
F 0 "J2" H 7100 2700 50  0000 L CNN
F 1 "Vo Output" H 6950 2800 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_5-G-5,08_1x05_P5.08mm_Horizontal" H 7100 3150 50  0001 C CNN
F 3 "~" H 7100 3150 50  0001 C CNN
	1    7100 3150
	1    0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5F517793
P 3950 7050
F 0 "C2" H 4065 7096 50  0000 L CNN
F 1 "0.1uF" H 4065 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3988 6900 50  0001 C CNN
F 3 "~" H 3950 7050 50  0001 C CNN
	1    3950 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F517B89
P 4400 7500
F 0 "#PWR0120" H 4400 7250 50  0001 C CNN
F 1 "GND" H 4405 7327 50  0000 C CNN
F 2 "" H 4400 7500 50  0001 C CNN
F 3 "" H 4400 7500 50  0001 C CNN
	1    4400 7500
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F5D2833
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3350 6900 3350
Text Label 4450 3000 0    50   ~ 0
AO0
Text Label 4450 2900 0    50   ~ 0
AO1
Text Label 4450 2800 0    50   ~ 0
AO2
Text Label 4450 2700 0    50   ~ 0
AO3
Wire Wire Line
	6900 3150 6300 3150
Wire Wire Line
	6900 3250 6400 3250
$Comp
L Device:C C1
U 1 1 5F7C4002
P 4850 7050
F 0 "C1" H 4965 7096 50  0000 L CNN
F 1 "0.1uF" H 4965 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4888 6900 50  0001 C CNN
F 3 "~" H 4850 7050 50  0001 C CNN
	1    4850 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 63F3D862
P 6250 6950
F 0 "MH2" H 6350 6996 50  0000 L CNN
F 1 "MountingHole" H 6350 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6950 50  0001 C CNN
F 3 "~" H 6250 6950 50  0001 C CNN
	1    6250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 63F3D8D0
P 6250 7250
F 0 "MH3" H 6350 7296 50  0000 L CNN
F 1 "MountingHole" H 6350 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7250 50  0001 C CNN
F 3 "~" H 6250 7250 50  0001 C CNN
	1    6250 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 63F3D916
P 6250 7550
F 0 "MH4" H 6350 7596 50  0000 L CNN
F 1 "MountingHole" H 6350 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7550 50  0001 C CNN
F 3 "~" H 6250 7550 50  0001 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH1
U 1 1 63F3D95E
P 6250 6650
F 0 "MH1" H 6350 6696 50  0000 L CNN
F 1 "MountingHole" H 6350 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6650 50  0001 C CNN
F 3 "~" H 6250 6650 50  0001 C CNN
	1    6250 6650
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 2 1 63F1BE6E
P 5700 1800
F 0 "U2" H 5700 2167 50  0000 C CNN
F 1 "LM339" H 5700 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 5750 2000 50  0001 C CNN
	2    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 3 1 63F1BED5
P 5700 4500
F 0 "U2" H 5700 4867 50  0000 C CNN
F 1 "LM339" H 5700 4776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 5750 4700 50  0001 C CNN
	3    5700 4500
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 4 1 63F1BF3E
P 5700 2700
F 0 "U2" H 5700 3067 50  0000 C CNN
F 1 "LM339" H 5700 2976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 5750 2900 50  0001 C CNN
	4    5700 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 63F1C187
P 3900 5250
F 0 "C6" H 3992 5296 50  0000 L CNN
F 1 "0.68uF" H 3992 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3900 5250 50  0001 C CNN
F 3 "~" H 3900 5250 50  0001 C CNN
	1    3900 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 63F3258D
P 4400 5250
F 0 "R3" H 4332 5204 50  0000 R CNN
F 1 "10k" H 4332 5295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4440 5240 50  0001 C CNN
F 3 "~" H 4400 5250 50  0001 C CNN
	1    4400 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 5150 3900 5000
Connection ~ 3900 5000
$Comp
L power:GND #PWR0127
U 1 1 63F662F2
P 3000 5500
F 0 "#PWR0127" H 3000 5250 50  0001 C CNN
F 1 "GND" H 3005 5327 50  0000 C CNN
F 2 "" H 3000 5500 50  0001 C CNN
F 3 "" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3700 5400 3700
Connection ~ 5000 2800
Wire Wire Line
	5000 2800 5000 3700
Wire Wire Line
	5000 1900 5400 1900
Wire Wire Line
	5000 1900 5000 2800
Entry Wire Line
	4600 2700 4700 2600
Entry Wire Line
	4600 2800 4700 2700
Entry Wire Line
	4600 2900 4700 2800
Entry Wire Line
	4600 3000 4700 2900
Entry Wire Line
	4700 1800 4800 1700
Entry Wire Line
	4700 2700 4800 2600
Entry Wire Line
	4700 3400 4800 3500
Entry Wire Line
	4700 4300 4800 4400
Text Label 4800 4400 0    50   ~ 0
AO0
Text Label 4800 3500 0    50   ~ 0
AO1
Text Label 4800 2600 0    50   ~ 0
AO2
Text Label 4800 1700 0    50   ~ 0
AO3
Connection ~ 5000 3700
Wire Wire Line
	5000 2800 5400 2800
Wire Wire Line
	4800 1700 5400 1700
Wire Wire Line
	4800 2600 5400 2600
Wire Wire Line
	4800 4400 5400 4400
Wire Wire Line
	3000 5450 3000 5500
Wire Wire Line
	3900 5350 3900 5450
Wire Wire Line
	4400 7450 4400 7500
Connection ~ 3000 5450
Text Notes 7250 3250 0    50   ~ 0
PWM Output\n0v-Vo
Wire Wire Line
	6000 1800 6400 1800
Wire Wire Line
	6000 3600 6300 3600
Wire Wire Line
	6000 4500 6400 4500
Wire Wire Line
	4800 3500 5400 3500
$Comp
L Comparator:LM339 U2
U 1 1 63F1BDD7
P 5700 3600
F 0 "U2" H 5700 3967 50  0000 C CNN
F 1 "LM339" H 5700 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 5750 3800 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L Timer:TLC555 U1
U 1 1 649D4CA9
P 2450 5000
F 0 "U1" H 2700 5450 50  0000 C CNN
F 1 "LM555" H 2700 5350 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2500 4750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlc555.pdf" H 3100 4450 50  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 649D4EF3
P 2450 4400
F 0 "#PWR0107" H 2450 4250 50  0001 C CNN
F 1 "+5V" H 2465 4573 50  0000 C CNN
F 2 "" H 2450 4400 50  0001 C CNN
F 3 "" H 2450 4400 50  0001 C CNN
	1    2450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 649D4F4E
P 2150 4500
F 0 "R1" V 1945 4500 50  0000 C CNN
F 1 "330" V 2036 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2190 4490 50  0001 C CNN
F 3 "~" H 2150 4500 50  0001 C CNN
	1    2150 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 4800 3000 4800
Wire Wire Line
	3000 4800 3000 4500
Wire Wire Line
	3000 4500 2450 4500
Wire Wire Line
	2450 4500 2450 4400
Wire Wire Line
	2450 4600 2450 4500
Connection ~ 2450 4500
Wire Wire Line
	2450 4500 2300 4500
Wire Wire Line
	2000 4500 1900 4500
Wire Wire Line
	1900 4500 1900 4800
Wire Wire Line
	1900 4800 1950 4800
Wire Wire Line
	1950 5000 1750 5000
Wire Wire Line
	1750 5000 1750 5100
Wire Wire Line
	1750 5100 1950 5100
$Comp
L Device:C_Small C4
U 1 1 64A01E27
P 3000 5250
F 0 "C4" H 2909 5204 50  0000 R CNN
F 1 "100nf" H 2909 5295 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3000 5250 50  0001 C CNN
F 3 "~" H 3000 5250 50  0001 C CNN
	1    3000 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 5150 3000 5100
Wire Wire Line
	3000 5350 3000 5450
Wire Wire Line
	2950 5100 3000 5100
Wire Wire Line
	3000 5450 2450 5450
Wire Wire Line
	2450 5450 2450 5300
Connection ~ 2450 5450
$Comp
L Device:C_Small C5
U 1 1 64A2A666
P 1750 5250
F 0 "C5" H 1659 5204 50  0000 R CNN
F 1 "0.68uF" H 1659 5295 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 1750 5250 50  0001 C CNN
F 3 "~" H 1750 5250 50  0001 C CNN
	1    1750 5250
	1    0    0    1   
$EndComp
Wire Wire Line
	2450 5450 1750 5450
Wire Wire Line
	1750 5450 1750 5350
Wire Wire Line
	1750 5150 1750 5100
Connection ~ 1750 5100
Wire Wire Line
	2950 5000 3300 5000
$Comp
L Device:R_US R2
U 1 1 64A54F32
P 1750 4750
F 0 "R2" H 1818 4796 50  0000 L CNN
F 1 "10k" H 1818 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1790 4740 50  0001 C CNN
F 3 "~" H 1750 4750 50  0001 C CNN
	1    1750 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 4600 1750 4500
Wire Wire Line
	1750 4500 1900 4500
Connection ~ 1900 4500
Wire Wire Line
	1750 5000 1750 4900
Connection ~ 1750 5000
Wire Wire Line
	5000 3700 5000 4600
Wire Wire Line
	4400 5000 4400 5100
Wire Wire Line
	4400 5400 4400 5450
Wire Wire Line
	3900 5000 4400 5000
Wire Wire Line
	4400 7450 4400 7350
Wire Wire Line
	3950 7450 3950 7200
Wire Wire Line
	4400 6650 4400 6750
$Comp
L Comparator:LM339 U2
U 5 1 63F1BFA7
P 4500 7050
F 0 "U2" H 4458 7096 50  0000 L CNN
F 1 "LM339" H 4458 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4450 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 4550 7250 50  0001 C CNN
	5    4500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6900 3950 6650
Wire Wire Line
	5000 4600 5400 4600
Connection ~ 4400 7450
Wire Wire Line
	3000 5450 3900 5450
Wire Wire Line
	3900 5450 4400 5450
Connection ~ 3900 5450
Wire Wire Line
	4400 5000 5000 5000
Connection ~ 4400 5000
Text Notes 3200 4700 0    50   ~ 0
Adjust RV1 for full range,\nabout 1/3 of travel.
Wire Wire Line
	3650 5000 3900 5000
Wire Wire Line
	3600 5000 3650 5000
Connection ~ 3650 5000
Wire Wire Line
	3650 5200 3650 5000
Wire Wire Line
	3450 5150 3450 5200
Wire Wire Line
	3450 5200 3650 5200
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 649CE4C9
P 3450 5000
F 0 "RV1" V 3245 5000 50  0000 C CNN
F 1 "10k" V 3336 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical" H 3450 5000 50  0001 C CNN
F 3 "~" H 3450 5000 50  0001 C CNN
	1    3450 5000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 653B9279
P 2450 3300
AR Path="/647E1209/653B9279" Ref="#PWR?"  Part="1" 
AR Path="/653B9279" Ref="#PWR02"  Part="1" 
AR Path="/64992F34/653B9279" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 2450 3050 50  0001 C CNN
F 1 "GND" H 2455 3127 50  0000 C CNN
F 2 "" H 2450 3300 50  0001 C CNN
F 3 "" H 2450 3300 50  0001 C CNN
	1    2450 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 3300 2450 3200
Wire Wire Line
	2450 3200 2350 3200
Wire Wire Line
	2450 3200 2450 3100
Wire Wire Line
	2450 3100 2350 3100
Connection ~ 2450 3200
$Comp
L power:+5V #PWR?
U 1 1 653B9284
P 2450 2400
AR Path="/647E1209/653B9284" Ref="#PWR?"  Part="1" 
AR Path="/653B9284" Ref="#PWR01"  Part="1" 
AR Path="/64992F34/653B9284" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 2450 2250 50  0001 C CNN
F 1 "+5V" H 2465 2573 50  0000 C CNN
F 2 "" H 2450 2400 50  0001 C CNN
F 3 "" H 2450 2400 50  0001 C CNN
	1    2450 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 2400 2450 2500
Wire Wire Line
	2350 2500 2450 2500
Connection ~ 2450 2500
Wire Wire Line
	2450 2500 2450 2600
Wire Wire Line
	2350 2600 2450 2600
Text Label 2500 2700 2    50   ~ 0
AO3
Text Label 2500 2800 2    50   ~ 0
AO2
Text Label 2500 2900 2    50   ~ 0
AO1
Text Label 2500 3000 2    50   ~ 0
AO0
Wire Wire Line
	2350 2700 4600 2700
Wire Wire Line
	2350 2800 4600 2800
Wire Wire Line
	2350 2900 4600 2900
Wire Wire Line
	2350 3000 4600 3000
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 653B9297
P 2150 2800
F 0 "J1" H 2300 2800 50  0000 C CNN
F 1 "Analog Extension" H 2550 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 2150 2800 50  0001 C CNN
F 3 "~" H 2150 2800 50  0001 C CNN
	1    2150 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 3050 6900 3050
Wire Wire Line
	6400 2950 6900 2950
Wire Wire Line
	6000 2700 6300 2700
Wire Wire Line
	6400 1800 6400 2950
Wire Wire Line
	6300 2700 6300 3050
Wire Wire Line
	2100 7350 1550 7350
Wire Wire Line
	2100 7450 2100 7350
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6546F2B0
P 2100 7450
AR Path="/647E1209/6546F2B0" Ref="#FLG?"  Part="1" 
AR Path="/6546F2B0" Ref="#FLG02"  Part="1" 
AR Path="/65468F85/6546F2B0" Ref="#FLG?"  Part="1" 
F 0 "#FLG02" H 2100 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 7623 50  0000 C CNN
F 2 "" H 2100 7450 50  0001 C CNN
F 3 "~" H 2100 7450 50  0001 C CNN
	1    2100 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6546F2B6
P 3500 7050
AR Path="/647E1209/6546F2B6" Ref="C?"  Part="1" 
AR Path="/6546F2B6" Ref="C7"  Part="1" 
AR Path="/65468F85/6546F2B6" Ref="C?"  Part="1" 
F 0 "C7" H 3615 7096 50  0000 L CNN
F 1 "10uF" H 3615 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3500 7050 50  0001 C CNN
F 3 "~" H 3500 7050 50  0001 C CNN
	1    3500 7050
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LM317T U?
U 1 1 6546F2C6
P 2550 6650
AR Path="/647E1209/6546F2C6" Ref="U?"  Part="1" 
AR Path="/6546F2C6" Ref="U4"  Part="1" 
AR Path="/65468F85/6546F2C6" Ref="U?"  Part="1" 
F 0 "U4" H 2550 6937 60  0000 C CNN
F 1 "LM317T" H 2550 6831 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2750 6850 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 2750 6950 60  0001 L CNN
F 4 "497-1575-5-ND" H 2750 7050 60  0001 L CNN "Digi-Key_PN"
F 5 "LM317T" H 2750 7150 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2750 7250 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 2750 7350 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 2750 7450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LM317T/497-1575-5-ND/591677" H 2750 7550 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LIN POS ADJ 1.5A TO220AB" H 2750 7650 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 2750 7750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2750 7850 60  0001 L CNN "Status"
	1    2550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6546F2CD
P 3000 6900
AR Path="/647E1209/6546F2CD" Ref="R?"  Part="1" 
AR Path="/6546F2CD" Ref="R4"  Part="1" 
AR Path="/65468F85/6546F2CD" Ref="R?"  Part="1" 
F 0 "R4" H 2932 6854 50  0000 R CNN
F 1 "392 1%" H 2932 6945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3040 6890 50  0001 C CNN
F 3 "~" H 3000 6900 50  0001 C CNN
	1    3000 6900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 6546F2D4
P 3000 7300
AR Path="/647E1209/6546F2D4" Ref="R?"  Part="1" 
AR Path="/6546F2D4" Ref="R5"  Part="1" 
AR Path="/65468F85/6546F2D4" Ref="R?"  Part="1" 
F 0 "R5" H 2932 7254 50  0000 R CNN
F 1 "2.74k 1%" H 2932 7345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3040 7290 50  0001 C CNN
F 3 "~" H 3000 7300 50  0001 C CNN
	1    3000 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 6650 3000 6650
Wire Wire Line
	3000 6750 3000 6650
Connection ~ 3000 6650
Wire Wire Line
	3000 6650 3500 6650
Wire Wire Line
	3000 7050 3000 7100
Wire Wire Line
	3000 7100 2550 7100
Wire Wire Line
	2550 7100 2550 6950
Connection ~ 3000 7100
Wire Wire Line
	3000 7100 3000 7150
$Comp
L power:GND #PWR?
U 1 1 6546F2E4
P 3000 7500
AR Path="/647E1209/6546F2E4" Ref="#PWR?"  Part="1" 
AR Path="/6546F2E4" Ref="#PWR04"  Part="1" 
AR Path="/65468F85/6546F2E4" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 3000 7250 50  0001 C CNN
F 1 "GND" H 3005 7327 50  0000 C CNN
F 2 "" H 3000 7500 50  0001 C CNN
F 3 "" H 3000 7500 50  0001 C CNN
	1    3000 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7500 3000 7450
Wire Wire Line
	3500 6900 3500 6650
$Comp
L Diode:1N5819 D?
U 1 1 6546F2EC
P 1750 6650
AR Path="/64798DC1/6546F2EC" Ref="D?"  Part="1" 
AR Path="/6546F2EC" Ref="D1"  Part="1" 
AR Path="/647E1209/6546F2EC" Ref="D?"  Part="1" 
AR Path="/65468F85/6546F2EC" Ref="D?"  Part="1" 
F 0 "D1" H 1750 6866 50  0000 C CNN
F 1 "1N5819" H 1750 6775 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1750 6475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1750 6650 50  0001 C CNN
	1    1750 6650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 6650 2100 6650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6546F2F4
P 2100 6600
AR Path="/64798DC1/6546F2F4" Ref="#FLG?"  Part="1" 
AR Path="/6546F2F4" Ref="#FLG01"  Part="1" 
AR Path="/647E1209/6546F2F4" Ref="#FLG?"  Part="1" 
AR Path="/65468F85/6546F2F4" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 2100 6675 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 6773 50  0000 C CNN
F 2 "" H 2100 6600 50  0001 C CNN
F 3 "~" H 2100 6600 50  0001 C CNN
	1    2100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6600 2100 6650
Connection ~ 2100 6650
Wire Wire Line
	2100 6650 2250 6650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 6546F2FD
P 1050 6750
AR Path="/647946E8/6546F2FD" Ref="J?"  Part="1" 
AR Path="/6546F2FD" Ref="J4"  Part="1" 
AR Path="/64798DC1/6546F2FD" Ref="J?"  Part="1" 
AR Path="/647E1209/6546F2FD" Ref="J?"  Part="1" 
AR Path="/65468F85/6546F2FD" Ref="J?"  Part="1" 
F 0 "J4" H 950 6450 50  0000 C CNN
F 1 "Power" H 950 6550 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G-5,08_1x02_P5.08mm_Horizontal" H 1050 6750 50  0001 C CNN
F 3 "~" H 1050 6750 50  0001 C CNN
	1    1050 6750
	-1   0    0    1   
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:POWER_JACKPTH_BREAD J?
U 1 1 6546F305
P 1150 7350
AR Path="/647946E8/6546F305" Ref="J?"  Part="1" 
AR Path="/6546F305" Ref="J5"  Part="1" 
AR Path="/64798DC1/6546F305" Ref="J?"  Part="1" 
AR Path="/647E1209/6546F305" Ref="J?"  Part="1" 
AR Path="/65468F85/6546F305" Ref="J?"  Part="1" 
F 0 "J5" H 1106 7634 45  0000 C CNN
F 1 "Power" H 1106 7550 45  0000 C CNN
F 2 "Connectors:POWER_JACK_PTH_BREAD" H 1150 7600 20  0001 C CNN
F 3 "" H 1150 7350 50  0001 C CNN
F 4 "CONN-08197" H 1106 7561 60  0001 C CNN "Field4"
	1    1150 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7250 1450 7250
Wire Wire Line
	1350 7350 1550 7350
Wire Wire Line
	1550 7350 1550 6750
Wire Wire Line
	1250 6750 1550 6750
Wire Wire Line
	1250 6650 1450 6650
Wire Wire Line
	1450 6650 1450 7250
Connection ~ 1450 6650
Wire Wire Line
	1450 6650 1600 6650
Wire Wire Line
	1350 7450 1550 7450
Wire Wire Line
	1550 7450 1550 7350
Connection ~ 1550 7350
$Comp
L power:GND #PWR?
U 1 1 6546F317
P 1550 7500
AR Path="/6BB77A68/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313E/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/647946E8/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/6546F317" Ref="#PWR03"  Part="1" 
AR Path="/64798DC1/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/647E1209/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/65468F85/6546F317" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 1550 7250 50  0001 C CNN
F 1 "GND" H 1555 7327 50  0000 C CNN
F 2 "" H 1550 7500 50  0001 C CNN
F 3 "" H 1550 7500 50  0001 C CNN
	1    1550 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7200 3500 7450
Connection ~ 3500 6650
Text Notes 950  7050 2    50   ~ 0
VIn Input\n(12v-15v)
Wire Wire Line
	1550 7450 1550 7500
Connection ~ 1550 7450
$Comp
L Device:CP1 C?
U 1 1 6546F324
P 2100 7100
AR Path="/647E1209/6546F324" Ref="C?"  Part="1" 
AR Path="/6546F324" Ref="C8"  Part="1" 
AR Path="/65468F85/6546F324" Ref="C?"  Part="1" 
F 0 "C8" H 2215 7146 50  0000 L CNN
F 1 "10uF" H 2215 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2100 7100 50  0001 C CNN
F 3 "~" H 2100 7100 50  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6650 2100 6950
Wire Wire Line
	2100 7250 2100 7350
Connection ~ 2100 7350
Text Notes 4150 6550 2    50   ~ 0
R4, R5 control the output voltage\nVo = 1.25 * (1 + R5 / R4)
$Comp
L power:PWR_FLAG #FLG?
U 1 1 654D8601
P 2750 2400
AR Path="/64798DC1/654D8601" Ref="#FLG?"  Part="1" 
AR Path="/654D8601" Ref="#FLG0101"  Part="1" 
AR Path="/647E1209/654D8601" Ref="#FLG?"  Part="1" 
AR Path="/65468F85/654D8601" Ref="#FLG?"  Part="1" 
F 0 "#FLG0101" H 2750 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 2573 50  0000 C CNN
F 2 "" H 2750 2400 50  0001 C CNN
F 3 "~" H 2750 2400 50  0001 C CNN
	1    2750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2600 2750 2600
Wire Wire Line
	2750 2400 2750 2600
Connection ~ 2450 2600
Wire Wire Line
	6300 3150 6300 3600
Wire Wire Line
	6400 3250 6400 4500
Wire Wire Line
	3500 7450 3950 7450
Wire Wire Line
	3500 6650 3950 6650
Connection ~ 3950 6650
Wire Wire Line
	3950 6650 4400 6650
Connection ~ 3950 7450
Wire Wire Line
	3950 7450 4400 7450
$Comp
L power:GND #PWR0101
U 1 1 65516237
P 5350 7500
F 0 "#PWR0101" H 5350 7250 50  0001 C CNN
F 1 "GND" H 5355 7327 50  0000 C CNN
F 2 "" H 5350 7500 50  0001 C CNN
F 3 "" H 5350 7500 50  0001 C CNN
	1    5350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7200 4850 7450
$Comp
L power:+5V #PWR0102
U 1 1 6551A56F
P 5350 6550
F 0 "#PWR0102" H 5350 6400 50  0001 C CNN
F 1 "+5V" H 5365 6723 50  0000 C CNN
F 2 "" H 5350 6550 50  0001 C CNN
F 3 "" H 5350 6550 50  0001 C CNN
	1    5350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6550 5350 6650
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 64A4C482
P 10000 2950
F 0 "J3" H 10050 3267 50  0000 C CNN
F 1 "+5V Output" H 10050 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 10000 2950 50  0001 C CNN
F 3 "~" H 10000 2950 50  0001 C CNN
	1    10000 2950
	-1   0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U3
U 1 1 64A4C702
P 8800 1800
F 0 "U3" H 8800 2167 50  0000 C CNN
F 1 "LM339" H 8800 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8750 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 8850 2000 50  0001 C CNN
	1    8800 1800
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U3
U 3 1 64A4C800
P 8800 3600
F 0 "U3" H 8800 3967 50  0000 C CNN
F 1 "LM339" H 8800 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8750 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 8850 3800 50  0001 C CNN
	3    8800 3600
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U3
U 4 1 64A4C885
P 8800 2700
F 0 "U3" H 8800 3067 50  0000 C CNN
F 1 "LM339" H 8800 2976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8750 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 8850 2900 50  0001 C CNN
	4    8800 2700
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U3
U 5 1 64A4C900
P 5900 7050
F 0 "U3" H 5858 7096 50  0000 L CNN
F 1 "LM339" H 5858 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5850 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 5950 7250 50  0001 C CNN
	5    5900 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 64A4CCD1
P 5350 7050
F 0 "C3" H 5465 7096 50  0000 L CNN
F 1 "0.1uF" H 5465 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5388 6900 50  0001 C CNN
F 3 "~" H 5350 7050 50  0001 C CNN
	1    5350 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4600 5000 5000
Connection ~ 5000 4600
Connection ~ 5000 5000
Entry Wire Line
	7800 1800 7900 1700
Text Label 7900 1700 0    50   ~ 0
AO3
$Comp
L Comparator:LM339 U3
U 2 1 64A4C78B
P 8800 4500
F 0 "U3" H 8800 4867 50  0000 C CNN
F 1 "LM339" H 8800 4776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8750 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 8850 4700 50  0001 C CNN
	2    8800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1700 8500 1700
Wire Wire Line
	8100 3700 8500 3700
Connection ~ 8100 2800
Wire Wire Line
	8100 2800 8100 3700
Wire Wire Line
	8100 1900 8500 1900
Wire Wire Line
	8100 1900 8100 2800
Entry Wire Line
	7800 2700 7900 2600
Entry Wire Line
	7800 3400 7900 3500
Entry Wire Line
	7800 4300 7900 4400
Text Label 7900 4400 0    50   ~ 0
AO0
Text Label 7900 3500 0    50   ~ 0
AO1
Text Label 7900 2600 0    50   ~ 0
AO2
Connection ~ 8100 3700
Wire Wire Line
	8100 2800 8500 2800
Wire Wire Line
	7900 2600 8500 2600
Wire Wire Line
	7900 4400 8500 4400
Wire Wire Line
	7900 3500 8500 3500
Wire Wire Line
	8100 3700 8100 4600
Wire Wire Line
	8100 4600 8500 4600
Wire Wire Line
	8100 4600 8100 5000
Connection ~ 8100 4600
Wire Wire Line
	9100 1800 9500 1800
Wire Wire Line
	9100 3600 9400 3600
Wire Wire Line
	9100 4500 9500 4500
Wire Wire Line
	9400 3050 9700 3050
Wire Wire Line
	9100 2700 9400 2700
Wire Wire Line
	9500 1800 9500 2850
Wire Wire Line
	9400 2700 9400 3050
Wire Wire Line
	9400 3150 9400 3600
Wire Wire Line
	9500 3250 9500 4500
Wire Wire Line
	9700 2850 9500 2850
Wire Wire Line
	10400 3250 10400 3050
Wire Wire Line
	10400 3050 10200 3050
Wire Wire Line
	9500 3250 10400 3250
Wire Wire Line
	10500 3150 10500 2850
Wire Wire Line
	10500 2850 10200 2850
Wire Wire Line
	9400 3150 10500 3150
Wire Wire Line
	9700 2950 9600 2950
Wire Wire Line
	9600 2950 9600 3350
Wire Wire Line
	9600 3350 10300 3350
Wire Wire Line
	10300 3350 10300 3450
Wire Wire Line
	10200 2950 10300 2950
Wire Wire Line
	10300 2950 10300 3350
Connection ~ 10300 3350
$Comp
L power:GND #PWR0103
U 1 1 64AB86AD
P 10300 3450
F 0 "#PWR0103" H 10300 3200 50  0001 C CNN
F 1 "GND" H 10305 3277 50  0000 C CNN
F 2 "" H 10300 3450 50  0001 C CNN
F 3 "" H 10300 3450 50  0001 C CNN
	1    10300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5000 8100 5000
Entry Bus Bus
	7700 1150 7800 1250
Entry Bus Bus
	4700 1250 4800 1150
Text Notes 10600 3050 0    50   ~ 0
PWM Output\n0v-5v
Wire Bus Line
	4800 1150 7700 1150
Wire Wire Line
	4850 6650 5350 6650
Wire Wire Line
	5800 6650 5800 6750
Wire Wire Line
	4850 6650 4850 6900
Wire Wire Line
	5350 6900 5350 6650
Connection ~ 5350 6650
Wire Wire Line
	5350 6650 5800 6650
Wire Wire Line
	5800 7450 5800 7350
Wire Wire Line
	5350 7450 5350 7500
Wire Wire Line
	5350 7200 5350 7450
Wire Wire Line
	4850 7450 5350 7450
Connection ~ 5350 7450
Wire Wire Line
	5350 7450 5800 7450
Wire Bus Line
	7800 1250 7800 4300
Wire Bus Line
	4700 1250 4700 4300
$EndSCHEMATC
