EESchema Schematic File Version 4
LIBS:receiver-pro-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 1050 5200 1050
Entry Wire Line
	5100 950  5200 1050
Entry Wire Line
	5100 1050 5200 1150
Entry Wire Line
	5100 1150 5200 1250
Entry Wire Line
	5100 1250 5200 1350
Entry Wire Line
	5100 1350 5200 1450
Entry Wire Line
	5100 1450 5200 1550
Entry Wire Line
	5100 1550 5200 1650
Entry Wire Line
	5100 1650 5200 1750
Wire Wire Line
	5200 1150 5350 1150
Wire Wire Line
	5200 1250 5350 1250
Wire Wire Line
	5200 1350 5350 1350
Wire Wire Line
	5200 1450 5350 1450
Wire Wire Line
	5200 1550 5350 1550
Wire Wire Line
	5200 1650 5350 1650
Wire Wire Line
	5200 1750 5350 1750
Text Label 5200 1750 0    50   ~ 0
D10
Text Label 5200 1650 0    50   ~ 0
D11
Text Label 5200 1550 0    50   ~ 0
D12
Text Label 5200 1450 0    50   ~ 0
D13
Text Label 5200 1350 0    50   ~ 0
D14
Text Label 5200 1250 0    50   ~ 0
D15
Text Label 5200 1150 0    50   ~ 0
D16
Text Label 5200 1050 0    50   ~ 0
D17
Wire Wire Line
	8800 1100 8650 1100
Entry Wire Line
	8550 1900 8650 1800
Wire Wire Line
	8650 1200 8800 1200
Wire Wire Line
	8650 1300 8800 1300
Wire Wire Line
	8650 1400 8800 1400
Wire Wire Line
	8650 1500 8800 1500
Wire Wire Line
	8650 1600 8800 1600
Wire Wire Line
	8650 1700 8800 1700
Wire Wire Line
	8650 1800 8800 1800
Text Label 8650 1800 0    50   ~ 0
D20
Text Label 8650 1700 0    50   ~ 0
D21
Text Label 8650 1600 0    50   ~ 0
D22
Text Label 8650 1500 0    50   ~ 0
D23
Text Label 8650 1400 0    50   ~ 0
D24
Text Label 8650 1300 0    50   ~ 0
D25
Text Label 8650 1200 0    50   ~ 0
D26
Text Label 8650 1100 0    50   ~ 0
D27
Wire Wire Line
	5350 4450 5200 4450
Entry Wire Line
	5100 4350 5200 4450
Entry Wire Line
	5100 4450 5200 4550
Entry Wire Line
	5100 4550 5200 4650
Entry Wire Line
	5100 4650 5200 4750
Entry Wire Line
	5100 4750 5200 4850
Entry Wire Line
	5100 4850 5200 4950
Entry Wire Line
	5100 4950 5200 5050
Entry Wire Line
	5100 5050 5200 5150
Wire Wire Line
	5200 4550 5350 4550
Wire Wire Line
	5200 4650 5350 4650
Wire Wire Line
	5200 4750 5350 4750
Wire Wire Line
	5200 4850 5350 4850
Wire Wire Line
	5200 4950 5350 4950
Wire Wire Line
	5200 5050 5350 5050
Wire Wire Line
	5200 5150 5350 5150
Text Label 5200 5150 0    50   ~ 0
D30
Text Label 5200 5050 0    50   ~ 0
D31
Text Label 5200 4950 0    50   ~ 0
D32
Text Label 5200 4850 0    50   ~ 0
D33
Text Label 5200 4750 0    50   ~ 0
D34
Text Label 5200 4650 0    50   ~ 0
D35
Text Label 5200 4550 0    50   ~ 0
D36
Text Label 5200 4450 0    50   ~ 0
D37
Wire Wire Line
	8800 4500 8650 4500
Wire Wire Line
	8650 4600 8800 4600
Wire Wire Line
	8650 4700 8800 4700
