EESchema Schematic File Version 4
LIBS:control-eprom-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Transmitter-Retro EEPROM (DMX-TX6)"
Date "2023-05-28"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text Label 9050 3500 2    50   ~ 0
SAMPLE_LATCH
Text Label 9050 3200 2    50   ~ 0
~SAMPLE_RESET
Text Label 9050 3300 2    50   ~ 0
SAMPLE_SEL0
Text Label 9050 3400 2    50   ~ 0
SAMPLE_SEL1
Text Label 9050 3100 2    50   ~ 0
~SHIFT_LOAD
Text Label 9050 3000 2    50   ~ 0
~SHIFT_ENABLE
Text Label 9050 2900 2    50   ~ 0
SHIFT_TRANSMIT
Text Label 9050 2800 2    50   ~ 0
DATA_FIXED
$Comp
L Memory_EPROM:27128 U5
U 1 1 64FD6B17
P 5150 3700
AR Path="/64FD6B17" Ref="U5"  Part="1" 
AR Path="/632F1F43/64FD6B17" Ref="U?"  Part="1" 
AR Path="/63267F40/64FD6B17" Ref="U?"  Part="1" 
AR Path="/649D105F/64FD6B17" Ref="U?"  Part="1" 
AR Path="/642A2855/64FD6B17" Ref="U?"  Part="1" 
F 0 "U5" H 5300 4850 50  0000 C CNN
F 1 "27128" H 5350 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 5150 3700 50  0001 C CNN
F 3 "http://eeshop.unl.edu/pdf/27128.pdf" H 5150 3700 50  0001 C CNN
	1    5150 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 64FD6B1E
P 5150 4800
AR Path="/64FD6B1E" Ref="#PWR0101"  Part="1" 
AR Path="/632F1F43/64FD6B1E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6B1E" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64FD6B1E" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6B1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 5150 4550 50  0001 C CNN
F 1 "GND" H 5155 4627 50  0000 C CNN
F 2 "" H 5150 4800 50  0001 C CNN
F 3 "" H 5150 4800 50  0001 C CNN
	1    5150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 64FD6B24
P 5150 2500
AR Path="/64FD6B24" Ref="#PWR0102"  Part="1" 
AR Path="/632F1F43/64FD6B24" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6B24" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64FD6B24" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6B24" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 5150 2350 50  0001 C CNN
F 1 "+5V" H 5165 2673 50  0000 C CNN
F 2 "" H 5150 2500 50  0001 C CNN
F 3 "" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4400 4650 4400
Wire Wire Line
	4750 4500 4650 4500
Wire Wire Line
	4750 4600 4650 4600
Wire Wire Line
	4550 4600 4550 4800
$Comp
L power:GND #PWR0103
U 1 1 64FD6B34
P 4550 4800
AR Path="/64FD6B34" Ref="#PWR0103"  Part="1" 
AR Path="/632F1F43/64FD6B34" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6B34" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64FD6B34" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6B34" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 4550 4550 50  0001 C CNN
F 1 "GND" H 4555 4627 50  0000 C CNN
F 2 "" H 4550 4800 50  0001 C CNN
F 3 "" H 4550 4800 50  0001 C CNN
	1    4550 4800
	1    0    0    -1  
$EndComp
Entry Wire Line
	4450 2700 4550 2800
Entry Wire Line
	4450 2800 4550 2900
Entry Wire Line
	4450 2900 4550 3000
Entry Wire Line
	4450 3000 4550 3100
Entry Wire Line
	4450 3100 4550 3200
Entry Wire Line
	4450 3200 4550 3300
Entry Wire Line
	4450 3300 4550 3400
Entry Wire Line
	4450 3400 4550 3500
$Comp
L power:+5V #PWR0104
U 1 1 64FD6B42
P 4550 4350
AR Path="/64FD6B42" Ref="#PWR0104"  Part="1" 
AR Path="/632F1F43/64FD6B42" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6B42" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64FD6B42" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6B42" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 4550 4200 50  0001 C CNN
F 1 "+5V" H 4565 4523 50  0000 C CNN
F 2 "" H 4550 4350 50  0001 C CNN
F 3 "" H 4550 4350 50  0001 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
Text Label 4550 2800 0    50   ~ 0
IA0
Text Label 4550 2900 0    50   ~ 0
IA1
Text Label 4550 3000 0    50   ~ 0
IA2
Text Label 4550 3100 0    50   ~ 0
IA3
Text Label 4550 3200 0    50   ~ 0
IA4
Text Label 4550 3300 0    50   ~ 0
IA5
Text Label 4550 3400 0    50   ~ 0
IA6
Text Label 4550 3500 0    50   ~ 0
IA7
Text Notes 4950 2150 0    50   ~ 0
Instruction\nEPROM
Entry Bus Bus
	4350 1350 4450 1450
$Comp
L 74xx:74LS32 U7
U 3 1 64FD6B5B
P 7400 4400
AR Path="/64FD6B5B" Ref="U7"  Part="3" 
AR Path="/649D105F/64FD6B5B" Ref="U?"  Part="3" 
AR Path="/642A2855/64FD6B5B" Ref="U?"  Part="3" 
F 0 "U7" H 7400 4200 50  0000 C CNN
F 1 "74LS32" H 7400 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7400 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7400 4400 50  0001 C CNN
	3    7400 4400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U7
U 4 1 64FD6B62
P 8100 4100
AR Path="/64FD6B62" Ref="U7"  Part="4" 
AR Path="/649D105F/64FD6B62" Ref="U?"  Part="4" 
AR Path="/642A2855/64FD6B62" Ref="U?"  Part="4" 
F 0 "U7" H 8100 3900 50  0000 C CNN
F 1 "74LS32" H 8100 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8100 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8100 4100 50  0001 C CNN
	4    8100 4100
	1    0    0    -1  
