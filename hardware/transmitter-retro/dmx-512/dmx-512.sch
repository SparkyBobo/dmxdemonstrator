EESchema Schematic File Version 4
LIBS:dmx-512-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Transmitter-Retro DMX-512 (DMX-TX8)"
Date "2022-10-02"
Rev "0.1"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text Notes 4500 4300 0    50   ~ 0
DMX512 Clock\n4Mhz /16 = 250k
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 64626F8F
P 4200 4100
F 0 "X1" H 4300 4450 50  0000 L CNN
F 1 "4MHz" H 4300 4350 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 4650 3750 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 4100 4100 50  0001 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 646598F9
P 4200 3750
AR Path="/646598F9" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/646598F9" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/646598F9" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/646598F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4200 3600 50  0001 C CNN
F 1 "+5V" H 4215 3923 50  0000 C CNN
F 2 "" H 4200 3750 50  0001 C CNN
F 3 "" H 4200 3750 50  0001 C CNN
	1    4200 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64659934
P 4200 4450
AR Path="/64659934" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64659934" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64659934" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64659934" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64659934" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4200 4200 50  0001 C CNN
F 1 "GND" H 4205 4277 50  0000 C CNN
F 2 "" H 4200 4450 50  0001 C CNN
F 3 "" H 4200 4450 50  0001 C CNN
	1    4200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3800 4200 3750
Wire Wire Line
	4200 4450 4200 4400
$Comp
L 74xx:74LS10 U2
U 1 1 6497CCDE
P 4550 1900
F 0 "U2" H 4550 2225 50  0000 C CNN
F 1 "74LS10" H 4550 2134 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 4550 1900 50  0001 C CNN
	1    4550 1900
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U1
U 2 1 6497CD3D
P 3850 1900
F 0 "U1" H 3850 2225 50  0000 C CNN
F 1 "74LS10" H 3850 2134 50  0000 C CNN
F 2 "" H 3850 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 3850 1900 50  0001 C CNN
	2    3850 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 1900 4200 1900
Wire Wire Line
	4200 1900 4200 1800
Wire Wire Line
	4200 1800 4150 1800
Connection ~ 4200 1900
Wire Wire Line
	4200 1900 4250 1900
Wire Wire Line
	4200 1900 4200 2000
Wire Wire Line
	4200 2000 4150 2000
Wire Wire Line
	3550 1900 3500 1900
Wire Wire Line
	3500 4100 3900 4100
Wire Wire Line
	3500 4100 3500 1900
Text Notes 3900 2400 0    50   ~ 0
Enable DMX Clock as\nlong as another clock\nsource is not selected
$Comp
L Mechanical:MountingHole MH?
U 1 1 64B09C91
P 6200 7400
AR Path="/649D1081/64B09C91" Ref="MH?"  Part="1" 
AR Path="/64B09C91" Ref="MH4"  Part="1" 
F 0 "MH4" H 6300 7446 50  0000 L CNN
F 1 "MountingHole" H 6300 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 7400 50  0001 C CNN
F 3 "~" H 6200 7400 50  0001 C CNN
	1    6200 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 64B09C98
P 6200 7150
AR Path="/649D1081/64B09C98" Ref="MH?"  Part="1" 
AR Path="/64B09C98" Ref="MH3"  Part="1" 
F 0 "MH3" H 6300 7196 50  0000 L CNN
F 1 "MountingHole" H 6300 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 7150 50  0001 C CNN
F 3 "~" H 6200 7150 50  0001 C CNN
	1    6200 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 64B09C9F
P 6200 6900
AR Path="/649D1081/64B09C9F" Ref="MH?"  Part="1" 
AR Path="/64B09C9F" Ref="MH2"  Part="1" 
F 0 "MH2" H 6300 6946 50  0000 L CNN
F 1 "MountingHole" H 6300 6855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 6900 50  0001 C CNN
F 3 "~" H 6200 6900 50  0001 C CNN
	1    6200 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 64B09CA6
P 6200 6650
AR Path="/649D1081/64B09CA6" Ref="MH?"  Part="1" 
AR Path="/64B09CA6" Ref="MH1"  Part="1" 
F 0 "MH1" H 6300 6696 50  0000 L CNN
F 1 "MountingHole" H 6300 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 6200 6650 50  0001 C CNN
F 3 "~" H 6200 6650 50  0001 C CNN
	1    6200 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U1