Wire Wire Line
	8650 4800 8800 4800
Wire Wire Line
	8650 4900 8800 4900
Wire Wire Line
	8650 5000 8800 5000
Wire Wire Line
	8650 5100 8800 5100
Wire Wire Line
	8650 5200 8800 5200
Text Label 8650 5200 0    50   ~ 0
D40
Text Label 8650 5100 0    50   ~ 0
D41
Text Label 8650 5000 0    50   ~ 0
D42
Text Label 8650 4900 0    50   ~ 0
D43
Text Label 8650 4800 0    50   ~ 0
D44
Text Label 8650 4700 0    50   ~ 0
D45
Text Label 8650 4600 0    50   ~ 0
D46
Text Label 8650 4500 0    50   ~ 0
D47
$Comp
L Analog_DAC:DAC0808_DIP U?
U 1 1 6853F259
P 5750 1450
AR Path="/6841E790/5F2B3F8A/6853F259" Ref="U?"  Part="1" 
AR Path="/6A2CE0CC/6853F259" Ref="U?"  Part="1" 
AR Path="/5F2B3F8A/6853F259" Ref="U?"  Part="1" 
F 0 "U?" H 5900 2100 50  0000 C CNN
F 1 "DAC0808_DIP" H 6050 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5750 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac0808.pdf" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6853F25A
P 5750 1950
F 0 "#PWR?" H 5750 1700 50  0001 C CNN
F 1 "GND" H 5755 1777 50  0000 C CNN
F 2 "" H 5750 1950 50  0001 C CNN
F 3 "" H 5750 1950 50  0001 C CNN
	1    5750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1950 5850 2050
Wire Wire Line
	5850 2050 6250 2050
$Comp
L power:GND #PWR?
U 1 1 6853F25B
P 6550 1800
F 0 "#PWR?" H 6550 1550 50  0001 C CNN
F 1 "GND" H 6555 1627 50  0000 C CNN
F 2 "" H 6550 1800 50  0001 C CNN
F 3 "" H 6550 1800 50  0001 C CNN
	1    6550 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6853F25C
P 6550 1550
AR Path="/6841E790/5F2B3F8A/6853F25C" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/6853F25C" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/6853F25C" Ref="R?"  Part="1" 
F 0 "R?" H 6618 1596 50  0000 L CNN
F 1 "R_US" H 6618 1505 50  0000 L CNN
F 2 "" V 6590 1540 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6853F25D
P 6250 1800
AR Path="/6841E790/5F2B3F8A/6853F25D" Ref="C?"  Part="1" 
AR Path="/6A2CE0CC/6853F25D" Ref="C?"  Part="1" 
AR Path="/5F2B3F8A/6853F25D" Ref="C?"  Part="1" 
F 0 "C?" H 6365 1846 50  0000 L CNN
F 1 "C" H 6365 1755 50  0000 L CNN
F 2 "" H 6288 1650 50  0001 C CNN
F 3 "~" H 6250 1800 50  0001 C CNN
	1    6250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1550 6250 1550
Wire Wire Line
	6250 1550 6250 1650
Wire Wire Line
	6250 1950 6250 2050
Connection ~ 6250 2050
Wire Wire Line
	6250 2050 7050 2050
Wire Wire Line
	6150 1150 6550 1150
Wire Wire Line
	6550 1150 6550 1400
Wire Wire Line
	7050 2050 7050 1800
$Comp
L Device:R_POT_US R?
U 1 1 64BBB6DA
P 6850 1050
AR Path="/6841E790/5F2B3F8A/64BBB6DA" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/64BBB6DA" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/64BBB6DA" Ref="R?"  Part="1" 
F 0 "R?" H 6782 1096 50  0000 R CNN
F 1 "R_POT_US" H 6782 1005 50  0000 R CNN
F 2 "" H 6850 1050 50  0001 C CNN
F 3 "~" H 6850 1050 50  0001 C CNN
	1    6850 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 1050 6700 1050
