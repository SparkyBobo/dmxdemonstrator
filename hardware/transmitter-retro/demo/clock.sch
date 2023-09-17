EESchema Schematic File Version 4
LIBS:demo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "DMX Demonstrator - Transmitter-Retro Demo (DMX-TX4)"
Date "2023-08-22"
Rev "1.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Device:R_US R?
U 1 1 632F2350
P 5700 2900
AR Path="/632F2350" Ref="R?"  Part="1" 
AR Path="/63268613/632F2350" Ref="R5"  Part="1" 
AR Path="/64289A4A/632F2350" Ref="R?"  Part="1" 
F 0 "R5" H 5768 2946 50  0000 L CNN
F 1 "10k" H 5768 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5740 2890 50  0001 C CNN
F 3 "~" H 5700 2900 50  0001 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632F2357
P 4250 3450
AR Path="/632F2357" Ref="C?"  Part="1" 
AR Path="/63268613/632F2357" Ref="C14"  Part="1" 
AR Path="/64289A4A/632F2357" Ref="C?"  Part="1" 
F 0 "C14" H 4342 3496 50  0000 L CNN
F 1 "0.1uF" H 4342 3405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4250 3450 50  0001 C CNN
F 3 "~" H 4250 3450 50  0001 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 632F235E
P 5700 2350
AR Path="/632F235E" Ref="R?"  Part="1" 
AR Path="/63268613/632F235E" Ref="R4"  Part="1" 
AR Path="/64289A4A/632F235E" Ref="R?"  Part="1" 
F 0 "R4" H 5768 2396 50  0000 L CNN
F 1 "10k" H 5768 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5740 2340 50  0001 C CNN
F 3 "~" H 5700 2350 50  0001 C CNN
	1    5700 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 632F236C
P 4000 2400
AR Path="/632F236C" Ref="R?"  Part="1" 
AR Path="/63268613/632F236C" Ref="R3"  Part="1" 
AR Path="/64289A4A/632F236C" Ref="R?"  Part="1" 
F 0 "R3" H 3850 2450 50  0000 L CNN
F 1 "330" H 3800 2350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4040 2390 50  0001 C CNN
F 3 "~" H 4000 2400 50  0001 C CNN
	1    4000 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632F2373
P 5450 3450
AR Path="/632F2373" Ref="C?"  Part="1" 
AR Path="/63268613/632F2373" Ref="C15"  Part="1" 
AR Path="/64289A4A/632F2373" Ref="C?"  Part="1" 
F 0 "C15" H 5700 3500 50  0000 R CNN
F 1 "0.1uF" H 5750 3400 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5450 3450 50  0001 C CNN
F 3 "~" H 5450 3450 50  0001 C CNN
	1    5450 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632F237A
P 5700 3450
AR Path="/632F237A" Ref="C?"  Part="1" 
AR Path="/63268613/632F237A" Ref="C16"  Part="1" 
AR Path="/64289A4A/632F237A" Ref="C?"  Part="1" 
F 0 "C16" H 5800 3500 50  0000 L CNN
F 1 ".001uF" H 5800 3400 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5700 3450 50  0001 C CNN
F 3 "~" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2700 4300 2700
Connection ~ 4000 2700
Wire Wire Line
	4000 2700 4000 2550
$Comp
L Device:C_Small C?
U 1 1 632F238A
P 4000 3450
AR Path="/632F238A" Ref="C?"  Part="1" 
AR Path="/63268613/632F238A" Ref="C13"  Part="1" 
AR Path="/64289A4A/632F238A" Ref="C?"  Part="1" 
F 0 "C13" H 3900 3500 50  0000 R CNN
F 1 "0.47uF" H 3900 3400 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4000 3450 50  0001 C CNN
F 3 "~" H 4000 3450 50  0001 C CNN
	1    4000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2750 5700 2700
Wire Wire Line
	5700 2700 5400 2700
Connection ~ 5700 2700
Wire Wire Line
	5700 2700 5700 2500
Wire Wire Line
	5700 3350 5700 3100
Wire Wire Line
	5700 3100 5450 3100
Connection ~ 5700 3100
Wire Wire Line
	5700 3100 5700 3050
Wire Wire Line
	5450 3350 5450 3250
Wire Wire Line
	5450 3250 5400 3250