U 3 1 64B09CAD
P 2800 7000
AR Path="/64B09CAD" Ref="U1"  Part="3" 
AR Path="/649D1081/64B09CAD" Ref="U?"  Part="3" 
F 0 "U1" H 2800 7325 50  0000 C CNN
F 1 "74LS10" H 2800 7234 50  0000 C CNN
F 2 "" H 2800 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 2800 7000 50  0001 C CNN
	3    2800 7000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U1
U 4 1 64B09CB4
P 1550 6950
AR Path="/64B09CB4" Ref="U1"  Part="4" 
AR Path="/649D1081/64B09CB4" Ref="U?"  Part="4" 
F 0 "U1" H 1780 6996 50  0000 L CNN
F 1 "74LS10" H 1780 6905 50  0000 L CNN
F 2 "" H 1550 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 1550 6950 50  0001 C CNN
	4    1550 6950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 64B1058D
P 7700 3900
F 0 "J2" H 7750 4417 50  0000 C CNN
F 1 "IO EXTENSION" H 7750 4326 50  0000 C CNN
F 2 "" H 7700 3900 50  0001 C CNN
F 3 "~" H 7700 3900 50  0001 C CNN
	1    7700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64B1061A
P 7400 3500
AR Path="/64B1061A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B1061A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B1061A" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B1061A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 3350 50  0001 C CNN
F 1 "+5V" H 7415 3673 50  0000 C CNN
F 2 "" H 7400 3500 50  0001 C CNN
F 3 "" H 7400 3500 50  0001 C CNN
	1    7400 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 3600 7400 3600
Wire Wire Line
	7400 3600 7400 3500
$Comp
L power:+5V #PWR?
U 1 1 64B11596
P 8100 3500
AR Path="/64B11596" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B11596" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B11596" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B11596" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 3350 50  0001 C CNN
F 1 "+5V" H 8115 3673 50  0000 C CNN
F 2 "" H 8100 3500 50  0001 C CNN
F 3 "" H 8100 3500 50  0001 C CNN
	1    8100 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 3600 8100 3600
Wire Wire Line
	8100 3600 8100 3500
Wire Wire Line
	7500 4200 7400 4200
Wire Wire Line
	7400 4200 7400 4300
$Comp
L power:GND #PWR?
U 1 1 64B126C4
P 7400 4300
AR Path="/64B126C4" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B126C4" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B126C4" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64B126C4" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B126C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 4050 50  0001 C CNN
F 1 "GND" H 7405 4127 50  0000 C CNN
F 2 "" H 7400 4300 50  0001 C CNN
F 3 "" H 7400 4300 50  0001 C CNN
	1    7400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4200 8100 4300
Wire Wire Line
	8000 4200 8100 4200
$Comp
L power:GND #PWR?
U 1 1 64B13C6E
P 8100 4300
AR Path="/64B13C6E" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B13C6E" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B13C6E" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/64B13C6E" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/64B13C6E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 4050 50  0001 C CNN
F 1 "GND" H 8105 4127 50  0000 C CNN
F 2 "" H 8100 4300 50  0001 C CNN
F 3 "" H 8100 4300 50  0001 C CNN
	1    8100 4300
	1    0    0    -1  
$EndComp
NoConn ~ 8000 4100
NoConn ~ 8000 3900
NoConn ~ 8000 3800
NoConn ~ 8000 3700
NoConn ~ 7500 3700
NoConn ~ 7500 3800
NoConn ~ 7500 3900
NoConn ~ 7500 4100
Wire Wire Line
	8000 4000 8100 4000
Wire Wire Line
	8100 4000 8100 4200
Connection ~ 8100 4200
Wire Wire Line
	7500 4000 6400 4000
$Comp
L Device:C C?
U 1 1 64B29D2D
P 3600 7000
AR Path="/5F2B3F8A/64B29D2D" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64B29D2D" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64B29D2D" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64B29D2D" Ref="C?"  Part="1" 
AR Path="/64B29D2D" Ref="C1"  Part="1" 
AR Path="/649D1081/64B29D2D" Ref="C?"  Part="1" 
F 0 "C1" H 3715 7046 50  0000 L CNN
F 1 "0.1uF" H 3715 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3638 6850 50  0001 C CNN
F 3 "~" H 3600 7000 50  0001 C CNN
	1    3600 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64B29D34