Wire Wire Line
	6550 1800 6550 1750
Wire Wire Line
	6550 1750 6850 1750
Wire Wire Line
	6850 1750 6850 1200
Connection ~ 6550 1750
Wire Wire Line
	6550 1750 6550 1700
$Comp
L Analog_DAC:DAC0808_DIP U?
U 1 1 6853F261
P 5750 4850
AR Path="/6841E790/5F2B3F8A/6853F261" Ref="U?"  Part="1" 
AR Path="/6A2CE0CC/6853F261" Ref="U?"  Part="1" 
AR Path="/5F2B3F8A/6853F261" Ref="U?"  Part="1" 
F 0 "U?" H 5900 5500 50  0000 C CNN
F 1 "DAC0808_DIP" H 6050 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5750 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac0808.pdf" H 5750 4850 50  0001 C CNN
	1    5750 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64C24459
P 5750 5350
F 0 "#PWR?" H 5750 5100 50  0001 C CNN
F 1 "GND" H 5755 5177 50  0000 C CNN
F 2 "" H 5750 5350 50  0001 C CNN
F 3 "" H 5750 5350 50  0001 C CNN
	1    5750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5350 5850 5450
Wire Wire Line
	5850 5450 6250 5450
$Comp
L power:GND #PWR?
U 1 1 64C24461
P 6550 5200
F 0 "#PWR?" H 6550 4950 50  0001 C CNN
F 1 "GND" H 6555 5027 50  0000 C CNN
F 2 "" H 6550 5200 50  0001 C CNN
F 3 "" H 6550 5200 50  0001 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6853F264
P 6550 4950
AR Path="/6841E790/5F2B3F8A/6853F264" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/6853F264" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/6853F264" Ref="R?"  Part="1" 
F 0 "R?" H 6618 4996 50  0000 L CNN
F 1 "R_US" H 6618 4905 50  0000 L CNN
F 2 "" V 6590 4940 50  0001 C CNN
F 3 "~" H 6550 4950 50  0001 C CNN
	1    6550 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64C2446D
P 6250 5200
AR Path="/6841E790/5F2B3F8A/64C2446D" Ref="C?"  Part="1" 
AR Path="/6A2CE0CC/64C2446D" Ref="C?"  Part="1" 
AR Path="/5F2B3F8A/64C2446D" Ref="C?"  Part="1" 
F 0 "C?" H 6365 5246 50  0000 L CNN
F 1 "C" H 6365 5155 50  0000 L CNN
F 2 "" H 6288 5050 50  0001 C CNN
F 3 "~" H 6250 5200 50  0001 C CNN
	1    6250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4950 6250 4950
Wire Wire Line
	6250 4950 6250 5050
Wire Wire Line
	6250 5350 6250 5450
Connection ~ 6250 5450
Wire Wire Line
	6250 5450 7050 5450
Wire Wire Line
	6150 4550 6550 4550
Wire Wire Line
	6550 4550 6550 4800
Wire Wire Line
	7050 5450 7050 5200
$Comp
L Device:R_POT_US R?
U 1 1 64C2447C
P 6850 4450
AR Path="/6841E790/5F2B3F8A/64C2447C" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/64C2447C" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/64C2447C" Ref="R?"  Part="1" 
F 0 "R?" H 6782 4496 50  0000 R CNN
F 1 "R_POT_US" H 6782 4405 50  0000 R CNN
F 2 "" H 6850 4450 50  0001 C CNN
F 3 "~" H 6850 4450 50  0001 C CNN
	1    6850 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 4450 6700 4450
Wire Wire Line
	6550 5200 6550 5150
Wire Wire Line
	6550 5150 6850 5150
Wire Wire Line
	6850 5150 6850 4600
Connection ~ 6550 5150
Wire Wire Line
	6550 5150 6550 5100
