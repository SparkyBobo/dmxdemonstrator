EESchema Schematic File Version 4
LIBS:receiver-pro-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
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
L 74xx:74LS273 U?
U 1 1 62873498
P 7050 4350
AR Path="/62873498" Ref="U?"  Part="1" 
AR Path="/627E73CB/62873498" Ref="U?"  Part="1" 
F 0 "U?" H 6950 5100 50  0000 C CNN
F 1 "74LS273" H 6850 5000 50  0000 C CNN
F 2 "" H 7050 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 7050 4350 50  0001 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 6287349F
P 4250 4850
AR Path="/6287349F" Ref="U?"  Part="4" 
AR Path="/627E73CB/6287349F" Ref="U?"  Part="4" 
F 0 "U?" H 4250 4550 50  0000 C CNN
F 1 "74LS32" H 4250 4650 50  0000 C CNN
F 2 "" H 4250 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4250 4850 50  0001 C CNN
	4    4250 4850
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS10 U?
U 3 1 628734A6
P 5200 4750
AR Path="/628734A6" Ref="U?"  Part="3" 
AR Path="/627E73CB/628734A6" Ref="U?"  Part="3" 
F 0 "U?" H 5200 5050 50  0000 C CNN
F 1 "74LS10" H 5200 4950 50  0000 C CNN
F 2 "" H 5200 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 5200 4750 50  0001 C CNN
	3    5200 4750
	1    0    0    -1  
$EndComp
Entry Wire Line
	6450 3850 6350 3750
Entry Wire Line
	6450 3950 6350 3850
Entry Wire Line
	6450 4050 6350 3950
Entry Wire Line
	6450 4150 6350 4050
Entry Wire Line
	6450 4250 6350 4150
Entry Wire Line
	6450 4350 6350 4250
Entry Wire Line
	6450 4450 6350 4350
Entry Wire Line
	6450 4550 6350 4450
Wire Wire Line
	6550 3850 6450 3850
Wire Wire Line
	6550 3950 6450 3950
Wire Wire Line
	6550 4050 6450 4050
Wire Wire Line
	6550 4150 6450 4150
Wire Wire Line
	6550 4250 6450 4250
Wire Wire Line
	6550 4350 6450 4350
Wire Wire Line
	6550 4450 6450 4450
Wire Wire Line
	6550 4550 6450 4550
$Comp
L power:GND #PWR?
U 1 1 628734BD
P 7050 5150
AR Path="/628734BD" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/628734BD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 4900 50  0001 C CNN
F 1 "GND" H 7055 4977 50  0000 C CNN
F 2 "" H 7050 5150 50  0001 C CNN
F 3 "" H 7050 5150 50  0001 C CNN
	1    7050 5150
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628734C3
P 7750 5000
AR Path="/628734C3" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/628734C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 4850 50  0001 C CNN
F 1 "+5V" H 7765 5173 50  0000 C CNN
F 2 "" H 7750 5000 50  0001 C CNN
F 3 "" H 7750 5000 50  0001 C CNN
	1    7750 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 3850 7850 3850
Entry Wire Line
	7950 3750 7850 3850
Entry Wire Line
	7950 3850 7850 3950
Entry Wire Line
	7950 3950 7850 4050
Entry Wire Line
	7950 4050 7850 4150
Entry Wire Line
	7950 4150 7850 4250
Entry Wire Line
	7950 4250 7850 4350
Entry Wire Line
	7950 4350 7850 4450
Entry Wire Line
	7950 4450 7850 4550
Wire Wire Line
	7850 3950 7550 3950
Wire Wire Line
	7850 4050 7550 4050
Wire Wire Line
	7850 4150 7550 4150
Wire Wire Line
	7850 4250 7550 4250
Wire Wire Line
	7850 4350 7550 4350
Wire Wire Line
	7850 4450 7550 4450
