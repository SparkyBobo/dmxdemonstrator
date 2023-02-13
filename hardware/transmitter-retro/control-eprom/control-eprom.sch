EESchema Schematic File Version 4
LIBS:control-eprom-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX5)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Memory_EPROM:27128 U5
U 1 1 633513CD
P 5400 3700
AR Path="/633513CD" Ref="U5"  Part="1" 
AR Path="/632F1F43/633513CD" Ref="U?"  Part="1" 
AR Path="/63267F40/633513CD" Ref="U?"  Part="1" 
F 0 "U5" H 5550 4850 50  0000 C CNN
F 1 "27128" H 5600 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 5400 3700 50  0001 C CNN
F 3 "http://eeshop.unl.edu/pdf/27128.pdf" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U3
U 1 1 633513E9
P 1900 2850
AR Path="/633513E9" Ref="U3"  Part="1" 
AR Path="/632F1F43/633513E9" Ref="U?"  Part="1" 
AR Path="/63267F40/633513E9" Ref="U?"  Part="1" 
F 0 "U3" H 2000 3600 50  0000 C CNN
F 1 "74LS161" H 2100 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1900 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 1900 2850 50  0001 C CNN
	1    1900 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 633513F0
P 1900 3650
AR Path="/633513F0" Ref="#PWR0101"  Part="1" 
AR Path="/632F1F43/633513F0" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/633513F0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 1900 3400 50  0001 C CNN
F 1 "GND" H 2050 3550 50  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3350 1400 3350
Wire Wire Line
	1400 3050 1350 3050
Wire Wire Line
	1400 2650 1250 2650
Wire Wire Line
	1250 2650 1250 2700
Wire Wire Line
	1250 2650 1250 2550
Wire Wire Line
	1250 2550 1400 2550
Connection ~ 1250 2650
Wire Wire Line
	1250 2550 1250 2450
Wire Wire Line
	1250 2450 1400 2450
Connection ~ 1250 2550
Wire Wire Line
	1250 2450 1250 2350
Wire Wire Line
	1250 2350 1400 2350
Connection ~ 1250 2450
$Comp
L power:GND #PWR0102
U 1 1 63351403
P 1250 2700
AR Path="/63351403" Ref="#PWR0102"  Part="1" 
AR Path="/632F1F43/63351403" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351403" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 1250 2450 50  0001 C CNN
F 1 "GND" H 1255 2527 50  0000 C CNN
F 2 "" H 1250 2700 50  0001 C CNN
F 3 "" H 1250 2700 50  0001 C CNN
	1    1250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2850 1350 2850
Wire Wire Line
	1350 2850 1350 2950
Connection ~ 1350 3050
Wire Wire Line
	1350 3050 1100 3050
Wire Wire Line
	1400 2950 1350 2950
Connection ~ 1350 2950
Wire Wire Line
	1350 2950 1350 3050
$Comp
L power:+5V #PWR0103
U 1 1 63351410
P 1900 2050
AR Path="/63351410" Ref="#PWR0103"  Part="1" 
AR Path="/632F1F43/63351410" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351410" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 1900 1900 50  0001 C CNN
F 1 "+5V" H 1915 2223 50  0000 C CNN
F 2 "" H 1900 2050 50  0001 C CNN
F 3 "" H 1900 2050 50  0001 C CNN
	1    1900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2350 2550 2350
Wire Wire Line
	2400 2450 2550 2450
Wire Wire Line
	2400 2550 2550 2550
Text Notes 2550 1600 0    50   ~ 0
Address\nCounter
Wire Wire Line
	1100 2050 1100 3050
$Comp
L power:+5V #PWR?
U 1 1 6335141B
P 1100 2050
AR Path="/6841E790/6335141B" Ref="#PWR?"  Part="1" 
AR Path="/6335141B" Ref="#PWR0104"  Part="1" 
AR Path="/632F1F43/6335141B" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335141B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 1100 1900 50  0001 C CNN
F 1 "+5V" H 1115 2223 50  0000 C CNN
F 2 "" H 1100 2050 50  0001 C CNN
F 3 "" H 1100 2050 50  0001 C CNN
	1    1100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3150 1400 3150