$Comp
L Analog_DAC:DAC0808_DIP U?
U 1 1 64C2BD89
P 9200 4900
AR Path="/6841E790/5F2B3F8A/64C2BD89" Ref="U?"  Part="1" 
AR Path="/6A2CE0CC/64C2BD89" Ref="U?"  Part="1" 
AR Path="/5F2B3F8A/64C2BD89" Ref="U?"  Part="1" 
F 0 "U?" H 9350 5550 50  0000 C CNN
F 1 "DAC0808_DIP" H 9500 5450 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9200 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac0808.pdf" H 9200 4900 50  0001 C CNN
	1    9200 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6853F26A
P 9200 5400
F 0 "#PWR?" H 9200 5150 50  0001 C CNN
F 1 "GND" H 9205 5227 50  0000 C CNN
F 2 "" H 9200 5400 50  0001 C CNN
F 3 "" H 9200 5400 50  0001 C CNN
	1    9200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5400 9300 5500
Wire Wire Line
	9300 5500 9700 5500
$Comp
L power:GND #PWR?
U 1 1 6853F26B
P 10000 5250
F 0 "#PWR?" H 10000 5000 50  0001 C CNN
F 1 "GND" H 10005 5077 50  0000 C CNN
F 2 "" H 10000 5250 50  0001 C CNN
F 3 "" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6853F26C
P 10000 5000
AR Path="/6841E790/5F2B3F8A/6853F26C" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/6853F26C" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/6853F26C" Ref="R?"  Part="1" 
F 0 "R?" H 10068 5046 50  0000 L CNN
F 1 "R_US" H 10068 4955 50  0000 L CNN
F 2 "" V 10040 4990 50  0001 C CNN
F 3 "~" H 10000 5000 50  0001 C CNN
	1    10000 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6853F26D
P 9700 5250
AR Path="/6841E790/5F2B3F8A/6853F26D" Ref="C?"  Part="1" 
AR Path="/6A2CE0CC/6853F26D" Ref="C?"  Part="1" 
AR Path="/5F2B3F8A/6853F26D" Ref="C?"  Part="1" 
F 0 "C?" H 9815 5296 50  0000 L CNN
F 1 "C" H 9815 5205 50  0000 L CNN
F 2 "" H 9738 5100 50  0001 C CNN
F 3 "~" H 9700 5250 50  0001 C CNN
	1    9700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5000 9700 5000
Wire Wire Line
	9700 5000 9700 5100
Wire Wire Line
	9700 5400 9700 5500
Connection ~ 9700 5500
Wire Wire Line
	9700 5500 10500 5500
Wire Wire Line
	9600 4600 10000 4600
Wire Wire Line
	10000 4600 10000 4850
Wire Wire Line
	10500 5500 10500 5250
$Comp
L Device:R_POT_US R?
U 1 1 6853F26E
P 10300 4500
AR Path="/6841E790/5F2B3F8A/6853F26E" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/6853F26E" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/6853F26E" Ref="R?"  Part="1" 
F 0 "R?" H 10232 4546 50  0000 R CNN
F 1 "R_POT_US" H 10232 4455 50  0000 R CNN
F 2 "" H 10300 4500 50  0001 C CNN
F 3 "~" H 10300 4500 50  0001 C CNN
	1    10300 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 4500 10150 4500
Wire Wire Line
	10000 5250 10000 5200
Wire Wire Line
	10000 5200 10300 5200
Wire Wire Line
	10300 5200 10300 4650
Connection ~ 10000 5200
Wire Wire Line
	10000 5200 10000 5150
$Comp
L Analog_DAC:DAC0808_DIP U?
U 1 1 64C34572
P 9200 1500
AR Path="/6841E790/5F2B3F8A/64C34572" Ref="U?"  Part="1" 
AR Path="/6A2CE0CC/64C34572" Ref="U?"  Part="1" 
AR Path="/5F2B3F8A/64C34572" Ref="U?"  Part="1" 
F 0 "U?" H 9350 2150 50  0000 C CNN
F 1 "DAC0808_DIP" H 9500 2050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9200 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac0808.pdf" H 9200 1500 50  0001 C CNN
	1    9200 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64C34578
