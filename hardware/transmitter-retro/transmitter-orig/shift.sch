EESchema Schematic File Version 4
LIBS:transmitter-orig-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 11
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
L 74xx:74LS08 U?
U 1 1 633286AB
P 6350 4450
AR Path="/633286AB" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286AB" Ref="U19"  Part="1" 
F 0 "U19" H 6350 4775 50  0000 C CNN
F 1 "74LS08" H 6350 4684 50  0000 C CNN
F 2 "" H 6350 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6350 4450 50  0001 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 633286B2
P 7150 4650
AR Path="/633286B2" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286B2" Ref="U18"  Part="1" 
F 0 "U18" H 7150 4975 50  0000 C CNN
F 1 "74LS32" H 7150 4884 50  0000 C CNN
F 2 "" H 7150 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7150 4650 50  0001 C CNN
	1    7150 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 633286B9
P 5450 2450
AR Path="/6841E790/633286B9" Ref="#PWR?"  Part="1" 
AR Path="/633286B9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 2300 50  0001 C CNN
F 1 "+5V" H 5550 2550 50  0000 C CNN
F 2 "" H 5450 2450 50  0001 C CNN
F 3 "" H 5450 2450 50  0001 C CNN
	1    5450 2450
	1    0    0    -1  
$EndComp
NoConn ~ 5950 2850
Entry Wire Line
	4750 2750 4850 2850
Entry Wire Line
	4750 2850 4850 2950
Entry Wire Line
	4750 2950 4850 3050
Entry Wire Line
	4750 3050 4850 3150
Entry Wire Line
	4750 3150 4850 3250
Entry Wire Line
	4750 3250 4850 3350
Entry Wire Line
	4750 3350 4850 3450
Entry Wire Line
	4750 3450 4850 3550
Text Label 4850 2850 0    50   ~ 0
D0
Text Label 4850 2950 0    50   ~ 0
D1
Text Label 4850 3050 0    50   ~ 0
D2
Text Label 4850 3150 0    50   ~ 0
D3
Text Label 4850 3250 0    50   ~ 0
D4
Text Label 4850 3350 0    50   ~ 0
D5
Text Label 4850 3450 0    50   ~ 0
D6
Text Label 4850 3550 0    50   ~ 0
D7
Entry Bus Bus
	4750 2100 4850 2000
$Comp
L power:GND #PWR?
U 1 1 633286D9
P 5450 4350
AR Path="/6841E790/633286D9" Ref="#PWR?"  Part="1" 
AR Path="/633286D9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 4100 50  0001 C CNN
F 1 "GND" H 5600 4250 50  0000 C CNN
F 2 "" H 5450 4350 50  0001 C CNN
F 3 "" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633286DF
P 5100 2400
AR Path="/6841E790/633286DF" Ref="#PWR?"  Part="1" 
AR Path="/633286DF" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/633286DF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 2150 50  0001 C CNN
F 1 "GND" H 5105 2227 50  0000 C CNN
F 2 "" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2750 4950 2350
Wire Wire Line
	4950 2350 5100 2350
Wire Wire Line
	5100 2350 5100 2400
Text Notes 5850 2500 0    50   ~ 0
Shift\nRegister
Wire Wire Line
	4850 2850 4950 2850
Wire Wire Line
	4850 2950 4950 2950
Wire Wire Line
	4850 3050 4950 3050
Wire Wire Line
	4850 3150 4950 3150
Wire Wire Line
	4850 3250 4950 3250
Wire Wire Line
	4850 3350 4950 3350
Wire Wire Line
	4850 3450 4950 3450
Wire Wire Line
	4850 3550 4950 3550
Text HLabel 3700 3950 0    50   Input ~ 0
TX_CLOCK_IN
Wire Wire Line
	6650 4450 6750 4450
Wire Wire Line
	6750 4450 6750 4550
Wire Wire Line
	6750 4550 6850 4550
Wire Wire Line
	5950 2750 6050 2750
$Comp
L 74xx:74LS165 U?
U 1 1 633286A4
P 5450 3350
AR Path="/633286A4" Ref="U?"  Part="1" 
AR Path="/632F1F43/633286A4" Ref="U8"  Part="1" 
F 0 "U8" H 5550 4200 50  0000 C CNN
F 1 "74LS165" H 5650 4100 50  0000 C CNN
F 2 "" H 5450 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 5450 3350 50  0001 C CNN
	1    5450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4650 7550 4650
Wire Wire Line
	6050 4350 6050 2750
Wire Bus Line
	4850 2000 7550 2000
Text HLabel 7550 2000 2    50   Input ~ 0
D[0..7]
Text HLabel 7550 4650 2    50   Input ~ 0
SER_DATA_OUT
Wire Wire Line
	3700 3950 4950 3950
Text HLabel 3700 4050 0    50   Input ~ 0
SHIFT_DISABLE_IN
Text HLabel 3700 3750 0    50   Input ~ 0
~SHIFT_LOAD_IN
Text HLabel 3700 4550 0    50   Input ~ 0
SHIFT_TRANSMIT_IN
Text HLabel 3700 4750 0    50   Input ~ 0
DATA_FIXED
Wire Wire Line
	3700 4750 6850 4750
