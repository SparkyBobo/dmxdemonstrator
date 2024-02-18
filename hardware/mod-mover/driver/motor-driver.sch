EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2150 2450 0    50   Input ~ 0
MTR0A
Text HLabel 2150 2550 0    50   Input ~ 0
MTR0B
Text HLabel 2100 4350 0    50   Input ~ 0
MTR1A
Text HLabel 2100 4450 0    50   Input ~ 0
MTR1B
$Comp
L Connector_Generic:Conn_01x08 J31
U 1 1 663093C1
P 6600 1600
F 0 "J31" H 6750 1500 50  0000 C CNN
F 1 "DB0B" H 6800 1600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6600 1600 50  0001 C CNN
F 3 "~" H 6600 1600 50  0001 C CNN
	1    6600 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 1300 6900 1300
Wire Wire Line
	6800 1200 6900 1200
Wire Wire Line
	6900 1200 6900 950 
Wire Wire Line
	6800 1900 6900 1900
Wire Wire Line
	6900 1900 6900 2000
$Comp
L power:VDD #PWR0142
U 1 1 66315761
P 6900 950
F 0 "#PWR0142" H 6900 800 50  0001 C CNN
F 1 "VDD" H 6917 1123 50  0000 C CNN
F 2 "" H 6900 950 50  0001 C CNN
F 3 "" H 6900 950 50  0001 C CNN
	1    6900 950 
	1    0    0    -1  
$EndComp
Text Notes 5900 1450 0    50   ~ 0
DRV8825/\nTMC2209/\nA4988\nDriver Board
Wire Wire Line
	4450 6750 4550 6750
Wire Wire Line
	4550 6750 4550 7400
Wire Wire Line
	4450 6650 4500 6650
$Comp
L Diode:1N5819 D?
U 1 1 66441DC7
P 4650 6650
AR Path="/64798DC1/66441DC7" Ref="D?"  Part="1" 
AR Path="/66441DC7" Ref="D?"  Part="1" 
AR Path="/647E1209/66441DC7" Ref="D?"  Part="1" 
AR Path="/66A5434C/66441DC7" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/66441DC7" Ref="D?"  Part="1" 
AR Path="/65C3A952/66441DC7" Ref="D12"  Part="1" 
F 0 "D12" H 4650 6866 50  0000 C CNN
F 1 "1N5819" H 4650 6775 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 4650 6475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4650 6650 50  0001 C CNN
F 4 "COM-10926" H 4750 6700 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 4750 6700 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 4750 6700 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 4750 6700 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 4750 6700 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 4750 6700 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 4750 6700 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 4750 6700 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 4650 6650 50  0001 C CNN "Description"
	1    4650 6650
	-1   0    0    -1  
$EndComp
Text Notes 4200 7050 0    50   ~ 0
Servo\nPower
$Comp
L power:VDD #PWR?
U 1 1 66450ED9
P 5600 6600
AR Path="/66450ED9" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/66450ED9" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 5600 6450 50  0001 C CNN
F 1 "VDD" H 5617 6773 50  0000 C CNN
F 2 "" H 5600 6600 50  0001 C CNN
F 3 "" H 5600 6600 50  0001 C CNN
	1    5600 6600
	1    0    0    -1  
$EndComp
Text HLabel 2150 2650 0    50   Input ~ 0
MTR0C
Text HLabel 2100 4550 0    50   Input ~ 0
MTR1C
Text Label 3750 4450 0    50   ~ 0
STEP1
Text Label 3750 4550 0    50   ~ 0
DIR1
Text Label 3750 4350 0    50   ~ 0
SPEED1
$Comp
L power:VDD #PWR0146
U 1 1 66852A7E
P 6300 2400
F 0 "#PWR0146" H 6300 2250 50  0001 C CNN
F 1 "VDD" H 6317 2573 50  0000 C CNN
F 2 "" H 6300 2400 50  0001 C CNN
F 3 "" H 6300 2400 50  0001 C CNN
	1    6300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2500 6200 2450
Wire Wire Line
	6200 2450 6300 2450