$EndComp
Text Notes 6650 2650 0    50   ~ 0
Frame Reset Value: 00000001b (0x01, 1d). This is the final instruction value in a packet;\nthe counter will reset and start the break again. This allows the data in U5 to determine when\nthe reset occurs, i.e., the timing of the reset can be programmed as part of the control instructions.\n\nIt's chosen because it's a value which is not used at any point in a real packet, i.e.,\n\nDATA_FIXED = Don't care\nSHIFT_TRANSMIT = 0\n~SHIFT_ENABLE~ = 0\n~SHIFT_LOAD~ = 0\n~SAMPLE_RESET~ = 0\nSAMPLE_SEL0 = Don't care\nSAMPLE_SEL1 = Don't care\nSAMPLE_LATCH = 0\n\ndoes not make much sense as a real instruction. Note that\nSHIFT_TRANSMIT is 0 is 0 so the value sent to DATA_RX_OUT\ncomes from DATA_FIXED. It's can either be 0, i.e., the first bit\nin a packet, or 1, i.e., the last bit in a packet. We use 1 since\nit makes more sense that the reset value is the last value in\nthe packet. Since there are 3 "don't care" bits, there are a\ntotal of 8 values which will cause a reset, but the most logical\nvalue to choose is 00000001b (0x01, 1d).\n\n
$Comp
L 74xx:74LS32 U7
U 2 1 64FD6B6A
P 7400 3800
AR Path="/64FD6B6A" Ref="U7"  Part="2" 
AR Path="/632F1F43/64FD6B6A" Ref="U?"  Part="2" 
AR Path="/63267F40/64FD6B6A" Ref="U?"  Part="2" 
AR Path="/649D105F/64FD6B6A" Ref="U?"  Part="2" 
AR Path="/642A2855/64FD6B6A" Ref="U?"  Part="2" 
F 0 "U7" H 7400 4000 50  0000 C CNN
F 1 "74LS32" H 7400 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7400 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7400 3800 50  0001 C CNN
	2    7400 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 3800 7750 3800
Wire Wire Line
	7100 3700 7050 3700
Wire Wire Line
	6950 3900 7100 3900
Wire Wire Line
	6750 4500 7100 4500
Wire Wire Line
	6850 4300 7100 4300
Entry Wire Line
	4450 3500 4550 3600
Entry Wire Line
	4450 3600 4550 3700
Entry Wire Line
	4450 3700 4550 3800
Entry Wire Line
	4450 3800 4550 3900
Text Label 4550 3600 0    50   ~ 0
IA8
Text Label 4550 3700 0    50   ~ 0
IA9
Text Label 4550 3800 0    50   ~ 0
IA10
Text Label 4550 3900 0    50   ~ 0
IA11
$Comp
L 74xx:74LS161 U1
U 1 1 64FD6BA1
P 1650 2400
AR Path="/64FD6BA1" Ref="U1"  Part="1" 
AR Path="/632F1F43/64FD6BA1" Ref="U?"  Part="1" 
AR Path="/63267F40/64FD6BA1" Ref="U?"  Part="1" 
AR Path="/649D0DCA/64FD6BA1" Ref="U?"  Part="1" 
AR Path="/642A2855/64FD6BA1" Ref="U?"  Part="1" 
F 0 "U1" H 1750 3150 50  0000 C CNN
F 1 "74LS161" H 1850 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1650 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 1650 2400 50  0001 C CNN
	1    1650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2600 1000 2600
Wire Wire Line
	1150 2200 900  2200
Wire Wire Line
	900  2200 900  3200
Wire Wire Line
	900  2200 900  2100
Wire Wire Line
	900  2100 1150 2100
Connection ~ 900  2200
Wire Wire Line
	900  2100 900  2000
Wire Wire Line
	900  2000 1150 2000
Connection ~ 900  2100
Wire Wire Line
	900  2000 900  1900
Wire Wire Line
	900  1900 1150 1900
Connection ~ 900  2000
$Comp
L power:GND #PWR0105
U 1 1 64FD6BB4
P 900 3200
AR Path="/64FD6BB4" Ref="#PWR0105"  Part="1" 
AR Path="/632F1F43/64FD6BB4" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6BB4" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6BB4" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6BB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 900 2950 50  0001 C CNN
F 1 "GND" H 905 3027 50  0000 C CNN
F 2 "" H 900 3200 50  0001 C CNN
F 3 "" H 900 3200 50  0001 C CNN
	1    900  3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2500 1000 2500
Connection ~ 1000 2500
Wire Wire Line
	1000 2500 1000 2600
$Comp
L power:+5V #PWR0106
U 1 1 64FD6BBF
P 1650 1600
AR Path="/64FD6BBF" Ref="#PWR0106"  Part="1" 
AR Path="/632F1F43/64FD6BBF" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6BBF" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6BBF" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6BBF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 1650 1450 50  0001 C CNN
F 1 "+5V" H 1665 1773 50  0000 C CNN
F 2 "" H 1650 1600 50  0001 C CNN
F 3 "" H 1650 1600 50  0001 C CNN
	1    1650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1900 2300 1900
Wire Wire Line
	2150 2000 2300 2000
Wire Wire Line
	2150 2100 2300 2100
Text Notes 2600 1600 0    50   ~ 0
Address\nCounter
$Comp
L power:+5V #PWR?
U 1 1 64FD6BCA
P 1000 1600
AR Path="/6841E790/64FD6BCA" Ref="#PWR?"  Part="1" 
AR Path="/64FD6BCA" Ref="#PWR0107"  Part="1" 
AR Path="/632F1F43/64FD6BCA" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6BCA" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6BCA" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6BCA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 1000 1450 50  0001 C CNN
F 1 "+5V" H 1015 1773 50  0000 C CNN
F 2 "" H 1000 1600 50  0001 C CNN
F 3 "" H 1000 1600 50  0001 C CNN
	1    1000 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U2
U 1 1 64FD6BD0
P 1650 4500
AR Path="/64FD6BD0" Ref="U2"  Part="1" 
AR Path="/632F1F43/64FD6BD0" Ref="U?"  Part="1" 
AR Path="/63267F40/64FD6BD0" Ref="U?"  Part="1" 
AR Path="/649D0DCA/64FD6BD0" Ref="U?"  Part="1" 
AR Path="/642A2855/64FD6BD0" Ref="U?"  Part="1" 
F 0 "U2" H 1750 5250 50  0000 C CNN
F 1 "74LS161" H 1850 5150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1650 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 1650 4500 50  0001 C CNN
	1    1650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4300 1000 4300
Wire Wire Line
	1000 4300 1000 5300
Wire Wire Line
	1000 4300 1000 4200
Wire Wire Line
	1000 4200 1150 4200
Connection ~ 1000 4300
Wire Wire Line
	1000 4200 1000 4100
Wire Wire Line
	1000 4100 1150 4100
Connection ~ 1000 4200
Wire Wire Line
	1000 4100 1000 4000
Wire Wire Line
	1000 4000 1150 4000
Connection ~ 1000 4100
$Comp
L power:GND #PWR0109
U 1 1 64FD6BE8
P 1000 5300
AR Path="/64FD6BE8" Ref="#PWR0109"  Part="1" 
AR Path="/632F1F43/64FD6BE8" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6BE8" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6BE8" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6BE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 1000 5050 50  0001 C CNN
F 1 "GND" H 1005 5127 50  0000 C CNN
F 2 "" H 1000 5300 50  0001 C CNN
F 3 "" H 1000 5300 50  0001 C CNN
	1    1000 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 64FD6BF0
P 1650 3700
AR Path="/64FD6BF0" Ref="#PWR0110"  Part="1" 
AR Path="/632F1F43/64FD6BF0" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6BF0" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6BF0" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6BF0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 1650 3550 50  0001 C CNN
F 1 "+5V" H 1665 3873 50  0000 C CNN
F 2 "" H 1650 3700 50  0001 C CNN
F 3 "" H 1650 3700 50  0001 C CNN
	1    1650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4000 2300 4000