P 9200 2000
F 0 "#PWR?" H 9200 1750 50  0001 C CNN
F 1 "GND" H 9205 1827 50  0000 C CNN
F 2 "" H 9200 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2000 9300 2100
Wire Wire Line
	9300 2100 9700 2100
$Comp
L power:GND #PWR?
U 1 1 64C34580
P 10000 1850
F 0 "#PWR?" H 10000 1600 50  0001 C CNN
F 1 "GND" H 10005 1677 50  0000 C CNN
F 2 "" H 10000 1850 50  0001 C CNN
F 3 "" H 10000 1850 50  0001 C CNN
	1    10000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 64C34586
P 10000 1600
AR Path="/6841E790/5F2B3F8A/64C34586" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/64C34586" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/64C34586" Ref="R?"  Part="1" 
F 0 "R?" H 10068 1646 50  0000 L CNN
F 1 "R_US" H 10068 1555 50  0000 L CNN
F 2 "" V 10040 1590 50  0001 C CNN
F 3 "~" H 10000 1600 50  0001 C CNN
	1    10000 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64C3458C
P 9700 1850
AR Path="/6841E790/5F2B3F8A/64C3458C" Ref="C?"  Part="1" 
AR Path="/6A2CE0CC/64C3458C" Ref="C?"  Part="1" 
AR Path="/5F2B3F8A/64C3458C" Ref="C?"  Part="1" 
F 0 "C?" H 9815 1896 50  0000 L CNN
F 1 "C" H 9815 1805 50  0000 L CNN
F 2 "" H 9738 1700 50  0001 C CNN
F 3 "~" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1600 9700 1600
Wire Wire Line
	9700 1600 9700 1700
Wire Wire Line
	9700 2000 9700 2100
Connection ~ 9700 2100
Wire Wire Line
	9700 2100 10500 2100
Wire Wire Line
	9600 1200 10000 1200
Wire Wire Line
	10000 1200 10000 1450
Wire Wire Line
	10500 2100 10500 1850
$Comp
L Device:R_POT_US R?
U 1 1 64C3459B
P 10300 1100
AR Path="/6841E790/5F2B3F8A/64C3459B" Ref="R?"  Part="1" 
AR Path="/6A2CE0CC/64C3459B" Ref="R?"  Part="1" 
AR Path="/5F2B3F8A/64C3459B" Ref="R?"  Part="1" 
F 0 "R?" H 10232 1146 50  0000 R CNN
F 1 "R_POT_US" H 10232 1055 50  0000 R CNN
F 2 "" H 10300 1100 50  0001 C CNN
F 3 "~" H 10300 1100 50  0001 C CNN
	1    10300 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 1100 10150 1100
Wire Wire Line
	10000 1850 10000 1800
Wire Wire Line
	10000 1800 10300 1800
Wire Wire Line
	10300 1800 10300 1250
Connection ~ 10000 1800
Wire Wire Line
	10000 1800 10000 1750
Wire Wire Line
	6850 4300 6850 4250
Wire Wire Line
	6850 850  6850 900 
Wire Wire Line
	10300 900  10300 950 
Wire Wire Line
	10300 4300 10300 4350
Entry Wire Line
	8550 1800 8650 1700
Entry Wire Line
	8550 1700 8650 1600
Entry Wire Line
	8550 1600 8650 1500
Entry Wire Line
	8550 1500 8650 1400
Entry Wire Line
	8550 1400 8650 1300
Entry Wire Line
	8550 1300 8650 1200
Entry Wire Line
	8550 1200 8650 1100
Entry Wire Line
	8550 4600 8650 4500
Entry Wire Line
	8550 4700 8650 4600
Entry Wire Line
	8550 4800 8650 4700
Entry Wire Line
	8550 4900 8650 4800
Entry Wire Line
	8550 5000 8650 4900