P 4050 7000
AR Path="/5F2B3F8A/64B29D34" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64B29D34" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64B29D34" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64B29D34" Ref="C?"  Part="1" 
AR Path="/64B29D34" Ref="C2"  Part="1" 
AR Path="/649D1081/64B29D34" Ref="C?"  Part="1" 
F 0 "C2" H 4165 7046 50  0000 L CNN
F 1 "0.1uF" H 4165 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4088 6850 50  0001 C CNN
F 3 "~" H 4050 7000 50  0001 C CNN
	1    4050 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64B29D3B
P 4550 7000
AR Path="/5F2B3F8A/64B29D3B" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64B29D3B" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64B29D3B" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64B29D3B" Ref="C?"  Part="1" 
AR Path="/64B29D3B" Ref="C3"  Part="1" 
AR Path="/649D1081/64B29D3B" Ref="C?"  Part="1" 
F 0 "C3" H 4665 7046 50  0000 L CNN
F 1 "0.1uF" H 4665 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4588 6850 50  0001 C CNN
F 3 "~" H 4550 7000 50  0001 C CNN
	1    4550 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 64B29D42
P 5000 7000
AR Path="/5F2B3F8A/64B29D42" Ref="C?"  Part="1" 
AR Path="/5F2B505F/64B29D42" Ref="C?"  Part="1" 
AR Path="/6BB77A68/64B29D42" Ref="C?"  Part="1" 
AR Path="/64132440/6413313E/64B29D42" Ref="C?"  Part="1" 
AR Path="/64B29D42" Ref="C4"  Part="1" 
AR Path="/649D1081/64B29D42" Ref="C?"  Part="1" 
F 0 "C4" H 5115 7046 50  0000 L CNN
F 1 "10uF" H 5115 6955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5038 6850 50  0001 C CNN
F 3 "~" H 5000 7000 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6900 2500 6900
Wire Wire Line
	2400 7000 2500 7000
Connection ~ 2400 6900
Wire Wire Line
	2400 7100 2500 7100
Wire Wire Line
	2400 7100 2400 7000
$Comp
L power:+5V #PWR?
U 1 1 64B29D53
P 2400 6500
AR Path="/64B29D53" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B29D53" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B29D53" Ref="#PWR?"  Part="1" 
AR Path="/63C77FA0/64B29D53" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/64B29D53" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2400 6350 50  0001 C CNN
F 1 "+5V" H 2415 6673 50  0000 C CNN
F 2 "" H 2400 6500 50  0001 C CNN
F 3 "" H 2400 6500 50  0001 C CNN
	1    2400 6500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 6850 3600 6550
Wire Wire Line
	4050 6850 4050 6550
Connection ~ 4050 6550
Wire Wire Line
	4050 6550 3600 6550
Wire Wire Line
	4550 6850 4550 6550
Connection ~ 4550 6550
Wire Wire Line
	4550 6550 4300 6550
Wire Wire Line
	5000 6850 5000 6550
Wire Wire Line
	5000 6550 4550 6550
Wire Wire Line
	3600 7150 3600 7450
Wire Wire Line
	4050 7150 4050 7450
Wire Wire Line
	4050 7450 3600 7450
Wire Wire Line
	4550 7150 4550 7450
Connection ~ 4550 7450
Wire Wire Line
	4550 7450 4300 7450
Wire Wire Line
	5000 7150 5000 7450
Wire Wire Line
	5000 7450 4550 7450
$Comp
L power:GND #PWR?
U 1 1 64B29D6D
P 4300 7500
AR Path="/64B29D6D" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B29D6D" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B29D6D" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/64B29D6D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 7250 50  0001 C CNN
F 1 "GND" H 4305 7327 50  0000 C CNN
F 2 "" H 4300 7500 50  0001 C CNN
F 3 "" H 4300 7500 50  0001 C CNN
	1    4300 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 7450 4300 7500