Text Label 7750 3850 2    50   ~ 0
SC0
Text Label 7750 3950 2    50   ~ 0
SC1
Text Label 7750 4050 2    50   ~ 0
SC2
Text Label 7750 4150 2    50   ~ 0
SC3
Text Label 7750 4250 2    50   ~ 0
SC4
Text Label 7750 4350 2    50   ~ 0
SC5
Text Label 7750 4450 2    50   ~ 0
SC6
Text Label 7750 4550 2    50   ~ 0
SC7
Wire Wire Line
	7850 4550 7550 4550
Text Label 6550 3850 2    50   ~ 0
D0
Text Label 6550 3950 2    50   ~ 0
D1
Text Label 6550 4050 2    50   ~ 0
D2
Text Label 6550 4150 2    50   ~ 0
D3
Text Label 6550 4250 2    50   ~ 0
D4
Text Label 6550 4350 2    50   ~ 0
D5
Text Label 6550 4450 2    50   ~ 0
D6
Text Label 6550 4550 2    50   ~ 0
D7
$Comp
L power:+5V #PWR?
U 1 1 628734F1
P 4850 4550
AR Path="/628734F1" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/628734F1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 4400 50  0001 C CNN
F 1 "+5V" H 4865 4723 50  0000 C CNN
F 2 "" H 4850 4550 50  0001 C CNN
F 3 "" H 4850 4550 50  0001 C CNN
	1    4850 4550
	1    0    0    -1  
$EndComp
Text Notes 6850 3500 2    50   ~ 0
Start Code\nLatch
Wire Wire Line
	3950 4950 2550 4950
$Comp
L power:+5V #PWR?
U 1 1 628734F9
P 7050 3550
AR Path="/628734F9" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/628734F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 3400 50  0001 C CNN
F 1 "+5V" H 7065 3723 50  0000 C CNN
F 2 "" H 7050 3550 50  0001 C CNN
F 3 "" H 7050 3550 50  0001 C CNN
	1    7050 3550
	-1   0    0    -1  
$EndComp
Entry Bus Bus
	6250 3550 6350 3650
Text GLabel 8500 900  2    50   Input ~ 0
STARTCODE[0..7]
Wire Wire Line
	4550 4850 4900 4850
Wire Wire Line
	4900 4750 4850 4750
Wire Wire Line
	4850 4750 4850 4650
Connection ~ 4850 4650
Wire Wire Line
	4850 4650 4900 4650
Text GLabel 5700 4050 0    50   Input ~ 0
STARTCODE_LOAD
$Comp
L 74xx:74LS85 U?
U 1 1 62873511
P 3450 2050
AR Path="/62873511" Ref="U?"  Part="1" 
AR Path="/627E73CB/62873511" Ref="U15"  Part="1" 
F 0 "U15" H 3300 2700 50  0000 C CNN
F 1 "74LS85" H 3250 2600 50  0000 C CNN
F 2 "" H 3450 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS85" H 3450 2050 50  0001 C CNN
	1    3450 2050
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS85 U?
U 1 1 62873518
P 7050 2050
AR Path="/62873518" Ref="U?"  Part="1" 
AR Path="/627E73CB/62873518" Ref="U14"  Part="1" 
F 0 "U14" H 7200 2700 50  0000 C CNN
F 1 "74LS85" H 7250 2600 50  0000 C CNN
F 2 "" H 7050 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS85" H 7050 2050 50  0001 C CNN
	1    7050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6287351F
P 7050 2750
AR Path="/6287351F" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/6287351F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 2500 50  0001 C CNN
F 1 "GND" H 7055 2577 50  0000 C CNN
F 2 "" H 7050 2750 50  0001 C CNN
F 3 "" H 7050 2750 50  0001 C CNN
	1    7050 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62873525
P 3450 2750
AR Path="/62873525" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/62873525" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 2500 50  0001 C CNN
F 1 "GND" H 3455 2577 50  0000 C CNN
F 2 "" H 3450 2750 50  0001 C CNN
F 3 "" H 3450 2750 50  0001 C CNN
	1    3450 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6287352D
