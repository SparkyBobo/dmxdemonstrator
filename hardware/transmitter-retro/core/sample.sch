EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "DMX Demonstrator - Transmitter-Retro Core (DMX-TX3)"
Date "2023-05-27"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Comparator:LM339 U?
U 1 1 63304670
P 2200 2300
AR Path="/63304670" Ref="U?"  Part="1" 
AR Path="/63268641/63304670" Ref="U8"  Part="1" 
F 0 "U8" H 2200 2000 50  0000 C CNN
F 1 "LM339" H 2200 2100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2150 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 2250 2500 50  0001 C CNN
	1    2200 2300
	1    0    0    1   
$EndComp
$Comp
L Comparator:LM339 U?
U 4 1 63304677
P 2200 4300
AR Path="/63304677" Ref="U?"  Part="4" 
AR Path="/63268641/63304677" Ref="U8"  Part="4" 
F 0 "U8" H 2200 4000 50  0000 C CNN
F 1 "LM339" H 2200 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2150 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 2250 4500 50  0001 C CNN
	4    2200 4300
	1    0    0    1   
$EndComp
$Comp
L Comparator:LM339 U?
U 2 1 6330467E
P 2200 2950
AR Path="/6330467E" Ref="U?"  Part="2" 
AR Path="/63268641/6330467E" Ref="U8"  Part="2" 
F 0 "U8" H 2200 2650 50  0000 C CNN
F 1 "LM339" H 2200 2750 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2150 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 2250 3150 50  0001 C CNN
	2    2200 2950
	1    0    0    1   
$EndComp
$Comp
L Comparator:LM339 U?
U 3 1 63304685
P 2200 3650
AR Path="/63304685" Ref="U?"  Part="3" 
AR Path="/63268641/63304685" Ref="U8"  Part="3" 
F 0 "U8" H 2200 3350 50  0000 C CNN
F 1 "LM339" H 2200 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2150 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 2250 3850 50  0001 C CNN
	3    2200 3650
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63304695
P 4400 3150
AR Path="/6841E790/63304695" Ref="#PWR?"  Part="1" 
AR Path="/63304695" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63304695" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 4400 3000 50  0001 C CNN
F 1 "+5V" H 4415 3323 50  0000 C CNN
F 2 "" H 4400 3150 50  0001 C CNN
F 3 "" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3800 5650 3800
Wire Wire Line
	5650 3800 5650 3850
Wire Wire Line
	5650 3800 5650 3700
Wire Wire Line
	5650 3700 5800 3700
Connection ~ 5650 3800
Wire Wire Line
	5650 3700 5650 3600
Wire Wire Line
	5650 3600 5800 3600
Connection ~ 5650 3700
Wire Wire Line
	5650 3600 5650 3500
Wire Wire Line
	5650 3500 5800 3500
Connection ~ 5650 3600
$Comp
L power:GND #PWR?
U 1 1 633046BB
P 5650 3850
AR Path="/633046BB" Ref="#PWR?"  Part="1" 
AR Path="/63268641/633046BB" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5650 3600 50  0001 C CNN
F 1 "GND" H 5750 3750 50  0000 C CNN
F 2 "" H 5650 3850 50  0001 C CNN
F 3 "" H 5650 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 633046C1
P 6300 3200
AR Path="/633046C1" Ref="#PWR?"  Part="1" 
AR Path="/63268641/633046C1" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 6300 3050 50  0001 C CNN
F 1 "+5V" H 6315 3373 50  0000 C CNN
F 2 "" H 6300 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    6300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3500 6950 3500
Wire Wire Line
	6800 3600 6950 3600
Wire Wire Line
	6800 3700 6950 3700
Text Notes 6900 5650 0    50   ~ 0
Sample Counter
$Comp
L power:+5V #PWR?
U 1 1 633046CB
P 5550 3200
AR Path="/6841E790/633046CB" Ref="#PWR?"  Part="1" 
AR Path="/633046CB" Ref="#PWR?"  Part="1" 
AR Path="/63268641/633046CB" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 5550 3050 50  0001 C CNN
F 1 "+5V" H 5565 3373 50  0000 C CNN
F 2 "" H 5550 3200 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4300 5800 4300
$Comp
L 74xx:74LS161 U?
U 1 1 633046D2
P 8000 4000
AR Path="/633046D2" Ref="U?"  Part="1" 
AR Path="/63268641/633046D2" Ref="U5"  Part="1" 
F 0 "U5" H 8100 4750 50  0000 C CNN
F 1 "74LS163" H 8200 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8000 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 8000 4000 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4500 7500 4500
Wire Wire Line
	7500 3800 7350 3800