Wire Wire Line
	6300 2450 6300 2400
Wire Wire Line
	6300 2450 6300 2500
Connection ~ 6300 2450
Wire Wire Line
	6300 2450 6400 2450
Wire Wire Line
	6400 2450 6400 2500
Wire Wire Line
	5500 3300 5200 3300
Wire Wire Line
	5200 3300 5200 2450
Wire Wire Line
	2150 2450 5200 2450
Wire Wire Line
	5500 3400 5200 3400
Wire Wire Line
	2100 4350 5200 4350
Wire Wire Line
	5200 3400 5200 4350
Wire Wire Line
	5500 3600 5100 3600
Wire Wire Line
	5000 3700 5000 2650
Wire Wire Line
	5000 3800 5000 4450
Wire Wire Line
	5500 3900 5100 3900
Wire Wire Line
	5100 3900 5100 4550
Wire Wire Line
	5500 3100 5350 3100
Wire Wire Line
	5350 3100 5350 2900
Wire Wire Line
	5350 2450 5800 2450
Wire Wire Line
	6100 4500 6100 4550
Wire Wire Line
	6100 4550 6200 4550
Wire Wire Line
	6400 4550 6400 4500
Wire Wire Line
	6300 4500 6300 4550
Connection ~ 6300 4550
Wire Wire Line
	6300 4550 6400 4550
Wire Wire Line
	6200 4500 6200 4550
Connection ~ 6200 4550
Wire Wire Line
	6200 4550 6250 4550
Wire Wire Line
	6250 4550 6250 4600
Connection ~ 6250 4550
Wire Wire Line
	6250 4550 6300 4550
$Comp
L power:+5V #PWR?
U 1 1 668634CD
P 5800 2400
AR Path="/6841E790/668634CD" Ref="#PWR?"  Part="1" 
AR Path="/668634CD" Ref="#PWR?"  Part="1" 
AR Path="/5F613CCA/668634CD" Ref="#PWR?"  Part="1" 
AR Path="/66778914/668634CD" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/668634CD" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/668634CD" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/668634CD" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 5800 2250 50  0001 C CNN
F 1 "+5V" H 5815 2573 50  0000 C CNN
F 2 "" H 5800 2400 50  0001 C CNN
F 3 "" H 5800 2400 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2400 5800 2450
$Comp
L power:GND #PWR?
U 1 1 668634E5
P 5800 4600
AR Path="/65A70F21/668634E5" Ref="#PWR?"  Part="1" 
AR Path="/668634E5" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/668634E5" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/668634E5" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 5800 4350 50  0001 C CNN
F 1 "GND" H 5805 4427 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 5800 4550
Wire Wire Line
	5350 3100 5350 4050
Connection ~ 5350 3100
$Comp
L Device:R_US R24
U 1 1 66874A6B
P 5350 4200
F 0 "R24" H 5418 4246 50  0000 L CNN
F 1 "10k" H 5418 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5390 4190 50  0001 C CNN
F 3 "~" H 5350 4200 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
Connection ~ 5800 2450
Wire Wire Line
	5800 2450 5800 2500
Wire Wire Line
	5350 4350 5350 4550
Wire Wire Line
	5350 4550 5800 4550
Connection ~ 5800 4550
Wire Wire Line
	5800 4550 5800 4500
Wire Wire Line
	5600 7400 6050 7400
Wire Wire Line
	6450 6950 6450 6650
Wire Wire Line
	5150 7400 4550 7400
Wire Wire Line
	5600 7400 5600 7500
Connection ~ 5150 7400
Connection ~ 5600 7400
Wire Wire Line
	5600 7400 5150 7400
Wire Wire Line
	5600 7200 5600 7400
Wire Wire Line
	5150 7200 5150 7400
Wire Wire Line
	5600 6650 6050 6650
Connection ~ 5600 6650
Wire Wire Line
	5600 6650 5600 6600
Wire Wire Line
	5150 6650 5600 6650
Connection ~ 5150 6650
Wire Wire Line
	5150 6600 5150 6650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6688BC61