Wire Wire Line
	2150 4100 2300 4100
Wire Wire Line
	2150 4200 2300 4200
$Comp
L power:+5V #PWR?
U 1 1 64FD6BF9
P 1100 3700
AR Path="/6841E790/64FD6BF9" Ref="#PWR?"  Part="1" 
AR Path="/64FD6BF9" Ref="#PWR0111"  Part="1" 
AR Path="/632F1F43/64FD6BF9" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6BF9" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6BF9" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6BF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 1100 3550 50  0001 C CNN
F 1 "+5V" H 1115 3873 50  0000 C CNN
F 2 "" H 1100 3700 50  0001 C CNN
F 3 "" H 1100 3700 50  0001 C CNN
	1    1100 3700
	1    0    0    -1  
$EndComp
Entry Wire Line
	2300 1900 2400 1800
Entry Wire Line
	2300 2000 2400 1900
Entry Wire Line
	2300 2100 2400 2000
Entry Wire Line
	2300 2200 2400 2100
Wire Wire Line
	2150 2400 2300 2400
Wire Wire Line
	2150 2200 2300 2200
Wire Wire Line
	900  4700 1150 4700
Entry Wire Line
	2300 4300 2400 4200
Entry Wire Line
	2300 4200 2400 4100
Entry Wire Line
	2300 4100 2400 4000
Entry Wire Line
	2300 4000 2400 3900
Wire Wire Line
	2150 4300 2300 4300
Entry Bus Bus
	2400 1450 2500 1350
Text Label 2150 1900 0    50   ~ 0
IA0
Text Label 2150 2000 0    50   ~ 0
IA1
Text Label 2150 2100 0    50   ~ 0
IA2
Text Label 2150 2200 0    50   ~ 0
IA3
Text Label 2150 4000 0    50   ~ 0
IA4
Text Label 2150 4100 0    50   ~ 0
IA5
Text Label 2150 4200 0    50   ~ 0
IA6
Text Label 2150 4300 0    50   ~ 0
IA7
Wire Wire Line
	1100 4600 1150 4600
$Comp
L 74xx:74LS161 U3
U 1 1 64FD6C15
P 3700 2400
AR Path="/64FD6C15" Ref="U3"  Part="1" 
AR Path="/632F1F43/64FD6C15" Ref="U?"  Part="1" 
AR Path="/63267F40/64FD6C15" Ref="U?"  Part="1" 
AR Path="/649D0DCA/64FD6C15" Ref="U?"  Part="1" 
AR Path="/642A2855/64FD6C15" Ref="U?"  Part="1" 
F 0 "U3" H 3800 3150 50  0000 C CNN
F 1 "74LS161" H 3900 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3700 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3700 2400 50  0001 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2200 3050 2200
Wire Wire Line
	3050 2200 3050 3200
Wire Wire Line
	3050 2200 3050 2100
Wire Wire Line
	3050 2100 3200 2100
Connection ~ 3050 2200
Wire Wire Line
	3050 2100 3050 2000
Wire Wire Line
	3050 2000 3200 2000
Connection ~ 3050 2100
Wire Wire Line
	3050 2000 3050 1900
Wire Wire Line
	3050 1900 3200 1900
Connection ~ 3050 2000
$Comp
L power:GND #PWR0113
U 1 1 64FD6C2E
P 3050 3200
AR Path="/64FD6C2E" Ref="#PWR0113"  Part="1" 
AR Path="/632F1F43/64FD6C2E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6C2E" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6C2E" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6C2E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 3050 2950 50  0001 C CNN
F 1 "GND" H 3055 3027 50  0000 C CNN
F 2 "" H 3050 3200 50  0001 C CNN
F 3 "" H 3050 3200 50  0001 C CNN
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 64FD6C36
P 3700 1600
AR Path="/64FD6C36" Ref="#PWR0114"  Part="1" 
AR Path="/632F1F43/64FD6C36" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6C36" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6C36" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6C36" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 3700 1450 50  0001 C CNN
F 1 "+5V" H 3715 1773 50  0000 C CNN
F 2 "" H 3700 1600 50  0001 C CNN
F 3 "" H 3700 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64FD6C3F
P 3150 1600
AR Path="/6841E790/64FD6C3F" Ref="#PWR?"  Part="1" 
AR Path="/64FD6C3F" Ref="#PWR0115"  Part="1" 
AR Path="/632F1F43/64FD6C3F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6C3F" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64FD6C3F" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6C3F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 3150 1450 50  0001 C CNN
F 1 "+5V" H 3165 1773 50  0000 C CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2700 3200 2700
Entry Wire Line
	4350 2200 4450 2100
Entry Wire Line
	4350 2100 4450 2000
Entry Wire Line
	4350 2000 4450 1900
Entry Wire Line
	4350 1900 4450 1800
Text Label 4200 1900 0    50   ~ 0
IA8
Text Label 4200 2000 0    50   ~ 0
IA9
Text Label 4200 2100 0    50   ~ 0
IA10
Text Label 4200 2200 0    50   ~ 0
IA11
Wire Wire Line
	3150 2500 3200 2500
Text Notes 900  1300 0    50   ~ 0
The address counters U1-U4 count from 0-16383 and that value is sent to U5, which uses that value\nto "lookup" the value to be sent to the control lines.  U5 is programmed such that the value at address 0 \nis the instructions for the 1st bit in the packet, address 1 contains the instructions for the 2nd bit,...\n\n0-8191 is required since a DMX-512 packet needs 5670 bits minimum to form a complete packet,\ni.e., this circuit can generate a DMX-512 stream. This requires a total of 4 counters so an additional\naddress line, A13, is used since it's simple to include.
Entry Wire Line
	4450 3900 4550 4000
Text Label 4550 4000 0    50   ~ 0
IA12
Wire Wire Line
	900  3450 2300 3450
Wire Wire Line
	2300 2400 2300 3450
Wire Wire Line
	600  2700 600  4800
Wire Wire Line
	600  2700 1150 2700
$Comp
L power:GND #PWR0116
U 1 1 64FD6C84
P 1650 3200
AR Path="/64FD6C84" Ref="#PWR0116"  Part="1" 
AR Path="/632F1F43/64FD6C84" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6C84" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64FD6C84" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6C84" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 1650 2950 50  0001 C CNN
F 1 "GND" H 1655 3027 50  0000 C CNN
F 2 "" H 1650 3200 50  0001 C CNN
F 3 "" H 1650 3200 50  0001 C CNN
	1    1650 3200
	1    0    0    -1  
$EndComp
Connection ~ 600  4800
Wire Wire Line
	900  4700 900  3450