Wire Wire Line
	7350 3800 7350 3850
Wire Wire Line
	7350 3800 7350 3700
Wire Wire Line
	7350 3700 7500 3700
Connection ~ 7350 3800
Wire Wire Line
	7350 3700 7350 3600
Wire Wire Line
	7350 3600 7500 3600
Connection ~ 7350 3700
Wire Wire Line
	7350 3600 7350 3500
Wire Wire Line
	7350 3500 7500 3500
Connection ~ 7350 3600
$Comp
L power:+5V #PWR?
U 1 1 633046F5
P 8000 3200
AR Path="/633046F5" Ref="#PWR?"  Part="1" 
AR Path="/63268641/633046F5" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 8000 3050 50  0001 C CNN
F 1 "+5V" H 8015 3373 50  0000 C CNN
F 2 "" H 8000 3200 50  0001 C CNN
F 3 "" H 8000 3200 50  0001 C CNN
	1    8000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3500 8650 3500
Wire Wire Line
	8500 3600 8650 3600
Wire Wire Line
	8500 3700 8650 3700
Wire Wire Line
	7250 3200 7250 4000
$Comp
L power:+5V #PWR?
U 1 1 633046FF
P 7250 3200
AR Path="/6841E790/633046FF" Ref="#PWR?"  Part="1" 
AR Path="/633046FF" Ref="#PWR?"  Part="1" 
AR Path="/63268641/633046FF" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 7250 3050 50  0001 C CNN
F 1 "+5V" H 7265 3373 50  0000 C CNN
F 2 "" H 7250 3200 50  0001 C CNN
F 3 "" H 7250 3200 50  0001 C CNN
	1    7250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4300 7500 4300
Entry Wire Line
	6950 3500 7050 3400
Entry Wire Line
	6950 3600 7050 3500
Entry Wire Line
	6950 3700 7050 3600
Entry Wire Line
	6950 3800 7050 3700
Wire Wire Line
	6800 4000 7150 4000
Wire Wire Line
	7150 4000 7150 4200
Wire Wire Line
	6800 3800 6950 3800
Wire Wire Line
	7150 4200 7500 4200
Entry Wire Line
	8650 3800 8750 3900
Entry Wire Line
	8650 3700 8750 3800
Entry Wire Line
	8650 3600 8750 3700
Entry Wire Line
	8650 3500 8750 3600
Wire Wire Line
	8500 3800 8650 3800
Wire Wire Line
	8500 4000 8550 4000
Wire Wire Line
	5550 4000 5550 3200
Wire Wire Line
	5550 4000 5800 4000
$Comp
L 74xx:74LS161 U?
U 1 1 6330471C
P 6300 4000
AR Path="/6330471C" Ref="U?"  Part="1" 
AR Path="/63268641/6330471C" Ref="U4"  Part="1" 
F 0 "U4" H 6400 4750 50  0000 C CNN
F 1 "74LS163" H 6500 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6300 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 6300 4000 50  0001 C CNN
	1    6300 4000
	1    0    0    -1  
$EndComp
Entry Wire Line
	8750 4100 8850 4200
Entry Wire Line
	8750 4000 8850 4100
Entry Wire Line
	8750 3900 8850 4000
Entry Wire Line
	8750 3800 8850 3900
Entry Wire Line
	8750 3700 8850 3800
Entry Wire Line
	8750 3600 8850 3700
Entry Wire Line
	8750 3500 8850 3600
Entry Wire Line
	8750 3400 8850 3500
$Comp
L power:+5V #PWR?
U 1 1 6330473A
P 9550 3200
AR Path="/6841E790/6330473A" Ref="#PWR?"  Part="1" 
AR Path="/6330473A" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6330473A" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 9550 3050 50  0001 C CNN
F 1 "+5V" H 9565 3373 50  0000 C CNN
F 2 "" H 9550 3200 50  0001 C CNN
F 3 "" H 9550 3200 50  0001 C CNN
	1    9550 3200
	1    0    0    -1  