$Comp
L power:+5V #PWR?
U 1 1 64B29D74
P 4300 6500
AR Path="/6841E790/64B29D74" Ref="#PWR?"  Part="1" 
AR Path="/64B29D74" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B29D74" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B29D74" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/64B29D74" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 6350 50  0001 C CNN
F 1 "+5V" H 4315 6673 50  0000 C CNN
F 2 "" H 4300 6500 50  0001 C CNN
F 3 "" H 4300 6500 50  0001 C CNN
	1    4300 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6550 4300 6500
Connection ~ 2400 7000
Wire Wire Line
	2400 7000 2400 6900
Text Notes 1350 6200 0    50   ~ 0
Logic Ic Power
Text Notes 2200 6200 0    50   ~ 0
Unused Gates
Text Notes 3900 6200 0    50   ~ 0
Decoupling Capacitors
NoConn ~ 3100 7000
Wire Wire Line
	2400 6500 2400 6900
$Comp
L power:GND #PWR?
U 1 1 64B417A1
P 1550 7500
AR Path="/64B417A1" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B417A1" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B417A1" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/64B417A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1550 7250 50  0001 C CNN
F 1 "GND" H 1555 7327 50  0000 C CNN
F 2 "" H 1550 7500 50  0001 C CNN
F 3 "" H 1550 7500 50  0001 C CNN
	1    1550 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64B417F4
P 1550 6500
AR Path="/6841E790/64B417F4" Ref="#PWR?"  Part="1" 
AR Path="/64B417F4" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64B417F4" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64B417F4" Ref="#PWR?"  Part="1" 
AR Path="/649D1081/64B417F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1550 6350 50  0001 C CNN
F 1 "+5V" H 1565 6673 50  0000 C CNN
F 2 "" H 1550 6500 50  0001 C CNN
F 3 "" H 1550 6500 50  0001 C CNN
	1    1550 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6500 1550 6450
Wire Wire Line
	4300 6550 4050 6550
Connection ~ 4300 7450
Wire Wire Line
	4300 7450 4050 7450
Connection ~ 4050 7450
Connection ~ 4300 6550
Text Label 7500 4000 2    50   ~ 0
DMX-TX
Text Label 8000 4000 0    50   ~ 0
DMX_DIR
Wire Wire Line
	4500 4100 5900 4100
Wire Wire Line
	4850 1900 6900 1900
Wire Wire Line
	4850 2000 6800 2000
Wire Wire Line
	1550 7450 1550 7500
Wire Wire Line
	5900 4200 5800 4200
Wire Wire Line
	5800 4200 5800 4300
Wire Wire Line
	5900 4300 5800 4300
Connection ~ 5800 4300
Wire Wire Line
	5800 4300 5800 4400
$Comp
L power:+5V #PWR?
U 1 1 64763F31
P 5800 2300
AR Path="/64763F31" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64763F31" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64763F31" Ref="#PWR?"  Part="1" 
AR Path="/6475AF64/64763F31" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 2150 50  0001 C CNN
F 1 "+5V" H 5815 2473 50  0000 C CNN
F 2 "" H 5800 2300 50  0001 C CNN
F 3 "" H 5800 2300 50  0001 C CNN
	1    5800 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 2500 5800 2500
Wire Wire Line
	5800 2500 5800 2400
Wire Wire Line
	5900 2400 5800 2400
Connection ~ 5800 2400
Wire Wire Line
	5800 2400 5800 2300
$Comp
L power:+5V #PWR?
U 1 1 64763F3C
P 6500 2300
AR Path="/64763F3C" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/64763F3C" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/64763F3C" Ref="#PWR?"  Part="1" 
AR Path="/6475AF64/64763F3C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 2150 50  0001 C CNN
F 1 "+5V" H 6515 2473 50  0000 C CNN
F 2 "" H 6500 2300 50  0001 C CNN
F 3 "" H 6500 2300 50  0001 C CNN
	1    6500 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 2500 6500 2500
Wire Wire Line
	6400 2400 6500 2400
Connection ~ 6500 2400
Wire Wire Line
	6500 2400 6500 2300