Wire Wire Line
	4300 3250 4250 3250
Wire Wire Line
	4250 3250 4250 3350
Wire Wire Line
	5700 3600 5700 3550
Wire Wire Line
	5450 3550 5450 3600
Wire Wire Line
	5450 3600 5700 3600
Wire Wire Line
	4250 3550 4250 3600
Connection ~ 4250 3600
Wire Wire Line
	4250 3600 4850 3600
$Comp
L power:GND #PWR?
U 1 1 632F23A5
P 4850 3650
AR Path="/632F23A5" Ref="#PWR?"  Part="1" 
AR Path="/63268613/632F23A5" Ref="#PWR0105"  Part="1" 
AR Path="/64289A4A/632F23A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 4850 3400 50  0001 C CNN
F 1 "GND" H 5000 3550 50  0000 C CNN
F 2 "" H 4850 3650 50  0001 C CNN
F 3 "" H 4850 3650 50  0001 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3650 4850 3600
Wire Wire Line
	4850 3600 5450 3600
Connection ~ 5450 3600
Connection ~ 4850 3600
$Comp
L CrazyGiraffe_DMXDemonstrator:556 U?
U 1 1 632F23AF
P 4850 2850
AR Path="/632F23AF" Ref="U?"  Part="1" 
AR Path="/63268613/632F23AF" Ref="U1"  Part="1" 
AR Path="/64289A4A/632F23AF" Ref="U?"  Part="1" 
F 0 "U1" H 5000 3450 45  0000 C CNN
F 1 "556" H 5000 3350 45  0000 C CNN
F 2 "Silicon-Standard:DIP14" H 4850 3350 20  0001 C CNN
F 3 "" H 4850 2850 60  0001 C CNN
	1    4850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3100 5450 3000
Wire Wire Line
	5450 3000 5400 3000
Connection ~ 5450 3100
Wire Wire Line
	5450 3100 5400 3100
Wire Wire Line
	5400 2500 5450 2500
Wire Wire Line
	5450 2500 5450 2150
Wire Wire Line
	5700 2200 5700 2150
Wire Wire Line
	5700 2150 5450 2150
Connection ~ 5450 2150
Wire Wire Line
	4850 3600 4850 3550
Wire Wire Line
	4000 2150 4000 2250
Wire Wire Line
	4000 2150 4250 2150
Wire Wire Line
	4300 2500 4250 2500
Wire Wire Line
	4250 2500 4250 2150
Connection ~ 4250 2150
Wire Wire Line
	4250 2150 4850 2150
Wire Wire Line
	4850 2200 4850 2150
Connection ~ 4850 2150
Wire Wire Line
	4850 2150 5450 2150
Wire Wire Line
	4300 3000 4250 3000
Wire Wire Line
	4250 3000 4250 3100
Connection ~ 4250 3100
Wire Wire Line
	4250 3100 4300 3100
Wire Wire Line
	4300 2600 4150 2600
Wire Wire Line
	4850 2150 4850 2100
Wire Wire Line
	4000 3100 4250 3100
Wire Wire Line
	4000 3100 4000 3350
Text HLabel 2350 3100 0    50   Input ~ 0
SPD_LO
Text HLabel 2350 2700 0    50   Input ~ 0
SPD_MID
Connection ~ 4000 3100
Wire Wire Line
	3700 2700 4000 2700
Text HLabel 2350 5700 0    50   Input ~ 0
~CLK_SLOW_IN
$Comp
L Device:R_US R?
U 1 1 636F48BB
P 3550 2700
AR Path="/636F48BB" Ref="R?"  Part="1" 
AR Path="/63268613/636F48BB" Ref="R2"  Part="1" 
AR Path="/64289A4A/636F48BB" Ref="R?"  Part="1" 
F 0 "R2" V 3750 2700 50  0000 C CNN
F 1 "100" V 3650 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3590 2690 50  0001 C CNN
F 3 "~" H 3550 2700 50  0001 C CNN
	1    3550 2700
	0    1    -1   0   
$EndComp
Wire Wire Line
	4000 3600 4250 3600
Wire Wire Line
	4000 3600 4000 3550