$EndComp
Text Label 10050 3600 0    50   ~ 0
D1
Text Label 10050 3700 0    50   ~ 0
D2
Text Label 10050 3800 0    50   ~ 0
D3
Text Label 10050 3900 0    50   ~ 0
D4
Text Label 10050 4000 0    50   ~ 0
D5
Text Label 10050 4100 0    50   ~ 0
D6
Text Label 10050 4200 0    50   ~ 0
D7
Text Label 8950 3500 0    50   ~ 0
DO0
Text Label 8950 3600 0    50   ~ 0
DO1
Text Label 8950 3700 0    50   ~ 0
DO2
Text Label 8950 3800 0    50   ~ 0
DO3
Text Label 8950 3900 0    50   ~ 0
DO4
Text Label 8950 4000 0    50   ~ 0
DO5
Text Label 8950 4100 0    50   ~ 0
DO6
Text Label 8950 4200 0    50   ~ 0
DO7
Text Notes 9350 5200 0    50   ~ 0
Data Latch\n
Entry Bus Bus
	8650 2800 8750 2900
Wire Wire Line
	8850 4400 9050 4400
Text Label 8500 3800 0    50   ~ 0
DO7
Text Label 8500 3700 0    50   ~ 0
DO6
Text Label 8500 3600 0    50   ~ 0
DO5
Text Label 8500 3500 0    50   ~ 0
DO4
Text Label 6800 3800 0    50   ~ 0
DO3
Text Label 6800 3700 0    50   ~ 0
DO2
Text Label 6800 3600 0    50   ~ 0
DO1
Text Label 6800 3500 0    50   ~ 0
DO0
Wire Wire Line
	7150 4300 7150 5250
Entry Wire Line
	10150 3500 10250 3400
Entry Wire Line
	10150 3600 10250 3500
Entry Wire Line
	10150 3700 10250 3600
Entry Wire Line
	10150 3800 10250 3700
Entry Wire Line
	10150 3900 10250 3800
Entry Wire Line
	10150 4000 10250 3900
Entry Wire Line
	10150 4100 10250 4000
Entry Wire Line
	10150 4200 10250 4100
Entry Bus Bus
	10250 3050 10350 2950
Text Notes 4300 5550 0    50   ~ 0
Dimmer\nSelect
Wire Wire Line
	5450 4300 5450 5250
Wire Wire Line
	7250 4500 7250 5350
Wire Wire Line
	5800 4500 5550 4500
Wire Wire Line
	5550 4500 5550 5350
Text Label 10050 3500 0    50   ~ 0
D0
Wire Wire Line
	10050 4200 10150 4200
Wire Wire Line
	10050 4100 10150 4100
Wire Wire Line
	10050 4000 10150 4000
Wire Wire Line
	10150 3900 10050 3900
Wire Wire Line
	10150 3800 10050 3800
Wire Wire Line
	10150 3700 10050 3700
Wire Wire Line
	10150 3600 10050 3600
Wire Wire Line
	10150 3500 10050 3500
Wire Wire Line
	5550 5350 7250 5350
Wire Wire Line
	5450 5250 7150 5250
Wire Wire Line
	1600 4400 1900 4400
Wire Wire Line
	1800 4200 1900 4200
Wire Wire Line
	1600 3750 1900 3750
Wire Wire Line
	1900 3550 1800 3550
Connection ~ 1800 3550
Wire Wire Line
	1800 3550 1800 4200
Wire Wire Line
	1900 2850 1800 2850
Connection ~ 1800 2850
Wire Wire Line
	1800 2850 1800 3550
Wire Wire Line
	1900 2200 1800 2200
Wire Wire Line
	1800 2200 1800 2850
Wire Wire Line
	8850 3500 9050 3500
Wire Wire Line
	8850 3600 9050 3600
Wire Wire Line
	8850 3700 9050 3700
Wire Wire Line
	8850 3800 9050 3800
Wire Wire Line
	8850 3900 9050 3900
Wire Wire Line
	8850 4000 9050 4000
Wire Wire Line
	8850 4100 9050 4100
Wire Wire Line
	5450 5250 5450 6300
