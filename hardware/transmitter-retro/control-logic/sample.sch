EESchema Schematic File Version 4
LIBS:control-logic-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "DMX Demonstrator - Transmitter-Pro (DMX-TX3)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text HLabel 8800 1850 2    50   Input ~ 0
~SAMPLE_RESET_OUT
Text HLabel 8800 2450 2    50   Input ~ 0
SAMPLE_LATCH_OUT
Wire Wire Line
	4200 3050 4150 3050
Wire Wire Line
	4150 3050 4150 2950
Wire Wire Line
	4200 2950 4150 2950
Wire Wire Line
	4200 3250 4050 3250
Wire Wire Line
	4050 3250 4050 3300
Wire Wire Line
	4050 3250 4050 3150
Wire Wire Line
	4050 3150 4200 3150
Connection ~ 4050 3250
$Comp
L power:GND #PWR?
U 1 1 63471594
P 4050 3300
AR Path="/63471594" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63471594" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63471594" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63471594" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63471594" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63471594" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 4050 3050 50  0001 C CNN
F 1 "GND" H 4055 3127 50  0000 C CNN
F 2 "" H 4050 3300 50  0001 C CNN
F 3 "" H 4050 3300 50  0001 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3450 4150 3450
Wire Wire Line
	3900 2650 3900 3050
$Comp
L power:+5V #PWR?
U 1 1 634715A0
P 3900 2650
AR Path="/6841E790/634715A0" Ref="#PWR?"  Part="1" 
AR Path="/634715A0" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/634715A0" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/634715A0" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/634715A0" Ref="#PWR?"  Part="1" 
AR Path="/63397143/634715A0" Ref="#PWR?"  Part="1" 
AR Path="/63268641/634715A0" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 3900 2500 50  0001 C CNN
F 1 "+5V" H 3915 2823 50  0000 C CNN
F 2 "" H 3900 2650 50  0001 C CNN
F 3 "" H 3900 2650 50  0001 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 634715A6
P 4700 3450
AR Path="/634715A6" Ref="U?"  Part="1" 
AR Path="/632F1F43/634715A6" Ref="U?"  Part="1" 
AR Path="/63267F40/634715A6" Ref="U?"  Part="1" 
AR Path="/6328016E/634715A6" Ref="U?"  Part="1" 
AR Path="/63397143/634715A6" Ref="U?"  Part="1" 
AR Path="/63268641/634715A6" Ref="U13"  Part="1" 
F 0 "U13" H 4800 4200 50  0000 C CNN
F 1 "74LS163" H 4900 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4700 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3050 3900 3050
Connection ~ 4150 3050
Connection ~ 3900 3050
Wire Wire Line
	3900 3050 3900 3550
Wire Wire Line
	5200 2950 5350 2950
Wire Wire Line
	5200 3050 5350 3050
Wire Wire Line
	5200 3150 5350 3150
Entry Wire Line
	5350 2950 5450 2850
Entry Wire Line
	5350 3050 5450 2950
Entry Wire Line
	5350 3150 5450 3050
Entry Wire Line
	5350 3250 5450 3150
Wire Wire Line
	5200 3250 5350 3250
Text Label 5200 2950 0    50   ~ 0
SA0
Text Label 5200 3050 0    50   ~ 0
SA1
Text Label 5200 3150 0    50   ~ 0
SA2
Text Label 5200 3250 0    50   ~ 0
SA3
Entry Wire Line
	5450 1850 5550 1750
Entry Wire Line
	5450 2050 5550 1950
Wire Wire Line
	5550 1750 5700 1750
Wire Wire Line
	5550 1950 5700 1950
Text Label 5550 1750 0    50   ~ 0
SA2
Text Label 5550 1950 0    50   ~ 0
SA3
Entry Wire Line
	5450 4100 5550 4200
Text Label 5550 4200 0    50   ~ 0
SA1
Wire Wire Line
	6300 1850 8800 1850
Entry Wire Line
	5450 2450 5550 2350
Entry Wire Line
	5450 2650 5550 2550
Wire Wire Line
	5550 2350 5700 2350
Text Label 5550 2350 0    50   ~ 0
SA2
Text Label 5550 2550 0    50   ~ 0
SA3
NoConn ~ 5200 3450
Entry Wire Line
	5450 4300 5550 4400
Text Label 5550 4400 0    50   ~ 0
SA3
$Comp
L 74xx:74LS10 U?
U 1 1 634715DE
P 6000 4300
AR Path="/63397143/634715DE" Ref="U?"  Part="1" 
AR Path="/63268641/634715DE" Ref="U2"  Part="1" 
F 0 "U2" H 6000 4625 50  0000 C CNN
F 1 "74LS10" H 6000 4534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
Entry Wire Line
	5450 4200 5550 4300