Entry Wire Line
	8550 5100 8650 5000
Entry Wire Line
	8550 5200 8650 5100
Entry Wire Line
	8550 5300 8650 5200
Entry Bus Bus
	5000 4150 5100 4250
Entry Bus Bus
	5000 700  5100 800 
Entry Bus Bus
	8450 2350 8550 2250
Entry Bus Bus
	8450 5750 8550 5650
Text Notes 6750 3350 0    50   ~ 0
Digital To\nAnalog\nConverters
Text GLabel 4900 1850 0    50   Input ~ 0
D1[0..7]
Text GLabel 8350 1000 0    50   Input ~ 0
D2[0..7]
Entry Bus Bus
	5000 1850 5100 1750
Wire Bus Line
	5000 1850 4900 1850
Wire Bus Line
	8450 1000 8350 1000
Entry Bus Bus
	8450 1000 8550 1100
Text GLabel 4900 5250 0    50   Input ~ 0
D3[0..7]
Text GLabel 8350 4400 0    50   Input ~ 0
D4[0..7]
Wire Bus Line
	5000 5250 4900 5250
Entry Bus Bus
	5000 5250 5100 5150
Wire Bus Line
	8450 4400 8350 4400
Entry Bus Bus
	8450 4400 8550 4500
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J?
U 1 1 6853F281
P 10650 3050
AR Path="/6841E790/5F2B3F8A/6853F281" Ref="J?"  Part="1" 
AR Path="/6A2CE0CC/6853F281" Ref="J?"  Part="1" 
AR Path="/5F2B3F8A/6853F281" Ref="J?"  Part="1" 
F 0 "J?" H 10700 3367 50  0000 C CNN
F 1 "Dimmers" H 10700 3276 50  0000 C CNN
F 2 "" H 10650 3050 50  0001 C CNN
F 3 "~" H 10650 3050 50  0001 C CNN
	1    10650 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6853F284
P 11050 3350
F 0 "#PWR?" H 11050 3100 50  0001 C CNN
F 1 "GND" H 11055 3177 50  0000 C CNN
F 2 "" H 11050 3350 50  0001 C CNN
F 3 "" H 11050 3350 50  0001 C CNN
	1    11050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3050 11050 3050
Wire Wire Line
	11050 3050 11050 3150
Wire Wire Line
	10950 3150 11050 3150
Connection ~ 11050 3150
Wire Wire Line
	11050 3150 11050 3250
Wire Wire Line
	7350 1350 7350 2950
Wire Wire Line
	6150 1350 7350 1350
Wire Wire Line
	7350 2950 10450 2950
Wire Wire Line
	7350 3150 7350 4750
Wire Wire Line
	7350 3150 10450 3150
Wire Wire Line
	6150 4750 7350 4750
Wire Wire Line
	10850 1400 10850 2500
Wire Wire Line
	10850 2500 10250 2500
Wire Wire Line
	10250 2500 10250 3050
Wire Wire Line
	9600 1400 10850 1400
Wire Wire Line
	10250 3050 10450 3050
Wire Wire Line
	10250 3250 10250 3900
Wire Wire Line
	10250 3900 10800 3900
Wire Wire Line
	10800 3900 10800 4800
Wire Wire Line
	10250 3250 10450 3250
Wire Wire Line
	9600 4800 10800 4800
$Comp
L power:+5V #PWR?
U 1 1 5F376F43
P 5750 850
F 0 "#PWR?" H 5750 700 50  0001 C CNN
F 1 "+5V" H 5765 1023 50  0000 C CNN
F 2 "" H 5750 850 50  0001 C CNN
F 3 "" H 5750 850 50  0001 C CNN
	1    5750 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F37705F
P 6850 850
F 0 "#PWR?" H 6850 700 50  0001 C CNN
F 1 "+5V" H 6865 1023 50  0000 C CNN
F 2 "" H 6850 850 50  0001 C CNN
F 3 "" H 6850 850 50  0001 C CNN
	1    6850 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F3770FD