Wire Wire Line
	5450 6300 1600 6300
Text HLabel 1600 4400 0    50   Input ~ 0
DIM_1_IN
Text HLabel 1600 3750 0    50   Input ~ 0
DIM_2_IN
Text HLabel 1600 3050 0    50   Input ~ 0
DIM_3_IN
Text HLabel 1600 2400 0    50   Input ~ 0
DIM_4_IN
Text HLabel 1600 6400 0    50   Input ~ 0
~SAMPLE_RESET_IN
Text HLabel 1600 5000 0    50   Input ~ 0
SAMPLE_SEL0_IN
Text HLabel 1600 5350 0    50   Input ~ 0
SAMPLE_SEL1_IN
Text HLabel 1600 6500 0    50   Input ~ 0
SAMPLE_LATCH_IN
Wire Wire Line
	5550 5350 5550 6400
Wire Wire Line
	5550 6400 1600 6400
Wire Wire Line
	8850 4400 8850 5750
Text HLabel 10600 2950 2    50   Input ~ 0
D[0..7]
Wire Bus Line
	10350 2950 10600 2950
Connection ~ 1800 2200
Wire Wire Line
	1600 3050 1900 3050
Wire Wire Line
	1900 2400 1600 2400
Entry Wire Line
	7050 1150 6950 1050
Wire Wire Line
	6950 1150 6700 1150
Wire Wire Line
	6950 1250 6700 1250
Wire Wire Line
	6950 1350 6700 1350
Wire Wire Line
	6950 1450 6700 1450
Wire Wire Line
	6950 1550 6700 1550
Wire Wire Line
	6950 1650 6700 1650
Wire Wire Line
	6950 1750 6700 1750
Text Label 6900 1750 2    50   ~ 0
DO0
Text Label 6900 1650 2    50   ~ 0
DO1
Text Label 6900 1550 2    50   ~ 0
DO2
Text Label 6900 1450 2    50   ~ 0
DO3
Text Label 6900 1350 2    50   ~ 0
DO4
Text Label 6900 1250 2    50   ~ 0
DO5
Text Label 6900 1150 2    50   ~ 0
DO6
Text Label 6900 1050 2    50   ~ 0
DO7
Entry Wire Line
	7050 1850 6950 1750
Entry Wire Line
	7050 1750 6950 1650
Entry Wire Line
	7050 1650 6950 1550
Entry Wire Line
	7050 1550 6950 1450
Entry Wire Line
	7050 1450 6950 1350
Entry Wire Line
	7050 1350 6950 1250
Entry Wire Line
	7050 1250 6950 1150
Wire Wire Line
	6700 1050 6950 1050
$Comp
L CrazyGiraffe_DMXDemonstrator:TLC7524CN U7
U 1 1 634200B5
P 6300 1450
F 0 "U7" H 6100 2100 50  0000 C CNN
F 1 "TLC7524CN" H 6000 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6300 1450 50  0001 C CNN
F 3 "http://www.pinballpcb.com/datasheets/OnMC1408-dac.pdf" H 6300 1450 50  0001 C CNN
	1    6300 1450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6342D398
P 6300 850
AR Path="/6342D398" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6342D398" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 6300 700 50  0001 C CNN
F 1 "+5V" H 6315 1023 50  0000 C CNN
F 2 "" H 6300 850 50  0001 C CNN
F 3 "" H 6300 850 50  0001 C CNN
	1    6300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2000 6800 2000
Wire Wire Line
	6800 2000 6800 2200
$Comp
L power:+5V #PWR?
U 1 1 63451D3F
P 5150 850
AR Path="/63451D3F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63451D3F" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 5150 700 50  0001 C CNN
F 1 "+5V" H 5165 1023 50  0000 C CNN
F 2 "" H 5150 850 50  0001 C CNN
F 3 "" H 5150 850 50  0001 C CNN
	1    5150 850 
	1    0    0    -1  
$EndComp
NoConn ~ 5900 1250
$Comp
L power:GND #PWR0129
U 1 1 63480032
P 6800 2200
F 0 "#PWR0129" H 6800 1950 50  0001 C CNN
F 1 "GND" H 6805 2027 50  0000 C CNN
F 2 "" H 6800 2200 50  0001 C CNN
F 3 "" H 6800 2200 50  0001 C CNN
	1    6800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 63480053