Text Label 5550 4300 0    50   ~ 0
SA2
Wire Wire Line
	5550 4200 5700 4200
Wire Wire Line
	5550 4300 5700 4300
Wire Wire Line
	5550 4400 5700 4400
Wire Wire Line
	4050 3750 4200 3750
$Comp
L power:+5V #PWR?
U 1 1 63471633
P 4700 2650
AR Path="/6841E790/63471633" Ref="#PWR?"  Part="1" 
AR Path="/63471633" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63471633" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63471633" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63471633" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63471633" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63471633" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 4700 2500 50  0001 C CNN
F 1 "+5V" H 4715 2823 50  0000 C CNN
F 2 "" H 4700 2650 50  0001 C CNN
F 3 "" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4750 4900 4750
$Comp
L power:GND #PWR?
U 1 1 63471644
P 4700 4250
AR Path="/63471644" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/63471644" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/63471644" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/63471644" Ref="#PWR?"  Part="1" 
AR Path="/63397143/63471644" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63471644" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 4700 4000 50  0001 C CNN
F 1 "GND" H 4850 4150 50  0000 C CNN
F 2 "" H 4700 4250 50  0001 C CNN
F 3 "" H 4700 4250 50  0001 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
Text Notes 4400 2300 0    50   ~ 0
Sample Counter\n3-14 (12 Steps)\n
Wire Wire Line
	4900 4950 5000 4950
Text HLabel 2600 5300 0    50   Input ~ 0
CLK_TX_IN
Text HLabel 2600 5200 0    50   Input ~ 0
~FRAME_RESET_IN
Wire Wire Line
	4050 5300 4050 3750
Wire Wire Line
	5000 4950 5000 5200
Text HLabel 2600 3650 0    50   Input ~ 0
~SAMPLE_ENABLE_IN
Wire Wire Line
	2600 3650 4200 3650
Wire Wire Line
	4300 4850 4150 4850
$Comp
L 74xx:74LS08 U1
U 1 1 634D51C8
P 6000 2450
F 0 "U1" H 6000 2775 50  0000 C CNN
F 1 "74LS08" H 6000 2684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6000 2450 50  0001 C CNN
	1    6000 2450
	1    0    0    -1  
$EndComp
Entry Wire Line
	5450 3750 5550 3850
Text Label 5550 3850 0    50   ~ 0
SA1
$Comp
L 74xx:74LS08 U1
U 3 1 634E4497
P 4600 4850
F 0 "U1" H 4600 5175 50  0000 C CNN
F 1 "74LS08" H 4600 5084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4600 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4600 4850 50  0001 C CNN
	3    4600 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 4300 6400 4300
Wire Wire Line
	6400 4300 6400 4750
Text HLabel 8800 3150 2    50   Input ~ 0
SAMPLE_SEL0_OUT
Text HLabel 8800 3050 2    50   Input ~ 0
SAMPLE_SEL1_OUT
$Comp
L 74xx:74LS161 U?
U 1 1 634F2D94
P 8000 3550
AR Path="/634F2D94" Ref="U?"  Part="1" 
AR Path="/632F1F43/634F2D94" Ref="U?"  Part="1" 
AR Path="/63267F40/634F2D94" Ref="U?"  Part="1" 
AR Path="/6328016E/634F2D94" Ref="U?"  Part="1" 
AR Path="/63397143/634F2D94" Ref="U?"  Part="1" 
AR Path="/6341AE92/634F2D94" Ref="U?"  Part="1" 
AR Path="/63268641/634F2D94" Ref="U14"  Part="1" 
F 0 "U14" H 8100 4300 50  0000 C CNN
F 1 "74LS163" H 8200 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8000 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 8000 3550 50  0001 C CNN
	1    8000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3650 6500 3650
Wire Wire Line
	8500 3150 8800 3150
Wire Wire Line
	7500 3150 7350 3150
Connection ~ 7350 3150
Wire Wire Line
	7350 3150 7350 3050
Wire Wire Line
	7450 3850 7500 3850
$Comp
L power:+5V #PWR?
U 1 1 634F2DC8
P 8000 2750
AR Path="/6841E790/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/63397143/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/634F2DC8" Ref="#PWR?"  Part="1" 
AR Path="/63268641/634F2DC8" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 8000 2600 50  0001 C CNN
F 1 "+5V" H 8015 2923 50  0000 C CNN
F 2 "" H 8000 2750 50  0001 C CNN
F 3 "" H 8000 2750 50  0001 C CNN
	1    8000 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 634F2DCE