Wire Wire Line
	600  4800 1150 4800
Wire Wire Line
	600  4800 600  5750
Wire Wire Line
	2150 4500 2550 4500
Wire Wire Line
	4300 3450 4300 2400
Wire Wire Line
	4300 2400 4200 2400
Text Label 1950 3450 0    50   ~ 0
CARRY_0
Text Label 2200 4500 0    50   ~ 0
CARRY_1
Text Label 3950 3450 0    50   ~ 0
CARRY_2
$Comp
L power:+5V #PWR0118
U 1 1 64FD6D0E
P 6200 4700
AR Path="/64FD6D0E" Ref="#PWR0118"  Part="1" 
AR Path="/632F1F43/64FD6D0E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64FD6D0E" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64FD6D0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 6200 4550 50  0001 C CNN
F 1 "+5V" H 6215 4873 50  0000 C CNN
F 2 "" H 6200 4700 50  0001 C CNN
F 3 "" H 6200 4700 50  0001 C CNN
	1    6200 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 4000 7750 4000
Wire Wire Line
	7750 4000 7750 3800
Wire Wire Line
	7800 4200 7750 4200
Wire Wire Line
	7750 4200 7750 4400
Wire Wire Line
	7750 4400 7700 4400
$Comp
L Device:R_US R1
U 1 1 6458F33C
P 6200 4850
F 0 "R1" H 6268 4896 50  0000 L CNN
F 1 "10k" H 6268 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6240 4840 50  0001 C CNN
F 3 "~" H 6200 4850 50  0001 C CNN
	1    6200 4850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 6458F3C1
P 6200 5200
F 0 "C10" H 6292 5246 50  0000 L CNN
F 1 "0.1uF" H 6292 5155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 6200 5200 50  0001 C CNN
F 3 "~" H 6200 5200 50  0001 C CNN
	1    6200 5200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6459BA95
P 6200 5300
AR Path="/6459BA95" Ref="#PWR0119"  Part="1" 
AR Path="/632F1F43/6459BA95" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6459BA95" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/6459BA95" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/6459BA95" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 6200 5050 50  0001 C CNN
F 1 "GND" H 6205 5127 50  0000 C CNN
F 2 "" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 6461A571
P 6100 7400
AR Path="/649D1081/6461A571" Ref="MH?"  Part="1" 
AR Path="/6461A571" Ref="MH4"  Part="1" 
F 0 "MH4" H 6200 7446 50  0000 L CNN
F 1 "MountingHole" H 6200 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6100 7400 50  0001 C CNN
F 3 "~" H 6100 7400 50  0001 C CNN
	1    6100 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 6461A578
P 6100 7150
AR Path="/649D1081/6461A578" Ref="MH?"  Part="1" 
AR Path="/6461A578" Ref="MH3"  Part="1" 
F 0 "MH3" H 6200 7196 50  0000 L CNN
F 1 "MountingHole" H 6200 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6100 7150 50  0001 C CNN
F 3 "~" H 6100 7150 50  0001 C CNN
	1    6100 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 6461A57F
P 6100 6900
AR Path="/649D1081/6461A57F" Ref="MH?"  Part="1" 
AR Path="/6461A57F" Ref="MH2"  Part="1" 
F 0 "MH2" H 6200 6946 50  0000 L CNN
F 1 "MountingHole" H 6200 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6100 6900 50  0001 C CNN
F 3 "~" H 6100 6900 50  0001 C CNN
	1    6100 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 6461A586
P 6100 6650
AR Path="/649D1081/6461A586" Ref="MH?"  Part="1" 
AR Path="/6461A586" Ref="MH1"  Part="1" 
F 0 "MH1" H 6200 6696 50  0000 L CNN
F 1 "MountingHole" H 6200 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6100 6650 50  0001 C CNN
F 3 "~" H 6100 6650 50  0001 C CNN
	1    6100 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U7
U 5 1 6461A594
P 900 7000
AR Path="/6461A594" Ref="U7"  Part="5" 
AR Path="/649D1081/6461A594" Ref="U?"  Part="5" 
F 0 "U7" H 1130 7046 50  0000 L CNN
F 1 "74LS32" H 1130 6955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 900 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 900 7000 50  0001 C CNN
	5    900  7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 646240FB
P 1850 7000
AR Path="/5F2B3F8A/646240FB" Ref="C?"  Part="1" 
AR Path="/5F2B505F/646240FB" Ref="C?"  Part="1" 
AR Path="/6BB77A68/646240FB" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/646240FB" Ref="C?"  Part="1" 
AR Path="/646240FB" Ref="C1"  Part="1" 
AR Path="/649D1081/646240FB" Ref="C?"  Part="1" 
F 0 "C1" H 1965 7046 50  0000 L CNN
F 1 "0.1uF" H 1965 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 1888 6850 50  0001 C CNN
F 3 "~" H 1850 7000 50  0001 C CNN
	1    1850 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64624102
P 2300 7000
AR Path="/5F2B3F8A/64624102" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64624102" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64624102" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64624102" Ref="C?"  Part="1" 
AR Path="/64624102" Ref="C2"  Part="1" 
AR Path="/649D1081/64624102" Ref="C?"  Part="1" 
F 0 "C2" H 2415 7046 50  0000 L CNN
F 1 "0.1uF" H 2415 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2338 6850 50  0001 C CNN
F 3 "~" H 2300 7000 50  0001 C CNN
	1    2300 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64624109
P 2750 7000
AR Path="/5F2B3F8A/64624109" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64624109" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64624109" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64624109" Ref="C?"  Part="1" 
AR Path="/64624109" Ref="C3"  Part="1" 
AR Path="/649D1081/64624109" Ref="C?"  Part="1" 
F 0 "C3" H 2865 7046 50  0000 L CNN
F 1 "0.1uF" H 2865 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2788 6850 50  0001 C CNN
F 3 "~" H 2750 7000 50  0001 C CNN
	1    2750 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64624110
P 3200 7000
AR Path="/5F2B3F8A/64624110" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64624110" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64624110" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64624110" Ref="C?"  Part="1" 
AR Path="/64624110" Ref="C4"  Part="1" 
AR Path="/649D1081/64624110" Ref="C?"  Part="1" 
F 0 "C4" H 3315 7046 50  0000 L CNN
F 1 "0.1uF" H 3315 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3238 6850 50  0001 C CNN
F 3 "~" H 3200 7000 50  0001 C CNN
	1    3200 7000
	1    0    0    -1  
$EndComp
Connection ~ 2300 6550
Wire Wire Line
	2300 6550 1850 6550
Connection ~ 2750 6550
Wire Wire Line
	2750 6550 2300 6550
Connection ~ 3200 6550
Wire Wire Line
	3200 6550 2750 6550