P 7050 1350
AR Path="/6287352D" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/6287352D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 1200 50  0001 C CNN
F 1 "+5V" H 7065 1523 50  0000 C CNN
F 2 "" H 7050 1350 50  0001 C CNN
F 3 "" H 7050 1350 50  0001 C CNN
	1    7050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62873533
P 3450 1350
AR Path="/62873533" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/62873533" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 1200 50  0001 C CNN
F 1 "+5V" H 3465 1523 50  0000 C CNN
F 2 "" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	-1   0    0    -1  
$EndComp
Entry Bus Bus
	7850 900  7950 1000
Entry Wire Line
	7700 1850 7800 1750
Entry Wire Line
	7700 1750 7800 1650
Entry Wire Line
	7700 1650 7800 1550
Wire Wire Line
	7550 1650 7700 1650
Wire Wire Line
	7550 1750 7700 1750
Wire Wire Line
	7550 1850 7700 1850
Entry Bus Bus
	7700 1050 7800 1150
Wire Wire Line
	2950 1650 2850 1650
Wire Wire Line
	2850 1650 2850 1750
$Comp
L power:GND #PWR?
U 1 1 62873544
P 2850 1950
AR Path="/62873544" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/62873544" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 1700 50  0001 C CNN
F 1 "GND" H 2855 1777 50  0000 C CNN
F 2 "" H 2850 1950 50  0001 C CNN
F 3 "" H 2850 1950 50  0001 C CNN
	1    2850 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2950 1750 2850 1750
Connection ~ 2850 1750
Wire Wire Line
	2850 1750 2850 1850
Wire Wire Line
	2950 1850 2850 1850
Connection ~ 2850 1850
Wire Wire Line
	2850 1850 2850 1950
Wire Bus Line
	2800 1050 7700 1050
Entry Bus Bus
	2700 1150 2800 1050
Entry Wire Line
	2700 2150 2800 2250
Entry Wire Line
	2700 2250 2800 2350
Entry Wire Line
	2700 2350 2800 2450
Wire Wire Line
	2800 2250 2950 2250
Wire Wire Line
	2800 2350 2950 2350
Wire Wire Line
	2800 2450 2950 2450
Entry Bus Bus
	4200 1000 4300 900 
Entry Wire Line
	6300 1850 6400 1950
Entry Wire Line
	6300 1750 6400 1850
Entry Wire Line
	6300 1650 6400 1750
Entry Wire Line
	6300 1550 6400 1650
Entry Wire Line
	4100 1950 4200 1850
Entry Wire Line
	4100 1850 4200 1750
Entry Wire Line
	4100 1750 4200 1650
Entry Wire Line
	4100 1650 4200 1550
Text Notes 5050 1750 0    50   ~ 0
Start Code\nSelect/Compare
Wire Wire Line
	6400 1650 6550 1650
Wire Wire Line
	6400 1750 6550 1750
Wire Wire Line
	6400 1850 6550 1850
Wire Wire Line
	6400 1950 6550 1950
Entry Bus Bus
	6300 1000 6400 900 
$Comp
L Switch:SW_DIP_x04 DSW?
U 1 1 62873567
P 4950 2350
AR Path="/62873567" Ref="DSW?"  Part="1" 
AR Path="/627E73CB/62873567" Ref="DSW1"  Part="1" 
F 0 "DSW1" H 4950 2817 50  0000 C CNN
F 1 "START_LO" H 4950 2726 50  0000 C CNN
F 2 "" H 4950 2350 50  0001 C CNN
F 3 "" H 4950 2350 50  0001 C CNN
	1    4950 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x04 DSW?
U 1 1 6287356E
P 5550 2350
AR Path="/6287356E" Ref="DSW?"  Part="1" 
AR Path="/627E73CB/6287356E" Ref="DSW2"  Part="1" 
F 0 "DSW2" H 5550 2817 50  0000 C CNN
F 1 "START_HI" H 5550 2726 50  0000 C CNN
F 2 "" H 5550 2350 50  0001 C CNN
F 3 "" H 5550 2350 50  0001 C CNN
	1    5550 2350
	-1   0    0    -1  
