EESchema Schematic File Version 4
LIBS:control-dmx-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3850 3950 4100 3950
Text HLabel 3850 3750 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel 3850 3950 0    50   Input ~ 0
~CLK_SLOW_IN
Wire Wire Line
	4100 3750 3850 3750
$Comp
L 74xx:74LS32 U?
U 1 1 64A69F14
P 4400 3850
AR Path="/647EB71E/64A69F14" Ref="U?"  Part="1" 
AR Path="/64A69F14" Ref="U?"  Part="1" 
AR Path="/649D0F81/64A69F14" Ref="U2"  Part="1" 
F 0 "U2" H 4400 4175 50  0000 C CNN
F 1 "74LS32" H 4400 4084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4400 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4400 3850 50  0001 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
Text Notes 3400 3450 0    50   ~ 0
CLK_FAST and CLK_SLOW low\nmeans run at DMX512 speed,\nsee clock subcurcuit in core.
$Comp
L Device:R_US R?
U 1 1 64A69F2A
P 6400 3450
AR Path="/64A69F2A" Ref="R?"  Part="1" 
AR Path="/63268613/64A69F2A" Ref="R?"  Part="1" 
AR Path="/639E280B/64A69F2A" Ref="R?"  Part="1" 
AR Path="/647EB6DA/64A69F2A" Ref="R?"  Part="1" 
AR Path="/649D0F81/64A69F2A" Ref="R2"  Part="1" 
F 0 "R2" V 6500 3450 50  0000 C CNN
F 1 "2.2k" V 6600 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6440 3440 50  0001 C CNN
F 3 "~" H 6400 3450 50  0001 C CNN
	1    6400 3450
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 64A69F31
P 7200 3450
AR Path="/64A69F31" Ref="R?"  Part="1" 
AR Path="/63268613/64A69F31" Ref="R?"  Part="1" 
AR Path="/639E280B/64A69F31" Ref="R?"  Part="1" 
AR Path="/647EB6DA/64A69F31" Ref="R?"  Part="1" 
AR Path="/649D0F81/64A69F31" Ref="R3"  Part="1" 
F 0 "R3" V 7300 3450 50  0000 C CNN
F 1 "2.2k" V 7400 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7240 3440 50  0001 C CNN
F 3 "~" H 7200 3450 50  0001 C CNN
	1    7200 3450
	0    1    -1   0   
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 64A69F38
P 6850 3150
AR Path="/63268613/64A69F38" Ref="Y?"  Part="1" 
AR Path="/639E280B/64A69F38" Ref="Y?"  Part="1" 
AR Path="/647EB6DA/64A69F38" Ref="Y?"  Part="1" 
AR Path="/649D0F81/64A69F38" Ref="Y1"  Part="1" 
F 0 "Y1" H 6850 3418 50  0000 C CNN
F 1 "4Mz" H 6850 3327 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 6850 3150 50  0001 C CNN
F 3 "~" H 6850 3150 50  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3150 6700 3150
Wire Wire Line
	6250 3450 6050 3450
Connection ~ 6050 3450
Wire Wire Line
	6050 3450 6050 3150
Wire Wire Line
	6750 3900 6850 3900
Wire Wire Line
	6850 3900 6850 3800
Wire Wire Line
	6550 3450 6850 3450
Connection ~ 6850 3900
Connection ~ 6850 3450
Wire Wire Line
	6850 3450 7050 3450
Wire Wire Line
	7000 3150 7650 3150
Wire Wire Line
	7650 3150 7650 3450
Wire Wire Line
	7650 3900 7550 3900
Wire Wire Line
	7350 3450 7650 3450
Connection ~ 7650 3450
Wire Wire Line
	7650 3450 7650 3900
Text Notes 7050 3100 0    50   ~ 0
DMX512 Clock\n4Mhz /16 = 250k
Text HLabel 8000 3900 2    50   Input ~ 0
CLK_EXT_OUT
Wire Wire Line
	7650 3900 8000 3900
Connection ~ 7650 3900
$Comp
L Device:R_US R1
U 1 1 63EA10DD
P 5350 3550
F 0 "R1" H 5418 3596 50  0000 L CNN
F 1 "330" H 5418 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5390 3540 50  0001 C CNN
F 3 "~" H 5350 3550 50  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 63EA11BC
P 5050 3850
F 0 "D1" H 5041 4066 50  0000 C CNN
F 1 "ENABLED" H 5041 3975 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5050 3850 50  0001 C CNN
F 3 "~" H 5050 3850 50  0001 C CNN
	1    5050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3850 4900 3850
Wire Wire Line
	5200 3850 5350 3850
Wire Wire Line
	5350 3850 5350 3700
$Comp
L power:+5V #PWR0117
U 1 1 63EA1872
P 5350 3050
F 0 "#PWR0117" H 5350 2900 50  0001 C CNN
F 1 "+5V" H 5365 3223 50  0000 C CNN
F 2 "" H 5350 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3050 5350 3400
$Comp
L 74xx:74LS00 U1
U 2 1 63EA288B
P 6450 3900
F 0 "U1" H 6450 4225 50  0000 C CNN
F 1 "74LS00" H 6450 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6450 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6450 3900 50  0001 C CNN
	2    6450 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U1
U 3 1 63EA28EA
P 7250 3900
F 0 "U1" H 7250 4225 50  0000 C CNN
F 1 "74LS00" H 7250 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7250 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7250 3900 50  0001 C CNN
	3    7250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3800 6050 3800
Connection ~ 6050 3800
Wire Wire Line
	6050 3800 6050 3450
Wire Wire Line
	6150 4000 6050 4000
Wire Wire Line
	6050 3800 6050 4000
Wire Wire Line
	6850 3900 6850 4000
Wire Wire Line
	6850 4000 6950 4000
Wire Wire Line
	6950 3800 6850 3800
Connection ~ 6850 3800
Wire Wire Line
	6850 3800 6850 3450
$EndSCHEMATC