Connection ~ 2300 7450
Connection ~ 2750 7450
Wire Wire Line
	2750 7450 2300 7450
Wire Wire Line
	3200 7450 2750 7450
Wire Wire Line
	3200 6550 3200 6500
$Comp
L Device:C C?
U 1 1 64624153
P 3700 7000
AR Path="/5F2B3F8A/64624153" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64624153" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64624153" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64624153" Ref="C?"  Part="1" 
AR Path="/64624153" Ref="C5"  Part="1" 
AR Path="/649D1081/64624153" Ref="C?"  Part="1" 
F 0 "C5" H 3815 7046 50  0000 L CNN
F 1 "0.1uF" H 3815 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3738 6850 50  0001 C CNN
F 3 "~" H 3700 7000 50  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6462415A
P 4150 7000
AR Path="/5F2B3F8A/6462415A" Ref="C?"  Part="1" 
AR Path="/5F2B505F/6462415A" Ref="C?"  Part="1" 
AR Path="/6BB77A68/6462415A" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/6462415A" Ref="C?"  Part="1" 
AR Path="/6462415A" Ref="C6"  Part="1" 
AR Path="/649D1081/6462415A" Ref="C?"  Part="1" 
F 0 "C6" H 4265 7046 50  0000 L CNN
F 1 "0.1uF" H 4265 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4188 6850 50  0001 C CNN
F 3 "~" H 4150 7000 50  0001 C CNN
	1    4150 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64624161
P 5050 7000
AR Path="/5F2B3F8A/64624161" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64624161" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64624161" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64624161" Ref="C?"  Part="1" 
AR Path="/64624161" Ref="C8"  Part="1" 
AR Path="/649D1081/64624161" Ref="C?"  Part="1" 
F 0 "C8" H 5165 7046 50  0000 L CNN
F 1 "0.1uF" H 5165 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5088 6850 50  0001 C CNN
F 3 "~" H 5050 7000 50  0001 C CNN
	1    5050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6550 5050 6550
Connection ~ 3700 6550
Wire Wire Line
	3700 6550 4150 6550
Wire Wire Line
	4600 7450 5050 7450
Connection ~ 3700 7450
Wire Wire Line
	3700 7450 4150 7450
Text Notes 650  6100 0    50   ~ 0
Logic Ic Power
Text Notes 3250 6100 0    50   ~ 0
Decoupling Capacitors
$Comp
L power:GND #PWR0122
U 1 1 6467BCC2
P 900 7500
AR Path="/6467BCC2" Ref="#PWR0122"  Part="1" 
AR Path="/632F1F43/6467BCC2" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6467BCC2" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/6467BCC2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 900 7250 50  0001 C CNN
F 1 "GND" H 905 7327 50  0000 C CNN
F 2 "" H 900 7500 50  0001 C CNN
F 3 "" H 900 7500 50  0001 C CNN
	1    900  7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6469918A
P 900 6500
AR Path="/6841E790/6469918A" Ref="#PWR?"  Part="1" 
AR Path="/6469918A" Ref="#PWR0123"  Part="1" 
AR Path="/632F1F43/6469918A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6469918A" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/6469918A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 900 6350 50  0001 C CNN
F 1 "+5V" H 915 6673 50  0000 C CNN
F 2 "" H 900 6500 50  0001 C CNN
F 3 "" H 900 6500 50  0001 C CNN
	1    900  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6850 1850 6550
Wire Wire Line
	2300 6850 2300 6550
Wire Wire Line
	2750 6850 2750 6550
Wire Wire Line
	3200 6850 3200 6550
Wire Wire Line
	3700 6850 3700 6550
Wire Wire Line
	4150 6850 4150 6550
Wire Wire Line
	5050 6850 5050 6550
Wire Wire Line
	1850 7150 1850 7450
Wire Wire Line
	2300 7150 2300 7450
Wire Wire Line
	2750 7150 2750 7450
Wire Wire Line
	3200 7150 3200 7450
Wire Wire Line
	3700 7150 3700 7450
Wire Wire Line
	4150 7150 4150 7450
Wire Wire Line
	5050 7150 5050 7450
$Comp
L power:+5V #PWR?
U 1 1 645C583D
P 3200 6500
AR Path="/6841E790/645C583D" Ref="#PWR?"  Part="1" 
AR Path="/645C583D" Ref="#PWR0124"  Part="1" 
AR Path="/632F1F43/645C583D" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645C583D" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/645C583D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0124" H 3200 6350 50  0001 C CNN
F 1 "+5V" H 3215 6673 50  0000 C CNN
F 2 "" H 3200 6500 50  0001 C CNN
F 3 "" H 3200 6500 50  0001 C CNN
	1    3200 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 645C5896
P 3200 7500
AR Path="/645C5896" Ref="#PWR0125"  Part="1" 
AR Path="/632F1F43/645C5896" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/645C5896" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/645C5896" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 3200 7250 50  0001 C CNN
F 1 "GND" H 3205 7327 50  0000 C CNN
F 2 "" H 3200 7500 50  0001 C CNN
F 3 "" H 3200 7500 50  0001 C CNN
	1    3200 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7450 3200 7500
$Comp
L Device:CP1 C9
U 1 1 64611F7B
P 5500 7000
F 0 "C9" H 5615 7046 50  0000 L CNN
F 1 "10uF" H 5615 6955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 5500 7000 50  0001 C CNN
F 3 "~" H 5500 7000 50  0001 C CNN
	1    5500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6550 5500 6550
Wire Wire Line
	5500 6550 5500 6850
Connection ~ 5050 6550
Wire Wire Line
	5050 7450 5500 7450
Wire Wire Line
	5500 7450 5500 7150
Connection ~ 5050 7450
Wire Wire Line
	3200 6550 3700 6550
Connection ~ 3200 7450
Wire Wire Line
	3200 7450 3700 7450
Wire Bus Line
	2500 1350 4350 1350
Wire Wire Line
	8400 4100 8450 4100
Wire Wire Line
	8450 3900 8400 3900
Wire Wire Line
	6200 5000 6200 5050
Connection ~ 6200 5050
Wire Wire Line
	6200 5050 6200 5100
$Comp
L power:GND #PWR0126
U 1 1 649956E2
P 9800 4600
AR Path="/649956E2" Ref="#PWR0126"  Part="1" 
AR Path="/632F1F43/649956E2" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/649956E2" Ref="#PWR?"  Part="1" 
AR Path="/649828D0/649956E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 9800 4350 50  0001 C CNN
F 1 "GND" H 9950 4500 50  0000 C CNN
F 2 "" H 9800 4600 50  0001 C CNN
F 3 "" H 9800 4600 50  0001 C CNN
	1    9800 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 4400 9800 4400
Wire Wire Line
	9800 4400 9800 4500
Wire Wire Line
	9900 4500 9800 4500