P 9200 900
F 0 "#PWR?" H 9200 750 50  0001 C CNN
F 1 "+5V" H 9215 1073 50  0000 C CNN
F 2 "" H 9200 900 50  0001 C CNN
F 3 "" H 9200 900 50  0001 C CNN
	1    9200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F377142
P 10300 900
F 0 "#PWR?" H 10300 750 50  0001 C CNN
F 1 "+5V" H 10315 1073 50  0000 C CNN
F 2 "" H 10300 900 50  0001 C CNN
F 3 "" H 10300 900 50  0001 C CNN
	1    10300 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F3772E3
P 6850 4250
F 0 "#PWR?" H 6850 4100 50  0001 C CNN
F 1 "+5V" H 6865 4423 50  0000 C CNN
F 2 "" H 6850 4250 50  0001 C CNN
F 3 "" H 6850 4250 50  0001 C CNN
	1    6850 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F3773C5
P 5750 4250
F 0 "#PWR?" H 5750 4100 50  0001 C CNN
F 1 "+5V" H 5765 4423 50  0000 C CNN
F 2 "" H 5750 4250 50  0001 C CNN
F 3 "" H 5750 4250 50  0001 C CNN
	1    5750 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F377427
P 9200 4300
F 0 "#PWR?" H 9200 4150 50  0001 C CNN
F 1 "+5V" H 9215 4473 50  0000 C CNN
F 2 "" H 9200 4300 50  0001 C CNN
F 3 "" H 9200 4300 50  0001 C CNN
	1    9200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F37757D
P 10300 4300
F 0 "#PWR?" H 10300 4150 50  0001 C CNN
F 1 "+5V" H 10315 4473 50  0000 C CNN
F 2 "" H 10300 4300 50  0001 C CNN
F 3 "" H 10300 4300 50  0001 C CNN
	1    10300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5F377622
P 10500 5250
F 0 "#PWR?" H 10500 5350 50  0001 C CNN
F 1 "-5V" H 10515 5423 50  0000 C CNN
F 2 "" H 10500 5250 50  0001 C CNN
F 3 "" H 10500 5250 50  0001 C CNN
	1    10500 5250
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5F37770B
P 7050 5200
F 0 "#PWR?" H 7050 5300 50  0001 C CNN
F 1 "-5V" H 7065 5373 50  0000 C CNN
F 2 "" H 7050 5200 50  0001 C CNN
F 3 "" H 7050 5200 50  0001 C CNN
	1    7050 5200
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5F377750
P 7050 1800
F 0 "#PWR?" H 7050 1900 50  0001 C CNN
F 1 "-5V" H 7065 1973 50  0000 C CNN
F 2 "" H 7050 1800 50  0001 C CNN
F 3 "" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5F377937
P 10500 1850
F 0 "#PWR?" H 10500 1950 50  0001 C CNN
F 1 "-5V" H 10515 2023 50  0000 C CNN
F 2 "" H 10500 1850 50  0001 C CNN
F 3 "" H 10500 1850 50  0001 C CNN
	1    10500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 3050 11050 2950
Wire Wire Line
	11050 2950 10950 2950
Connection ~ 11050 3050
Wire Wire Line
	10950 3250 11050 3250
Connection ~ 11050 3250
Wire Wire Line
	11050 3250 11050 3350
Wire Bus Line
	5100 4250 5100 5150
Wire Bus Line
	5100 800  5100 1750
Wire Bus Line
	8550 4500 8550 5650
Wire Bus Line
	8550 1100 8550 2250
Text HLabel 1750 1200 0    50   Input ~ 0
D1_DATA[0..7]
Text HLabel 1750 1400 0    50   Input ~ 0
D2_DATA[0..7]
Text HLabel 1750 1600 0    50   Input ~ 0
D3_DATA[0..7]
Text HLabel 1750 1850 0    50   Input ~ 0
D4_DATA[0..7]
$EndSCHEMATC