$Comp
L 74xx:74LS161 U4
U 1 1 63351423
P 3600 2850
AR Path="/63351423" Ref="U4"  Part="1" 
AR Path="/632F1F43/63351423" Ref="U?"  Part="1" 
AR Path="/63267F40/63351423" Ref="U?"  Part="1" 
F 0 "U4" H 3700 3600 50  0000 C CNN
F 1 "74LS161" H 3800 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3600 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3600 2850 50  0001 C CNN
	1    3600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6335142A
P 3600 3650
AR Path="/6335142A" Ref="#PWR0105"  Part="1" 
AR Path="/632F1F43/6335142A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335142A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 3600 3400 50  0001 C CNN
F 1 "GND" H 3750 3550 50  0000 C CNN
F 2 "" H 3600 3650 50  0001 C CNN
F 3 "" H 3600 3650 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3350 3100 3350
Wire Wire Line
	3100 2650 2950 2650
Wire Wire Line
	2950 2650 2950 2700
Wire Wire Line
	2950 2650 2950 2550
Wire Wire Line
	2950 2550 3100 2550
Connection ~ 2950 2650
Wire Wire Line
	2950 2550 2950 2450
Wire Wire Line
	2950 2450 3100 2450
Connection ~ 2950 2550
Wire Wire Line
	2950 2450 2950 2350
Wire Wire Line
	2950 2350 3100 2350
Connection ~ 2950 2450
$Comp
L power:GND #PWR0106
U 1 1 6335143C
P 2950 2700
AR Path="/6335143C" Ref="#PWR0106"  Part="1" 
AR Path="/632F1F43/6335143C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335143C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 2950 2450 50  0001 C CNN
F 1 "GND" H 2955 2527 50  0000 C CNN
F 2 "" H 2950 2700 50  0001 C CNN
F 3 "" H 2950 2700 50  0001 C CNN
	1    2950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2850 3050 2850
Wire Wire Line
	3050 2850 3050 2950
$Comp
L power:+5V #PWR0107
U 1 1 63351444
P 3600 2050
AR Path="/63351444" Ref="#PWR0107"  Part="1" 
AR Path="/632F1F43/63351444" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351444" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 3600 1900 50  0001 C CNN
F 1 "+5V" H 3615 2223 50  0000 C CNN
F 2 "" H 3600 2050 50  0001 C CNN
F 3 "" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2350 4250 2350
Wire Wire Line
	4100 2450 4250 2450
Wire Wire Line
	4100 2550 4250 2550
Wire Wire Line
	2800 2050 2800 2950
$Comp
L power:+5V #PWR?
U 1 1 6335144F
P 2800 2050
AR Path="/6841E790/6335144F" Ref="#PWR?"  Part="1" 
AR Path="/6335144F" Ref="#PWR0108"  Part="1" 
AR Path="/632F1F43/6335144F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335144F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 2800 1900 50  0001 C CNN
F 1 "+5V" H 2815 2223 50  0000 C CNN
F 2 "" H 2800 2050 50  0001 C CNN
F 3 "" H 2800 2050 50  0001 C CNN
	1    2800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3350 2800 5300
Wire Wire Line
	2650 3150 3100 3150
Wire Wire Line
	2650 3150 2650 5450
Entry Wire Line
	2550 2350 2650 2250
Entry Wire Line
	2550 2450 2650 2350
Entry Wire Line
	2550 2550 2650 2450
Entry Wire Line
	2550 2650 2650 2550
Wire Wire Line
	2400 2850 2650 2850
Wire Wire Line
	2650 2850 2650 3050
Wire Wire Line
	2400 2650 2550 2650
Wire Wire Line
	2650 3050 3100 3050
Entry Wire Line
	4250 2650 4350 2550
Entry Wire Line
	4250 2550 4350 2450
Entry Wire Line
	4250 2450 4350 2350
Entry Wire Line
	4250 2350 4350 2250
Wire Wire Line
	4100 2650 4250 2650
Entry Bus Bus
	4350 1900 4250 1800
Entry Bus Bus
	2650 1900 2750 1800