Connection ~ 9800 4500
Wire Wire Line
	9800 4500 9800 4600
$Comp
L power:+5V #PWR0127
U 1 1 649956ED
P 9800 2500
AR Path="/649956ED" Ref="#PWR0127"  Part="1" 
AR Path="/632F1F43/649956ED" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/649956ED" Ref="#PWR?"  Part="1" 
AR Path="/649828D0/649956ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR0127" H 9800 2350 50  0001 C CNN
F 1 "+5V" H 9815 2673 50  0000 C CNN
F 2 "" H 9800 2500 50  0001 C CNN
F 3 "" H 9800 2500 50  0001 C CNN
	1    9800 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 2700 9800 2700
Wire Wire Line
	9800 2700 9800 2600
Wire Wire Line
	9900 2600 9800 2600
Connection ~ 9800 2600
Wire Wire Line
	9800 2600 9800 2500
$Comp
L power:+5V #PWR0128
U 1 1 649956F8
P 10500 2500
AR Path="/649956F8" Ref="#PWR0128"  Part="1" 
AR Path="/632F1F43/649956F8" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/649956F8" Ref="#PWR?"  Part="1" 
AR Path="/649828D0/649956F8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0128" H 10500 2350 50  0001 C CNN
F 1 "+5V" H 10515 2673 50  0000 C CNN
F 2 "" H 10500 2500 50  0001 C CNN
F 3 "" H 10500 2500 50  0001 C CNN
	1    10500 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10400 2700 10500 2700
Wire Wire Line
	10400 2600 10500 2600
Connection ~ 10500 2600
Wire Wire Line
	10500 2600 10500 2500
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 6499570E
P 10100 3500
AR Path="/63267F40/6499570E" Ref="J?"  Part="1" 
AR Path="/6499570E" Ref="J1"  Part="1" 
AR Path="/649828D0/6499570E" Ref="J?"  Part="1" 
F 0 "J1" H 10150 4617 50  0000 C CNN
F 1 "Expansion" H 10150 4526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 10100 3500 50  0001 C CNN
F 3 "~" H 10100 3500 50  0001 C CNN
	1    10100 3500
	1    0    0    -1  
$EndComp
Text Label 10400 4300 0    50   ~ 0
SAMPLE_LATCH
Text Label 9350 4200 0    50   ~ 0
~SAMPLE_RESET
Text Label 9900 3100 2    50   ~ 0
SAMPLE_SEL0
Text Label 9900 3000 2    50   ~ 0
SAMPLE_SEL1
Text Label 9900 3300 2    50   ~ 0
~SHIFT_LOAD
Text Label 10400 4000 0    50   ~ 0
~SHIFT_ENABLE
Text Label 9900 3400 2    50   ~ 0
SHIFT_TRANSMIT
Text Label 9900 3200 2    50   ~ 0
DATA_FIXED
Text Label 10700 4100 2    50   ~ 0
CLK_TX
Text Label 9900 4000 2    50   ~ 0
~FRAME_RESET
$Comp
L power:GND #PWR0129
U 1 1 64995730
P 10500 4600
AR Path="/64995730" Ref="#PWR0129"  Part="1" 
AR Path="/632F1F43/64995730" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64995730" Ref="#PWR?"  Part="1" 
AR Path="/649828D0/64995730" Ref="#PWR?"  Part="1" 
F 0 "#PWR0129" H 10500 4350 50  0001 C CNN
F 1 "GND" H 10650 4500 50  0000 C CNN
F 2 "" H 10500 4600 50  0001 C CNN
F 3 "" H 10500 4600 50  0001 C CNN
	1    10500 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10500 4500 10500 4600
Wire Wire Line
	10400 4500 10500 4500
Wire Wire Line
	10400 4400 10500 4400
Connection ~ 10500 4500
Wire Wire Line
	10500 4400 10500 4500
Wire Wire Line
	10500 2700 10500 2600
Entry Wire Line
	9100 2800 9200 2700
Entry Wire Line
	9100 2900 9200 2800
Entry Wire Line
	9100 3000 9200 2900
Entry Wire Line
	9100 3100 9200 3000
Entry Wire Line
	9100 3200 9200 3100
Entry Wire Line
	9100 3300 9200 3200
Entry Wire Line
	9100 3400 9200 3300
Entry Wire Line
	9100 3500 9200 3400
Entry Wire Line
	9200 2900 9300 3000
Entry Wire Line
	9200 3000 9300 3100
Entry Wire Line
	9200 3100 9300 3200
Entry Wire Line
	9200 3200 9300 3300
Entry Wire Line
	9200 3300 9300 3400
NoConn ~ 9900 2800
NoConn ~ 9900 2900
NoConn ~ 9900 3600
NoConn ~ 9900 3700
NoConn ~ 9900 3800
NoConn ~ 9900 3900
NoConn ~ 9900 3500
Entry Wire Line
	10950 4300 11050 4200
Entry Wire Line
	10950 4000 11050 3900
Entry Wire Line
	9200 4100 9300 4200
Wire Wire Line
	11150 5750 11150 4100
Wire Wire Line
	11150 4100 10400 4100
NoConn ~ 9900 4300
NoConn ~ 9900 4100
Wire Wire Line
	5650 5050 6200 5050
NoConn ~ 10400 3900
NoConn ~ 10400 3800
NoConn ~ 10400 3700
NoConn ~ 10400 3600
NoConn ~ 10400 3500
NoConn ~ 10400 3400
NoConn ~ 10400 3300
NoConn ~ 10400 3200
NoConn ~ 10400 3100
NoConn ~ 10400 3000
NoConn ~ 10400 2900
NoConn ~ 10400 2800
Wire Wire Line
	10950 4000 10400 4000
Wire Wire Line
	10950 4300 10400 4300
Entry Bus Bus
	10950 2200 11050 2300
Entry Bus Bus
	9200 2300 9300 2200
Wire Wire Line
	7050 3700 7050 3200
Wire Wire Line
	6950 3900 6950 3100
Wire Wire Line
	6850 4300 6850 3000
NoConn ~ 10400 4200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6492BCDF
P 4150 6500
F 0 "#FLG0101" H 4150 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 6674 50  0000 C CNN
F 2 "" H 4150 6500 50  0001 C CNN
F 3 "~" H 4150 6500 50  0001 C CNN
	1    4150 6500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6492BD27
P 4150 7500
F 0 "#FLG0102" H 4150 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 7673 50  0000 C CNN
F 2 "" H 4150 7500 50  0001 C CNN
F 3 "~" H 4150 7500 50  0001 C CNN
	1    4150 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 6500 4150 6550
Wire Wire Line
	4150 7450 4150 7500
Wire Wire Line
	2550 2600 2550 4500
Wire Wire Line
	2650 2700 2650 4800
