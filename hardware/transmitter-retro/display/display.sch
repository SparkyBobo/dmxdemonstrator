EESchema Schematic File Version 4
LIBS:display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "DMX Demonstrator - Transmitter-Retro Display (DMX-TX7)"
Date "2022-09-30"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Wire Wire Line
	5500 4700 5500 4600
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5600 4600 5500 4600
Connection ~ 5500 4600
Wire Wire Line
	5500 4600 5500 4500
Wire Wire Line
	5600 2900 5400 2900
Wire Wire Line
	5400 3000 5600 3000
Wire Wire Line
	5400 3100 5600 3100
Wire Wire Line
	5400 3200 5600 3200
Wire Wire Line
	5400 3300 5600 3300
Wire Wire Line
	5400 3400 5600 3400
Wire Wire Line
	5400 3500 5600 3500
Wire Wire Line
	5400 3600 5600 3600
Text Label 5400 2900 0    50   ~ 0
D0
Text Label 5400 3000 0    50   ~ 0
D1
Text Label 5400 3100 0    50   ~ 0
D2
Text Label 5400 3200 0    50   ~ 0
D3
Text Label 5400 3300 0    50   ~ 0
D4
Text Label 5400 3400 0    50   ~ 0
D5
NoConn ~ 5600 4100
Text Label 5400 3500 0    50   ~ 0
D6
Text Label 5400 3600 0    50   ~ 0
D7
Wire Wire Line
	6100 4500 6200 4500
Wire Wire Line
	6200 4500 6200 4600
Wire Wire Line
	6100 4600 6200 4600
Connection ~ 6200 4600
Wire Wire Line
	6200 4600 6200 4700
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 643275C8
P 5800 3600
AR Path="/63267F40/643275C8" Ref="J?"  Part="1" 
AR Path="/643275C8" Ref="J?"  Part="1" 
AR Path="/6431FA8E/643275C8" Ref="J?"  Part="1" 
F 0 "J?" H 5850 4717 50  0000 C CNN
F 1 "Expansion" H 5850 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 5800 3600 50  0001 C CNN
F 3 "~" H 5800 3600 50  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Text Label 6100 3000 0    50   ~ 0
~SAMPLE_OVERRIDE
Text Label 6100 3100 0    50   ~ 0
SAMPLE_LATCH
Text Label 6100 3200 0    50   ~ 0
~SAMPLE_RESET
Text Label 6100 3300 0    50   ~ 0
SAMPLE_SEL0
Text Label 6100 3400 0    50   ~ 0
SAMPLE_SEL1
Text Label 6100 3500 0    50   ~ 0
~SHIFT_LOAD
Text Label 6100 3600 0    50   ~ 0
~SHIFT_ENABLE
Text Label 6100 3700 0    50   ~ 0
SHIFT_TRANSMIT
Text Label 6100 4100 0    50   ~ 0
~FRAME_RESET
Text Label 6100 4000 0    50   ~ 0
DATA_RX
Text Label 6100 2900 0    50   ~ 0
SAMPLE_COUNT
Text Label 6100 3900 0    50   ~ 0
DATA_SHIFT
NoConn ~ 6100 4300
NoConn ~ 6100 4400
$Comp
L power:GND #PWR?
U 1 1 64327EE7
P 5500 4700
AR Path="/6841E790/64327EE7" Ref="#PWR?"  Part="1" 
AR Path="/64327EE7" Ref="#PWR?"  Part="1" 
AR Path="/6431FA8E/64327EE7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5505 4527 50  0000 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 643287B5
P 6200 4700
AR Path="/6841E790/643287B5" Ref="#PWR?"  Part="1" 
AR Path="/643287B5" Ref="#PWR?"  Part="1" 
AR Path="/6431FA8E/643287B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 4450 50  0001 C CNN
F 1 "GND" H 6205 4527 50  0000 C CNN
F 2 "" H 6200 4700 50  0001 C CNN
F 3 "" H 6200 4700 50  0001 C CNN
	1    6200 4700
	1    0    0    -1  