$Comp
L power:GND #PWR0109
U 1 1 63351468
P 5400 4800
AR Path="/63351468" Ref="#PWR0109"  Part="1" 
AR Path="/632F1F43/63351468" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351468" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 5400 4550 50  0001 C CNN
F 1 "GND" H 5405 4627 50  0000 C CNN
F 2 "" H 5400 4800 50  0001 C CNN
F 3 "" H 5400 4800 50  0001 C CNN
	1    5400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 6335146E
P 5400 2600
AR Path="/6335146E" Ref="#PWR0110"  Part="1" 
AR Path="/632F1F43/6335146E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6335146E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 5400 2450 50  0001 C CNN
F 1 "+5V" H 5415 2773 50  0000 C CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4400 4750 4400
Wire Wire Line
	4750 4400 4750 4300
Wire Wire Line
	5000 4300 4750 4300
Connection ~ 4750 4300
Wire Wire Line
	4750 4300 4750 3800
Wire Wire Line
	5000 4500 4900 4500
Wire Wire Line
	4900 4500 4900 4100
Wire Wire Line
	4900 4500 4900 4600
Connection ~ 4900 4500
Wire Wire Line
	5000 4600 4900 4600
Connection ~ 4900 4600
Wire Wire Line
	4900 4600 4900 4800
$Comp
L power:GND #PWR0111
U 1 1 63351480
P 4900 4800
AR Path="/63351480" Ref="#PWR0111"  Part="1" 
AR Path="/632F1F43/63351480" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63351480" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 4900 4550 50  0001 C CNN
F 1 "GND" H 4905 4627 50  0000 C CNN
F 2 "" H 4900 4800 50  0001 C CNN
F 3 "" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3600 4900 3600
Wire Wire Line
	5000 3700 4900 3700
Connection ~ 4900 3700
Wire Wire Line
	4900 3700 4900 3600
Wire Wire Line
	5000 3800 4900 3800
Connection ~ 4900 3800
Wire Wire Line
	4900 3800 4900 3700
Wire Wire Line
	5000 3900 4900 3900
Connection ~ 4900 3900
Wire Wire Line
	4900 3900 4900 3800
Wire Wire Line
	5000 4000 4900 4000
Connection ~ 4900 4000
Wire Wire Line
	4900 4000 4900 3900
Wire Wire Line
	5000 4100 4900 4100
Connection ~ 4900 4100
Wire Wire Line
	4900 4100 4900 4000
Entry Wire Line
	4750 2700 4850 2800
Entry Wire Line
	4750 2800 4850 2900
Entry Wire Line
	4750 2900 4850 3000
Entry Wire Line
	4750 3000 4850 3100
Entry Wire Line
	4750 3100 4850 3200
Entry Wire Line
	4750 3200 4850 3300
Entry Wire Line
	4750 3300 4850 3400
Entry Wire Line
	4750 3400 4850 3500
$Comp
L power:+5V #PWR0112
U 1 1 633514A3
P 4750 3800
AR Path="/633514A3" Ref="#PWR0112"  Part="1" 
AR Path="/632F1F43/633514A3" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/633514A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 4750 3650 50  0001 C CNN
F 1 "+5V" H 4765 3973 50  0000 C CNN
F 2 "" H 4750 3800 50  0001 C CNN
F 3 "" H 4750 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
Text Label 2400 2350 0    50   ~ 0
IA0
Text Label 2400 2450 0    50   ~ 0
IA1
Text Label 2400 2550 0    50   ~ 0
IA2
Text Label 2400 2650 0    50   ~ 0
IA3
Text Label 4100 2350 0    50   ~ 0
IA4
Text Label 4100 2450 0    50   ~ 0
IA5
Text Label 4100 2550 0    50   ~ 0
IA6
Text Label 4100 2650 0    50   ~ 0
IA7
Text Label 4850 2800 0    50   ~ 0
IA0
Text Label 4850 2900 0    50   ~ 0
IA1
Text Label 4850 3000 0    50   ~ 0
IA2
Text Label 4850 3100 0    50   ~ 0
IA3
Text Label 4850 3200 0    50   ~ 0
IA4
Text Label 4850 3300 0    50   ~ 0
IA5
Text Label 4850 3400 0    50   ~ 0
IA6
Text Label 4850 3500 0    50   ~ 0
IA7
Text Notes 5250 2300 0    50   ~ 0
Instruction\nEPROM
Wire Wire Line
	2800 2950 3050 2950