P 8000 4350
AR Path="/634F2DCE" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/634F2DCE" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/634F2DCE" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/634F2DCE" Ref="#PWR?"  Part="1" 
AR Path="/63397143/634F2DCE" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/634F2DCE" Ref="#PWR?"  Part="1" 
AR Path="/63268641/634F2DCE" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 8000 4100 50  0001 C CNN
F 1 "GND" H 8150 4250 50  0000 C CNN
F 2 "" H 8000 4350 50  0001 C CNN
F 3 "" H 8000 4350 50  0001 C CNN
	1    8000 4350
	1    0    0    -1  
$EndComp
Text Notes 8350 4100 0    50   ~ 0
Sample Select Counter\n12-15 (4 Steps)\n
Wire Wire Line
	7450 3850 7450 5300
Wire Wire Line
	6300 2450 6400 2450
Wire Wire Line
	5550 2550 5700 2550
Connection ~ 6400 2450
Wire Wire Line
	6400 2450 8800 2450
Connection ~ 5000 5200
Wire Wire Line
	7450 5300 4050 5300
Connection ~ 4050 5300
Wire Wire Line
	8500 3050 8800 3050
NoConn ~ 8500 3250
NoConn ~ 8500 3350
Wire Wire Line
	8500 3550 8800 3550
Wire Wire Line
	7350 3150 7350 3400
$Comp
L power:+5V #PWR?
U 1 1 635BEC0A
P 7200 2750
AR Path="/6841E790/635BEC0A" Ref="#PWR?"  Part="1" 
AR Path="/635BEC0A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/635BEC0A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/635BEC0A" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/635BEC0A" Ref="#PWR?"  Part="1" 
AR Path="/63397143/635BEC0A" Ref="#PWR?"  Part="1" 
AR Path="/63268641/635BEC0A" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 7200 2600 50  0001 C CNN
F 1 "+5V" H 7215 2923 50  0000 C CNN
F 2 "" H 7200 2750 50  0001 C CNN
F 3 "" H 7200 2750 50  0001 C CNN
	1    7200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2750 7200 3250
Wire Wire Line
	6400 2450 6400 3650
Wire Wire Line
	7500 3250 7200 3250
Connection ~ 7200 3250
Wire Wire Line
	7200 3250 7200 3350
Wire Wire Line
	7500 3350 7200 3350
Wire Wire Line
	7350 3050 7500 3050
$Comp
L 74xx:74LS08 U1
U 2 1 635C87AA
P 6800 3750
F 0 "U1" H 6800 4075 50  0000 C CNN
F 1 "74LS08" H 6800 3984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6800 3750 50  0001 C CNN
	2    6800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3750 7500 3750
Wire Wire Line
	7200 3350 7200 3650
Wire Wire Line
	7200 3650 7500 3650
Connection ~ 7200 3350
Wire Wire Line
	5550 3850 6500 3850
Wire Wire Line
	2600 5200 5000 5200
Wire Wire Line
	2600 5300 4050 5300
Text HLabel 8800 3550 2    50   Input ~ 0
SAMPLE_SEL_MAX_OUT
$Comp
L 74xx:74LS32 U6
U 4 1 637C3685
P 6000 1850
F 0 "U6" H 6000 2175 50  0000 C CNN
F 1 "74LS32" H 6000 2084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6000 1850 50  0001 C CNN
	4    6000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3650 5700 3650
Entry Wire Line
	5450 3550 5550 3650
Text Label 5550 3650 0    50   ~ 0
SA0
NoConn ~ 5700 3650
$Comp
L power:GND #PWR?
U 1 1 647C088C
P 7350 3400
AR Path="/647C088C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/647C088C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/647C088C" Ref="#PWR?"  Part="1" 
AR Path="/6328016E/647C088C" Ref="#PWR?"  Part="1" 
AR Path="/63397143/647C088C" Ref="#PWR?"  Part="1" 
AR Path="/6341AE92/647C088C" Ref="#PWR?"  Part="1" 
AR Path="/63268641/647C088C" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 7350 3150 50  0001 C CNN
F 1 "GND" H 7500 3300 50  0000 C CNN
F 2 "" H 7350 3400 50  0001 C CNN
F 3 "" H 7350 3400 50  0001 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3550 7350 3550
Wire Wire Line
	7350 3550 7350 5200
Wire Wire Line
	5000 5200 7350 5200
Wire Wire Line
	7500 4050 7200 4050
Wire Wire Line
	7200 4050 7200 3650
Connection ~ 7200 3650
Wire Wire Line
	3900 3950 3900 3550
Connection ~ 3900 3550
Wire Wire Line
	3900 3950 4200 3950
Wire Wire Line
	3900 3550 4200 3550
Wire Wire Line
	4150 3450 4150 4850
Wire Bus Line
	5450 1850 5450 4300
$EndSCHEMATC