P 6300 2200
F 0 "#PWR0130" H 6300 1950 50  0001 C CNN
F 1 "GND" H 6305 2027 50  0000 C CNN
F 2 "" H 6300 2200 50  0001 C CNN
F 3 "" H 6300 2200 50  0001 C CNN
	1    6300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 634800F7
P 8000 4800
F 0 "#PWR0132" H 8000 4550 50  0001 C CNN
F 1 "GND" H 8005 4627 50  0000 C CNN
F 2 "" H 8000 4800 50  0001 C CNN
F 3 "" H 8000 4800 50  0001 C CNN
	1    8000 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 63480145
P 6300 4800
F 0 "#PWR0134" H 6300 4550 50  0001 C CNN
F 1 "GND" H 6305 4627 50  0000 C CNN
F 2 "" H 6300 4800 50  0001 C CNN
F 3 "" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1900 6950 1900
$Comp
L power:GND #PWR?
U 1 1 6336331B
P 9550 4800
AR Path="/6841E790/6336331B" Ref="#PWR?"  Part="1" 
AR Path="/6336331B" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6336331B" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 9550 4550 50  0001 C CNN
F 1 "GND" H 9555 4627 50  0000 C CNN
F 2 "" H 9550 4800 50  0001 C CNN
F 3 "" H 9550 4800 50  0001 C CNN
	1    9550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4500 9000 4500
Text HLabel 1600 7450 0    50   Input ~ 0
~BUS_REQUEST_IN
Wire Wire Line
	6950 2700 6950 1900
$Comp
L power:GND #PWR?
U 1 1 63517083
P 4400 5150
AR Path="/63517083" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63517083" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4400 4900 50  0001 C CNN
F 1 "GND" H 4500 5050 50  0000 C CNN
F 2 "" H 4400 5150 50  0001 C CNN
F 3 "" H 4400 5150 50  0001 C CNN
	1    4400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5450 7350 5450
$Comp
L 74xx:74LS373 U6
U 1 1 638DE1BD
P 9550 4000
F 0 "U6" H 9700 4750 50  0000 C CNN
F 1 "74LS373" H 9800 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 9550 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H 9550 4000 50  0001 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
Text HLabel 1600 7350 0    50   Input ~ 0
~SAMPLE_OVERRIDE_IN
Wire Wire Line
	2500 4300 2800 4300
Wire Wire Line
	2500 2950 2800 2950
Wire Wire Line
	2500 2300 2900 2300
$Comp
L 74xx:74LS04 U?
U 1 1 63A2F4D2
P 3200 7450
AR Path="/63268613/63A2F4D2" Ref="U?"  Part="1" 
AR Path="/639E280B/63A2F4D2" Ref="U?"  Part="1" 
AR Path="/63268641/63A2F4D2" Ref="U10"  Part="1" 
F 0 "U10" H 3200 7767 50  0000 C CNN
F 1 "74LS04" H 3200 7676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3200 7450 50  0001 C CNN
	1    3200 7450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 63A2F4D9
P 3200 6000
AR Path="/63268613/63A2F4D9" Ref="U?"  Part="2" 
AR Path="/639E280B/63A2F4D9" Ref="U?"  Part="2" 
AR Path="/63268641/63A2F4D9" Ref="U10"  Part="2" 
F 0 "U10" H 3200 6317 50  0000 C CNN
F 1 "74LS04" H 3200 6226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3200 6000 50  0001 C CNN
	2    3200 6000
	1    0    0    -1  
$EndComp
Text HLabel 10600 5850 2    50   Input ~ 0
~BUS_ACK_OUT
Wire Wire Line
	1600 6500 5650 6500
Wire Wire Line
	8300 5450 8550 5450
Wire Wire Line
	8850 4200 9050 4200
Text HLabel 1600 4650 0    50   Input ~ 0
SAMPLE_COUNT_IN
$Comp
L Device:R_US R?
U 1 1 63D680DF
P 2100 7000
AR Path="/63D680DF" Ref="R?"  Part="1" 
AR Path="/63268613/63D680DF" Ref="R?"  Part="1" 
AR Path="/63268641/63D680DF" Ref="R2"  Part="1" 
F 0 "R2" H 1900 7050 50  0000 L CNN
F 1 "10k" H 1900 6950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2140 6990 50  0001 C CNN
F 3 "~" H 2100 7000 50  0001 C CNN
	1    2100 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63D680E7