Connection ~ 3050 2950
Wire Wire Line
	3050 2950 3100 2950
Wire Wire Line
	4850 2800 5000 2800
Wire Wire Line
	4850 2900 5000 2900
Wire Wire Line
	4850 3000 5000 3000
Wire Wire Line
	4850 3100 5000 3100
Wire Wire Line
	4850 3200 5000 3200
Wire Wire Line
	4850 3300 5000 3300
Wire Wire Line
	4850 3400 5000 3400
Wire Wire Line
	4850 3500 5000 3500
Entry Bus Bus
	4750 1900 4650 1800
Wire Wire Line
	10400 5450 2650 5450
Wire Wire Line
	1250 5300 2800 5300
Wire Wire Line
	8600 5300 8600 4100
NoConn ~ 4100 2850
Wire Wire Line
	5800 3500 6450 3500
$Comp
L 74xx:74LS32 U1
U 3 1 63E3B12B
P 7500 4000
F 0 "U1" H 7500 4325 50  0000 C CNN
F 1 "74LS32" H 7500 4234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7500 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7500 4000 50  0001 C CNN
	3    7500 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U1
U 4 1 63E3B1AE
P 8200 4100
F 0 "U1" H 8200 4425 50  0000 C CNN
F 1 "74LS32" H 8200 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8200 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8200 4100 50  0001 C CNN
	4    8200 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U1
U 5 1 63E3B20B
P 2150 6900
F 0 "U1" H 2380 6946 50  0000 L CNN
F 1 "74LS32" H 2380 6855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2150 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2150 6900 50  0001 C CNN
	5    2150 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH1
U 1 1 634D4622
P 6200 6650
F 0 "MH1" H 6300 6696 50  0000 L CNN
F 1 "MountingHole" H 6300 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 6650 50  0001 C CNN
F 3 "~" H 6200 6650 50  0001 C CNN
	1    6200 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 634D46A2
P 6200 6950
F 0 "MH2" H 6300 6996 50  0000 L CNN
F 1 "MountingHole" H 6300 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 6950 50  0001 C CNN
F 3 "~" H 6200 6950 50  0001 C CNN
	1    6200 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 634D470E
P 6200 7250
F 0 "MH3" H 6300 7296 50  0000 L CNN
F 1 "MountingHole" H 6300 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 7250 50  0001 C CNN
F 3 "~" H 6200 7250 50  0001 C CNN
	1    6200 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 634D4778
P 6200 7550
F 0 "MH4" H 6300 7596 50  0000 L CNN
F 1 "MountingHole" H 6300 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 7550 50  0001 C CNN
F 3 "~" H 6200 7550 50  0001 C CNN
	1    6200 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 681C43A0
P 3600 6900
AR Path="/5F2B3F8A/681C43A0" Ref="C?"  Part="1" 
AR Path="/5F2B505F/681C43A0" Ref="C?"  Part="1" 
AR Path="/6BB77A68/681C43A0" Ref="C1"  Part="1" 
AR Path="/64132440/6413313E/681C43A0" Ref="C?"  Part="1" 
AR Path="/681C43A0" Ref="C1"  Part="1" 
F 0 "C1" H 3715 6946 50  0000 L CNN
F 1 ".01uF" H 3715 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3638 6750 50  0001 C CNN
F 3 "~" H 3600 6900 50  0001 C CNN
	1    3600 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 681C4400
P 4100 6900
AR Path="/5F2B3F8A/681C4400" Ref="C?"  Part="1" 
AR Path="/5F2B505F/681C4400" Ref="C?"  Part="1" 
AR Path="/6BB77A68/681C4400" Ref="C2"  Part="1" 
AR Path="/64132440/6413313E/681C4400" Ref="C?"  Part="1" 
AR Path="/681C4400" Ref="C2"  Part="1" 
F 0 "C2" H 4215 6946 50  0000 L CNN
F 1 ".01uF" H 4215 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4138 6750 50  0001 C CNN
F 3 "~" H 4100 6900 50  0001 C CNN
	1    4100 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 681C443E
