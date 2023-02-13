EESchema Schematic File Version 4
LIBS:control-dmx-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Memory_EPROM:27128 U?
U 1 1 64A8E383
P 4600 3700
AR Path="/64A8E383" Ref="U?"  Part="1" 
AR Path="/632F1F43/64A8E383" Ref="U?"  Part="1" 
AR Path="/63267F40/64A8E383" Ref="U?"  Part="1" 
AR Path="/649D105F/64A8E383" Ref="U7"  Part="1" 
F 0 "U7" H 4750 4850 50  0000 C CNN
F 1 "27128" H 4800 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 4600 3700 50  0001 C CNN
F 3 "http://eeshop.unl.edu/pdf/27128.pdf" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64A8E38A
P 4600 4800
AR Path="/64A8E38A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64A8E38A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A8E38A" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64A8E38A" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 4600 4550 50  0001 C CNN
F 1 "GND" H 4605 4627 50  0000 C CNN
F 2 "" H 4600 4800 50  0001 C CNN
F 3 "" H 4600 4800 50  0001 C CNN
	1    4600 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64A8E390
P 4600 2600
AR Path="/64A8E390" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64A8E390" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A8E390" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64A8E390" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 4600 2450 50  0001 C CNN
F 1 "+5V" H 4615 2773 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4400 3950 4400
Wire Wire Line
	3950 4400 3950 4300
Wire Wire Line
	4200 4300 3950 4300
Connection ~ 3950 4300
Wire Wire Line
	3950 4300 3950 4200
Wire Wire Line
	4200 4500 4100 4500
Wire Wire Line
	4100 4500 4100 4100
Wire Wire Line
	4100 4500 4100 4600
Connection ~ 4100 4500
Wire Wire Line
	4200 4600 4100 4600
Connection ~ 4100 4600
Wire Wire Line
	4100 4600 4100 4800
$Comp
L power:GND #PWR?
U 1 1 64A8E3A2
P 4100 4800
AR Path="/64A8E3A2" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64A8E3A2" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A8E3A2" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64A8E3A2" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 4100 4550 50  0001 C CNN
F 1 "GND" H 4105 4627 50  0000 C CNN
F 2 "" H 4100 4800 50  0001 C CNN
F 3 "" H 4100 4800 50  0001 C CNN
	1    4100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4000 4100 4000
Wire Wire Line
	4200 4100 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	4100 4100 4100 4000
Entry Wire Line
	3900 2700 4000 2800
Entry Wire Line
	3900 2800 4000 2900
Entry Wire Line
	3900 2900 4000 3000
Entry Wire Line
	3900 3000 4000 3100
Entry Wire Line
	3900 3100 4000 3200
Entry Wire Line
	3900 3200 4000 3300
Entry Wire Line
	3900 3300 4000 3400
Entry Wire Line
	3900 3400 4000 3500
$Comp
L power:+5V #PWR?
U 1 1 64A8E3B4
P 3950 4200
AR Path="/64A8E3B4" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64A8E3B4" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A8E3B4" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64A8E3B4" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 3950 4050 50  0001 C CNN
F 1 "+5V" H 3965 4373 50  0000 C CNN
F 2 "" H 3950 4200 50  0001 C CNN
F 3 "" H 3950 4200 50  0001 C CNN
	1    3950 4200
	1    0    0    -1  
$EndComp
Text Label 4000 2800 0    50   ~ 0
IA0
Text Label 4000 2900 0    50   ~ 0
IA1
Text Label 4000 3000 0    50   ~ 0
IA2
Text Label 4000 3100 0    50   ~ 0
IA3
Text Label 4000 3200 0    50   ~ 0
IA4
Text Label 4000 3300 0    50   ~ 0
IA5
Text Label 4000 3400 0    50   ~ 0
IA6
Text Label 4000 3500 0    50   ~ 0
IA7
Text Notes 4450 2300 0    50   ~ 0
Instruction\nEPROM
Wire Wire Line
	4000 2800 4200 2800
Wire Wire Line
	4000 2900 4200 2900
Wire Wire Line
	4000 3000 4200 3000
Wire Wire Line
	4000 3100 4200 3100
Wire Wire Line
	4000 3200 4200 3200
Wire Wire Line
	4000 3300 4200 3300
Wire Wire Line
	4000 3400 4200 3400
Wire Wire Line
	4000 3500 4200 3500
Entry Bus Bus
	3900 1900 3800 1800
Wire Wire Line
	5000 3500 5650 3500
$Comp
L 74xx:74LS32 U?
U 3 1 64A8E3CD
P 6700 4000
AR Path="/64A8E3CD" Ref="U?"  Part="3" 
AR Path="/649D105F/64A8E3CD" Ref="U3"  Part="3" 
F 0 "U3" H 6700 4325 50  0000 C CNN
F 1 "74LS32" H 6700 4234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6700 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6700 4000 50  0001 C CNN
	3    6700 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 64A8E3D4
P 7400 4100
AR Path="/64A8E3D4" Ref="U?"  Part="4" 
AR Path="/649D105F/64A8E3D4" Ref="U3"  Part="4" 
F 0 "U3" H 7400 4425 50  0000 C CNN
F 1 "74LS32" H 7400 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7400 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7400 4100 50  0001 C CNN
	4    7400 4100
	1    0    0    -1  