$EndComp
Text Label 6100 4400 0    50   ~ 0
CLK_SAMPLE
Text Label 6100 3800 0    50   ~ 0
DATA_FIXED
Text Label 6100 4200 0    50   ~ 0
CLK_RX
Text Label 6100 4300 0    50   ~ 0
CLK_TX
Text Label 5200 4200 0    50   ~ 0
~CLK_STEP
Text Label 5200 4300 0    50   ~ 0
~CLK_SLO
Text Label 5200 4400 0    50   ~ 0
~CLK_FST
Text Notes 10800 -1600 0    50   ~ 0
Orig\nAddress - 8 bit\nClock\nData\nShift Register Output\nLatched Data - 8 bit\nSample Sel - 1-4\nFrame - 18 parts of the frame\nForce 0\nForce 1\n\n\nCurrent\nClock\nData\nFrame - 18 parts of the frame\nShift Register Output\nLatched Data - 8 bit\nSampel Latch\nSample Reset\nShift Load\n
$Sheet
S 8050 950  1900 1200
U 64B92968
F0 "power" 79
F1 "power.sch" 79
F2 "+5V_OUT" I R 9950 1500 50 
F3 "GND_OUT" I R 9950 1600 50 
$EndSheet
$Sheet
S 2250 2700 1950 1950
U 64B9298C
F0 "clock" 79
F1 "clock.sch" 79
F2 "~CLK_FAST_IN" I R 4200 4400 50 
F3 "~CLK_SLOW_IN" I R 4200 4300 50 
F4 "CLK_TX_IN" I R 4200 3900 50 
F5 "~FRAME_RESET" I R 4200 4000 50 
F6 "~CLK_STEP_IN" I R 4200 4200 50 
$EndSheet
$Sheet
S 4850 5100 1950 1200
U 64B929A0
F0 "shift" 79
F1 "shift.sch" 79
F3 "~SHIFT_LOAD_IN" I R 6800 5600 50 
F4 "SHIFT_TRANSMIT_IN" I R 6800 5400 50 
F15 "~SHIFT_ENABLE_IN" I R 6800 5500 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 64B929FC
P 6200 2600
AR Path="/64B929FC" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B929FC" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B929FC" Ref="#PWR?"  Part="1" 
AR Path="/6431FA8E/64B929FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 2450 50  0001 C CNN
F 1 "+5V" H 6215 2773 50  0000 C CNN
F 2 "" H 6200 2600 50  0001 C CNN
F 3 "" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6200 2800
Wire Wire Line
	6200 2800 6200 2700
Wire Wire Line
	6100 2700 6200 2700
Connection ~ 6200 2700
Wire Wire Line
	6200 2700 6200 2600
$Comp
L power:+5V #PWR?
U 1 1 64B92A07
P 5500 2600
AR Path="/64B92A07" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B92A07" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B92A07" Ref="#PWR?"  Part="1" 
AR Path="/6431FA8E/64B92A07" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 2450 50  0001 C CNN
F 1 "+5V" H 5515 2773 50  0000 C CNN
F 2 "" H 5500 2600 50  0001 C CNN
F 3 "" H 5500 2600 50  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5500 2800
Wire Wire Line
	5500 2800 5500 2700
Wire Wire Line
	5600 2700 5500 2700
Connection ~ 5500 2700
Wire Wire Line
	5500 2700 5500 2600
Entry Wire Line
	5300 2800 5400 2900
Entry Wire Line
	5300 2900 5400 3000
Entry Wire Line
	5300 3000 5400 3100
Entry Wire Line
	5300 3100 5400 3200
Entry Wire Line
	5300 3200 5400 3300
Entry Wire Line
	5300 3300 5400 3400
Entry Wire Line
	5300 3400 5400 3500
Entry Wire Line
	5300 3500 5400 3600
Entry Bus Bus
	5300 2400 5400 2300
Wire Bus Line
	5400 2300 6850 2300
Wire Bus Line
	6800 2050 6850 2050
Entry Bus Bus
	6850 2050 6950 2150
Entry Bus Bus
	6850 2300 6950 2200
Wire Wire Line
	6800 1350 7550 1350
Wire Wire Line
	6800 1250 7650 1250
Entry Bus Bus
	6850 5200 6950 5100
Wire Bus Line
	6800 5200 6850 5200
Wire Wire Line
	4200 2850 4300 2850
Wire Wire Line
	4750 5200 4850 5200
Wire Wire Line
	4750 4000 4200 4000
Wire Wire Line
	4650 5300 4850 5300
Wire Wire Line
	4550 5400 4850 5400
Wire Wire Line
	4450 5500 4850 5500
$Comp
L power:+5V #PWR?
U 1 1 64B92A5C
P 10100 1400
AR Path="/64B92A5C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B92A5C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B92A5C" Ref="#PWR?"  Part="1" 
AR Path="/6431FA8E/64B92A5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10100 1250 50  0001 C CNN
F 1 "+5V" H 10115 1573 50  0000 C CNN
F 2 "" H 10100 1400 50  0001 C CNN
F 3 "" H 10100 1400 50  0001 C CNN
	1    10100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64B92A62