P 4550 6900
AR Path="/5F2B3F8A/681C443E" Ref="C?"  Part="1" 
AR Path="/5F2B505F/681C443E" Ref="C?"  Part="1" 
AR Path="/6BB77A68/681C443E" Ref="C3"  Part="1" 
AR Path="/64132440/6413313E/681C443E" Ref="C?"  Part="1" 
AR Path="/681C443E" Ref="C3"  Part="1" 
F 0 "C3" H 4665 6946 50  0000 L CNN
F 1 ".01uF" H 4665 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4588 6750 50  0001 C CNN
F 3 "~" H 4550 6900 50  0001 C CNN
	1    4550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 714E8297
P 5000 6900
AR Path="/5F2B3F8A/714E8297" Ref="C?"  Part="1" 
AR Path="/5F2B505F/714E8297" Ref="C?"  Part="1" 
AR Path="/6BB77A68/714E8297" Ref="C4"  Part="1" 
AR Path="/64132440/6413313E/714E8297" Ref="C?"  Part="1" 
AR Path="/714E8297" Ref="C4"  Part="1" 
F 0 "C4" H 5115 6946 50  0000 L CNN
F 1 ".01uF" H 5115 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5038 6750 50  0001 C CNN
F 3 "~" H 5000 6900 50  0001 C CNN
	1    5000 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 714E8299
P 5450 6900
AR Path="/5F2B3F8A/714E8299" Ref="C?"  Part="1" 
AR Path="/5F2B505F/714E8299" Ref="C?"  Part="1" 
AR Path="/6BB77A68/714E8299" Ref="C5"  Part="1" 
AR Path="/64132440/6413313E/714E8299" Ref="C?"  Part="1" 
AR Path="/714E8299" Ref="C5"  Part="1" 
F 0 "C5" H 5565 6946 50  0000 L CNN
F 1 ".01uF" H 5565 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5488 6750 50  0001 C CNN
F 3 "~" H 5450 6900 50  0001 C CNN
	1    5450 6900
	1    0    0    -1  
$EndComp
NoConn ~ 1550 6900
NoConn ~ 1550 7450
NoConn ~ 1550 6350
Wire Wire Line
	950  7550 850  7550
Wire Wire Line
	850  6800 950  6800
Wire Wire Line
	850  7000 950  7000
Connection ~ 850  6800
Wire Wire Line
	850  7350 950  7350
Connection ~ 850  7350
Wire Wire Line
	850  7350 850  7000
$Comp
L power:+5V #PWR0117
U 1 1 63EB223B
P 850 6150
AR Path="/63EB223B" Ref="#PWR0117"  Part="1" 
AR Path="/632F1F43/63EB223B" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63EB223B" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/63EB223B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 850 6000 50  0001 C CNN
F 1 "+5V" H 865 6323 50  0000 C CNN
F 2 "" H 850 6150 50  0001 C CNN
F 3 "" H 850 6150 50  0001 C CNN
	1    850  6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 6350 3600 6750
Wire Wire Line
	4100 6750 4100 6350
Wire Wire Line
	4550 6750 4550 6350
Wire Wire Line
	5000 6750 5000 6350
Wire Wire Line
	5450 6750 5450 6350
Connection ~ 3850 6350
Wire Wire Line
	3850 6350 3600 6350
Wire Wire Line
	3600 7450 3600 7050
Wire Wire Line
	4100 7050 4100 7450
Wire Wire Line
	4550 7050 4550 7450
Wire Wire Line
	5000 7050 5000 7450
Wire Wire Line
	5450 7050 5450 7450
Connection ~ 3850 7450
Wire Wire Line
	3850 7450 3600 7450
$Comp
L power:GND #PWR0118
U 1 1 63F3877C
P 3850 7500
AR Path="/63F3877C" Ref="#PWR0118"  Part="1" 
AR Path="/632F1F43/63F3877C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63F3877C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 3850 7250 50  0001 C CNN
F 1 "GND" H 3855 7327 50  0000 C CNN
F 2 "" H 3850 7500 50  0001 C CNN
F 3 "" H 3850 7500 50  0001 C CNN
	1    3850 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7450 3850 7500
