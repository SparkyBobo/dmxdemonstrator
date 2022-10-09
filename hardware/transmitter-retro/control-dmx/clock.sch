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
	4300 4200 4550 4200
Text HLabel 4300 4000 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel 4300 4200 0    50   Input ~ 0
~CLK_SLOW_IN
Wire Wire Line
	4550 4000 4300 4000
$Comp
L 74xx:74LS32 U?
U 1 1 64A69F14
P 4850 4100
AR Path="/647EB71E/64A69F14" Ref="U?"  Part="1" 
AR Path="/64A69F14" Ref="U?"  Part="1" 
AR Path="/649D0F81/64A69F14" Ref="U?"  Part="1" 
F 0 "U?" H 4850 4425 50  0000 C CNN
F 1 "74LS32" H 4850 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4850 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4850 4100 50  0001 C CNN
	1    4850 4100
	1    0    0    -1  
$EndComp
Text Notes 3850 3700 0    50   ~ 0
CLK_FAST and CLK_SLOW low\nmeans run at DMX512 speed,\nsee clock subcurcuit in core.
$Comp
L 74xx:74LS04 U?
U 1 1 64A69F1C
P 6000 3950
AR Path="/63268613/64A69F1C" Ref="U?"  Part="1" 
AR Path="/639E280B/64A69F1C" Ref="U?"  Part="1" 
AR Path="/647EB6DA/64A69F1C" Ref="U?"  Part="1" 
AR Path="/649D0F81/64A69F1C" Ref="U?"  Part="1" 
F 0 "U?" H 6000 4267 50  0000 C CNN
F 1 "74LS04" H 6000 4176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6000 3950 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 64A69F23
P 6800 3950
AR Path="/63268613/64A69F23" Ref="U?"  Part="2" 
AR Path="/639E280B/64A69F23" Ref="U?"  Part="2" 
AR Path="/647EB6DA/64A69F23" Ref="U?"  Part="2" 
AR Path="/649D0F81/64A69F23" Ref="U?"  Part="2" 
F 0 "U?" H 6800 4267 50  0000 C CNN
F 1 "74LS04" H 6800 4176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6800 3950 50  0001 C CNN
	2    6800 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 64A69F2A
P 5950 3500
AR Path="/64A69F2A" Ref="R?"  Part="1" 
AR Path="/63268613/64A69F2A" Ref="R?"  Part="1" 
AR Path="/639E280B/64A69F2A" Ref="R?"  Part="1" 
AR Path="/647EB6DA/64A69F2A" Ref="R?"  Part="1" 
AR Path="/649D0F81/64A69F2A" Ref="R?"  Part="1" 
F 0 "R?" V 6050 3500 50  0000 C CNN
F 1 "2.2k" V 6150 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5990 3490 50  0001 C CNN
F 3 "~" H 5950 3500 50  0001 C CNN
	1    5950 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 64A69F31
P 6750 3500
AR Path="/64A69F31" Ref="R?"  Part="1" 
AR Path="/63268613/64A69F31" Ref="R?"  Part="1" 
AR Path="/639E280B/64A69F31" Ref="R?"  Part="1" 
AR Path="/647EB6DA/64A69F31" Ref="R?"  Part="1" 
AR Path="/649D0F81/64A69F31" Ref="R?"  Part="1" 
F 0 "R?" V 6850 3500 50  0000 C CNN
F 1 "2.2k" V 6950 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6790 3490 50  0001 C CNN
F 3 "~" H 6750 3500 50  0001 C CNN
	1    6750 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 64A69F38
P 6400 3200
AR Path="/63268613/64A69F38" Ref="Y?"  Part="1" 
AR Path="/639E280B/64A69F38" Ref="Y?"  Part="1" 
AR Path="/647EB6DA/64A69F38" Ref="Y?"  Part="1" 
AR Path="/649D0F81/64A69F38" Ref="Y?"  Part="1" 
F 0 "Y?" H 6400 3468 50  0000 C CNN
F 1 "4Mz" H 6400 3377 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 6400 3200 50  0001 C CNN
F 3 "~" H 6400 3200 50  0001 C CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3950 5600 3950
Wire Wire Line
	5600 3950 5600 3500
Wire Wire Line
	5600 3200 6250 3200
Wire Wire Line
	5800 3500 5600 3500
Connection ~ 5600 3500
Wire Wire Line
	5600 3500 5600 3200
Wire Wire Line
	6300 3950 6400 3950
Wire Wire Line
	6400 3950 6400 3500
Wire Wire Line
	6100 3500 6400 3500
Connection ~ 6400 3950
Wire Wire Line
	6400 3950 6500 3950
Connection ~ 6400 3500
Wire Wire Line
	6400 3500 6600 3500
Wire Wire Line
	6550 3200 7200 3200
Wire Wire Line
	7200 3200 7200 3500
Wire Wire Line
	7200 3950 7100 3950
Wire Wire Line
	6900 3500 7200 3500
Connection ~ 7200 3500
Wire Wire Line
	7200 3500 7200 3950
Text Notes 6600 3150 0    50   ~ 0
DMX512 Clock\n4Mhz /16 = 250k
Text HLabel 7550 3950 2    50   Input ~ 0
CLK_EXT_OUT
Wire Wire Line
	7200 3950 7550 3950
Connection ~ 7200 3950
$EndSCHEMATC