$EndComp
Connection ~ 5250 2450
Wire Wire Line
	5250 2450 5250 2750
$Comp
L power:GND #PWR?
U 1 1 62873577
P 5250 2750
AR Path="/62873577" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/62873577" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 2500 50  0001 C CNN
F 1 "GND" H 5255 2577 50  0000 C CNN
F 2 "" H 5250 2750 50  0001 C CNN
F 3 "" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Text Label 3950 1950 0    50   ~ 0
SC0
Text Label 3950 1850 0    50   ~ 0
SC1
Text Label 3950 1750 0    50   ~ 0
SC2
Text Label 3950 1650 0    50   ~ 0
SC3
Text Label 6400 1950 0    50   ~ 0
SC4
Text Label 6400 1850 0    50   ~ 0
SC5
Text Label 6400 1750 0    50   ~ 0
SC6
Text Label 6400 1650 0    50   ~ 0
SC7
Text Label 2800 2250 0    50   ~ 0
SL0
Text Label 2800 2350 0    50   ~ 0
SL1
Text Label 2800 2450 0    50   ~ 0
SL2
Text Label 7550 1650 0    50   ~ 0
SL0
Text Label 7550 1750 0    50   ~ 0
SL1
Text Label 7550 1850 0    50   ~ 0
SL2
$Comp
L Device:R_Network04 RN?
U 1 1 6287358C
P 4400 1800
AR Path="/6287358C" Ref="RN?"  Part="1" 
AR Path="/627E73CB/6287358C" Ref="RN1"  Part="1" 
F 0 "RN1" H 4400 2100 50  0000 R CNN
F 1 "10k" H 4400 2000 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP5" V 4675 1800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4400 1800 50  0001 C CNN
	1    4400 1800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Network04 RN?
U 1 1 62873593
P 6100 1800
AR Path="/62873593" Ref="RN?"  Part="1" 
AR Path="/627E73CB/62873593" Ref="RN2"  Part="1" 
F 0 "RN2" H 5950 2100 50  0000 L CNN
F 1 "10k" H 5950 2000 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 6375 1800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6100 1800 50  0001 C CNN
	1    6100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2150 5900 2150
Wire Wire Line
	5900 2000 5900 2150
Connection ~ 5900 2150
Wire Wire Line
	5900 2150 6550 2150
Wire Wire Line
	6000 2000 6000 2250
Wire Wire Line
	6000 2250 6550 2250
Wire Wire Line
	6100 2000 6100 2350
Wire Wire Line
	6100 2350 6550 2350
Wire Wire Line
	6200 2000 6200 2450
Wire Wire Line
	6200 2450 6550 2450
Wire Wire Line
	5850 2250 6000 2250
Connection ~ 6000 2250
Wire Wire Line
	5850 2350 6100 2350
Connection ~ 6100 2350
Wire Wire Line
	5850 2450 6200 2450
Connection ~ 6200 2450
Wire Wire Line
	3950 2150 4600 2150
Wire Wire Line
	4300 2000 4300 2450
Wire Wire Line
	4300 2450 3950 2450
Wire Wire Line
	3950 2350 4400 2350
Wire Wire Line
	4400 2000 4400 2350
Connection ~ 4400 2350
Wire Wire Line
	4400 2350 4650 2350
Wire Wire Line
	4650 2450 4300 2450
Connection ~ 4300 2450
Wire Wire Line
	4500 2000 4500 2250
Wire Wire Line
	4500 2250 4650 2250
Wire Wire Line
	4500 2250 3950 2250
Connection ~ 4500 2250
Wire Wire Line
	4600 2000 4600 2150
Connection ~ 4600 2150
Wire Wire Line
	4600 2150 4650 2150