$EndComp
Text Notes 5600 2700 0    50   ~ 0
Reset: 10001101b (0x4d, 141d)\nThis is the final value in a packet. At this point,\nthe counter will reset and start the break again.\n\nIts' chosen because it's a value which is unlikely\nto be used in a packet, i.e. sample reset and latch \nany dimmer and shift load while enabled while \ntransmitting a break.\n
$Comp
L 74xx:74LS32 U?
U 2 1 64A8E3DC
P 6000 5050
AR Path="/64A8E3DC" Ref="U?"  Part="2" 
AR Path="/632F1F43/64A8E3DC" Ref="U?"  Part="2" 
AR Path="/63267F40/64A8E3DC" Ref="U?"  Part="2" 
AR Path="/649D105F/64A8E3DC" Ref="U3"  Part="2" 
F 0 "U3" H 6000 4733 50  0000 C CNN
F 1 "74LS32" H 6000 4824 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6000 5050 50  0001 C CNN
	2    6000 5050
	1    0    0    1   
$EndComp
Text Notes 6800 4550 2    50   ~ 0
Reset
Wire Wire Line
	5700 3800 5650 3800
Wire Wire Line
	6300 4500 6350 4500
Wire Wire Line
	6400 4100 6350 4100
Wire Wire Line
	6400 3900 6300 3900
Wire Wire Line
	6350 4100 6350 4500
Wire Wire Line
	5700 4000 5550 4000
Wire Wire Line
	5700 4400 5450 4400
Wire Wire Line
	5000 2900 5150 2900
Wire Wire Line
	5000 3400 5450 3400
Wire Wire Line
	5650 3800 5650 3500
Connection ~ 5650 3500
$Comp
L 74xx:74LS00 U?
U 1 1 64A8E3EF
P 6000 3900
AR Path="/64A8E3EF" Ref="U?"  Part="1" 
AR Path="/649D105F/64A8E3EF" Ref="U1"  Part="1" 
F 0 "U1" H 6000 4225 50  0000 C CNN
F 1 "74LS00" H 6000 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6000 3900 50  0001 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3300 5350 3300
Wire Wire Line
	5000 3200 5250 3200
Wire Wire Line
	5350 4600 5700 4600
$Comp
L 74xx:74LS32 U?
U 1 1 64A8E3F9
P 6000 4500
AR Path="/64A8E3F9" Ref="U?"  Part="1" 
AR Path="/649D105F/64A8E3F9" Ref="U3"  Part="1" 
F 0 "U3" H 6000 4825 50  0000 C CNN
F 1 "74LS32" H 6000 4734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6000 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6000 4500 50  0001 C CNN
	1    6000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5150 5700 5150
Wire Wire Line
	5150 5150 5150 2900
Connection ~ 5150 2900
Wire Wire Line
	5250 3200 5250 4950
Wire Wire Line
	5250 4950 5700 4950
Connection ~ 5250 3200
Wire Wire Line
	5550 4000 5550 2800
Connection ~ 5550 2800
Wire Wire Line
	5000 2800 5550 2800
Wire Wire Line
	5350 4600 5350 3300
Connection ~ 5350 3300
Wire Wire Line
	5450 3400 5450 4400
Connection ~ 5450 3400
Wire Wire Line
	6300 5050 7050 5050
Wire Wire Line
	7050 5050 7050 4200
Wire Wire Line
	7050 4200 7100 4200
Wire Wire Line
	7000 4000 7100 4000
Wire Wire Line
	5000 3000 8300 3000
Wire Wire Line
	5000 3100 8300 3100
Wire Wire Line
	5650 3500 8300 3500
Wire Wire Line
	5150 2900 8300 2900
Wire Wire Line
	5250 3200 8300 3200
Wire Wire Line
	5550 2800 8300 2800
Wire Wire Line
	5350 3300 8300 3300
Wire Wire Line
	5450 3400 8300 3400
Entry Wire Line
	3900 3500 4000 3600
Entry Wire Line
	3900 3600 4000 3700
Entry Wire Line
	3900 3700 4000 3800
Entry Wire Line
	3900 3800 4000 3900
Text Label 4000 3600 0    50   ~ 0
IA8
Text Label 4000 3700 0    50   ~ 0
IA9
Text Label 4000 3800 0    50   ~ 0
IA10
Text Label 4000 3900 0    50   ~ 0
IA11
Wire Wire Line
	4000 3600 4200 3600
Wire Wire Line
	4000 3700 4200 3700
Wire Wire Line
	4000 3800 4200 3800
Wire Wire Line
	4000 3900 4200 3900
Text HLabel 8300 4100 2    50   Input ~ 0
~FRAME_RESET_OUT
Wire Wire Line
	7700 4100 8300 4100
Text HLabel 2950 1800 0    50   Input ~ 0
IA[0..11]
Wire Bus Line
	2950 1800 3800 1800
Text HLabel 8300 3500 2    50   Input ~ 0
SAMPLE_SEL1_OUT
Text HLabel 8300 3400 2    50   Input ~ 0
SAMPLE_SEL0_OUT
Text HLabel 8300 3000 2    50   Input ~ 0
~SHIFT_ENABLE_OUT
Text HLabel 8300 3100 2    50   Input ~ 0
~SHIFT_LOAD_OUT
Text HLabel 8300 3200 2    50   Input ~ 0
SAMPLE_LATCH_OUT
Text HLabel 8300 3300 2    50   Input ~ 0
~SAMPLE_RESET_OUT
Text HLabel 8300 2900 2    50   Input ~ 0
SHIFT_TRANSMIT_OUT
Text HLabel 8300 2800 2    50   Input ~ 0
DATA_FIXED_OUT
Wire Bus Line
	3900 1900 3900 3800
$EndSCHEMATC