P 10100 1700
AR Path="/64B92A62" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B92A62" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B92A62" Ref="#PWR?"  Part="1" 
AR Path="/6431FA8E/64B92A62" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10100 1450 50  0001 C CNN
F 1 "GND" H 10250 1600 50  0000 C CNN
F 2 "" H 10100 1700 50  0001 C CNN
F 3 "" H 10100 1700 50  0001 C CNN
	1    10100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 6100 7850 6100
Wire Wire Line
	6800 6200 7950 6200
Wire Wire Line
	9950 1500 10100 1500
Wire Wire Line
	10100 1500 10100 1400
Wire Wire Line
	9950 1600 10100 1600
Wire Wire Line
	10100 1600 10100 1700
Wire Wire Line
	6800 1150 7750 1150
Wire Wire Line
	7450 1450 6800 1450
Wire Wire Line
	6100 2900 7250 2900
Wire Wire Line
	7250 1750 6800 1750
Wire Wire Line
	7350 1650 6800 1650
Wire Wire Line
	6100 3200 7550 3200
Wire Wire Line
	6100 3300 7650 3300
Wire Wire Line
	6100 3400 7750 3400
Wire Wire Line
	7750 1150 7750 3400
Wire Wire Line
	4850 1250 4600 1250
Wire Wire Line
	4850 1950 4300 1950
Wire Wire Line
	4300 1950 4300 2850
Wire Wire Line
	4850 2050 4400 2050
Wire Wire Line
	4500 1150 4850 1150
Wire Wire Line
	7250 2900 7250 1750
Wire Wire Line
	7350 3000 7350 1650
Wire Wire Line
	6100 3000 7350 3000
Wire Wire Line
	7650 1250 7650 3300
Wire Wire Line
	7550 1350 7550 3200
Wire Wire Line
	6100 3100 7450 3100
Wire Wire Line
	7450 1450 7450 3100
Wire Wire Line
	6100 3500 7450 3500
Wire Wire Line
	6100 3700 7250 3700
Wire Wire Line
	6100 3600 7350 3600
Wire Wire Line
	7250 3700 7250 5400
$Sheet
S 4850 950  1950 1200
U 64B92AC3
F0 "sample" 79
F1 "sample.sch" 79
F3 "~SAMPLE_RESET_IN" I R 6800 1350 50 
F4 "SAMPLE_SEL0_IN" I R 6800 1250 50 
F5 "SAMPLE_SEL1_IN" I R 6800 1150 50 
F11 "SAMPLE_LATCH_IN" I R 6800 1450 50 
$EndSheet
Wire Wire Line
	7750 4400 7750 5900
Wire Wire Line
	7050 6000 6800 6000
Wire Wire Line
	7050 4200 7050 6000
Wire Wire Line
	6800 5300 7150 5300
Wire Wire Line
	7150 5300 7150 4100
Wire Wire Line
	6800 5400 7250 5400
Wire Wire Line
	6800 5500 7350 5500
Wire Wire Line
	7350 5500 7350 3600
Wire Wire Line
	6800 5600 7450 5600
Wire Wire Line
	7450 5600 7450 3500
Wire Wire Line
	6800 5700 7550 5700
Wire Wire Line
	6800 5800 7650 5800
Wire Wire Line
	6800 5900 7750 5900
NoConn ~ 6100 3800
Wire Wire Line
	6100 4200 7050 4200
Wire Wire Line
	6100 4000 7850 4000
Wire Wire Line
	7650 5800 7650 4300
Wire Wire Line
	7550 4200 7550 5700
Wire Wire Line
	6100 4100 7150 4100
Wire Wire Line
	7850 4000 7850 6100
Wire Wire Line
	7950 4500 7950 6200
NoConn ~ 5600 3800
NoConn ~ 5600 3700
NoConn ~ 5600 4000
NoConn ~ 5600 3900
Wire Wire Line
	4200 4400 5600 4400
Wire Wire Line
	4200 4300 5600 4300
Wire Wire Line
	4200 4200 5600 4200
Wire Wire Line
	4750 3900 4200 3900
$Sheet
S 800  7050 1000 600 
U 6469ED41
F0 "decade-counter" 50
F1 "decade-counter.sch" 50
$EndSheet
$Sheet
S 1900 7050 1000 600 
U 6471DA3F
F0 "fs-sample" 50
F1 "fs-sample.sch" 50
$EndSheet
Wire Bus Line
	6950 2150 6950 5100
Wire Bus Line
	5300 2400 5300 3500
$Sheet
S 8050 2700 1950 1950
U 68627FF6
F0 "Sheet68627FF5" 50
F1 "file68627FF5.sch" 50
$EndSheet
$EndSCHEMATC