$Comp
L power:+5V #PWR?
U 1 1 628735BA
P 5250 1350
AR Path="/628735BA" Ref="#PWR?"  Part="1" 
AR Path="/627E73CB/628735BA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 1200 50  0001 C CNN
F 1 "+5V" H 5265 1523 50  0000 C CNN
F 2 "" H 5250 1350 50  0001 C CNN
F 3 "" H 5250 1350 50  0001 C CNN
	1    5250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1600 4600 1450
Wire Wire Line
	4600 1450 5250 1450
Wire Wire Line
	5900 1450 5900 1600
Wire Wire Line
	5250 1350 5250 1450
Connection ~ 5250 1450
Wire Wire Line
	5250 1450 5900 1450
Wire Wire Line
	3950 1650 4100 1650
Wire Wire Line
	3950 1750 4100 1750
Wire Wire Line
	3950 1850 4100 1850
Wire Wire Line
	3950 1950 4100 1950
Wire Wire Line
	5500 4750 5850 4750
Connection ~ 5850 4750
Wire Wire Line
	5850 4750 6550 4750
Wire Wire Line
	4850 4650 4850 4550
Wire Bus Line
	6250 3550 2650 3550
Wire Wire Line
	6550 4850 6450 4850
Wire Wire Line
	6450 4850 6450 5450
Wire Wire Line
	6450 5450 7750 5450
Wire Wire Line
	7750 5450 7750 5000
Text HLabel 2550 4750 0    50   Input ~ 0
STOP_BIT_IN
Text HLabel 2650 3550 0    50   Input ~ 0
DATA[0..7]
Wire Wire Line
	7550 2250 8150 2250
Wire Wire Line
	7550 2350 8150 2350
Text Notes 2400 5300 0    50   ~ 0
Use a flip-flop and get off of the demux, leaving it with 16.
Text HLabel 2550 5950 0    50   Input ~ 0
~FRAME_RST_IN
$Comp
L 74xx:74LS74 U?
U 1 1 634AA249
P 3250 6000
F 0 "U?" H 3250 6478 50  0000 C CNN
F 1 "74LS74" H 3250 6387 50  0000 C CNN
F 2 "" H 3250 6000 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3250 6000 50  0001 C CNN
	1    3250 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 3 1 634B2CE2
P 8600 2300
AR Path="/634B2CE2" Ref="U?"  Part="3" 
AR Path="/5F2B3F8A/634B2CE2" Ref="U?"  Part="3" 
AR Path="/6841E790/5F2B3F8A/634B2CE2" Ref="U?"  Part="3" 
AR Path="/6A2CE0CC/634B2CE2" Ref="U?"  Part="3" 
AR Path="/627E727E/634B2CE2" Ref="U?"  Part="3" 
AR Path="/627E73CB/634B2CE2" Ref="U?"  Part="3" 
F 0 "U?" H 8600 2625 50  0000 C CNN
F 1 "74LS32" H 8600 2534 50  0000 C CNN
F 2 "" H 8600 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8600 2300 50  0001 C CNN
	3    8600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2200 8300 2200
Wire Wire Line
	8150 2400 8300 2400
NoConn ~ 7550 2450
Wire Wire Line
	8150 2200 8150 2250
Wire Wire Line
	8150 2400 8150 2350
Wire Wire Line
	5700 4050 5850 4050
Wire Wire Line
	5850 4050 5850 4750
Wire Wire Line
	2550 4750 3950 4750
Text HLabel 9050 2300 2    50   Input ~ 0
SC_MATCH_OUT
Wire Wire Line
	8900 2300 9050 2300
Wire Bus Line
	4300 900  8500 900 
Wire Bus Line
	7800 1150 7800 1750
Wire Bus Line
	2700 1150 2700 2350
Wire Bus Line
	6300 1000 6300 1850
Wire Bus Line
	4200 1000 4200 1850
Wire Bus Line
	7950 1000 7950 4450
Wire Bus Line
	6350 3650 6350 4450
$EndSCHEMATC