$Comp
L power:+5V #PWR?
U 1 1 63F401EA
P 3850 6300
AR Path="/6841E790/63F401EA" Ref="#PWR?"  Part="1" 
AR Path="/63F401EA" Ref="#PWR0119"  Part="1" 
AR Path="/632F1F43/63F401EA" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63F401EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 3850 6150 50  0001 C CNN
F 1 "+5V" H 3865 6473 50  0000 C CNN
F 2 "" H 3850 6300 50  0001 C CNN
F 3 "" H 3850 6300 50  0001 C CNN
	1    3850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6350 3850 6300
Connection ~ 850  7000
Wire Wire Line
	850  7000 850  6800
Wire Wire Line
	950  6250 850  6250
Connection ~ 850  6250
Wire Wire Line
	850  6250 850  6450
Wire Wire Line
	950  6450 850  6450
Connection ~ 850  6450
Wire Wire Line
	850  6450 850  6800
Text Notes 6400 2700 0    50   ~ 0
Reset: 10001101b (0x4d, 141d)\nThis is the final value in a packet. At this point,\nthe counter will reset and start the break again.\n\nIts' chosen because it's a value which is unlikely\nto be used in a packet, i.e. sample reset and latch \nany dimmer and shift load while enabled while \ntransmitting a break.\n
$Comp
L 74xx:74LS32 U1
U 2 1 63871246
P 6800 5050
AR Path="/63871246" Ref="U1"  Part="2" 
AR Path="/632F1F43/63871246" Ref="U?"  Part="2" 
AR Path="/63267F40/63871246" Ref="U?"  Part="2" 
F 0 "U1" H 6800 4733 50  0000 C CNN
F 1 "74LS32" H 6800 4824 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6800 5050 50  0001 C CNN
	2    6800 5050
	1    0    0    1   
$EndComp
Text Notes 7600 4550 2    50   ~ 0
Reset
Wire Wire Line
	6500 3800 6450 3800
Wire Wire Line
	7100 4500 7150 4500
Wire Wire Line
	7200 4100 7150 4100
Wire Wire Line
	7200 3900 7100 3900
Wire Wire Line
	7150 4100 7150 4500
Wire Wire Line
	6500 4000 6350 4000
Wire Wire Line
	6500 4400 6250 4400
Wire Wire Line
	5800 2900 5950 2900
Wire Wire Line
	5800 3400 6250 3400
Wire Wire Line
	6450 3800 6450 3500
$Comp
L 74xx:74LS00 U2
U 1 1 639D9D08
P 6800 3900
F 0 "U2" H 6800 4225 50  0000 C CNN
F 1 "74LS00" H 6800 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6800 3900 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U2
U 3 1 639D9E78
P 1250 6900
F 0 "U2" H 1250 7225 50  0000 C CNN
F 1 "74LS00" H 1250 7134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1250 6900 50  0001 C CNN
	3    1250 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3300 6150 3300
Wire Wire Line
	5800 3200 6050 3200
Wire Wire Line
	6150 4600 6500 4600
$Comp
L 74xx:74LS32 U1
U 1 1 639F9CBD
P 6800 4500
F 0 "U1" H 6800 4825 50  0000 C CNN
F 1 "74LS32" H 6800 4734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6800 4500 50  0001 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5150 6500 5150
Wire Wire Line
	5950 5150 5950 2900
Wire Wire Line
	6050 3200 6050 4950
Wire Wire Line
	6050 4950 6500 4950
Wire Wire Line
	5800 2800 6350 2800
Wire Wire Line
	6150 4600 6150 3300
Wire Wire Line
	6250 3400 6250 4400
Wire Wire Line
	7100 5050 7850 5050
Wire Wire Line
	7850 5050 7850 4200
Wire Wire Line
	7850 4200 7900 4200
Wire Wire Line
	7800 4000 7900 4000
Wire Wire Line
	8500 4100 8600 4100
Wire Wire Line
	5800 3000 9400 3000