Text Label 5900 3400 2    50   ~ 0
D1
Text Label 5900 3500 2    50   ~ 0
D3
Text Label 5900 3600 2    50   ~ 0
D5
Text Label 5900 3700 2    50   ~ 0
D7
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 64763F52
P 6100 3300
AR Path="/63267F40/64763F52" Ref="J?"  Part="1" 
AR Path="/64763F52" Ref="J?"  Part="1" 
AR Path="/6475AF64/64763F52" Ref="J?"  Part="1" 
F 0 "J?" H 6150 4417 50  0000 C CNN
F 1 "Expansion" H 6150 4326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6100 3300 50  0001 C CNN
F 3 "~" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
Text Label 5900 2700 2    50   ~ 0
~SAMPLE_OVERRIDE
Text Label 5350 4000 0    50   ~ 0
~SAMPLE_RESET
Text Label 5900 2900 2    50   ~ 0
SAMPLE_SEL0
Text Label 5900 2800 2    50   ~ 0
SAMPLE_SEL1
Text Label 5900 3100 2    50   ~ 0
~SHIFT_LOAD
Text Label 5900 3200 2    50   ~ 0
SHIFT_TRANSMIT
Text Label 5900 3000 2    50   ~ 0
DATA_FIXED
Text Label 5900 3900 2    50   ~ 0
CLK_RX
Text Label 5900 3800 2    50   ~ 0
~FRAME_RESET
Text Label 5900 2600 2    50   ~ 0
SAMPLE_COUNT
Text Label 5900 3300 2    50   ~ 0
DATA_SHIFT
Text Label 6750 2700 2    50   ~ 0
~CLK_SLO
Text Label 6750 2600 2    50   ~ 0
~CLK_FST
Text Label 5900 4100 2    50   ~ 0
CLK_SAMPLE
Wire Wire Line
	6500 4300 6500 4400
Wire Wire Line
	6400 4300 6500 4300
Wire Wire Line
	6400 4200 6500 4200
Connection ~ 6500 4300
NoConn ~ 5900 3800
Wire Wire Line
	6500 4200 6500 4300
Wire Wire Line
	6500 2500 6500 2400
Text Label 6750 2800 2    50   ~ 0
~CLK_STEP
Wire Wire Line
	6900 2700 6400 2700
$Comp
L power:GND #PWR?
U 1 1 6478DF11
P 6500 4400
AR Path="/6478DF11" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6478DF11" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6478DF11" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/6478DF11" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/6478DF11" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 4150 50  0001 C CNN
F 1 "GND" H 6505 4227 50  0000 C CNN
F 2 "" H 6500 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0001 C CNN
	1    6500 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6478DF3A
P 5800 4400
AR Path="/6478DF3A" Ref="#PWR?"  Part="1" 
AR Path="/632F1F43/6478DF3A" Ref="#PWR?"  Part="1" 
AR Path="/63267F40/6478DF3A" Ref="#PWR?"  Part="1" 
AR Path="/649D105F/6478DF3A" Ref="#PWR?"  Part="1" 
AR Path="/642A2855/6478DF3A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 4150 50  0001 C CNN
F 1 "GND" H 5805 4227 50  0000 C CNN
F 2 "" H 5800 4400 50  0001 C CNN
F 3 "" H 5800 4400 50  0001 C CNN
	1    5800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2600 6800 2000
Wire Wire Line
	6800 2600 6400 2600
Wire Wire Line
	6900 2700 6900 1900
Wire Wire Line
	7000 1800 7000 2800
Wire Wire Line
	4850 1800 7000 1800
Wire Wire Line
	6400 2800 7000 2800
Text Label 6400 4100 0    50   ~ 0
SAMPLE_LATCH
Text Label 6400 3800 0    50   ~ 0
~SHIFT_ENABLE
Text Label 6700 3900 2    50   ~ 0
CLK_TX
Text Label 6400 4000 0    50   ~ 0
DATA_RX
Text Label 6750 3300 2    50   ~ 0
~BUS_ACK
Text Label 6750 3200 2    50   ~ 0
~BUS_REQ
Text Label 6750 3100 2    50   ~ 0
SPD_HI
Text Label 6750 3000 2    50   ~ 0
SPD_MID
Text Label 6750 2900 2    50   ~ 0
SPD_LO
$EndSCHEMATC