Text HLabel 9050 2500 2    50   Input ~ 0
CLK_SAMPLE_OUT
$Comp
L power:+5V #PWR?
U 1 1 63303BD5
P 7650 2050
AR Path="/6841E790/63303BD5" Ref="#PWR?"  Part="1" 
AR Path="/63303BD5" Ref="#PWR?"  Part="1" 
AR Path="/64132440/63303BD5" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63303BD5" Ref="#PWR0106"  Part="1" 
AR Path="/64289A4A/63303BD5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 7650 1900 50  0001 C CNN
F 1 "+5V" H 7665 2223 50  0000 C CNN
F 2 "" H 7650 2050 50  0001 C CNN
F 3 "" H 7650 2050 50  0001 C CNN
	1    7650 2050
	1    0    0    -1  
$EndComp
Text Notes 7450 5600 0    50   ~ 0
Clock Multiplexer:\nS0=0,S1=0: Off\nS0=1,S1=0: Fast\nS0=0,S1=1: Slow/Adj\nS0=1,S1=1: Step
Wire Wire Line
	6500 2700 7150 2700
Text Notes 5300 3850 0    50   ~ 0
Fast Clock\n  48kHz
Text Notes 3950 3850 0    50   ~ 0
Slow/Adj Clock\n13Hz-3.3kHz
Wire Wire Line
	3050 5000 3050 5150
Text HLabel 2350 5150 0    50   Input ~ 0
~CLK_FAST_IN
Text HLabel 8950 5700 2    50   Input ~ 0
~CLK_S0_OUT
Text HLabel 8950 5150 2    50   Input ~ 0
~CLK_S1_OUT
$Comp
L 74xx:74LS74 U3
U 1 1 6394DF68
P 4350 5800
F 0 "U3" H 4500 6150 50  0000 C CNN
F 1 "74LS74" H 4550 6050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4350 5800 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4350 5800 50  0001 C CNN
	1    4350 5800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U3
U 2 1 6394E00D
P 5500 5250
F 0 "U3" H 5700 5600 50  0000 C CNN
F 1 "74LS74" H 5700 5500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5500 5250 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5500 5250 50  0001 C CNN
	2    5500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5250 5050 5250
Wire Wire Line
	5050 4650 3900 4650
Wire Wire Line
	3900 5800 4050 5800
Wire Wire Line
	4350 6100 4350 6150
Wire Wire Line
	5500 5550 5500 6150
NoConn ~ 4650 5900
NoConn ~ 5800 5350
$Comp
L 74xx:74LS151 U2
U 1 1 64301AD7
P 7650 3100
F 0 "U2" H 7800 3950 50  0000 C CNN
F 1 "74LS151" H 7850 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7650 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 7650 3100 50  0001 C CNN
	1    7650 3100
	1    0    0    -1  
$EndComp
NoConn ~ 8150 2600
Wire Wire Line
	6900 3400 7150 3400
Wire Wire Line
	7000 3500 7150 3500
Wire Wire Line
	7150 3600 7100 3600
Wire Wire Line
	7100 3600 7100 3800
Wire Wire Line
	7100 4150 7650 4150
Wire Wire Line
	7650 4150 7650 4100
Wire Wire Line
	7150 3800 7100 3800
Connection ~ 7100 3800
Wire Wire Line
	7100 3800 7100 4150
Wire Wire Line
	7650 4150 7650 4200
Connection ~ 7650 4150
Wire Wire Line
	6900 5700 6900 3400
Wire Wire Line
	2350 5150 3050 5150
Wire Wire Line
	2350 5700 2750 5700
Wire Wire Line
	2750 5000 2750 5700
$Comp
L Device:R_US R?
U 1 1 63536C51
P 3050 4850
AR Path="/63536C51" Ref="R?"  Part="1" 
AR Path="/63268613/63536C51" Ref="R7"  Part="1" 
AR Path="/64289A4A/63536C51" Ref="R?"  Part="1" 
F 0 "R7" H 2850 4900 50  0000 L CNN
F 1 "10k" H 2850 4800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3090 4840 50  0001 C CNN
F 3 "~" H 3050 4850 50  0001 C CNN
	1    3050 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 63540EEA