$Comp
L 74xx:74LS161 U4
U 1 1 64A10E80
P 3700 4500
AR Path="/64A10E80" Ref="U4"  Part="1" 
AR Path="/632F1F43/64A10E80" Ref="U?"  Part="1" 
AR Path="/63267F40/64A10E80" Ref="U?"  Part="1" 
AR Path="/649D0DCA/64A10E80" Ref="U?"  Part="1" 
AR Path="/642A2855/64A10E80" Ref="U?"  Part="1" 
F 0 "U4" H 3800 5250 50  0000 C CNN
F 1 "74LS161" H 3900 5150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3700 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3700 4500 50  0001 C CNN
	1    3700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4300 3050 4300
Wire Wire Line
	3050 4300 3050 5300
Wire Wire Line
	3050 4300 3050 4200
Wire Wire Line
	3050 4200 3200 4200
Connection ~ 3050 4300
Wire Wire Line
	3050 4200 3050 4100
Wire Wire Line
	3050 4100 3200 4100
Connection ~ 3050 4200
Wire Wire Line
	3050 4100 3050 4000
Wire Wire Line
	3050 4000 3200 4000
Connection ~ 3050 4100
$Comp
L power:GND #PWR0108
U 1 1 64A10E98
P 3050 5300
AR Path="/64A10E98" Ref="#PWR0108"  Part="1" 
AR Path="/632F1F43/64A10E98" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A10E98" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64A10E98" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64A10E98" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 3050 5050 50  0001 C CNN
F 1 "GND" H 3055 5127 50  0000 C CNN
F 2 "" H 3050 5300 50  0001 C CNN
F 3 "" H 3050 5300 50  0001 C CNN
	1    3050 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 64A10EA0
P 3700 3700
AR Path="/64A10EA0" Ref="#PWR0112"  Part="1" 
AR Path="/632F1F43/64A10EA0" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A10EA0" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64A10EA0" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64A10EA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 3700 3550 50  0001 C CNN
F 1 "+5V" H 3715 3873 50  0000 C CNN
F 2 "" H 3700 3700 50  0001 C CNN
F 3 "" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64A10EA9
P 3150 3700
AR Path="/6841E790/64A10EA9" Ref="#PWR?"  Part="1" 
AR Path="/64A10EA9" Ref="#PWR0117"  Part="1" 
AR Path="/632F1F43/64A10EA9" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64A10EA9" Ref="#PWR?"  Part="1" 
AR Path="/649D0DCA/64A10EA9" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64A10EA9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 3150 3550 50  0001 C CNN
F 1 "+5V" H 3165 3873 50  0000 C CNN
F 2 "" H 3150 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4800 3200 4800
Entry Wire Line
	4350 4100 4450 4000
Entry Wire Line
	4350 4000 4450 3900
Text Label 4200 4000 0    50   ~ 0
IA12
Text Label 4200 4100 0    50   ~ 0
IA13
Wire Wire Line
	3150 4600 3200 4600
Wire Wire Line
	2650 4800 2650 5750
Connection ~ 2650 4800
Wire Wire Line
	2550 2600 3200 2600
Wire Wire Line
	2950 4700 3200 4700
Wire Wire Line
	1850 7450 2300 7450
Wire Wire Line
	2950 3450 4300 3450
Wire Wire Line
	2950 3450 2950 4700
NoConn ~ 4200 4200
NoConn ~ 4200 4300
NoConn ~ 4200 4500
Entry Wire Line
	4450 4000 4550 4100
Text Label 4550 4100 0    50   ~ 0
IA13
$Comp
L power:GND #PWR0120
U 1 1 64B7673B
P 3700 5300
AR Path="/64B7673B" Ref="#PWR0120"  Part="1" 
AR Path="/632F1F43/64B7673B" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B7673B" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64B7673B" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B7673B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 3700 5050 50  0001 C CNN
F 1 "GND" H 3705 5127 50  0000 C CNN
F 2 "" H 3700 5300 50  0001 C CNN
F 3 "" H 3700 5300 50  0001 C CNN
	1    3700 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 64B7680F
P 1650 5300
AR Path="/64B7680F" Ref="#PWR0121"  Part="1" 
AR Path="/632F1F43/64B7680F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B7680F" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64B7680F" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B7680F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 1650 5050 50  0001 C CNN
F 1 "GND" H 1655 5127 50  0000 C CNN
F 2 "" H 1650 5300 50  0001 C CNN
F 3 "" H 1650 5300 50  0001 C CNN
	1    1650 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 64B768BD
P 3700 3200
AR Path="/64B768BD" Ref="#PWR0130"  Part="1" 
AR Path="/632F1F43/64B768BD" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B768BD" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64B768BD" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B768BD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0130" H 3700 2950 50  0001 C CNN
F 1 "GND" H 3705 3027 50  0000 C CNN
F 2 "" H 3700 3200 50  0001 C CNN
F 3 "" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4350 4550 4400
Wire Wire Line
	4650 4400 4650 4300
Wire Wire Line
	4650 4300 4750 4300
Connection ~ 4650 4400
Wire Wire Line
	4650 4400 4550 4400
Wire Wire Line
	4650 4500 4650 4600
Connection ~ 4650 4600
Wire Wire Line
	4650 4600 4550 4600
Connection ~ 2650 5750
Wire Wire Line
	2650 5750 5550 5750
Connection ~ 2750 5650
Wire Wire Line
	600  5750 2650 5750
Wire Wire Line
	700  5650 2750 5650
Wire Wire Line
	4550 4100 4750 4100
Wire Wire Line
	4550 4000 4750 4000
Wire Wire Line
	4550 3900 4750 3900
Wire Wire Line
	4550 3800 4750 3800
Wire Wire Line
	4550 3700 4750 3700
Wire Wire Line
	4550 3600 4750 3600
Wire Wire Line
	4550 3500 4750 3500
Wire Wire Line
	4750 3400 4550 3400
Wire Wire Line
	4550 3300 4750 3300
Wire Wire Line
	4750 3200 4550 3200
Wire Wire Line
	4550 3100 4750 3100
Wire Wire Line
	4750 3000 4550 3000
Wire Wire Line
	4550 2900 4750 2900
Wire Wire Line
	4750 2800 4550 2800
$Comp
L 74xx:74LS273 U6
U 1 1 64E2976D
P 6200 3300
F 0 "U6" H 6350 4050 50  0000 C CNN
F 1 "74LS273" H 6450 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6200 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 6200 3300 50  0001 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2800 5700 2800
Wire Wire Line
	5550 2900 5700 2900
Wire Wire Line
	5550 3000 5700 3000
Wire Wire Line
	5550 3100 5700 3100
Wire Wire Line
	5550 3200 5700 3200
Wire Wire Line
	5550 3300 5700 3300
Wire Wire Line
	5550 3400 5700 3400
Wire Wire Line
	5550 3500 5700 3500