Wire Wire Line
	5800 3100 9400 3100
Wire Wire Line
	5950 2900 9400 2900
Wire Wire Line
	6350 2800 9400 2800
Wire Wire Line
	6150 3300 9400 3300
Wire Wire Line
	6250 3400 9400 3400
$Comp
L 74xx:74LS00 U2
U 2 1 63AF0D80
P 1250 6350
F 0 "U2" H 1250 6675 50  0000 C CNN
F 1 "74LS00" H 1250 6584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1250 6350 50  0001 C CNN
	2    1250 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U2
U 4 1 639D9EE1
P 1250 7450
F 0 "U2" H 1250 7775 50  0000 C CNN
F 1 "74LS00" H 1250 7684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1250 7450 50  0001 C CNN
	4    1250 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7350 850  7550
Wire Wire Line
	850  6150 850  6250
$Comp
L 74xx:74LS00 U2
U 5 1 63AF9174
P 2950 6900
F 0 "U2" H 3180 6946 50  0000 L CNN
F 1 "74LS00" H 3180 6855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2950 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2950 6900 50  0001 C CNN
	5    2950 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 64610834
P 10000 4400
AR Path="/64610834" Ref="#PWR0113"  Part="1" 
AR Path="/632F1F43/64610834" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64610834" Ref="#PWR?"  Part="1" 
AR Path="/646018E8/64610834" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 10000 4150 50  0001 C CNN
F 1 "GND" H 10150 4300 50  0000 C CNN
F 2 "" H 10000 4400 50  0001 C CNN
F 3 "" H 10000 4400 50  0001 C CNN
	1    10000 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 4400 10000 4300
Wire Wire Line
	10000 4200 9900 4200
Wire Wire Line
	9900 4300 10000 4300
Connection ~ 10000 4300
Wire Wire Line
	10000 4300 10000 4200
$Comp
L power:+5V #PWR0114
U 1 1 6461083F
P 9300 2300
AR Path="/6461083F" Ref="#PWR0114"  Part="1" 
AR Path="/632F1F43/6461083F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6461083F" Ref="#PWR?"  Part="1" 
AR Path="/646018E8/6461083F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 9300 2150 50  0001 C CNN
F 1 "+5V" H 9315 2473 50  0000 C CNN
F 2 "" H 9300 2300 50  0001 C CNN
F 3 "" H 9300 2300 50  0001 C CNN
	1    9300 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 2500 9300 2500
Wire Wire Line
	9300 2500 9300 2400
Wire Wire Line
	9400 2400 9300 2400
Connection ~ 9300 2400
Wire Wire Line
	9300 2400 9300 2300
$Comp
L power:+5V #PWR0115
U 1 1 6461084A
P 10000 2300
AR Path="/6461084A" Ref="#PWR0115"  Part="1" 
AR Path="/632F1F43/6461084A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6461084A" Ref="#PWR?"  Part="1" 
AR Path="/646018E8/6461084A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 10000 2150 50  0001 C CNN
F 1 "+5V" H 10015 2473 50  0000 C CNN
F 2 "" H 10000 2300 50  0001 C CNN
F 3 "" H 10000 2300 50  0001 C CNN
	1    10000 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 2500 10000 2500
Wire Wire Line
	10000 2500 10000 2400
Wire Wire Line
	9900 2400 10000 2400
Connection ~ 10000 2400
Wire Wire Line
	10000 2400 10000 2300
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 6461086D
P 9700 3300
AR Path="/63267F40/6461086D" Ref="J?"  Part="1" 
AR Path="/6461086D" Ref="J1"  Part="1" 
AR Path="/646018E8/6461086D" Ref="J?"  Part="1" 
F 0 "J1" H 9750 4417 50  0000 C CNN
F 1 "Expansion" H 9750 4326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9700 3300 50  0001 C CNN
F 3 "~" H 9700 3300 50  0001 C CNN
	1    9700 3300
	-1   0    0    -1  