P 5150 6600
AR Path="/659D01BF/6688BC61" Ref="#FLG?"  Part="1" 
AR Path="/6688BC61" Ref="#FLG?"  Part="1" 
AR Path="/65C3A952/6688BC61" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 5150 6675 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 6773 50  0000 C CNN
F 2 "" H 5150 6600 50  0001 C CNN
F 3 "~" H 5150 6600 50  0001 C CNN
	1    5150 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6688BC67
P 5600 7500
AR Path="/659D01BF/6688BC67" Ref="#PWR?"  Part="1" 
AR Path="/6688BC67" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/6688BC67" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 5600 7250 50  0001 C CNN
F 1 "GND" H 5605 7327 50  0000 C CNN
F 2 "" H 5600 7500 50  0001 C CNN
F 3 "" H 5600 7500 50  0001 C CNN
	1    5600 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6900 5150 6650
$Comp
L Device:CP1 C?
U 1 1 6688BC7F
P 5600 7050
AR Path="/647E1209/6688BC7F" Ref="C?"  Part="1" 
AR Path="/6688BC7F" Ref="C?"  Part="1" 
AR Path="/65468F85/6688BC7F" Ref="C?"  Part="1" 
AR Path="/65C3A952/6688BC7F" Ref="C9"  Part="1" 
F 0 "C9" H 5715 7096 50  0000 L CNN
F 1 "47uF" H 5715 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5600 7050 50  0001 C CNN
F 3 "~" H 5600 7050 50  0001 C CNN
F 4 "COM-00523" H 6350 7000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 6350 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 6350 7000 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 6350 7000 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 6350 7000 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 6350 7000 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 6350 7000 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 6350 7000 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 6350 7000 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 6350 7000 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 5600 7050 50  0001 C CNN "Description"
	1    5600 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6900 5600 6650
$Comp
L Device:CP1 C?
U 1 1 6688BC91
P 5150 7050
AR Path="/647E1209/6688BC91" Ref="C?"  Part="1" 
AR Path="/6688BC91" Ref="C?"  Part="1" 
AR Path="/65468F85/6688BC91" Ref="C?"  Part="1" 
AR Path="/65C3A952/6688BC91" Ref="C8"  Part="1" 
F 0 "C8" H 5265 7096 50  0000 L CNN
F 1 "47uF" H 5265 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 7050 50  0001 C CNN
F 3 "~" H 5150 7050 50  0001 C CNN
F 4 "COM-00523" H 5900 7000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 5900 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 5900 7000 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 5900 7000 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 5900 7000 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 5900 7000 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 5900 7000 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 5900 7000 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 5900 7000 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 5900 7000 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 5150 7050 50  0001 C CNN "Description"
	1    5150 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J35
U 1 1 668CBDAE
P 6600 5600
F 0 "J35" H 6750 5500 50  0000 C CNN
F 1 "DB0B" H 6800 5600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6600 5600 50  0001 C CNN
F 3 "~" H 6600 5600 50  0001 C CNN
	1    6600 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 5300 6900 5300
Wire Wire Line
	6800 5200 6900 5200
Wire Wire Line
	6900 5200 6900 4950
Wire Wire Line
	6800 5900 6900 5900
Wire Wire Line
	6800 5800 7100 5800
$Comp
L power:VDD #PWR0150
U 1 1 668CBDD8
P 6900 4950
F 0 "#PWR0150" H 6900 4800 50  0001 C CNN
F 1 "VDD" H 6917 5123 50  0000 C CNN
F 2 "" H 6900 4950 50  0001 C CNN
F 3 "" H 6900 4950 50  0001 C CNN
	1    6900 4950
	1    0    0    -1  
$EndComp
Text Notes 5900 5450 0    50   ~ 0
DRV8825/\nTMC2209/\nA4988\nDriver Board
Wire Wire Line
	6800 1800 7100 1800
$Comp
L power:GND #PWR?
U 1 1 6690CAA8
P 6900 2000
AR Path="/65A70F21/6690CAA8" Ref="#PWR?"  Part="1" 
AR Path="/6690CAA8" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/6690CAA8" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/6690CAA8" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 6900 1750 50  0001 C CNN
F 1 "GND" H 6905 1827 50  0000 C CNN
F 2 "" H 6900 2000 50  0001 C CNN
F 3 "" H 6900 2000 50  0001 C CNN
	1    6900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1800 7100 950 