P 2300 6750
AR Path="/63D680E7" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63D680E7" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63D680E7" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 2300 6600 50  0001 C CNN
F 1 "+5V" H 2400 6850 50  0000 C CNN
F 2 "" H 2300 6750 50  0001 C CNN
F 3 "" H 2300 6750 50  0001 C CNN
	1    2300 6750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 63E9F755
P 2500 7000
AR Path="/63E9F755" Ref="R?"  Part="1" 
AR Path="/63268613/63E9F755" Ref="R?"  Part="1" 
AR Path="/63268641/63E9F755" Ref="R3"  Part="1" 
F 0 "R3" H 2300 7050 50  0000 L CNN
F 1 "10k" H 2300 6950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2540 6990 50  0001 C CNN
F 3 "~" H 2500 7000 50  0001 C CNN
	1    2500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7150 2500 7450
Wire Wire Line
	2500 6850 2500 6800
Wire Wire Line
	10300 5850 10600 5850
$Comp
L 74xx:74LS151 U3
U 1 1 640AA7BE
P 4400 4050
F 0 "U3" H 4550 4900 50  0000 C CNN
F 1 "74LS151" H 4600 4800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4400 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3450 2900 2300
Wire Wire Line
	3900 3550 2800 3550
Wire Wire Line
	2800 3550 2800 2950
Wire Wire Line
	2500 3650 3900 3650
Wire Wire Line
	3900 3750 2800 3750
Wire Wire Line
	2800 3750 2800 4300
Wire Wire Line
	3900 3850 2900 3850
Wire Wire Line
	2900 3850 2900 4650
Wire Wire Line
	2900 4650 1600 4650
NoConn ~ 3900 3950
NoConn ~ 3900 4050
Wire Wire Line
	3900 4750 3850 4750
Wire Wire Line
	3850 4750 3850 5100
Wire Wire Line
	3850 5100 4400 5100
Wire Wire Line
	4400 5050 4400 5100
Wire Wire Line
	4400 5100 4400 5150
Connection ~ 4400 5100
NoConn ~ 4900 3550
Wire Wire Line
	4900 3450 5150 3450
Wire Wire Line
	3500 4900 3550 4900
Wire Wire Line
	3550 4900 3550 4350
Wire Wire Line
	3550 4350 3900 4350
Wire Wire Line
	3900 4450 3650 4450
Wire Wire Line
	3650 4450 3650 5450
Wire Wire Line
	3650 5450 3500 5450
Wire Wire Line
	3900 4550 3750 4550
Wire Wire Line
	2800 4800 2900 4800
NoConn ~ 3900 4150
Entry Bus Bus
	7050 2700 7150 2800
Entry Bus Bus
	7050 2900 7150 2800
Text HLabel 1600 6300 0    50   Input ~ 0
CLK_SAMPLE_IN
$Comp
L 74xx:74LS08 U?
U 2 1 642B4F86
P 3200 4900
AR Path="/632F1F43/642B4F86" Ref="U?"  Part="2" 
AR Path="/63268641/642B4F86" Ref="U12"  Part="2" 
F 0 "U12" H 3200 5225 50  0000 C CNN
F 1 "74LS08" H 3200 5134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3200 4900 50  0001 C CNN
	2    3200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4000 8550 5450
$Comp
L 74xx:74LS04 U10
U 6 1 64364D6A
P 10000 5850
AR Path="/63268641/64364D6A" Ref="U10"  Part="6" 
AR Path="/6BB77A68/64364D6A" Ref="U?"  Part="6" 
F 0 "U10" H 10000 6167 50  0000 C CNN
F 1 "74LS04" H 10000 6076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10000 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10000 5850 50  0001 C CNN
	6    10000 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6000 3750 6000
Wire Wire Line
	3750 4550 3750 6000
Wire Wire Line
	2900 6000 2800 6000
Connection ~ 5450 5250
Connection ~ 5550 5350
Wire Wire Line
	5650 6500 5650 5750
Wire Wire Line
	5650 5750 8850 5750