$EndComp
Text Label 9400 2800 2    50   ~ 0
SAMPLE_LATCH
Text Label 9400 2900 2    50   ~ 0
~SAMPLE_RESET
Text Label 9400 3000 2    50   ~ 0
SAMPLE_SEL0
Text Label 9400 3100 2    50   ~ 0
SAMPLE_SEL1
Text Label 9400 3200 2    50   ~ 0
~SHIFT_LOAD
Text Label 9400 3300 2    50   ~ 0
~SHIFT_ENABLE
Text Label 9400 3400 2    50   ~ 0
SHIFT_TRANSMIT
Text Label 9400 3800 2    50   ~ 0
DATA_FIXED
Text Label 10200 3800 2    50   ~ 0
CLK_TX
Text Label 9400 3600 2    50   ~ 0
~FRAME_RESET
NoConn ~ 9400 4000
NoConn ~ 9400 4100
Wire Wire Line
	8600 4100 8600 3600
Connection ~ 8600 4100
Wire Wire Line
	9900 3800 10400 3800
Wire Wire Line
	10400 3800 10400 5450
NoConn ~ 9900 2600
NoConn ~ 9900 2700
NoConn ~ 9900 2800
NoConn ~ 9900 2900
NoConn ~ 9900 3000
NoConn ~ 9900 3100
NoConn ~ 9900 3200
NoConn ~ 9900 3300
NoConn ~ 9900 3400
NoConn ~ 9900 3500
NoConn ~ 9900 3600
NoConn ~ 9900 3700
NoConn ~ 9900 3900
NoConn ~ 9400 3700
NoConn ~ 9400 3900
NoConn ~ 9400 3500
Wire Wire Line
	6350 2800 6350 4000
Connection ~ 6350 2800
Connection ~ 5950 2900
Connection ~ 6150 3300
Connection ~ 6250 3400
Wire Wire Line
	6050 3200 9400 3200
Connection ~ 6050 3200
Wire Wire Line
	6450 3500 8800 3500
Wire Wire Line
	8800 3500 8800 3800
Wire Wire Line
	8800 3800 9400 3800
Connection ~ 6450 3500
Wire Wire Line
	8600 3600 9400 3600
Wire Wire Line
	1100 3150 1100 5450
Wire Wire Line
	1250 3350 1250 5300
Connection ~ 2800 5300
Wire Wire Line
	2800 5300 8600 5300
Connection ~ 2650 5450
Wire Wire Line
	2650 5450 1100 5450
NoConn ~ 9400 2600
NoConn ~ 9400 2700
Wire Wire Line
	3850 6350 4100 6350
Wire Wire Line
	3850 7450 4100 7450
Connection ~ 3600 6350
Connection ~ 3600 7450
Connection ~ 4100 6350
Wire Wire Line
	4100 6350 4550 6350
Connection ~ 4100 7450
Wire Wire Line
	4100 7450 4550 7450
Connection ~ 4550 6350
Wire Wire Line
	4550 6350 5000 6350
Connection ~ 4550 7450
Wire Wire Line
	4550 7450 5000 7450
Connection ~ 5000 6350
Wire Wire Line
	5000 6350 5450 6350
Connection ~ 5000 7450
Wire Wire Line
	5000 7450 5450 7450
Wire Wire Line
	2150 6350 2950 6350
Wire Wire Line
	2150 7450 2950 7450
Wire Wire Line
	2150 6350 2150 6400
Wire Wire Line
	2950 6400 2950 6350
Connection ~ 2950 6350
Wire Wire Line
	2950 6350 3600 6350
Wire Wire Line
	2150 7400 2150 7450
Wire Wire Line
	2950 7400 2950 7450
Connection ~ 2950 7450
Wire Wire Line
	2950 7450 3600 7450
Wire Wire Line
	9900 4000 10000 4000
Wire Wire Line
	10000 4000 10000 4100
Connection ~ 10000 4200
Wire Wire Line
	9900 4100 10000 4100
Connection ~ 10000 4100
Wire Wire Line
	10000 4100 10000 4200
NoConn ~ 9400 4200
NoConn ~ 9400 4300
Wire Bus Line
	2750 1800 4650 1800
Wire Bus Line
	2650 1900 2650 2550
Wire Bus Line
	4350 1900 4350 2550
Wire Bus Line
	4750 1900 4750 3400
$EndSCHEMATC