$Comp
L power:+5V #PWR?
U 1 1 6691708D
P 7100 950
AR Path="/6841E790/6691708D" Ref="#PWR?"  Part="1" 
AR Path="/6691708D" Ref="#PWR?"  Part="1" 
AR Path="/5F613CCA/6691708D" Ref="#PWR?"  Part="1" 
AR Path="/66778914/6691708D" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/6691708D" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/6691708D" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/6691708D" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 7100 800 50  0001 C CNN
F 1 "+5V" H 7115 1123 50  0000 C CNN
F 2 "" H 7100 950 50  0001 C CNN
F 3 "" H 7100 950 50  0001 C CNN
	1    7100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5800 7100 4950
$Comp
L power:+5V #PWR?
U 1 1 6693AB2F
P 7100 4950
AR Path="/6841E790/6693AB2F" Ref="#PWR?"  Part="1" 
AR Path="/6693AB2F" Ref="#PWR?"  Part="1" 
AR Path="/5F613CCA/6693AB2F" Ref="#PWR?"  Part="1" 
AR Path="/66778914/6693AB2F" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/6693AB2F" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/6693AB2F" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/6693AB2F" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 7100 4800 50  0001 C CNN
F 1 "+5V" H 7115 5123 50  0000 C CNN
F 2 "" H 7100 4950 50  0001 C CNN
F 3 "" H 7100 4950 50  0001 C CNN
	1    7100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5900 6900 6000
$Comp
L power:GND #PWR?
U 1 1 669703DB
P 6900 6000
AR Path="/65A70F21/669703DB" Ref="#PWR?"  Part="1" 
AR Path="/669703DB" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/669703DB" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/669703DB" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 6900 5750 50  0001 C CNN
F 1 "GND" H 6905 5827 50  0000 C CNN
F 2 "" H 6900 6000 50  0001 C CNN
F 3 "" H 6900 6000 50  0001 C CNN
	1    6900 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 66A2D5A6
P 6450 7050
F 0 "C11" H 6542 7096 50  0000 L CNN
F 1 "0.1uF" H 6542 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6450 7050 50  0001 C CNN
F 3 "~" H 6450 7050 50  0001 C CNN
	1    6450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7200 6050 7400
$Comp
L Device:CP1 C?
U 1 1 66A420F9
P 6050 7050
AR Path="/647E1209/66A420F9" Ref="C?"  Part="1" 
AR Path="/66A420F9" Ref="C?"  Part="1" 
AR Path="/65468F85/66A420F9" Ref="C?"  Part="1" 
AR Path="/65C3A952/66A420F9" Ref="C10"  Part="1" 
F 0 "C10" H 6165 7096 50  0000 L CNN
F 1 "47uF" H 6165 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6050 7050 50  0001 C CNN
F 3 "~" H 6050 7050 50  0001 C CNN
F 4 "COM-00523" H 6800 7000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 6800 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 6800 7000 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 6800 7000 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 6800 7000 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 6800 7000 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 6800 7000 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 6800 7000 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 6800 7000 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 6800 7000 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 6050 7050 50  0001 C CNN "Description"
	1    6050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6900 6050 6650
Connection ~ 6050 6650
Wire Wire Line
	6050 6650 6450 6650
Connection ~ 6050 7400
Wire Wire Line
	6050 7400 6450 7400
Wire Wire Line
	6450 7400 6450 7150
Wire Wire Line
	4800 6650 5150 6650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65C9276C
