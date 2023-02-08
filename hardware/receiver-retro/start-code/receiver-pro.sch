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
S 8350 2650 1850 800 
U 5F2B3F8A
F0 "d2a" 50
F1 "d2a.sch" 50
F2 "D1_DATA[0..7]" I L 8350 3000 50 
F3 "D2_DATA[0..7]" I L 8350 3100 50 
F4 "D3_DATA[0..7]" I L 8350 3200 50 
F5 "D4_DATA[0..7]" I L 8350 3300 50 
$EndSheet
$Sheet
S 5000 5450 850  600 
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
Text Notes 8350 2550 0    100  Italic 20
  D to A\nConverters
Text Notes 5100 5800 0    100  Italic 20
Display
Text Notes 3000 5550 0    100  Italic 20
Power
$Sheet
S 1550 2650 1450 550 
U 615F2306
F0 "Receiver" 50
F1 "Receiver.sch" 50
F2 "RX_DATA_IN" I L 1550 2750 50 
F3 "RX_CLOCK_IN" I L 1550 2950 50 
F4 "BYTE_RESET_OUT" I R 3000 2850 50 
F5 "BIT_CLOCK_OUT" I R 3000 2750 50 
F6 "BYTE_END_IN" I R 3000 2950 50 
F7 "~FRAME_RST_OUT" I R 3000 3100 50 
$EndSheet
$Sheet
S 3400 2450 1800 750 
U 62477DE1
F0 "ByteCollection" 50
F1 "ByteCollection.sch" 50
F2 "RX_DATA_IN" I L 3400 2550 50 
F3 "BYTE_RESET_IN" I L 3400 2850 50 
F4 "BIT_CLOCK_IN" I L 3400 2750 50 
F5 "DIM_INC_OUT" I R 5200 3050 50 
F6 "DATA[0..7]" I R 5200 2850 50 
F7 "STOP_BIT_OUT" I R 5200 2950 50 
F8 "BYTE_END_OUT" I L 3400 2950 50 
$EndSheet
$Sheet
S 5850 2650 2050 800 
U 627E727E
F0 "DimmerMultiplex" 50
F1 "DimmerMultiplex.sch" 50
F2 "~FRAME_RST_IN" I L 5850 3350 50 
F3 "D1_DATA[0..7]" I R 7900 3000 50 
F4 "D2_DATA[0..7]" I R 7900 3100 50 
F5 "D4_DATA[0..7]" I R 7900 3300 50 
F6 "D3_DATA[0..7]" I R 7900 3200 50 
F7 "DIM_INC_IN" I L 5850 3050 50 
F8 "DATA[0..7]" I L 5850 2850 50 
F9 "SC_MATCH_IN" I R 7900 2750 50 
F10 "STOP_BIT_IN" I L 5850 2950 50 
F11 "~SC_SEL_OUT" I L 5850 2750 50 
$EndSheet
$Sheet
S 5850 1800 2050 600 
U 627E73CB
F0 "StartCode" 50
F1 "StartCode.sch" 50
F2 "STOP_BIT_IN" I L 5850 2100 50 
F3 "SC_MATCH_OUT" I R 7900 2250 50 
F4 "DATA[0..7]" I L 5850 2200 50 
F5 "~SC_SEL_IN" I L 5850 2300 50 
$EndSheet
$Sheet
S 4950 7050 750  550 
U 6332E244
F0 "Original-Logic" 50
F1 "Original-Logic.sch" 50
$EndSheet
Text Notes 2150 2450 0    100  Italic 20
UART
Text Notes 3500 2350 0    100  Italic 20
Byte\nCollection
Text Notes 5850 3850 0    100  Italic 20
Dimmer\nMultiplex
Text Notes 5850 1700 0    100  Italic 20
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
	1150 2750 1400 2750
Text Label 1250 2750 0    50   ~ 0
RX
Text Label 1250 2950 0    50   ~ 0
RXCLK
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6336B4A9
P 950 2850
AR Path="/615F2306/6336B4A9" Ref="J?"  Part="1" 
AR Path="/6336B4A9" Ref="J?"  Part="1" 
F 0 "J?" H 800 2500 50  0000 L CNN
F 1 "Input" H 750 2600 50  0000 L CNN
F 2 "" H 950 2850 50  0001 C CNN
F 3 "~" H 950 2850 50  0001 C CNN
	1    950  2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6336B4B0
P 1200 3100
AR Path="/615F2306/6336B4B0" Ref="#PWR?"  Part="1" 
AR Path="/6336B4B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1200 2850 50  0001 C CNN
F 1 "GND" H 1205 2927 50  0000 C CNN
F 2 "" H 1200 3100 50  0001 C CNN
F 3 "" H 1200 3100 50  0001 C CNN
	1    1200 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 2950 1150 2950
Wire Wire Line
	3000 2750 3400 2750
Wire Wire Line
	1400 2750 1400 2550
Wire Wire Line
	1400 2550 3400 2550
Connection ~ 1400 2750
Wire Wire Line
	1400 2750 1550 2750
Wire Wire Line
	3400 2850 3000 2850
Wire Wire Line
	3000 2950 3400 2950
Wire Wire Line
	3000 3100 3250 3100
Wire Wire Line
	3250 3100 3250 3350
Wire Wire Line
	7900 2250 8050 2250
Wire Wire Line
	8050 2250 8050 2750
Wire Wire Line
	8050 2750 7900 2750
Wire Bus Line
	7900 3000 8350 3000
Wire Bus Line
	7900 3100 8350 3100
Wire Bus Line
	7900 3200 8350 3200
Wire Bus Line
	7900 3300 8350 3300
Wire Wire Line
	1150 2850 1200 2850
Wire Wire Line
	1200 2850 1200 3100
Wire Wire Line
	5200 2950 5400 2950
Wire Wire Line
	3250 3350 5850 3350
Wire Wire Line
	5400 2100 5850 2100
Wire Bus Line
	5850 2200 5600 2200
Wire Bus Line
	5600 2200 5600 2750
Wire Wire Line
	5400 2100 5400 2950
Connection ~ 5400 2950
Wire Wire Line
	5400 2950 5850 2950
Entry Bus Bus
	5500 2850 5600 2750
Wire Wire Line
	5850 2750 5750 2750
Wire Wire Line
	5750 2750 5750 2300
Wire Wire Line
	5750 2300 5850 2300
Wire Wire Line
	5200 3050 5850 3050
Wire Bus Line
	5200 2850 5850 2850
$EndSCHEMATC
