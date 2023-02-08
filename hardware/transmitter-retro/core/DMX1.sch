EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L 74xx:74LS04 U?
U 1 1 639E2932
P 1750 2200
AR Path="/63268613/639E2932" Ref="U?"  Part="1" 
AR Path="/639E280B/639E2932" Ref="U?"  Part="1" 
F 0 "U?" H 1750 2517 50  0000 C CNN
F 1 "74LS04" H 1750 2426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1750 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1750 2200 50  0001 C CNN
	1    1750 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 639E2939
P 2550 2200
AR Path="/63268613/639E2939" Ref="U?"  Part="2" 
AR Path="/639E280B/639E2939" Ref="U?"  Part="2" 
F 0 "U?" H 2550 2517 50  0000 C CNN
F 1 "74LS04" H 2550 2426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2550 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2550 2200 50  0001 C CNN
	2    2550 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 639E2940
P 1700 1750
AR Path="/639E2940" Ref="R?"  Part="1" 
AR Path="/63268613/639E2940" Ref="R?"  Part="1" 
AR Path="/639E280B/639E2940" Ref="R?"  Part="1" 
F 0 "R?" V 1800 1750 50  0000 C CNN
F 1 "2.2k" V 1900 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1740 1740 50  0001 C CNN
F 3 "~" H 1700 1750 50  0001 C CNN
	1    1700 1750
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 639E2947
P 2500 1750
AR Path="/639E2947" Ref="R?"  Part="1" 
AR Path="/63268613/639E2947" Ref="R?"  Part="1" 
AR Path="/639E280B/639E2947" Ref="R?"  Part="1" 
F 0 "R?" V 2600 1750 50  0000 C CNN
F 1 "2.2k" V 2700 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2540 1740 50  0001 C CNN
F 3 "~" H 2500 1750 50  0001 C CNN
	1    2500 1750
	0    1    -1   0   
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 639E294E
P 2150 1450
AR Path="/63268613/639E294E" Ref="Y?"  Part="1" 
AR Path="/639E280B/639E294E" Ref="Y?"  Part="1" 
F 0 "Y?" H 2150 1718 50  0000 C CNN
F 1 "4Mz" H 2150 1627 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 2150 1450 50  0001 C CNN
F 3 "~" H 2150 1450 50  0001 C CNN
	1    2150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2200 1350 2200
Wire Wire Line
	1350 2200 1350 1750
Wire Wire Line
	1350 1450 2000 1450
Wire Wire Line
	1550 1750 1350 1750
Connection ~ 1350 1750
Wire Wire Line
	1350 1750 1350 1450
Wire Wire Line
	2050 2200 2150 2200
Wire Wire Line
	2150 2200 2150 1750
Wire Wire Line
	1850 1750 2150 1750
Connection ~ 2150 2200
Wire Wire Line
	2150 2200 2250 2200
Connection ~ 2150 1750
Wire Wire Line
	2150 1750 2350 1750
Wire Wire Line
	2300 1450 2950 1450
Wire Wire Line
	2950 1450 2950 1750
Wire Wire Line
	2950 2200 2850 2200
Wire Wire Line
	2650 1750 2950 1750
Connection ~ 2950 1750
Wire Wire Line
	2950 1750 2950 2200
Text Notes 2350 1400 0    50   ~ 0
DMX512 Clock\n4Mhz /16 = 250k
Wire Wire Line
	2950 1750 3100 1750
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 639E296A
P 3250 1750
AR Path="/63268613/639E296A" Ref="JP?"  Part="1" 
AR Path="/639E280B/639E296A" Ref="JP?"  Part="1" 
F 0 "JP?" H 3250 1955 50  0000 C CNN
F 1 "CLK_ALT_DMX" H 3250 1864 50  0000 C CNN
F 2 "" H 3250 1750 50  0001 C CNN
F 3 "~" H 3250 1750 50  0001 C CNN
	1    3250 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