P 4250 6750
AR Path="/659D01BF/65C9276C" Ref="J?"  Part="1" 
AR Path="/65C9276C" Ref="J?"  Part="1" 
AR Path="/65C3A952/65C9276C" Ref="J36"  Part="1" 
F 0 "J36" H 4400 6650 50  0000 C CNN
F 1 "Motor Power" H 4600 6750 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 4250 6750 50  0001 C CNN
F 3 "~" H 4250 6750 50  0001 C CNN
	1    4250 6750
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N5819 D?
U 1 1 65D636E4
P 5350 2750
AR Path="/64798DC1/65D636E4" Ref="D?"  Part="1" 
AR Path="/65D636E4" Ref="D?"  Part="1" 
AR Path="/647E1209/65D636E4" Ref="D?"  Part="1" 
AR Path="/66A5434C/65D636E4" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/65D636E4" Ref="D?"  Part="1" 
AR Path="/65C3A952/65D636E4" Ref="D13"  Part="1" 
F 0 "D13" V 5550 2900 50  0000 C CNN
F 1 "1N5819" V 5450 2900 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5350 2575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5350 2750 50  0001 C CNN
F 4 "COM-10926" H 5450 2800 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 5450 2800 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 5450 2800 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 5450 2800 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 5450 2800 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 5450 2800 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 5450 2800 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 5450 2800 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 5350 2750 50  0001 C CNN "Description"
	1    5350 2750
	0    1    -1   0   
$EndComp
Wire Wire Line
	5350 2600 5350 2450
Wire Wire Line
	5500 3700 5000 3700
Wire Wire Line
	5100 3600 5100 2550
Wire Wire Line
	6700 3800 6750 3800
Wire Wire Line
	5500 3800 5000 3800
$Comp
L CrazyGiraffe_DMXDemonstrator:TB6612FNG U5
U 1 1 668408F3
P 6100 3500
F 0 "U5" H 6500 4450 50  0000 C CNN
F 1 "TB6612FNG" H 6650 4350 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 6550 4100 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/us/product/linear/motordriver/detail.TB6612FNG.html" H 6550 4100 50  0001 C CNN
	1    6100 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65F24A9F
P 8600 3200
AR Path="/659D01BF/65F24A9F" Ref="J?"  Part="1" 
AR Path="/65F24A9F" Ref="J?"  Part="1" 
AR Path="/65C3A952/65F24A9F" Ref="J33"  Part="1" 
F 0 "J33" H 8750 3200 50  0000 C CNN
F 1 "Motor0" H 8800 3100 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 8600 3200 50  0001 C CNN
F 3 "~" H 8600 3200 50  0001 C CNN
	1    8600 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65F2530D
P 8600 3700
AR Path="/659D01BF/65F2530D" Ref="J?"  Part="1" 
AR Path="/65F2530D" Ref="J?"  Part="1" 
AR Path="/65C3A952/65F2530D" Ref="J41"  Part="1" 
F 0 "J41" H 8750 3700 50  0000 C CNN
F 1 "Motor1" H 8800 3600 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 8600 3700 50  0001 C CNN
F 3 "~" H 8600 3700 50  0001 C CNN
	1    8600 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65F25916
P 8600 4300
AR Path="/659D01BF/65F25916" Ref="J?"  Part="1" 
AR Path="/65F25916" Ref="J?"  Part="1" 
AR Path="/65C3A952/65F25916" Ref="J43"  Part="1" 
F 0 "J43" H 8750 4300 50  0000 C CNN
F 1 "Motor1B" H 8850 4200 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 8600 4300 50  0001 C CNN
F 3 "~" H 8600 4300 50  0001 C CNN
	1    8600 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65F25E8D
P 8600 4000
AR Path="/659D01BF/65F25E8D" Ref="J?"  Part="1" 
AR Path="/65F25E8D" Ref="J?"  Part="1" 
AR Path="/65C3A952/65F25E8D" Ref="J42"  Part="1" 
F 0 "J42" H 8750 4000 50  0000 C CNN
F 1 "Motor1A" H 8850 3900 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 8600 4000 50  0001 C CNN
F 3 "~" H 8600 4000 50  0001 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3600 6750 3600
Wire Wire Line
	6700 3100 6750 3100
Wire Wire Line
	6700 3400 6750 3400
Wire Wire Line
	6700 3300 6750 3300