P 2750 4850
AR Path="/63540EEA" Ref="R?"  Part="1" 
AR Path="/63268613/63540EEA" Ref="R6"  Part="1" 
AR Path="/64289A4A/63540EEA" Ref="R?"  Part="1" 
F 0 "R6" H 2550 4900 50  0000 L CNN
F 1 "10k" H 2550 4800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2790 4840 50  0001 C CNN
F 3 "~" H 2750 4850 50  0001 C CNN
	1    2750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4700 2750 4650
Wire Wire Line
	2750 4650 3050 4650
Wire Wire Line
	3050 4650 3050 4700
$Comp
L power:+5V #PWR?
U 1 1 6359368B
P 4850 2100
AR Path="/6841E790/6359368B" Ref="#PWR?"  Part="1" 
AR Path="/6359368B" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6359368B" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6359368B" Ref="#PWR0107"  Part="1" 
AR Path="/64289A4A/6359368B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 4850 1950 50  0001 C CNN
F 1 "+5V" H 4865 2273 50  0000 C CNN
F 2 "" H 4850 2100 50  0001 C CNN
F 3 "" H 4850 2100 50  0001 C CNN
	1    4850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 635936D0
P 3050 4600
AR Path="/6841E790/635936D0" Ref="#PWR?"  Part="1" 
AR Path="/635936D0" Ref="#PWR?"  Part="1" 
AR Path="/64132440/635936D0" Ref="#PWR?"  Part="1" 
AR Path="/63268613/635936D0" Ref="#PWR0108"  Part="1" 
AR Path="/64289A4A/635936D0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 3050 4450 50  0001 C CNN
F 1 "+5V" H 3065 4773 50  0000 C CNN
F 2 "" H 3050 4600 50  0001 C CNN
F 3 "" H 3050 4600 50  0001 C CNN
	1    3050 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63593715
P 4350 5500
AR Path="/6841E790/63593715" Ref="#PWR?"  Part="1" 
AR Path="/63593715" Ref="#PWR?"  Part="1" 
AR Path="/64132440/63593715" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63593715" Ref="#PWR0109"  Part="1" 
AR Path="/64289A4A/63593715" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 4350 5350 50  0001 C CNN
F 1 "+5V" H 4365 5673 50  0000 C CNN
F 2 "" H 4350 5500 50  0001 C CNN
F 3 "" H 4350 5500 50  0001 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6359DDFE
P 5500 4950
AR Path="/6841E790/6359DDFE" Ref="#PWR?"  Part="1" 
AR Path="/6359DDFE" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6359DDFE" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6359DDFE" Ref="#PWR0110"  Part="1" 
AR Path="/64289A4A/6359DDFE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 5500 4800 50  0001 C CNN
F 1 "+5V" H 5515 5123 50  0000 C CNN
F 2 "" H 5500 4950 50  0001 C CNN
F 3 "" H 5500 4950 50  0001 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6150 3350 6150
Wire Wire Line
	2750 5700 4050 5700
Wire Wire Line
	7650 2050 7650 2100
Wire Wire Line
	7650 2100 7650 2200
Connection ~ 7650 2100
$Comp
L power:GND #PWR?
U 1 1 637631D3
P 7650 4200
AR Path="/63268641/637631D3" Ref="#PWR?"  Part="1" 
AR Path="/63268613/637631D3" Ref="#PWR0112"  Part="1" 
AR Path="/64289A4A/637631D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 7650 3950 50  0001 C CNN
F 1 "GND" H 7655 4027 50  0000 C CNN
F 2 "" H 7650 4200 50  0001 C CNN
F 3 "" H 7650 4200 50  0001 C CNN
	1    7650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2600 6250 4650
Text Label 7450 5150 0    50   ~ 0
S1
Text Label 7450 5700 0    50   ~ 0
S0
Text Notes 2500 3000 0    50   ~ 0
To external 100k\npotentiometer
Wire Wire Line
	7000 3500 7000 5150
Connection ~ 2750 5700
Text Label 6700 2600 0    50   ~ 0
CLK_FAST
Text Label 6700 2700 0    50   ~ 0
CLK_SLOW
Text Label 6700 2800 0    50   ~ 0
CLK_STEP
Text Label 7000 3500 0    50   ~ 0
S1
Text Label 7000 3400 0    50   ~ 0
S0
Wire Wire Line
	5050 4650 6250 4650