Wire Wire Line
	5700 3700 5550 3700
Wire Wire Line
	5550 3700 5550 5750
Connection ~ 5550 5750
Wire Wire Line
	5700 3800 5650 3800
Wire Wire Line
	5650 3800 5650 5050
$Comp
L power:GND #PWR0131
U 1 1 64ECFB4F
P 6200 4100
AR Path="/64ECFB4F" Ref="#PWR0131"  Part="1" 
AR Path="/632F1F43/64ECFB4F" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64ECFB4F" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64ECFB4F" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64ECFB4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0131" H 6200 3850 50  0001 C CNN
F 1 "GND" H 6205 3927 50  0000 C CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3400 9900 3400
Wire Wire Line
	9300 3300 9900 3300
Wire Wire Line
	9300 3200 9900 3200
Wire Wire Line
	9300 3100 9900 3100
Wire Wire Line
	9300 3000 9900 3000
Wire Wire Line
	9300 4200 9900 4200
Wire Wire Line
	9100 4000 9900 4000
Wire Bus Line
	9300 2200 10950 2200
Wire Wire Line
	6700 2800 9100 2800
Wire Wire Line
	9100 2900 6750 2900
Wire Wire Line
	6700 3000 6850 3000
Wire Wire Line
	9100 3100 6950 3100
Wire Wire Line
	6700 3200 7050 3200
Wire Wire Line
	9100 3300 6700 3300
Wire Wire Line
	6700 3400 9100 3400
Wire Wire Line
	9100 3500 8400 3500
Connection ~ 6850 3000
Wire Wire Line
	6850 3000 9100 3000
Connection ~ 6950 3100
Wire Wire Line
	6950 3100 6700 3100
Connection ~ 7050 3200
Wire Wire Line
	7050 3200 9100 3200
Connection ~ 8400 3500
Wire Wire Line
	8400 3500 6700 3500
Wire Wire Line
	6750 4500 6750 2900
Connection ~ 6750 2900
Wire Wire Line
	6750 2900 6700 2900
$Comp
L 74xx:74LS32 U7
U 1 1 64FD6B82
P 8750 4000
AR Path="/64FD6B82" Ref="U7"  Part="1" 
AR Path="/649D105F/64FD6B82" Ref="U?"  Part="1" 
AR Path="/642A2855/64FD6B82" Ref="U?"  Part="1" 
F 0 "U7" H 8750 3800 50  0000 C CNN
F 1 "74LS32" H 8750 3700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8750 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8750 4000 50  0001 C CNN
	1    8750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4000 9100 5650
Wire Wire Line
	8400 3900 8400 3500
Wire Wire Line
	9050 4000 9100 4000
Connection ~ 9100 4000
Wire Wire Line
	2750 5650 9100 5650
Wire Wire Line
	5550 5750 11150 5750
$Comp
L power:+5V #PWR0132
U 1 1 6520DE07
P 6200 2500
AR Path="/6520DE07" Ref="#PWR0132"  Part="1" 
AR Path="/632F1F43/6520DE07" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6520DE07" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/6520DE07" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/6520DE07" Ref="#PWR?"  Part="1" 
F 0 "#PWR0132" H 6200 2350 50  0001 C CNN
F 1 "+5V" H 6215 2673 50  0000 C CNN
F 2 "" H 6200 2500 50  0001 C CNN
F 3 "" H 6200 2500 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2500 5150 2600
$Comp
L Device:C C?
U 1 1 6529B859
P 4600 7000
AR Path="/5F2B3F8A/6529B859" Ref="C?"  Part="1" 
AR Path="/5F2B505F/6529B859" Ref="C?"  Part="1" 
AR Path="/6BB77A68/6529B859" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/6529B859" Ref="C?"  Part="1" 
AR Path="/6529B859" Ref="C7"  Part="1" 
AR Path="/649D1081/6529B859" Ref="C?"  Part="1" 
F 0 "C7" H 4715 7046 50  0000 L CNN
F 1 "0.1uF" H 4715 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4638 6850 50  0001 C CNN
F 3 "~" H 4600 7000 50  0001 C CNN
	1    4600 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6550 4600 6550
Wire Wire Line
	4150 7450 4600 7450
Wire Wire Line
	4600 6850 4600 6550
Wire Wire Line
	4600 7150 4600 7450
Connection ~ 4150 6550
Connection ~ 4150 7450
Connection ~ 4600 6550
Connection ~ 4600 7450
Text Notes 6350 5300 0    50   ~ 0
This RC circuit will initialize the counters which presents the\ndata at address 0 to the latch. It also initializes the control \nlines to all 0's, which generates a ~FRAME_RESET~. The next\nclock pulse will reset the address counters (again) and load the\ndata at address 0 into the latch to start the frame.
Wire Wire Line
	1000 1600 1000 2500
Wire Wire Line
	3150 1600 3150 2500
Wire Wire Line
	3150 3700 3150 4600
Wire Wire Line
	1100 3700 1100 4600
Wire Wire Line
	4200 2200 4350 2200
Wire Wire Line
	4200 2100 4350 2100
Wire Wire Line
	4200 2000 4350 2000
Wire Wire Line
	4200 1900 4350 1900
Wire Wire Line
	4200 4100 4350 4100
Wire Wire Line
	4200 4000 4350 4000
Wire Wire Line
	3200 5000 2850 5000
Wire Wire Line
	2850 5000 2850 5550
Wire Wire Line
	800  5550 800  5000
Wire Wire Line
	800  5000 1150 5000
Wire Wire Line
	5650 5550 5650 5050
Wire Wire Line
	800  5550 2850 5550
Connection ~ 5650 5050
Connection ~ 2850 5550
Wire Wire Line
	2850 5550 5650 5550
Wire Wire Line
	3200 4500 2750 4500
Connection ~ 2750 4500
Wire Wire Line
	2750 4500 2750 5650
Wire Wire Line
	2750 2400 3200 2400
Wire Wire Line
	2750 2400 2750 4500
Wire Wire Line
	1150 4500 700  4500
Connection ~ 700  4500
Wire Wire Line
	700  4500 700  5650
Wire Wire Line
	700  2400 1150 2400
Wire Wire Line
	700  2400 700  4500
Wire Wire Line
	1150 2900 800  2900
Wire Wire Line
	800  2900 800  5000
Connection ~ 800  5000
Wire Wire Line
	2850 5000 2850 2900
Wire Wire Line
	2850 2900 3200 2900
Connection ~ 2850 5000
Text Notes 6050 2150 0    50   ~ 0
Data\nLatch
Wire Bus Line
	11050 2300 11050 4200
Wire Bus Line
	9200 2300 9200 4100
Wire Bus Line
	2400 1450 2400 4200
Wire Bus Line
	4450 1450 4450 4000
$EndSCHEMATC