Text Label 7300 1400 0    50   ~ 0
SM0-2B
Text Label 7300 1500 0    50   ~ 0
SM0-2A
Text Label 7300 1600 0    50   ~ 0
SM0-1A
Text Label 7300 1700 0    50   ~ 0
SM0-1B
Wire Wire Line
	4300 4450 5000 4450
Connection ~ 4300 4450
Wire Wire Line
	4200 4550 5100 4550
Connection ~ 4200 4550
Wire Wire Line
	2100 4450 4300 4450
Wire Wire Line
	2100 4550 4200 4550
$Comp
L Device:Jumper_NO_Small JP7
U 1 1 6699EB1A
P 5150 5300
F 0 "JP7" H 4700 5300 50  0000 C CNN
F 1 "MS1" H 4500 5300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 5300 50  0001 C CNN
F 3 "~" H 5150 5300 50  0001 C CNN
	1    5150 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP8
U 1 1 6699E873
P 5150 5400
F 0 "JP8" H 4700 5400 50  0000 C CNN
F 1 "MS2" H 4500 5400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 5400 50  0001 C CNN
F 3 "~" H 5150 5400 50  0001 C CNN
	1    5150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5800 4300 4450
$Comp
L power:+5V #PWR?
U 1 1 669F5342
P 4850 4950
AR Path="/6841E790/669F5342" Ref="#PWR?"  Part="1" 
AR Path="/669F5342" Ref="#PWR?"  Part="1" 
AR Path="/5F613CCA/669F5342" Ref="#PWR?"  Part="1" 
AR Path="/66778914/669F5342" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/669F5342" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/669F5342" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/669F5342" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 4850 4800 50  0001 C CNN
F 1 "+5V" H 4865 5123 50  0000 C CNN
F 2 "" H 4850 4950 50  0001 C CNN
F 3 "" H 4850 4950 50  0001 C CNN
	1    4850 4950
	1    0    0    -1  
$EndComp
NoConn ~ 5400 5200
Wire Wire Line
	4850 5600 4850 5500
Connection ~ 4850 5600
Wire Wire Line
	5400 5600 4850 5600
Connection ~ 4850 5500
Wire Wire Line
	4850 5700 4850 5600
Wire Wire Line
	5400 5700 4850 5700
Wire Wire Line
	4850 5300 4850 4950
Connection ~ 4850 5300
Wire Wire Line
	5050 5300 4850 5300
Wire Wire Line
	4850 5400 4850 5300
Connection ~ 4850 5400
Wire Wire Line
	5050 5400 4850 5400
Wire Wire Line
	4850 5500 4850 5400
Wire Wire Line
	5050 5500 4850 5500
Wire Wire Line
	5250 5300 5400 5300
Wire Wire Line
	5250 5400 5400 5400
Wire Wire Line
	5400 5500 5250 5500
$Comp
L Device:Jumper_NO_Small JP9
U 1 1 6699DCC7
P 5150 5500
F 0 "JP9" H 4700 5500 50  0000 C CNN
F 1 "MS3" H 4500 5500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 5500 50  0001 C CNN
F 3 "~" H 5150 5500 50  0001 C CNN
	1    5150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5800 4300 5800
Wire Wire Line
	4200 5900 4200 4550
Wire Wire Line
	5400 5900 4200 5900
$Comp
L Connector_Generic:Conn_01x08 J34
U 1 1 668CBB46
P 5600 5500
F 0 "J34" H 5700 5500 50  0000 L CNN
F 1 "DB0A" H 5680 5401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5600 5500 50  0001 C CNN
F 3 "~" H 5600 5500 50  0001 C CNN
	1    5600 5500
	1    0    0    -1  
$EndComp
Text Label 3800 2650 0    50   ~ 0
DIR0
Text Label 3800 2550 0    50   ~ 0
STEP0
Text Label 3800 2450 0    50   ~ 0
SPEED0
Wire Wire Line
	4750 2550 5100 2550
Connection ~ 4750 2550
Wire Wire Line
	4850 2650 5000 2650
Connection ~ 4850 2650
Wire Wire Line
	2150 2650 4850 2650
Wire Wire Line
	2150 2550 4750 2550
