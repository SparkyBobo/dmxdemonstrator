EESchema Schematic File Version 4
LIBS:receiver-pro-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8750 2150 1450 800 
U 5F2B3F8A
F0 "d2a" 50
F1 "d2a.sch" 50
$EndSheet
$Sheet
S 8950 3900 850  600 
U 5F2B4C18
F0 "display" 50
F1 "display.sch" 50
$EndSheet
$Sheet
S 2850 5150 850  600 
U 5F2B505F
F0 "power" 50
F1 "power.sch" 50
$EndSheet
Text Notes 9150 2700 0    100  Italic 20
  D to A\nConverters
Text Notes 9050 4250 0    100  Italic 20
Display
Text Notes 3000 5550 0    100  Italic 20
Power
$Sheet
S 1450 2150 1450 550 
U 615F2306
F0 "Receiver" 50
F1 "Receiver.sch" 50
F2 "RX_DATA_IN" I L 1450 2250 50 
F3 "RX_CLOCK_IN" I L 1450 2350 50 
F4 "BYTE_RESET_OUT" I R 2900 2350 50 
F5 "BIT_CLOCK_OUT" I R 2900 2250 50 
F6 "BYTE_END_IN" I R 2900 2450 50 
F7 "~FRAME_RST_OUT" I R 2900 2600 50 
$EndSheet
$Sheet
S 3400 1950 1800 750 
U 62477DE1
F0 "ByteCollection" 50
F1 "ByteCollection.sch" 50
F2 "RX_DATA_IN" I L 3400 2050 50 
F3 "BYTE_RESET_IN" I L 3400 2350 50 
F4 "BIT_CLOCK_IN" I L 3400 2250 50 
F5 "DIM_INC_OUT" I R 5200 2450 50 
F6 "DATA[0..7]" I R 5200 2250 50 
F7 "STOP_BIT_OUT" I R 5200 2350 50 
F8 "BYTE_END_OUT" I L 3400 2450 50 
$EndSheet
$Sheet
S 5750 2150 2650 800 
U 627E727E
F0 "DimmerMultiplex" 50
F1 "DimmerMultiplex.sch" 50
F2 "~FRAME_RST_IN" I L 5750 2850 50 
F3 "D1_DATA[0..7]" I R 8400 2500 50 
F4 "D2_DATA[0..7]" I R 8400 2600 50 
F5 "D4_DATA[0..7]" I R 8400 2800 50 
F6 "D3_DATA[0..7]" I R 8400 2700 50 
F7 "DIM_INC_IN" I L 5750 2450 50 
F8 "DATA[0..7]" I L 5750 2250 50 
F9 "SC_MATCH_IN" I R 8400 2250 50 
F10 "STOP_BIT_IN" I L 5750 2350 50 
$EndSheet
$Sheet
S 5750 1300 2650 600 
U 627E73CB
F0 "StartCode" 50
F1 "StartCode.sch" 50
F2 "STOP_BIT_IN" I L 5750 1700 50 
F3 "~FRAME_RST_IN" I L 5750 1600 50 
F4 "SC_MATCH_OUT" I R 8400 1750 50 
F5 "DATA[0..7]" I L 5750 1800 50 
$EndSheet
$Sheet
S 4950 7050 750  550 
U 6332E244
F0 "Original-Logic" 50
F1 "Original-Logic.sch" 50
$EndSheet
Text Notes 2050 1950 0    100  Italic 20
UART
Text Notes 3400 1850 0    100  Italic 20
Byte\nCollection
Text Notes 6750 2700 0    100  Italic 20
Dimmer\nMultiplex
Text Notes 6850 1750 0    100  Italic 20
Start\nCode
Text Notes 5050 7500 0    100  Italic 20
Original\nLogic
$Sheet
S 6050 7150 500  150 
U 63365579
F0 "Original-Dimmer" 50
F1 "Original-Dimmer.sch" 50
$EndSheet
Wire Wire Line
	1100 2250 1300 2250
Text Label 1100 2250 0    50   ~ 0
RX
Text Label 1100 2350 0    50   ~ 0
RXCLK
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6336B4A9
P 900 2350
AR Path="/615F2306/6336B4A9" Ref="J?"  Part="1" 
AR Path="/6336B4A9" Ref="J?"  Part="1" 
F 0 "J?" H 750 2700 50  0000 L CNN
F 1 "Input" H 700 2600 50  0000 L CNN
F 2 "" H 900 2350 50  0001 C CNN
F 3 "~" H 900 2350 50  0001 C CNN
	1    900  2350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6336B4B0
P 1100 2450
AR Path="/615F2306/6336B4B0" Ref="#PWR?"  Part="1" 
AR Path="/6336B4B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1100 2200 50  0001 C CNN
F 1 "GND" H 1105 2277 50  0000 C CNN
F 2 "" H 1100 2450 50  0001 C CNN
F 3 "" H 1100 2450 50  0001 C CNN
	1    1100 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 2350 1100 2350
Wire Wire Line
	2900 2250 3400 2250
Wire Wire Line
	1300 2250 1300 2050
Wire Wire Line
	1300 2050 3400 2050
Connection ~ 1300 2250
Wire Wire Line
	1300 2250 1450 2250
Wire Wire Line
	3400 2350 2900 2350
Wire Wire Line
	2900 2450 3400 2450
Wire Wire Line
	2900 2600 3150 2600
Wire Wire Line
	3150 2600 3150 2850
Wire Wire Line
	5200 2450 5750 2450
Entry Bus Bus
	5500 2250 5600 2150
Wire Bus Line
	5600 2150 5600 1800
Wire Bus Line
	5600 1800 5750 1800
Wire Wire Line
	5400 1700 5750 1700
Wire Wire Line
	5300 1600 5750 1600
Wire Wire Line
	5400 1700 5400 2350
Wire Wire Line
	5200 2350 5400 2350
Connection ~ 5400 2350
Wire Wire Line
	5400 2350 5750 2350
Wire Wire Line
	3150 2850 5300 2850
Wire Wire Line
	5300 1600 5300 2850
Connection ~ 5300 2850
Wire Wire Line
	5300 2850 5750 2850
Wire Wire Line
	8400 1750 8500 1750
Wire Wire Line
	8500 1750 8500 2250
Wire Wire Line
	8500 2250 8400 2250
Wire Bus Line
	5200 2250 5750 2250
$EndSCHEMATC