Wire Wire Line
	5750 5850 9000 5850
Wire Wire Line
	1600 7350 2100 7350
Wire Wire Line
	2800 4800 2800 5550
Wire Wire Line
	1600 5000 2900 5000
Wire Wire Line
	2800 5550 2900 5550
Wire Wire Line
	1600 5350 2900 5350
Connection ~ 2800 5550
Wire Wire Line
	2800 5550 2800 6000
Wire Wire Line
	1600 7450 2500 7450
Wire Wire Line
	2100 6850 2100 6800
Wire Wire Line
	2100 6800 2300 6800
Wire Wire Line
	2300 6750 2300 6800
Connection ~ 2300 6800
Wire Wire Line
	2300 6800 2500 6800
Wire Wire Line
	2100 7150 2100 7350
Connection ~ 2100 7350
Wire Wire Line
	2100 7350 2800 7350
Connection ~ 2500 7450
Wire Wire Line
	2500 7450 2900 7450
Wire Wire Line
	2800 6000 2800 7350
Connection ~ 2800 6000
Wire Wire Line
	5750 5850 5750 6600
Text Notes 7250 2650 0    50   ~ 0
U4 and U5 count from 0-255 at the rate of CLK_SAMPLE_IN. This value is sent to U7\nwhich converts this value into an analog voltage from 0-5v. This value is also sent to U6,\nwhich is can be captured and held for the shift register to send the value to DATA_RX_OUT.\nU4 and U5 are reset by ~SAMPLE_RESET_IN~ at the start of the sampling period.\n\nCLK_SAMPLE_IN is 32x faster than CLK_TX_OUT so that U4 and U5 have time to count from\n0-255 in the same amount of time it takes for the shift register to to send 8 bits of data.\nThis way, the sample taken for a channel can be captured while the value for the previous\nchannel is sent.\n\n
$Comp
L power:GND #PWR?
U 1 1 644F74BB
P 7350 3850
AR Path="/644F74BB" Ref="#PWR?"  Part="1" 
AR Path="/63268641/644F74BB" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7350 3600 50  0001 C CNN
F 1 "GND" H 7450 3750 50  0000 C CNN
F 2 "" H 7350 3850 50  0001 C CNN
F 3 "" H 7350 3850 50  0001 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4000 7500 4000
Wire Wire Line
	7350 5450 7350 4100
Wire Wire Line
	7350 4100 7500 4100
Connection ~ 7350 5450
Wire Wire Line
	7350 5450 5650 5450
Wire Wire Line
	5800 4100 5650 4100
Wire Wire Line
	5650 4100 5650 5450
Wire Wire Line
	5800 4200 5150 4200
Wire Wire Line
	5150 3450 5150 4200
$Comp
L 74xx:74LS04 U10
U 5 1 645DB3DF
P 8000 5450
AR Path="/63268641/645DB3DF" Ref="U10"  Part="5" 
AR Path="/6BB77A68/645DB3DF" Ref="U?"  Part="5" 
F 0 "U10" H 8050 5200 50  0000 C CNN
F 1 "74LS04" H 8100 5300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8000 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8000 5450 50  0001 C CNN
	5    8000 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 2700 6150 2700
Wire Bus Line
	7150 2800 8650 2800
Wire Wire Line
	5550 2700 5450 2700
Wire Wire Line
	5450 2700 5450 4300
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U9
U 1 1 6454E9E8
P 4000 1450
F 0 "U9" H 4000 1817 50  0000 C CNN
F 1 "TLV2772CP" H 4000 1726 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4000 1450 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv2771" H 4000 1450 50  0001 C CNN
	1    4000 1450
	-1   0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TL1431 VR1
U 1 1 645596F9
P 5150 1900
F 0 "VR1" H 5047 1946 50  0000 R CNN
F 1 "TL1431" H 5047 1855 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 4450 1250 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/TL1431" H 4450 1350 60  0001 L CNN
	1    5150 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 1450 3550 1450
Wire Wire Line
	1800 1450 1800 2200
$Comp
L Device:R_US R5
U 1 1 64591DA9
P 4100 2150
F 0 "R5" V 3895 2150 50  0000 C CNN
F 1 "10k" V 3986 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4140 2140 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 6459B719
P 4700 2150
F 0 "R6" V 4495 2150 50  0000 C CNN
F 1 "10k" V 4586 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4740 2140 50  0001 C CNN
F 3 "~" H 4700 2150 50  0001 C CNN
	1    4700 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 6459B76D