Wire Wire Line
	4850 2650 4850 1900
$Comp
L power:+5V #PWR?
U 1 1 669F4E2F
P 4850 950
AR Path="/6841E790/669F4E2F" Ref="#PWR?"  Part="1" 
AR Path="/669F4E2F" Ref="#PWR?"  Part="1" 
AR Path="/5F613CCA/669F4E2F" Ref="#PWR?"  Part="1" 
AR Path="/66778914/669F4E2F" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/669F4E2F" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/669F4E2F" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/669F4E2F" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 4850 800 50  0001 C CNN
F 1 "+5V" H 4865 1123 50  0000 C CNN
F 2 "" H 4850 950 50  0001 C CNN
F 3 "" H 4850 950 50  0001 C CNN
	1    4850 950 
	1    0    0    -1  
$EndComp
NoConn ~ 5400 1200
Wire Wire Line
	4850 1600 4850 1500
Connection ~ 4850 1600
Wire Wire Line
	5400 1600 4850 1600
Connection ~ 4850 1500
Wire Wire Line
	4850 1700 4850 1600
Wire Wire Line
	5400 1700 4850 1700
Wire Wire Line
	4850 1300 4850 950 
Connection ~ 4850 1300
Wire Wire Line
	5050 1300 4850 1300
Wire Wire Line
	4850 1400 4850 1300
Connection ~ 4850 1400
Wire Wire Line
	5050 1400 4850 1400
Wire Wire Line
	4850 1500 4850 1400
Wire Wire Line
	5050 1500 4850 1500
Wire Wire Line
	5250 1300 5400 1300
Wire Wire Line
	5250 1400 5400 1400
Wire Wire Line
	5400 1500 5250 1500
$Comp
L Device:Jumper_NO_Small JP4
U 1 1 669B1770
P 5150 1300
F 0 "JP4" H 4700 1300 50  0000 C CNN
F 1 "MS1" H 4500 1300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 1300 50  0001 C CNN
F 3 "~" H 5150 1300 50  0001 C CNN
	1    5150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP5
U 1 1 669B1766
P 5150 1400
F 0 "JP5" H 4700 1400 50  0000 C CNN
F 1 "MS2" H 4500 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 1400 50  0001 C CNN
F 3 "~" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP6
U 1 1 669B1440
P 5150 1500
F 0 "JP6" H 4700 1500 50  0000 C CNN
F 1 "MS3" H 4500 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 1500 50  0001 C CNN
F 3 "~" H 5150 1500 50  0001 C CNN
	1    5150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1800 4750 2550
Wire Wire Line
	5400 1800 4750 1800
Wire Wire Line
	4850 1900 5400 1900
$Comp
L Connector_Generic:Conn_01x08 J30
U 1 1 663088AB
P 5600 1500
F 0 "J30" H 5700 1500 50  0000 L CNN
F 1 "DB0A" H 5680 1401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5600 1500 50  0001 C CNN
F 3 "~" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
Text Label 7250 5400 0    50   ~ 0
SM1-2B
Text Label 7250 5500 0    50   ~ 0
SM1-2A
Text Label 7250 5600 0    50   ~ 0
SM1-1A
Text Label 7250 5700 0    50   ~ 0
SM1-1B
Text Label 6800 3200 0    50   ~ 0
TM0-1
Text Label 6800 3300 0    50   ~ 0
TM0-2
Text Label 6800 3800 0    50   ~ 0
TM1-2
Text Label 6800 3700 0    50   ~ 0
TM1-1
Wire Wire Line
	6700 3200 6750 3200
Wire Wire Line
	6750 3200 6750 3100
Wire Wire Line
	6750 3300 6750 3400
Wire Wire Line
	6750 3600 6750 3700
Wire Wire Line
	6750 3700 6700 3700
Wire Wire Line
	6750 3800 6750 3900
Wire Wire Line
	6750 3900 6700 3900
Wire Wire Line
	6750 3700 8400 3700
Connection ~ 6750 3700
Wire Wire Line
	6750 3800 8400 3800