Wire Wire Line
	6050 4550 3700 4550
Wire Wire Line
	4950 4050 3700 4050
Wire Wire Line
	4950 3750 3700 3750
$Comp
L 74xx:74LS32 U?
U 3 1 6357D6CE
P 8100 3950
AR Path="/6357D6CE" Ref="U?"  Part="3" 
AR Path="/6BB77683/6357D6CE" Ref="U?"  Part="3" 
AR Path="/632F1F15/6357D6CE" Ref="U?"  Part="3" 
AR Path="/6327F7E2/6357D6CE" Ref="U?"  Part="3" 
F 0 "U?" H 8100 4275 50  0000 C CNN
F 1 "74LS32" H 8100 4184 50  0000 C CNN
F 2 "" H 8100 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8100 3950 50  0001 C CNN
	3    8100 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 6357D6D5
P 8100 3150
AR Path="/6357D6D5" Ref="U?"  Part="4" 
AR Path="/6BB77683/6357D6D5" Ref="U?"  Part="4" 
AR Path="/632F1F15/6357D6D5" Ref="U?"  Part="4" 
AR Path="/6327F7E2/6357D6D5" Ref="U?"  Part="4" 
F 0 "U?" H 8100 3475 50  0000 C CNN
F 1 "74LS32" H 8100 3384 50  0000 C CNN
F 2 "" H 8100 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8100 3150 50  0001 C CNN
	4    8100 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS153 U?
U 1 1 6357D6DC
P 9500 3150
AR Path="/6357D6DC" Ref="U?"  Part="1" 
AR Path="/6BB77683/6357D6DC" Ref="U?"  Part="1" 
AR Path="/632F1F15/6357D6DC" Ref="U?"  Part="1" 
AR Path="/6327F7E2/6357D6DC" Ref="U?"  Part="1" 
F 0 "U?" H 9600 4100 50  0000 C CNN
F 1 "74LS153" H 9700 4000 50  0000 C CNN
F 2 "" H 9500 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 9500 3150 50  0001 C CNN
	1    9500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6357D712
P 9500 2050
AR Path="/6841E790/6357D712" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6357D712" Ref="#PWR?"  Part="1" 
AR Path="/632F1F15/6357D712" Ref="#PWR?"  Part="1" 
AR Path="/6327F7E2/6357D712" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9500 1900 50  0001 C CNN
F 1 "+5V" H 9515 2223 50  0000 C CNN
F 2 "" H 9500 2050 50  0001 C CNN
F 3 "" H 9500 2050 50  0001 C CNN
	1    9500 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9000 2950 8900 2950
Wire Wire Line
	8900 2950 8900 3150
Wire Wire Line
	9000 3150 8900 3150
Connection ~ 8900 3150
Wire Wire Line
	8900 3150 8900 3250
Wire Wire Line
	9000 3250 8900 3250
Connection ~ 8900 3250
Wire Wire Line
	8900 3250 8900 3350
Wire Wire Line
	9000 3350 8900 3350
Connection ~ 8900 3350
Wire Wire Line
	8900 3350 8900 3450
Wire Wire Line
	9000 3450 8900 3450
Connection ~ 8900 3450
Wire Wire Line
	8900 3450 8900 3650
Wire Wire Line
	9000 3650 8900 3650
Connection ~ 8900 3650
NoConn ~ 10000 3150
Connection ~ 8900 2950
$Comp
L power:GND #PWR?
U 1 1 6357D72C
P 9500 4350
AR Path="/6841E790/6357D72C" Ref="#PWR?"  Part="1" 
AR Path="/6BB77683/6357D72C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F15/6357D72C" Ref="#PWR?"  Part="1" 
AR Path="/6327F7E2/6357D72C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9500 4100 50  0001 C CNN
F 1 "GND" H 9505 4177 50  0000 C CNN
F 2 "" H 9500 4350 50  0001 C CNN
F 3 "" H 9500 4350 50  0001 C CNN
	1    9500 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 2150 9500 2100
Wire Wire Line
	9500 2100 8750 2100
Connection ~ 9500 2100
Wire Wire Line
	9500 2100 9500 2050
Wire Wire Line
	9500 4250 9500 4300
Text HLabel 10250 2450 2    50   Input ~ 0
SER_DATA_OUT
Wire Wire Line
	10000 2450 10250 2450
Wire Wire Line
	8900 2550 9000 2550
Wire Wire Line
	8900 2550 8900 2950
Wire Wire Line
	9000 2650 8750 2650
Wire Wire Line
	8750 2100 8750 2650
Wire Wire Line
	8400 3950 9000 3950
Wire Wire Line
	8750 3150 8750 3850
Wire Wire Line
	8750 3850 9000 3850
Wire Wire Line
	8750 3150 8400 3150
Wire Wire Line
	9000 2450 8600 2450
Wire Wire Line
	8600 2450 8600 2050
Wire Wire Line
	9500 4300 8900 4300
Wire Wire Line
	8900 3650 8900 4300
Connection ~ 9500 4300
Wire Wire Line
	9500 4300 9500 4350
Wire Bus Line
	4750 2100 4750 3450
$EndSCHEMATC