P 5150 1100
F 0 "R4" H 5082 1054 50  0000 R CNN
F 1 "1.6k" H 5082 1145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5190 1090 50  0001 C CNN
F 3 "~" H 5150 1100 50  0001 C CNN
	1    5150 1100
	1    0    0    1   
$EndComp
Wire Wire Line
	5150 1700 5150 1650
Wire Wire Line
	5150 1650 5150 1250
Connection ~ 5150 1650
Wire Wire Line
	5150 950  5150 850 
Wire Wire Line
	4300 1350 5900 1350
Wire Wire Line
	5750 1750 5900 1750
Wire Wire Line
	5150 2100 5150 2150
Wire Wire Line
	5150 2150 5150 2200
Connection ~ 5150 2150
Wire Wire Line
	5150 2150 4850 2150
Wire Wire Line
	4300 1550 4400 1550
Wire Wire Line
	4400 1550 4400 2150
Wire Wire Line
	3550 1450 3550 2150
Wire Wire Line
	3550 2150 3950 2150
Connection ~ 3550 1450
Wire Wire Line
	3550 1450 1800 1450
Wire Wire Line
	4250 2150 4400 2150
Connection ~ 4400 2150
Wire Wire Line
	4950 1900 4850 1900
Wire Wire Line
	4850 1900 4850 1650
Wire Wire Line
	4850 1650 5150 1650
Wire Wire Line
	5750 1850 5750 1750
Text Notes 2700 1450 0    50   ~ 0
2 * VREF * (D/256)
Text Notes 5250 1650 0    50   ~ 0
2.5V=VREF
Text Notes 5250 1350 0    50   ~ 0
VREF * (D/256)
Wire Wire Line
	5150 1650 5900 1650
Wire Wire Line
	2900 3450 3900 3450
Wire Wire Line
	4400 2150 4550 2150
Connection ~ 5450 4300
Text Notes 7250 1150 0    50   ~ 0
0-5V D-to-A Converter\n\nSee: \nhttps://www.ti.com/lit/an/sloa039a/sloa039a.pdf\nFigure 18
$Comp
L power:GND #PWR0121
U 1 1 6459291B
P 5750 1850
F 0 "#PWR0121" H 5750 1600 50  0001 C CNN
F 1 "GND" H 5755 1677 50  0000 C CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 64592954
P 5150 2200
F 0 "#PWR0125" H 5150 1950 50  0001 C CNN
F 1 "GND" H 5155 2027 50  0000 C CNN
F 2 "" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0001 C CNN
	1    5150 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 6459EB9D
P 3200 5450
AR Path="/6459EB9D" Ref="U?"  Part="1" 
AR Path="/632F1F43/6459EB9D" Ref="U?"  Part="1" 
AR Path="/63268641/6459EB9D" Ref="U12"  Part="1" 
F 0 "U12" H 3200 5775 50  0000 C CNN
F 1 "74LS08" H 3200 5684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3200 5450 50  0001 C CNN
	1    3200 5450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 4 1 645CEEE3
P 5850 2700
AR Path="/63268613/645CEEE3" Ref="U?"  Part="4" 
AR Path="/63268641/645CEEE3" Ref="U10"  Part="4" 
F 0 "U10" H 5850 3017 50  0000 C CNN
F 1 "74LS04" H 5850 2926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5850 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5850 2700 50  0001 C CNN
	4    5850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6600 3750 7450
Wire Wire Line
	3750 7450 3500 7450
Wire Wire Line
	3750 6600 5750 6600
Wire Wire Line
	9000 5850 9700 5850
Wire Wire Line
	9000 4500 9000 5850
Connection ~ 9000 5850
Text Notes 2000 1850 0    50   ~ 0
Dimmer\nCompare
Wire Bus Line
	7050 2900 7050 3700
Wire Bus Line
	8750 2900 8750 4100
Wire Bus Line
	10250 3050 10250 4100
Wire Bus Line
	7050 1150 7050 2700
Text Notes 3850 800  0    50   ~ 0
Analog Section
$EndSCHEMATC