Connection ~ 6750 3800
Wire Wire Line
	6750 3300 8400 3300
Connection ~ 6750 3300
Wire Wire Line
	6750 3200 8400 3200
Connection ~ 6750 3200
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65C419BB
P 8600 2600
AR Path="/659D01BF/65C419BB" Ref="J?"  Part="1" 
AR Path="/65C419BB" Ref="J?"  Part="1" 
AR Path="/65C3A952/65C419BB" Ref="J13"  Part="1" 
F 0 "J13" H 8750 2600 50  0000 C CNN
F 1 "Motor0B" H 8850 2500 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 8600 2600 50  0001 C CNN
F 3 "~" H 8600 2600 50  0001 C CNN
	1    8600 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65C41E8F
P 8600 2900
AR Path="/659D01BF/65C41E8F" Ref="J?"  Part="1" 
AR Path="/65C41E8F" Ref="J?"  Part="1" 
AR Path="/65C3A952/65C41E8F" Ref="J32"  Part="1" 
F 0 "J32" H 8750 2900 50  0000 C CNN
F 1 "Motor0A" H 8850 2800 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 8600 2900 50  0001 C CNN
F 3 "~" H 8600 2900 50  0001 C CNN
	1    8600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1700 7650 3000
Wire Wire Line
	7650 3000 8400 3000
Wire Wire Line
	6800 1700 7650 1700
Wire Wire Line
	8400 2900 7750 2900
Wire Wire Line
	7750 2900 7750 1600
Wire Wire Line
	6800 1600 7750 1600
Wire Wire Line
	7850 1500 7850 2600
Wire Wire Line
	7850 2600 8400 2600
Wire Wire Line
	6800 1500 7850 1500
Wire Wire Line
	8400 2700 7950 2700
Wire Wire Line
	7950 2700 7950 1400
Wire Wire Line
	6800 1400 7950 1400
Wire Wire Line
	6800 5700 7650 5700
Wire Wire Line
	7650 5700 7650 4100
Wire Wire Line
	7650 4100 8400 4100
Wire Wire Line
	7750 5600 7750 4000
Wire Wire Line
	6800 5600 7750 5600
Wire Wire Line
	7750 4000 8400 4000
Wire Wire Line
	7850 5500 7850 4300
Wire Wire Line
	6800 5500 7850 5500
Wire Wire Line
	7850 4300 8400 4300
Wire Wire Line
	7950 5400 7950 4400
Wire Wire Line
	6800 5400 7950 5400
Wire Wire Line
	7950 4400 8400 4400
Text Label 8050 2600 0    50   ~ 0
SM0-2A
Text Label 8050 2700 0    50   ~ 0
SM0-2B
Text Label 8050 2900 0    50   ~ 0
SM0-1A
Text Label 8050 3000 0    50   ~ 0
SM0-1B
Text Label 8100 3200 0    50   ~ 0
TM0-1
Text Label 8100 3300 0    50   ~ 0
TM0-2
Text Label 8100 3700 0    50   ~ 0
TM1-1
Text Label 8100 3800 0    50   ~ 0
TM1-2
Text Label 8050 4400 0    50   ~ 0
SM1-2B
Text Label 8050 4300 0    50   ~ 0
SM1-2A
Text Label 8050 4000 0    50   ~ 0
SM1-1A
Text Label 8050 4100 0    50   ~ 0
SM1-1B
$Comp
L power:GND #PWR?
U 1 1 65EB892F
P 6250 4600
AR Path="/65A70F21/65EB892F" Ref="#PWR?"  Part="1" 
AR Path="/65EB892F" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/65EB892F" Ref="#PWR?"  Part="1" 
AR Path="/65C3A952/65EB892F" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 6250 4350 50  0001 C CNN
F 1 "GND" H 6255 4427 50  0000 C CNN
F 2 "" H 6250 4600 50  0001 C CNN
F 3 "" H 6250 4600 50  0001 C CNN
	1    6250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5300 6900 5900
Connection ~ 6900 5900
Wire Wire Line
	6900 1900 6900 1300
Connection ~ 6900 1900
$EndSCHEMATC