Connection ~ 5050 4650
Text Notes 3900 4600 0    50   ~ 0
S0 and S1 are set on the rising edge\nof CLK_FAST for a clean transition\nbetween speeds on the falling edge\nof CLK_SAMPLE.
Wire Wire Line
	8150 2500 9050 2500
Wire Wire Line
	7100 2500 7150 2500
Text HLabel 2350 1700 0    50   Input ~ 0
~CLK_STEP_IN
Wire Wire Line
	7100 3200 7100 3100
Wire Wire Line
	7100 2100 7650 2100
Connection ~ 7100 2500
Wire Wire Line
	7100 2500 7100 2100
Wire Wire Line
	7150 3200 7100 3200
Wire Wire Line
	7150 3100 7100 3100
Connection ~ 7100 3100
Wire Wire Line
	7100 3100 7100 3000
Wire Wire Line
	7150 3000 7100 3000
Connection ~ 7100 3000
Wire Wire Line
	7100 3000 7100 2900
Wire Wire Line
	7150 2900 7100 2900
Connection ~ 7100 2900
Wire Wire Line
	7100 2900 7100 2500
Wire Wire Line
	2350 1700 6600 1700
Wire Wire Line
	6600 1700 6600 2800
Wire Wire Line
	6600 2800 7150 2800
Wire Wire Line
	4150 2600 4150 1800
Wire Wire Line
	4150 1800 6500 1800
Wire Wire Line
	6500 1800 6500 2700
Wire Wire Line
	5050 4650 5050 5250
Wire Wire Line
	3900 4650 3900 5800
Wire Wire Line
	5200 5150 3050 5150
Connection ~ 3050 5150
Wire Wire Line
	3050 4600 3050 4650
Connection ~ 3050 4650
Wire Wire Line
	5400 2600 6250 2600
Wire Wire Line
	5800 5150 7000 5150
Wire Wire Line
	4650 5700 6900 5700
Connection ~ 7000 5150
Wire Wire Line
	7000 5150 8950 5150
Connection ~ 6900 5700
Wire Wire Line
	6900 5700 8950 5700
Wire Wire Line
	6250 4650 8950 4650
Connection ~ 6250 4650
Text HLabel 8950 4650 2    50   Input ~ 0
CLK_FAST_OUT
Connection ~ 6250 2600
Wire Wire Line
	6250 2600 7150 2600
$Comp
L Device:R_US R?
U 1 1 645E310C
P 3350 4850
AR Path="/645E310C" Ref="R?"  Part="1" 
AR Path="/63268613/645E310C" Ref="R8"  Part="1" 
AR Path="/64289A4A/645E310C" Ref="R?"  Part="1" 
AR Path="/6435FAB4/645E310C" Ref="R?"  Part="1" 
F 0 "R8" H 3150 4900 50  0000 L CNN
F 1 "10k" H 3150 4800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3390 4840 50  0001 C CNN
F 3 "~" H 3350 4850 50  0001 C CNN
	1    3350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4650 3350 4650
Wire Wire Line
	3350 4650 3350 4700
$Comp
L Device:C_Small C?
U 1 1 645E3117
P 3350 6300
AR Path="/6435FAB4/645E3117" Ref="C?"  Part="1" 
AR Path="/63268613/645E3117" Ref="C17"  Part="1" 
F 0 "C17" H 3258 6346 50  0000 R CNN
F 1 "0.1uF" H 3258 6255 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3350 6300 50  0001 C CNN
F 3 "~" H 3350 6300 50  0001 C CNN
	1    3350 6300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 645E3121
P 3350 6450
AR Path="/6435FAB4/645E3121" Ref="#PWR?"  Part="1" 
AR Path="/63268613/645E3121" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 3350 6200 50  0001 C CNN
F 1 "GND" H 3355 6277 50  0000 C CNN
F 2 "" H 3350 6450 50  0001 C CNN
F 3 "" H 3350 6450 50  0001 C CNN
	1    3350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6400 3350 6450
Wire Wire Line
	3350 5000 3350 6150
Connection ~ 3350 6150
Wire Wire Line
	3350 6150 3350 6200
Wire Wire Line
	5500 6150 4350 6150
Connection ~ 4350 6150
Wire Wire Line
	2350 2700 3400 2700
Wire Wire Line
	2350 3100 4000 3100
$EndSCHEMATC
