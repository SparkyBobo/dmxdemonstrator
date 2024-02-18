EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "DMX Demonstrator - Constant Current Driver (DMX-DCC)"
Date "2024-01-08"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3612
P 4800 6550
AR Path="/659D01BF/659E3612" Ref="MH?"  Part="1" 
AR Path="/659E3612" Ref="MH1"  Part="1" 
F 0 "MH1" H 4900 6596 50  0000 L CNN
F 1 "MountingHole" H 4900 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 4800 6550 50  0001 C CNN
F 3 "~" H 4800 6550 50  0001 C CNN
	1    4800 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3619
P 4800 6850
AR Path="/659D01BF/659E3619" Ref="MH?"  Part="1" 
AR Path="/659E3619" Ref="MH2"  Part="1" 
F 0 "MH2" H 4900 6896 50  0000 L CNN
F 1 "MountingHole" H 4900 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 4800 6850 50  0001 C CNN
F 3 "~" H 4800 6850 50  0001 C CNN
	1    4800 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3620
P 4800 7150
AR Path="/659D01BF/659E3620" Ref="MH?"  Part="1" 
AR Path="/659E3620" Ref="MH3"  Part="1" 
F 0 "MH3" H 4900 7196 50  0000 L CNN
F 1 "MountingHole" H 4900 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 4800 7150 50  0001 C CNN
F 3 "~" H 4800 7150 50  0001 C CNN
	1    4800 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3627
P 4800 7450
AR Path="/659D01BF/659E3627" Ref="MH?"  Part="1" 
AR Path="/659E3627" Ref="MH4"  Part="1" 
F 0 "MH4" H 4900 7496 50  0000 L CNN
F 1 "MountingHole" H 4900 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 4800 7450 50  0001 C CNN
F 3 "~" H 4800 7450 50  0001 C CNN
	1    4800 7450
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F5D2833
P 10900 6900
F 0 "#LOGO1" H 10900 7175 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6675 50  0001 C CNN
F 2 "" H 10900 6900 50  0001 C CNN
F 3 "~" H 10900 6900 50  0001 C CNN
	1    10900 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J14
U 1 1 65ACD59C
P 10500 4000
F 0 "J14" H 10650 3950 50  0000 C CNN
F 1 "Pan Servo" H 10750 4050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10500 4000 50  0001 C CNN
F 3 "~" H 10500 4000 50  0001 C CNN
	1    10500 4000
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J15
U 1 1 65ACD8A9
P 10500 4600
F 0 "J15" H 10650 4550 50  0000 C CNN
F 1 "Tilt Servo" H 10750 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10500 4600 50  0001 C CNN
F 3 "~" H 10500 4600 50  0001 C CNN
	1    10500 4600
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J16
U 1 1 65ACDDF9
P 10500 5200
F 0 "J16" H 10650 5150 50  0000 C CNN
F 1 "Servo2" H 10700 5250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10500 5200 50  0001 C CNN
F 3 "~" H 10500 5200 50  0001 C CNN
	1    10500 5200
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J17
U 1 1 65ACE2A7
P 9650 4600
F 0 "J17" H 9650 4300 50  0000 C CNN
F 1 "Servo3" H 9700 4400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9650 4600 50  0001 C CNN
F 3 "~" H 9650 4600 50  0001 C CNN
	1    9650 4600
	1    0    0    1   
$EndComp
$Sheet
S 9150 2100 1400 850 
U 65ACE5DD
F0 "fan-control" 50
F1 "fan-control.sch" 50
F2 "FAN0" I L 9150 2500 50 
F3 "FAN1" I L 9150 2600 50 
F4 "FAN2" I L 9150 2700 50 
F5 "FANSP0" I L 9150 2200 50 
F6 "FANSP1" I L 9150 2300 50 
F7 "FANSP2" I L 9150 2400 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65B59A3E
P 1350 2750
AR Path="/65ACE5DD/65B59A3E" Ref="J?"  Part="1" 
AR Path="/65B59A3E" Ref="J10"  Part="1" 
F 0 "J10" H 1500 2700 50  0000 C CNN
F 1 "TEMP0" H 1550 2800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 2750 50  0001 C CNN
F 3 "~" H 1350 2750 50  0001 C CNN
	1    1350 2750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65B59A44
P 1350 3400
AR Path="/65ACE5DD/65B59A44" Ref="J?"  Part="1" 
AR Path="/65B59A44" Ref="J11"  Part="1" 
F 0 "J11" H 1500 3350 50  0000 C CNN
F 1 "TEMP1" H 1550 3450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 3400 50  0001 C CNN
F 3 "~" H 1350 3400 50  0001 C CNN
	1    1350 3400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65B59A58
P 2200 2750
AR Path="/65ACE5DD/65B59A58" Ref="J?"  Part="1" 
AR Path="/65B59A58" Ref="J12"  Part="1" 
F 0 "J12" H 2200 2400 50  0000 C CNN
F 1 "TEMP2" H 2200 2500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2200 2750 50  0001 C CNN
F 3 "~" H 2200 2750 50  0001 C CNN
	1    2200 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65B59A63
P 2200 -900
AR Path="/65ACE5DD/65B59A63" Ref="#PWR?"  Part="1" 
AR Path="/65B59A63" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2200 -1150 50  0001 C CNN
F 1 "GND" H 2205 -1073 50  0000 C CNN
F 2 "" H 2200 -900 50  0001 C CNN
F 3 "" H 2200 -900 50  0001 C CNN
	1    2200 -900
	1    0    0    -1  
$EndComp
$Sheet
S 1300 900  1400 850 
U 65BD72F5
F0 "led-driver" 50
F1 "led-driver.sch" 50
F2 "LED_R2" I R 2700 1400 50 
F3 "LED_G2" I R 2700 1500 50 
F4 "LED_B2" I R 2700 1600 50 
F5 "LED_R3" I R 2700 1700 50 
F6 "LED_B0" I R 2700 1200 50 
F7 "LED_R1" I R 2700 1300 50 
F8 "LED_G0" I R 2700 1100 50 
F9 "LED_R0" I R 2700 1000 50 
$EndSheet
$Sheet
S 9100 900  1400 850 
U 65C3A952
F0 "motor-driver" 50
F1 "motor-driver.sch" 50
F2 "MTR0A" I L 9100 1000 50 
F3 "MTR0B" I L 9100 1100 50 
F4 "MTR1A" I L 9100 1300 50 
F5 "MTR1B" I L 9100 1400 50 
F6 "MTR0C" I L 9100 1200 50 
F7 "MTR1C" I L 9100 1500 50 
$EndSheet
$Comp
L Device:CP1 C?
U 1 1 65ABDD3F
P 3800 7000
AR Path="/647E1209/65ABDD3F" Ref="C?"  Part="1" 
AR Path="/65ABDD3F" Ref="C3"  Part="1" 
AR Path="/65468F85/65ABDD3F" Ref="C?"  Part="1" 
F 0 "C3" H 3915 7046 50  0000 L CNN
F 1 "10uF" H 3915 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3800 7000 50  0001 C CNN
F 3 "~" H 3800 7000 50  0001 C CNN
F 4 "COM-00523" H 4550 6950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 4550 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 4550 6950 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 4550 6950 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 4550 6950 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 4550 6950 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 4550 6950 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 4550 6950 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 4550 6950 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 4550 6950 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 3800 7000 50  0001 C CNN "Description"
	1    3800 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7350 1650 7350
Wire Wire Line
	2500 7350 2500 7450
Connection ~ 2050 7350
Connection ~ 2500 7350
Wire Wire Line
	2500 7350 2050 7350
Wire Wire Line
	2500 7150 2500 7350
Wire Wire Line
	2050 7150 2050 7350
Wire Wire Line
	1650 6700 1650 7350
Connection ~ 2500 6600
Wire Wire Line
	2050 6600 2050 6500
Wire Wire Line
	1550 6600 1600 6600
Wire Wire Line
	2050 6600 2500 6600
Connection ~ 2050 6600
$Comp
L power:PWR_FLAG #FLG?
U 1 1 659E35C1
P 2500 6500
AR Path="/659D01BF/659E35C1" Ref="#FLG?"  Part="1" 
AR Path="/659E35C1" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 2500 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 6673 50  0000 C CNN
F 2 "" H 2500 6500 50  0001 C CNN
F 3 "~" H 2500 6500 50  0001 C CNN
	1    2500 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 659E35BB
P 2050 7450
AR Path="/659D01BF/659E35BB" Ref="#PWR?"  Part="1" 
AR Path="/659E35BB" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2050 7200 50  0001 C CNN
F 1 "GND" H 2055 7277 50  0000 C CNN
F 2 "" H 2050 7450 50  0001 C CNN
F 3 "" H 2050 7450 50  0001 C CNN
	1    2050 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6700 1650 6700
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 659E35AC
P 1350 6700
AR Path="/659D01BF/659E35AC" Ref="J?"  Part="1" 
AR Path="/659E35AC" Ref="J7"  Part="1" 
F 0 "J7" H 1550 6600 50  0000 C CNN
F 1 "+12v" H 1550 6700 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 1350 6700 50  0001 C CNN
F 3 "~" H 1350 6700 50  0001 C CNN
	1    1350 6700
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 659E35A4
P 2500 7450
AR Path="/659D01BF/659E35A4" Ref="#FLG?"  Part="1" 
AR Path="/659E35A4" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 2500 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 7623 50  0000 C CNN
F 2 "" H 2500 7450 50  0001 C CNN
F 3 "~" H 2500 7450 50  0001 C CNN
	1    2500 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 6850 2050 6600
$Comp
L Device:CP1 C?
U 1 1 6546F2B6
P 2500 7000
AR Path="/647E1209/6546F2B6" Ref="C?"  Part="1" 
AR Path="/6546F2B6" Ref="C2"  Part="1" 
AR Path="/65468F85/6546F2B6" Ref="C?"  Part="1" 
F 0 "C2" H 2615 7046 50  0000 L CNN
F 1 "10uF" H 2615 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2500 7000 50  0001 C CNN
F 3 "~" H 2500 7000 50  0001 C CNN
F 4 "COM-00523" H 3250 6950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 3250 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 3250 6950 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 3250 6950 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 3250 6950 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 3250 6950 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 3250 6950 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 3250 6950 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 3250 6950 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 3250 6950 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 2500 7000 50  0001 C CNN "Description"
	1    2500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6850 2500 6600
$Comp
L Device:CP1 C?
U 1 1 65AC4666
P 2050 7000
AR Path="/647E1209/65AC4666" Ref="C?"  Part="1" 
AR Path="/65AC4666" Ref="C1"  Part="1" 
AR Path="/65468F85/65AC4666" Ref="C?"  Part="1" 
F 0 "C1" H 2165 7046 50  0000 L CNN
F 1 "10uF" H 2165 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2050 7000 50  0001 C CNN
F 3 "~" H 2050 7000 50  0001 C CNN
F 4 "COM-00523" H 2800 6950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 2800 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 2800 6950 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 2800 6950 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 2800 6950 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 2800 6950 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 2800 6950 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 2800 6950 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 2800 6950 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 2800 6950 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 2050 7000 50  0001 C CNN "Description"
	1    2050 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65B30DFF
P 3100 6700
AR Path="/647946E8/65B30DFF" Ref="J?"  Part="1" 
AR Path="/65B30DFF" Ref="J8"  Part="1" 
AR Path="/64798DC1/65B30DFF" Ref="J?"  Part="1" 
AR Path="/647E1209/65B30DFF" Ref="J?"  Part="1" 
AR Path="/66A5434C/65B30DFF" Ref="J?"  Part="1" 
AR Path="/65B0DCEA/65B30DFF" Ref="J?"  Part="1" 
F 0 "J8" H 3300 6600 50  0000 C CNN
F 1 "Servo" H 3300 6700 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 3100 6700 50  0001 C CNN
F 3 "~" H 3100 6700 50  0001 C CNN
F 4 "277-1106-ND" H 3200 6750 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 3200 6750 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 3200 6750 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 3200 6750 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 3100 6700 50  0001 C CNN "Description"
	1    3100 6700
	-1   0    0    1   
$EndComp
Text Label 5550 3100 2    50   ~ 0
LED_G0
Text Label 5550 3200 2    50   ~ 0
LED_B0
Text Label 5550 3300 2    50   ~ 0
LED_R1
Text Label 5550 3400 2    50   ~ 0
LED_R2
Text Label 5550 3500 2    50   ~ 0
LED_G2
Text Label 5550 3600 2    50   ~ 0
LED_B2
Text Label 5550 3700 2    50   ~ 0
LED_R3
Text Label 6150 3800 0    50   ~ 0
PAN
Text Label 6150 3900 0    50   ~ 0
TILT
Text Label 6150 4000 0    50   ~ 0
SERVO2
Text Label 6150 4100 0    50   ~ 0
MTR0A
Text Label 6150 4200 0    50   ~ 0
MTR0B
Text Label 6150 3500 0    50   ~ 0
FAN0
Text Label 6150 3600 0    50   ~ 0
FAN1
Text Label 6150 3700 0    50   ~ 0
FAN2
Text Label 6150 3200 0    50   ~ 0
FANSP0
Text Label 6150 3300 0    50   ~ 0
FANSP1
Text Label 6150 3400 0    50   ~ 0
FANSP2
Text Label 6150 2800 0    50   ~ 0
TEMP0
Text Label 6150 2900 0    50   ~ 0
TEMP1
Text Label 6150 3000 0    50   ~ 0
TEMP2
Text Label 6150 3100 0    50   ~ 0
TEMP3
Text Label 5550 2900 2    50   ~ 0
SDA
Text Label 5550 2800 2    50   ~ 0
SCL
$Comp
L power:+5V #PWR?
U 1 1 65B6BAE2
P 6200 2600
AR Path="/6841E790/65B6BAE2" Ref="#PWR?"  Part="1" 
AR Path="/65B6BAE2" Ref="#PWR0105"  Part="1" 
AR Path="/5F613CCA/65B6BAE2" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65B6BAE2" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65B6BAE2" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B6BAE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 6200 2450 50  0001 C CNN
F 1 "+5V" H 6215 2773 50  0000 C CNN
F 2 "" H 6200 2600 50  0001 C CNN
F 3 "" H 6200 2600 50  0001 C CNN
	1    6200 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 65B6BAE8
P 5500 2600
AR Path="/6841E790/65B6BAE8" Ref="#PWR?"  Part="1" 
AR Path="/65B6BAE8" Ref="#PWR0106"  Part="1" 
AR Path="/5F613CCA/65B6BAE8" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65B6BAE8" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65B6BAE8" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B6BAE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 5500 2450 50  0001 C CNN
F 1 "+5V" H 5515 2773 50  0000 C CNN
F 2 "" H 5500 2600 50  0001 C CNN
F 3 "" H 5500 2600 50  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 6200 2600
Wire Wire Line
	5500 2600 5500 2700
Wire Wire Line
	5600 2700 5500 2700
$Comp
L power:GND #PWR?
U 1 1 65B6BAF8
P 5500 4700
AR Path="/65A70F21/65B6BAF8" Ref="#PWR?"  Part="1" 
AR Path="/65B6BAF8" Ref="#PWR0108"  Part="1" 
AR Path="/65AF4511/65B6BAF8" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B6BAF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5505 4527 50  0000 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4600 5500 4600
Entry Wire Line
	3100 3900 3200 4000
Entry Wire Line
	6600 3500 6500 3400
Entry Wire Line
	6600 3300 6500 3200
Entry Wire Line
	6600 3400 6500 3300
Entry Wire Line
	6600 4200 6500 4100
Entry Wire Line
	6600 4100 6500 4000
Entry Wire Line
	6600 3900 6500 3800
Entry Wire Line
	6600 4000 6500 3900
Entry Wire Line
	6600 3800 6500 3700
Entry Wire Line
	6600 3600 6500 3500
Entry Wire Line
	6600 3700 6500 3600
Wire Wire Line
	5500 4500 5500 4600
Connection ~ 5500 4600
Entry Wire Line
	6600 4300 6500 4200
Entry Wire Line
	3100 1300 3200 1400
Entry Wire Line
	3100 1400 3200 1500
Entry Wire Line
	3100 1500 3200 1600
Entry Wire Line
	3100 1600 3200 1700
Entry Wire Line
	3200 1600 3100 1500
Entry Wire Line
	3100 4000 3200 4100
Entry Wire Line
	3100 4100 3200 4200
Entry Wire Line
	3100 4300 3200 4400
Entry Wire Line
	3100 4200 3200 4300
Wire Wire Line
	5200 3900 5600 3900
Wire Wire Line
	5200 4000 5600 4000
Wire Wire Line
	5200 3200 5600 3200
Wire Wire Line
	6800 1500 5250 1500
Wire Wire Line
	5200 3000 5600 3000
Wire Wire Line
	5200 3100 5600 3100
Wire Wire Line
	5200 3400 5600 3400
Wire Wire Line
	5200 3300 5600 3300
Wire Wire Line
	5200 3600 5600 3600
Wire Wire Line
	5200 3800 5600 3800
Wire Wire Line
	5200 3500 5600 3500
Wire Wire Line
	5200 3700 5600 3700
Wire Wire Line
	5200 4100 5600 4100
Wire Wire Line
	5200 4200 5600 4200
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5500 4600 5500 4700
Entry Wire Line
	3100 1200 3200 1300
Entry Wire Line
	3100 1100 3200 1200
Entry Wire Line
	3100 1000 3200 1100
Entry Wire Line
	3100 1700 3200 1800
Text Label 5550 3000 2    50   ~ 0
LED_R0
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BE3B10
P 1350 4600
AR Path="/65ACE5DD/65BE3B10" Ref="J?"  Part="1" 
AR Path="/65BE3B10" Ref="J2"  Part="1" 
F 0 "J2" H 1500 4550 50  0000 C CNN
F 1 "SENSOR1" H 1600 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 4600 50  0001 C CNN
F 3 "~" H 1350 4600 50  0001 C CNN
	1    1350 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BE3EF9
P 1350 5200
AR Path="/65ACE5DD/65BE3EF9" Ref="J?"  Part="1" 
AR Path="/65BE3EF9" Ref="J3"  Part="1" 
F 0 "J3" H 1500 5150 50  0000 C CNN
F 1 "SENSOR2" H 1600 5250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 5200 50  0001 C CNN
F 3 "~" H 1350 5200 50  0001 C CNN
	1    1350 5200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BE43B9
P 2200 4600
AR Path="/65ACE5DD/65BE43B9" Ref="J?"  Part="1" 
AR Path="/65BE43B9" Ref="J4"  Part="1" 
F 0 "J4" H 2200 4250 50  0000 C CNN
F 1 "SENSOR3" H 2200 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2200 4600 50  0001 C CNN
F 3 "~" H 2200 4600 50  0001 C CNN
	1    2200 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BE4834
P 2200 5200
AR Path="/65ACE5DD/65BE4834" Ref="J?"  Part="1" 
AR Path="/65BE4834" Ref="J5"  Part="1" 
F 0 "J5" H 2200 4850 50  0000 C CNN
F 1 "SENSOR4" H 2200 4950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2200 5200 50  0001 C CNN
F 3 "~" H 2200 5200 50  0001 C CNN
	1    2200 5200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J18
U 1 1 65CCA057
P 9650 5200
F 0 "J18" H 9650 4900 50  0000 C CNN
F 1 "Servo4" H 9700 5000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9650 5200 50  0001 C CNN
F 3 "~" H 9650 5200 50  0001 C CNN
	1    9650 5200
	1    0    0    1   
$EndComp
Text Label 8750 3900 0    50   ~ 0
PAN
Text Label 8750 4000 0    50   ~ 0
TILT
Text Label 8750 4100 0    50   ~ 0
SERVO2
Text Label 9100 2500 2    50   ~ 0
FAN0
Text Label 9100 2600 2    50   ~ 0
FAN1
Text Label 9100 2700 2    50   ~ 0
FAN2
Text Label 9100 2200 2    50   ~ 0
FANSP0
Text Label 9100 2300 2    50   ~ 0
FANSP1
Text Label 9100 2400 2    50   ~ 0
FANSP2
Wire Wire Line
	8750 2400 9150 2400
Entry Wire Line
	8650 2500 8750 2400
Wire Wire Line
	8750 2300 9150 2300
Wire Wire Line
	8750 2200 9150 2200
Entry Wire Line
	8650 2300 8750 2200
Entry Wire Line
	8650 2400 8750 2300
Wire Wire Line
	8750 2700 9150 2700
Entry Wire Line
	8650 2800 8750 2700
Wire Wire Line
	8750 2600 9150 2600
Wire Wire Line
	8750 2500 9150 2500
Entry Wire Line
	8650 2600 8750 2500
Entry Wire Line
	8650 2700 8750 2600
Entry Wire Line
	5100 3100 5200 3000
Entry Wire Line
	5100 3400 5200 3300
Entry Wire Line
	5100 3500 5200 3400
Entry Wire Line
	5100 3600 5200 3500
Entry Wire Line
	5100 3700 5200 3600
Entry Wire Line
	5100 3200 5200 3100
Entry Wire Line
	5100 3300 5200 3200
Entry Wire Line
	5100 3800 5200 3700
Entry Wire Line
	5100 3900 5200 3800
Entry Wire Line
	5100 4000 5200 3900
Entry Wire Line
	5100 4100 5200 4000
Entry Wire Line
	5100 4200 5200 4100
Entry Wire Line
	5100 4300 5200 4200
Text Label 3050 1200 2    50   ~ 0
LED_B0
Text Label 3050 1300 2    50   ~ 0
LED_R1
Text Label 3050 1400 2    50   ~ 0
LED_R2
Text Label 3050 1500 2    50   ~ 0
LED_G2
Text Label 3050 1600 2    50   ~ 0
LED_B2
Text Label 3050 1700 2    50   ~ 0
LED_R3
Wire Wire Line
	2700 1200 3100 1200
Wire Wire Line
	2700 1000 3100 1000
Wire Wire Line
	2700 1100 3100 1100
Wire Wire Line
	2700 1400 3100 1400
Wire Wire Line
	2700 1300 3100 1300
Wire Wire Line
	2700 1600 3100 1600
Wire Wire Line
	2700 1500 3100 1500
Wire Wire Line
	2700 1700 3100 1700
Text Label 3050 1000 2    50   ~ 0
LED_R0
Entry Bus Bus
	8550 5400 8650 5300
Entry Bus Bus
	3200 5300 3300 5400
Text Label 3050 4100 2    50   ~ 0
SEN2
Text Label 3050 3900 2    50   ~ 0
SEN0
Text Label 3050 4000 2    50   ~ 0
SEN1
Text Label 3050 4300 2    50   ~ 0
SEN4
Text Label 3050 4200 2    50   ~ 0
SEN3
Wire Wire Line
	2800 4300 3100 4300
Wire Wire Line
	2700 4200 3100 4200
Wire Wire Line
	1950 4100 3100 4100
Wire Wire Line
	1850 4000 3100 4000
Text Label 5550 3800 2    50   ~ 0
SEN0
Text Label 5550 3900 2    50   ~ 0
SEN1
Text Label 5550 4000 2    50   ~ 0
SEN2
Text Label 5550 4100 2    50   ~ 0
SEN3
$Comp
L power:+5V #PWR?
U 1 1 65ED2D50
P 2600 2100
AR Path="/65ACE5DD/65ED2D50" Ref="#PWR?"  Part="1" 
AR Path="/65ED2D50" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 2600 1950 50  0001 C CNN
F 1 "+5V" H 2615 2273 50  0000 C CNN
F 2 "" H 2600 2100 50  0001 C CNN
F 3 "" H 2600 2100 50  0001 C CNN
	1    2600 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 4600 2600 4600
Wire Wire Line
	2400 5200 2600 5200
Connection ~ 2600 4600
Wire Wire Line
	1550 4600 1750 4600
Wire Wire Line
	1550 5200 1750 5200
Wire Wire Line
	1750 5200 1750 4600
$Comp
L power:GND #PWR?
U 1 1 660680F9
P 2500 5450
AR Path="/65ACE5DD/660680F9" Ref="#PWR?"  Part="1" 
AR Path="/660680F9" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2500 5200 50  0001 C CNN
F 1 "GND" H 2505 5277 50  0000 C CNN
F 2 "" H 2500 5450 50  0001 C CNN
F 3 "" H 2500 5450 50  0001 C CNN
	1    2500 5450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66068443
P 1650 5450
AR Path="/65ACE5DD/66068443" Ref="#PWR?"  Part="1" 
AR Path="/66068443" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 1650 5200 50  0001 C CNN
F 1 "GND" H 1655 5277 50  0000 C CNN
F 2 "" H 1650 5450 50  0001 C CNN
F 3 "" H 1650 5450 50  0001 C CNN
	1    1650 5450
	-1   0    0    -1  
$EndComp
Entry Bus Bus
	5000 5400 5100 5300
Entry Bus Bus
	6600 5300 6700 5400
Wire Wire Line
	6800 1300 6600 1300
Wire Wire Line
	6800 1400 5250 1400
Wire Wire Line
	6700 1200 6700 1600
Wire Wire Line
	6800 1200 6700 1200
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 660E91BE
P 7000 1300
AR Path="/65ACE5DD/660E91BE" Ref="J?"  Part="1" 
AR Path="/660E91BE" Ref="J6"  Part="1" 
F 0 "J6" H 7150 1300 50  0000 C CNN
F 1 "I2C" H 7200 1200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7000 1300 50  0001 C CNN
F 3 "~" H 7000 1300 50  0001 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 661DED60
P 6700 1600
AR Path="/65A70F21/661DED60" Ref="#PWR?"  Part="1" 
AR Path="/661DED60" Ref="#PWR0114"  Part="1" 
AR Path="/65B0DCEA/661DED60" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 6700 1350 50  0001 C CNN
F 1 "GND" H 6705 1427 50  0000 C CNN
F 2 "" H 6700 1600 50  0001 C CNN
F 3 "" H 6700 1600 50  0001 C CNN
	1    6700 1600
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D?
U 1 1 65B30E0E
P 3500 6600
AR Path="/64798DC1/65B30E0E" Ref="D?"  Part="1" 
AR Path="/65B30E0E" Ref="D1"  Part="1" 
AR Path="/647E1209/65B30E0E" Ref="D?"  Part="1" 
AR Path="/66A5434C/65B30E0E" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/65B30E0E" Ref="D?"  Part="1" 
F 0 "D1" H 3500 6816 50  0000 C CNN
F 1 "1N5819" H 3500 6725 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3500 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3500 6600 50  0001 C CNN
F 4 "COM-10926" H 3600 6650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 3600 6650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 3600 6650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 3600 6650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 3600 6650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 3600 6650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 3600 6650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 3600 6650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 3500 6600 50  0001 C CNN "Description"
	1    3500 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0116
U 1 1 6638E6E1
P 3800 6500
F 0 "#PWR0116" H 3800 6350 50  0001 C CNN
F 1 "VSS" H 3817 6673 50  0000 C CNN
F 2 "" H 3800 6500 50  0001 C CNN
F 3 "" H 3800 6500 50  0001 C CNN
	1    3800 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6640D0CB
P 2050 6500
AR Path="/65AC16CB/6640D0CB" Ref="#PWR?"  Part="1" 
AR Path="/6640D0CB" Ref="#PWR0117"  Part="1" 
AR Path="/65B0DCEA/6640D0CB" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 2050 6350 50  0001 C CNN
F 1 "+12V" H 2065 6673 50  0000 C CNN
F 2 "" H 2050 6500 50  0001 C CNN
F 3 "" H 2050 6500 50  0001 C CNN
	1    2050 6500
	1    0    0    -1  
$EndComp
Connection ~ 1750 4600
$Comp
L power:+5V #PWR?
U 1 1 66075D5F
P 1750 2100
AR Path="/65ACE5DD/66075D5F" Ref="#PWR?"  Part="1" 
AR Path="/66075D5F" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1750 1950 50  0001 C CNN
F 1 "+5V" H 1765 2273 50  0000 C CNN
F 2 "" H 1750 2100 50  0001 C CNN
F 3 "" H 1750 2100 50  0001 C CNN
	1    1750 2100
	-1   0    0    -1  
$EndComp
Connection ~ 1750 4000
Wire Wire Line
	1550 4000 1750 4000
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 65BE34A6
P 1350 4000
AR Path="/65ACE5DD/65BE34A6" Ref="J?"  Part="1" 
AR Path="/65BE34A6" Ref="J1"  Part="1" 
F 0 "J1" H 1500 3950 50  0000 C CNN
F 1 "SENSOR0" H 1600 4050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 4000 50  0001 C CNN
F 3 "~" H 1350 4000 50  0001 C CNN
	1    1350 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 3900 3100 3900
Wire Wire Line
	1550 4100 1650 4100
Wire Wire Line
	1550 4500 1850 4500
Wire Wire Line
	1850 4500 1850 4000
Wire Wire Line
	1550 5100 1950 5100
Wire Wire Line
	1550 5300 1650 5300
Connection ~ 1650 5300
Wire Wire Line
	1650 5300 1650 5450
Wire Wire Line
	1550 4700 1650 4700
Connection ~ 1650 4700
Wire Wire Line
	1650 4700 1650 5300
Wire Wire Line
	2400 4500 2700 4500
Wire Wire Line
	2400 5100 2800 5100
Wire Wire Line
	2500 4700 2400 4700
Wire Wire Line
	2400 5300 2500 5300
Wire Wire Line
	2500 5300 2500 5450
Wire Wire Line
	1550 2750 1750 2750
Wire Wire Line
	1550 3400 1750 3400
Wire Wire Line
	2400 2750 2600 2750
Wire Wire Line
	2400 2850 2500 2850
Wire Wire Line
	1550 3500 1650 3500
Wire Wire Line
	1550 2850 1650 2850
Wire Wire Line
	1550 3300 1850 3300
Text Label 5350 4300 0    50   ~ 0
MTR0C
Wire Wire Line
	5200 4300 5600 4300
Entry Wire Line
	5100 4400 5200 4300
Wire Wire Line
	8750 1200 9100 1200
Text Label 8800 1200 0    50   ~ 0
MTR0C
Text Label 8800 1000 0    50   ~ 0
MTR0A
Text Label 8800 1100 0    50   ~ 0
MTR0B
Wire Wire Line
	8750 1100 9100 1100
Wire Wire Line
	8750 1000 9100 1000
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BA8B12
P 5550 6550
AR Path="/659D01BF/65BA8B12" Ref="MH?"  Part="1" 
AR Path="/65BA8B12" Ref="MH5"  Part="1" 
F 0 "MH5" H 5650 6596 50  0000 L CNN
F 1 "MountingHole" H 5650 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 5550 6550 50  0001 C CNN
F 3 "~" H 5550 6550 50  0001 C CNN
	1    5550 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BA8F24
P 5550 7150
AR Path="/659D01BF/65BA8F24" Ref="MH?"  Part="1" 
AR Path="/65BA8F24" Ref="MH7"  Part="1" 
F 0 "MH7" H 5650 7196 50  0000 L CNN
F 1 "MountingHole" H 5650 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 5550 7150 50  0001 C CNN
F 3 "~" H 5550 7150 50  0001 C CNN
	1    5550 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BA8F2E
P 6300 6550
AR Path="/659D01BF/65BA8F2E" Ref="MH?"  Part="1" 
AR Path="/65BA8F2E" Ref="MH9"  Part="1" 
F 0 "MH9" H 6400 6596 50  0000 L CNN
F 1 "MountingHole" H 6400 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 6300 6550 50  0001 C CNN
F 3 "~" H 6300 6550 50  0001 C CNN
	1    6300 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BA8F38
P 6300 7150
AR Path="/659D01BF/65BA8F38" Ref="MH?"  Part="1" 
AR Path="/65BA8F38" Ref="MH11"  Part="1" 
F 0 "MH11" H 6400 7196 50  0000 L CNN
F 1 "MountingHole" H 6400 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 6300 7150 50  0001 C CNN
F 3 "~" H 6300 7150 50  0001 C CNN
	1    6300 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BB630E
P 5550 6850
AR Path="/659D01BF/65BB630E" Ref="MH?"  Part="1" 
AR Path="/65BB630E" Ref="MH6"  Part="1" 
F 0 "MH6" H 5650 6896 50  0000 L CNN
F 1 "MountingHole" H 5650 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 5550 6850 50  0001 C CNN
F 3 "~" H 5550 6850 50  0001 C CNN
	1    5550 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BB675A
P 6300 6850
AR Path="/659D01BF/65BB675A" Ref="MH?"  Part="1" 
AR Path="/65BB675A" Ref="MH10"  Part="1" 
F 0 "MH10" H 6400 6896 50  0000 L CNN
F 1 "MountingHole" H 6400 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 6300 6850 50  0001 C CNN
F 3 "~" H 6300 6850 50  0001 C CNN
	1    6300 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 65BB6764
P 6300 7450
AR Path="/659D01BF/65BB6764" Ref="MH?"  Part="1" 
AR Path="/65BB6764" Ref="MH12"  Part="1" 
F 0 "MH12" H 6400 7496 50  0000 L CNN
F 1 "MountingHole" H 6400 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 6300 7450 50  0001 C CNN
F 3 "~" H 6300 7450 50  0001 C CNN
	1    6300 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4200 6100 4200
Wire Wire Line
	6500 4100 6100 4100
Wire Wire Line
	6500 4000 6100 4000
Wire Wire Line
	6500 3900 6100 3900
Wire Wire Line
	6500 3800 6100 3800
Wire Wire Line
	6500 3700 6100 3700
Wire Wire Line
	6500 3600 6100 3600
Wire Wire Line
	6500 3500 6100 3500
Wire Wire Line
	6500 3400 6100 3400
Wire Wire Line
	6500 3300 6100 3300
Wire Wire Line
	6500 3200 6100 3200
Wire Wire Line
	6100 2700 6200 2700
Connection ~ 6200 4600
Wire Wire Line
	6200 4500 6200 4600
Wire Wire Line
	6100 4500 6200 4500
Wire Wire Line
	6200 4600 6200 4700
Wire Wire Line
	6100 4600 6200 4600
$Comp
L power:GND #PWR?
U 1 1 65B6BAF2
P 6200 4700
AR Path="/65A70F21/65B6BAF2" Ref="#PWR?"  Part="1" 
AR Path="/65B6BAF2" Ref="#PWR0107"  Part="1" 
AR Path="/65AF4511/65B6BAF2" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65B6BAF2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 6200 4450 50  0001 C CNN
F 1 "GND" H 6205 4527 50  0000 C CNN
F 2 "" H 6200 4700 50  0001 C CNN
F 3 "" H 6200 4700 50  0001 C CNN
	1    6200 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 65B6BAC7
P 5800 3600
AR Path="/65B4C92A/65B6BAC7" Ref="J?"  Part="1" 
AR Path="/65B6BAC7" Ref="J9"  Part="1" 
F 0 "J9" H 5850 4717 50  0000 C CNN
F 1 "MV EXTENSION" H 5850 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 5800 3600 50  0001 C CNN
F 3 "~" H 5800 3600 50  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Entry Wire Line
	3450 -2050 3550 -2150
Entry Wire Line
	5150 1500 5250 1400
Entry Wire Line
	5150 1600 5250 1500
Entry Wire Line
	3450 -2150 3550 -2250
Entry Wire Line
	3450 -1750 3550 -1850
Entry Wire Line
	3450 -1650 3550 -1750
Entry Wire Line
	8650 1200 8750 1100
Entry Wire Line
	8650 1100 8750 1000
Entry Wire Line
	3450 -300 3550 -400
Entry Wire Line
	3200 4400 3300 4300
Text Label 5550 4200 2    50   ~ 0
SEN4
Text Label 8750 4200 0    50   ~ 0
MTR0A
Text Label 6700 3700 0    50   ~ 0
PAN
Text Label 6700 4600 0    50   ~ 0
TILT
Text Label 6700 3800 0    50   ~ 0
SERVO2
Text Label 6700 3900 0    50   ~ 0
MTR0A
Text Label 6700 4000 0    50   ~ 0
MTR0B
Text Label 6700 4100 0    50   ~ 0
MTR0C
Text Label 6700 4300 0    50   ~ 0
FANSP0
Text Label 6700 4400 0    50   ~ 0
FANSP1
Text Label 6700 4500 0    50   ~ 0
FANSP2
Text Label 6700 3400 0    50   ~ 0
FAN0
Text Label 6700 3500 0    50   ~ 0
FAN1
Text Label 6700 3600 0    50   ~ 0
FAN2
Text Label 3050 1100 2    50   ~ 0
LED_G0
Text Label 3600 4300 2    50   ~ 0
SEN0
Text Label 3350 4400 0    50   ~ 0
TEMP0
Text Label 3350 4500 0    50   ~ 0
TEMP1
Text Label 3350 4600 0    50   ~ 0
TEMP2
Text Label 3600 4700 2    50   ~ 0
LED_R0
Text Label 3600 4800 2    50   ~ 0
LED_G0
Text Label 3600 4900 2    50   ~ 0
LED_B0
Text Label 3600 5000 2    50   ~ 0
LED_R1
Text Label 3600 3700 2    50   ~ 0
SEN4
Text Label 3600 3400 2    50   ~ 0
SEN1
Text Label 3600 3500 2    50   ~ 0
SEN2
Text Label 3600 3600 2    50   ~ 0
SEN3
Text Label 3600 3800 2    50   ~ 0
LED_R2
Text Label 3600 3900 2    50   ~ 0
LED_G2
Text Label 3600 4000 2    50   ~ 0
LED_B2
Text Label 3600 4100 2    50   ~ 0
LED_R3
Text Label 8400 3700 2    50   ~ 0
PAN
Text Label 8400 4600 2    50   ~ 0
TILT
Text Label 8550 3800 2    50   ~ 0
SERVO2
Text Label 8500 3900 2    50   ~ 0
MTR0A
Text Label 8500 4000 2    50   ~ 0
MTR0B
Text Label 8500 4100 2    50   ~ 0
MTR0C
Text Label 8550 4300 2    50   ~ 0
FANSP0
Text Label 8550 4400 2    50   ~ 0
FANSP1
Text Label 8550 4500 2    50   ~ 0
FANSP2
Text Label 8450 3400 2    50   ~ 0
FAN0
Text Label 8450 3500 2    50   ~ 0
FAN1
Text Label 8450 3600 2    50   ~ 0
FAN2
$Comp
L power:+5V #PWR?
U 1 1 65ECFDE5
P 7350 2150
AR Path="/6841E790/65ECFDE5" Ref="#PWR?"  Part="1" 
AR Path="/65ECFDE5" Ref="#PWR0101"  Part="1" 
AR Path="/5F613CCA/65ECFDE5" Ref="#PWR?"  Part="1" 
AR Path="/66778914/65ECFDE5" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/65ECFDE5" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/65ECFDE5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 7350 2000 50  0001 C CNN
F 1 "+5V" H 7365 2323 50  0000 C CNN
F 2 "" H 7350 2150 50  0001 C CNN
F 3 "" H 7350 2150 50  0001 C CNN
	1    7350 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 65F2A17B
P 7550 2150
AR Path="/65C3A952/65F2A17B" Ref="#PWR?"  Part="1" 
AR Path="/65F2A17B" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7550 2000 50  0001 C CNN
F 1 "VDD" H 7567 2323 50  0000 C CNN
F 2 "" H 7550 2150 50  0001 C CNN
F 3 "" H 7550 2150 50  0001 C CNN
	1    7550 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0115
U 1 1 65F2997D
P 7750 2150
F 0 "#PWR0115" H 7750 2000 50  0001 C CNN
F 1 "VSS" H 7767 2323 50  0000 C CNN
F 2 "" H 7750 2150 50  0001 C CNN
F 3 "" H 7750 2150 50  0001 C CNN
	1    7750 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 65ECFDDB
P 7950 2150
AR Path="/65AC16CB/65ECFDDB" Ref="#PWR?"  Part="1" 
AR Path="/65ECFDDB" Ref="#PWR0159"  Part="1" 
AR Path="/65B0DCEA/65ECFDDB" Ref="#PWR?"  Part="1" 
F 0 "#PWR0159" H 7950 2000 50  0001 C CNN
F 1 "+12V" H 7965 2323 50  0000 C CNN
F 2 "" H 7950 2150 50  0001 C CNN
F 3 "" H 7950 2150 50  0001 C CNN
	1    7950 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66032AF4
P 7650 3050
AR Path="/65ACE5DD/66032AF4" Ref="#PWR?"  Part="1" 
AR Path="/66032AF4" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 7650 2800 50  0001 C CNN
F 1 "GND" H 7655 2877 50  0000 C CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "" H 7650 3050 50  0001 C CNN
	1    7650 3050
	1    0    0    -1  
$EndComp
Connection ~ 1750 2750
Wire Wire Line
	1750 2750 1750 2100
Connection ~ 1750 3400
Wire Wire Line
	1750 3400 1750 2750
Wire Wire Line
	1650 2850 1650 3500
Wire Wire Line
	1650 3500 1650 4100
Connection ~ 1650 3500
Connection ~ 1650 4100
Connection ~ 2600 2750
Wire Wire Line
	2600 2750 2600 2100
Connection ~ 2500 4700
Wire Wire Line
	2400 2650 2700 2650
Wire Wire Line
	1650 2650 1550 2650
Entry Wire Line
	3100 2200 3200 2300
Wire Wire Line
	2800 4300 2800 5100
Wire Wire Line
	2700 4500 2700 4200
Wire Wire Line
	1950 4100 1950 5100
Entry Wire Line
	3100 2300 3200 2400
Entry Wire Line
	3100 2400 3200 2500
Wire Wire Line
	2700 2400 3100 2400
Wire Wire Line
	2700 2650 2700 2400
Wire Wire Line
	3100 2300 1850 2300
Wire Wire Line
	1850 2300 1850 3300
Wire Wire Line
	3100 2200 1650 2200
Wire Wire Line
	1650 2200 1650 2650
Text Label 2850 2300 0    50   ~ 0
TEMP1
Text Label 2850 2400 0    50   ~ 0
TEMP2
Wire Wire Line
	2600 2750 2600 4600
Wire Wire Line
	2500 2850 2500 4700
Text Label 2850 2200 0    50   ~ 0
TEMP0
Wire Wire Line
	1750 4000 1750 3400
Wire Wire Line
	1750 4000 1750 4600
Wire Wire Line
	1650 4100 1650 4700
Connection ~ 2500 5300
Wire Wire Line
	2500 4700 2500 5300
Wire Wire Line
	2600 4600 2600 5200
Entry Wire Line
	3200 4500 3300 4400
Entry Wire Line
	3200 4600 3300 4500
Entry Wire Line
	3200 4700 3300 4600
Entry Wire Line
	3200 4800 3300 4700
Entry Wire Line
	3200 4900 3300 4800
Entry Wire Line
	3200 5000 3300 4900
Entry Wire Line
	3200 5100 3300 5000
Entry Wire Line
	3200 3500 3300 3400
Entry Wire Line
	3200 3600 3300 3500
Entry Wire Line
	3200 3700 3300 3600
Entry Wire Line
	3200 3800 3300 3700
Entry Wire Line
	3200 3900 3300 3800
Entry Wire Line
	3200 4000 3300 3900
Entry Wire Line
	3200 4100 3300 4000
Entry Wire Line
	3200 4200 3300 4100
Entry Wire Line
	5100 4400 5000 4300
Text Label 4700 4300 0    50   ~ 0
SEN0
Text Label 4950 4400 2    50   ~ 0
TEMP0
Text Label 4950 4500 2    50   ~ 0
TEMP1
Text Label 4950 4600 2    50   ~ 0
TEMP2
Text Label 4700 4700 0    50   ~ 0
LED_R0
Text Label 4700 4800 0    50   ~ 0
LED_G0
Text Label 4700 4900 0    50   ~ 0
LED_B0
Text Label 4700 5000 0    50   ~ 0
LED_R1
Text Label 4700 3700 0    50   ~ 0
SEN4
Text Label 4700 3400 0    50   ~ 0
SEN1
Text Label 4700 3500 0    50   ~ 0
SEN2
Text Label 4700 3600 0    50   ~ 0
SEN3
Text Label 4700 3800 0    50   ~ 0
LED_R2
Text Label 4700 3900 0    50   ~ 0
LED_G2
Text Label 4700 4100 0    50   ~ 0
LED_R3
Entry Wire Line
	5100 4500 5000 4400
Entry Wire Line
	5100 4600 5000 4500
Entry Wire Line
	5100 4700 5000 4600
Entry Wire Line
	5100 4800 5000 4700
Entry Wire Line
	5100 4900 5000 4800
Entry Wire Line
	5100 5000 5000 4900
Entry Wire Line
	5100 5100 5000 5000
Entry Wire Line
	5100 3500 5000 3400
Entry Wire Line
	5100 3600 5000 3500
Entry Wire Line
	5100 3700 5000 3600
Entry Wire Line
	5100 3800 5000 3700
Entry Wire Line
	5100 3900 5000 3800
Entry Wire Line
	5100 4000 5000 3900
Entry Wire Line
	5100 4100 5000 4000
Entry Wire Line
	5100 4200 5000 4100
$Comp
L power:VAA #PWR0161
U 1 1 66FDDFD6
P 4250 2100
AR Path="/66FDDFD6" Ref="#PWR0161"  Part="1" 
AR Path="/65BD72F5/66FDDFD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0161" H 4250 1950 50  0001 C CNN
F 1 "VAA" H 4267 2273 50  0000 C CNN
F 2 "" H 4250 2100 50  0001 C CNN
F 3 "" H 4250 2100 50  0001 C CNN
	1    4250 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 66FDDFE0
P 4050 2100
AR Path="/65BD72F5/66FDDFE0" Ref="#PWR?"  Part="1" 
AR Path="/66FDDFE0" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 4050 1950 50  0001 C CNN
F 1 "VCC" H 4067 2273 50  0000 C CNN
F 2 "" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0001 C CNN
	1    4050 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 66FDDFEA
P 4450 2100
AR Path="/65AC16CB/66FDDFEA" Ref="#PWR?"  Part="1" 
AR Path="/66FDDFEA" Ref="#PWR0163"  Part="1" 
AR Path="/65B0DCEA/66FDDFEA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0163" H 4450 1950 50  0001 C CNN
F 1 "+12V" H 4465 2273 50  0000 C CNN
F 2 "" H 4450 2100 50  0001 C CNN
F 3 "" H 4450 2100 50  0001 C CNN
	1    4450 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66FDDFF4
P 3850 2100
AR Path="/6841E790/66FDDFF4" Ref="#PWR?"  Part="1" 
AR Path="/66FDDFF4" Ref="#PWR0164"  Part="1" 
AR Path="/5F613CCA/66FDDFF4" Ref="#PWR?"  Part="1" 
AR Path="/66778914/66FDDFF4" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/66FDDFF4" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/66FDDFF4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0164" H 3850 1950 50  0001 C CNN
F 1 "+5V" H 3865 2273 50  0000 C CNN
F 2 "" H 3850 2100 50  0001 C CNN
F 3 "" H 3850 2100 50  0001 C CNN
	1    3850 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66FDE075
P 4150 3000
AR Path="/65A70F21/66FDE075" Ref="#PWR?"  Part="1" 
AR Path="/66FDE075" Ref="#PWR0165"  Part="1" 
AR Path="/65AF4511/66FDE075" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/66FDE075" Ref="#PWR?"  Part="1" 
F 0 "#PWR0165" H 4150 2750 50  0001 C CNN
F 1 "GND" H 4155 2827 50  0000 C CNN
F 2 "" H 4150 3000 50  0001 C CNN
F 3 "" H 4150 3000 50  0001 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
Entry Wire Line
	6600 4600 6700 4500
Entry Wire Line
	6600 4500 6700 4400
Entry Wire Line
	6600 4400 6700 4300
Entry Wire Line
	6600 4200 6700 4100
Entry Wire Line
	6600 4100 6700 4000
Entry Wire Line
	6600 4000 6700 3900
Entry Wire Line
	6600 3900 6700 3800
Entry Wire Line
	6600 4700 6700 4600
Entry Wire Line
	6600 3700 6700 3600
Entry Wire Line
	6600 3600 6700 3500
Entry Wire Line
	6600 3500 6700 3400
Entry Wire Line
	8650 3500 8550 3400
Entry Wire Line
	8650 3600 8550 3500
Entry Wire Line
	8650 3700 8550 3600
Entry Wire Line
	8650 4700 8550 4600
Entry Wire Line
	8650 3900 8550 3800
Entry Wire Line
	8650 4000 8550 3900
Entry Wire Line
	8650 4100 8550 4000
Entry Wire Line
	8650 4200 8550 4100
Entry Wire Line
	8650 4400 8550 4300
Entry Wire Line
	8650 4500 8550 4400
Entry Wire Line
	8650 4600 8550 4500
Entry Wire Line
	6600 3100 6500 3000
Entry Wire Line
	6600 2900 6500 2800
Entry Wire Line
	6600 3000 6500 2900
Entry Wire Line
	6600 3200 6500 3100
Wire Wire Line
	6500 2900 6100 2900
Wire Wire Line
	6500 2800 6100 2800
Wire Wire Line
	5200 2800 5600 2800
Wire Wire Line
	5200 2900 5600 2900
Entry Wire Line
	5100 2900 5200 2800
Entry Wire Line
	5100 3000 5200 2900
Entry Wire Line
	8650 1300 8750 1200
Entry Wire Line
	8750 3900 8650 4000
Entry Wire Line
	8750 4000 8650 4100
Entry Wire Line
	8750 4100 8650 4200
Entry Wire Line
	8750 4200 8650 4300
Wire Wire Line
	9150 4200 8750 4200
Wire Wire Line
	9900 4100 8750 4100
Wire Wire Line
	10000 4000 8750 4000
Wire Wire Line
	9450 4600 9250 4600
Wire Wire Line
	9450 5200 9250 5200
Connection ~ 9250 4600
Wire Wire Line
	10300 4600 10100 4600
Wire Wire Line
	10300 5200 10100 5200
Wire Wire Line
	10100 5200 10100 4600
$Comp
L power:GND #PWR?
U 1 1 67D021BB
P 9350 5450
AR Path="/65ACE5DD/67D021BB" Ref="#PWR?"  Part="1" 
AR Path="/67D021BB" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 9350 5200 50  0001 C CNN
F 1 "GND" H 9355 5277 50  0000 C CNN
F 2 "" H 9350 5450 50  0001 C CNN
F 3 "" H 9350 5450 50  0001 C CNN
	1    9350 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D021C5
P 10200 5450
AR Path="/65ACE5DD/67D021C5" Ref="#PWR?"  Part="1" 
AR Path="/67D021C5" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 10200 5200 50  0001 C CNN
F 1 "GND" H 10205 5277 50  0000 C CNN
F 2 "" H 10200 5450 50  0001 C CNN
F 3 "" H 10200 5450 50  0001 C CNN
	1    10200 5450
	1    0    0    -1  
$EndComp
Connection ~ 10100 4600
Connection ~ 10100 4000
Wire Wire Line
	10300 4000 10100 4000
Wire Wire Line
	10300 4100 10200 4100
Wire Wire Line
	10300 4500 10000 4500
Wire Wire Line
	10000 4500 10000 4000
Wire Wire Line
	10300 5100 9900 5100
Wire Wire Line
	10300 5300 10200 5300
Connection ~ 10200 5300
Wire Wire Line
	10200 5300 10200 5450
Wire Wire Line
	10300 4700 10200 4700
Connection ~ 10200 4700
Wire Wire Line
	10200 4700 10200 5300
Wire Wire Line
	9450 4500 9150 4500
Wire Wire Line
	9350 4700 9450 4700
Wire Wire Line
	9450 5300 9350 5300
Wire Wire Line
	9350 5300 9350 5450
Wire Wire Line
	9150 4500 9150 4200
Wire Wire Line
	9900 4100 9900 5100
Wire Wire Line
	10100 4000 10100 3800
Wire Wire Line
	10100 4000 10100 4600
Wire Wire Line
	10200 4100 10200 4700
Connection ~ 9350 5300
Wire Wire Line
	9350 4700 9350 5300
Wire Wire Line
	9250 4600 9250 5200
Wire Wire Line
	10300 3900 8750 3900
$Comp
L power:VSS #PWR0168
U 1 1 67DB932E
P 10100 3800
F 0 "#PWR0168" H 10100 3650 50  0001 C CNN
F 1 "VSS" H 10117 3973 50  0000 C CNN
F 2 "" H 10100 3800 50  0001 C CNN
F 3 "" H 10100 3800 50  0001 C CNN
	1    10100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0169
U 1 1 67DEE8A2
P 9250 3800
F 0 "#PWR0169" H 9250 3650 50  0001 C CNN
F 1 "VSS" H 9267 3973 50  0000 C CNN
F 2 "" H 9250 3800 50  0001 C CNN
F 3 "" H 9250 3800 50  0001 C CNN
	1    9250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3800 9250 4600
Wire Wire Line
	6600 1300 6600 1100
$Comp
L power:+5V #PWR?
U 1 1 6810B7AF
P 6600 1100
AR Path="/6841E790/6810B7AF" Ref="#PWR?"  Part="1" 
AR Path="/6810B7AF" Ref="#PWR0170"  Part="1" 
AR Path="/5F613CCA/6810B7AF" Ref="#PWR?"  Part="1" 
AR Path="/66778914/6810B7AF" Ref="#PWR?"  Part="1" 
AR Path="/65AF4511/6810B7AF" Ref="#PWR?"  Part="1" 
AR Path="/65B4C92A/6810B7AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0170" H 6600 950 50  0001 C CNN
F 1 "+5V" H 6615 1273 50  0000 C CNN
F 2 "" H 6600 1100 50  0001 C CNN
F 3 "" H 6600 1100 50  0001 C CNN
	1    6600 1100
	-1   0    0    -1  
$EndComp
Text Label 5400 1400 2    50   ~ 0
SCL
Text Label 5400 1500 2    50   ~ 0
SDA
Wire Wire Line
	3300 3400 3650 3400
Wire Wire Line
	3300 3500 3650 3500
Wire Wire Line
	3650 3600 3300 3600
Wire Wire Line
	3300 3700 3650 3700
Wire Wire Line
	3650 3800 3300 3800
Wire Wire Line
	3650 3900 3300 3900
Wire Wire Line
	3650 4000 3300 4000
Wire Wire Line
	3650 4100 3300 4100
Wire Wire Line
	3300 4300 3650 4300
Wire Wire Line
	3300 4400 3650 4400
Wire Wire Line
	3650 4500 3300 4500
Wire Wire Line
	3300 4600 3650 4600
Wire Wire Line
	3650 4700 3300 4700
Wire Wire Line
	3650 4800 3300 4800
Wire Wire Line
	3650 4900 3300 4900
Wire Wire Line
	3650 5000 3300 5000
Text Label 4700 4000 0    50   ~ 0
LED_B2
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J37
U 1 1 6874E7EA
P 3550 2500
F 0 "J37" H 3630 2492 50  0000 L CNN
F 1 "L-P" H 3630 2401 50  0000 L CNN
F 2 "footprints:PinHeader_3x08_P2.54mm_Vertical" H 3550 2500 50  0001 C CNN
F 3 "~" H 3550 2500 50  0001 C CNN
	1    3550 2500
	-1   0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J38
U 1 1 68750201
P 4800 2500
F 0 "J38" H 4950 2500 50  0000 C CNN
F 1 "L-P" H 4950 2400 50  0000 C CNN
F 2 "footprints:PinSocket_3x08_P2.54mm_Horizontal" H 4800 2500 50  0001 C CNN
F 3 "~" H 4800 2500 50  0001 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4300 5000 4300
Wire Wire Line
	4700 4400 5000 4400
Wire Wire Line
	4700 4500 5000 4500
Wire Wire Line
	4700 4600 5000 4600
Wire Wire Line
	4700 4700 5000 4700
Wire Wire Line
	4700 4800 5000 4800
Wire Wire Line
	4700 4900 5000 4900
Wire Wire Line
	4700 5000 5000 5000
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J38
U 2 1 688271F0
P 4500 3700
F 0 "J38" H 4650 3700 50  0000 C CNN
F 1 "L-P" H 4650 3600 50  0000 C CNN
F 2 "footprints:PinSocket_3x08_P2.54mm_Horizontal" H 4500 3700 50  0001 C CNN
F 3 "~" H 4500 3700 50  0001 C CNN
	2    4500 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 5000 4100
Wire Wire Line
	4700 4000 5000 4000
Wire Wire Line
	4700 3900 5000 3900
Wire Wire Line
	4700 3800 5000 3800
Wire Wire Line
	4700 3700 5000 3700
Wire Wire Line
	4700 3600 5000 3600
Wire Wire Line
	4700 3500 5000 3500
Wire Wire Line
	4700 3400 5000 3400
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J37
U 2 1 6890C08F
P 3850 3700
F 0 "J37" H 3930 3692 50  0000 L CNN
F 1 "L-P" H 3930 3601 50  0000 L CNN
F 2 "footprints:PinHeader_3x08_P2.54mm_Vertical" H 3850 3700 50  0001 C CNN
F 3 "~" H 3850 3700 50  0001 C CNN
	2    3850 3700
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J38
U 3 1 6890EFAC
P 4500 4600
F 0 "J38" H 4580 4592 50  0000 L CNN
F 1 "L-P" H 4580 4501 50  0000 L CNN
F 2 "footprints:PinSocket_3x08_P2.54mm_Horizontal" H 4500 4600 50  0001 C CNN
F 3 "~" H 4500 4600 50  0001 C CNN
	3    4500 4600
	-1   0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J37
U 3 1 68913AC6
P 3850 4600
F 0 "J37" H 4000 4600 50  0000 C CNN
F 1 "L-P" H 4000 4500 50  0000 C CNN
F 2 "footprints:PinHeader_3x08_P2.54mm_Vertical" H 3850 4600 50  0001 C CNN
F 3 "~" H 3850 4600 50  0001 C CNN
	3    3850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2400 4050 2400
Wire Wire Line
	4050 2400 4050 2100
Wire Wire Line
	3750 2500 4050 2500
Wire Wire Line
	4050 2500 4050 2400
Connection ~ 4050 2400
Wire Wire Line
	3750 2600 4250 2600
Wire Wire Line
	4250 2600 4250 2100
Wire Wire Line
	3750 2700 4250 2700
Wire Wire Line
	4250 2700 4250 2600
Connection ~ 4250 2600
Wire Wire Line
	4250 2600 4600 2600
Wire Wire Line
	4600 2700 4250 2700
Connection ~ 4250 2700
Wire Wire Line
	4050 2500 4600 2500
Connection ~ 4050 2500
Wire Wire Line
	4600 2400 4050 2400
Wire Wire Line
	3750 2200 3850 2200
Wire Wire Line
	3850 2200 3850 2100
Wire Wire Line
	3850 2200 4600 2200
Connection ~ 3850 2200
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J39
U 1 1 68C87E02
P 7050 2550
F 0 "J39" H 7130 2542 50  0000 L CNN
F 1 "M-P" H 7130 2451 50  0000 L CNN
F 2 "footprints:PinSocket_3x08_P2.54mm_Horizontal" H 7050 2550 50  0001 C CNN
F 3 "~" H 7050 2550 50  0001 C CNN
	1    7050 2550
	-1   0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J40
U 1 1 68C8AD40
P 8250 2550
F 0 "J40" H 8450 2550 50  0000 C CNN
F 1 "M-P" H 8450 2450 50  0000 C CNN
F 2 "footprints:PinHeader_3x08_P2.54mm_Vertical" H 8250 2550 50  0001 C CNN
F 3 "~" H 8250 2550 50  0001 C CNN
	1    8250 2550
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J39
U 2 1 68C8DDA8
P 7300 3700
F 0 "J39" H 7380 3692 50  0000 L CNN
F 1 "M-P" H 7380 3601 50  0000 L CNN
F 2 "footprints:PinSocket_3x08_P2.54mm_Horizontal" H 7300 3700 50  0001 C CNN
F 3 "~" H 7300 3700 50  0001 C CNN
	2    7300 3700
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J40
U 2 1 68C911CD
P 7950 3700
F 0 "J40" H 8100 3700 50  0000 C CNN
F 1 "M-P" H 8100 3600 50  0000 C CNN
F 2 "footprints:PinHeader_3x08_P2.54mm_Vertical" H 7950 3700 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	2    7950 3700
	-1   0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J39
U 3 1 68C92801
P 7300 4600
F 0 "J39" H 7450 4600 50  0000 C CNN
F 1 "M-P" H 7450 4500 50  0000 C CNN
F 2 "footprints:PinSocket_3x08_P2.54mm_Horizontal" H 7300 4600 50  0001 C CNN
F 3 "~" H 7300 4600 50  0001 C CNN
	3    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:Conn_03x08 J40
U 3 1 68C976B2
P 7950 4600
F 0 "J40" H 8030 4592 50  0000 L CNN
F 1 "M-P" H 8030 4501 50  0000 L CNN
F 2 "footprints:PinHeader_3x08_P2.54mm_Vertical" H 7950 4600 50  0001 C CNN
F 3 "~" H 7950 4600 50  0001 C CNN
	3    7950 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 3400 8550 3400
Wire Wire Line
	8150 3500 8550 3500
Wire Wire Line
	8150 3600 8550 3600
Wire Wire Line
	8150 3800 8550 3800
Wire Wire Line
	8150 3900 8550 3900
Wire Wire Line
	8150 4000 8550 4000
Wire Wire Line
	8150 4100 8550 4100
Wire Wire Line
	8150 4300 8550 4300
Wire Wire Line
	8150 4400 8550 4400
Wire Wire Line
	8150 4500 8550 4500
Wire Wire Line
	8150 4600 8550 4600
Wire Wire Line
	8150 4700 8550 4700
Wire Wire Line
	7100 4700 6700 4700
Wire Wire Line
	6700 4600 7100 4600
Wire Wire Line
	7100 4500 6700 4500
Wire Wire Line
	6700 4400 7100 4400
Wire Wire Line
	7100 4300 6700 4300
Wire Wire Line
	6700 3400 7100 3400
Wire Wire Line
	7100 3500 6700 3500
Wire Wire Line
	6700 3600 7100 3600
Wire Wire Line
	7100 3800 6700 3800
Wire Wire Line
	6700 3900 7100 3900
Wire Wire Line
	7100 4000 6700 4000
Wire Wire Line
	6700 4100 7100 4100
Wire Wire Line
	4450 2900 4600 2900
Wire Wire Line
	4450 2100 4450 2900
Wire Wire Line
	4450 2900 3750 2900
Connection ~ 4450 2900
Wire Wire Line
	4150 3000 4150 2800
Wire Wire Line
	4150 2800 3750 2800
Wire Wire Line
	4150 2800 4600 2800
Connection ~ 4150 2800
Wire Wire Line
	4150 2800 4150 2300
Wire Wire Line
	3750 2300 4150 2300
Connection ~ 4150 2300
Wire Wire Line
	4150 2300 4600 2300
Wire Wire Line
	7250 2350 7650 2350
Wire Wire Line
	7250 2950 7350 2950
Wire Wire Line
	7250 2850 7650 2850
Wire Wire Line
	7950 2150 7950 2250
Connection ~ 7950 2250
Wire Wire Line
	7950 2250 8050 2250
Wire Wire Line
	7250 2250 7950 2250
Wire Wire Line
	7350 2150 7350 2950
Connection ~ 7350 2950
Wire Wire Line
	7350 2950 8050 2950
Wire Wire Line
	7250 2550 7750 2550
Wire Wire Line
	7250 2450 7750 2450
Wire Wire Line
	7250 2750 7550 2750
Wire Wire Line
	7250 2650 7550 2650
Wire Wire Line
	7550 2150 7550 2650
Connection ~ 7550 2750
Wire Wire Line
	7550 2750 8050 2750
Wire Wire Line
	7550 2750 7550 2650
Connection ~ 7550 2650
Wire Wire Line
	7550 2650 8050 2650
Wire Wire Line
	7750 2150 7750 2450
Connection ~ 7750 2450
Wire Wire Line
	7750 2450 8050 2450
Wire Wire Line
	7750 2450 7750 2550
Connection ~ 7750 2550
Wire Wire Line
	7750 2550 8050 2550
Wire Wire Line
	7650 3050 7650 2850
Connection ~ 7650 2850
Wire Wire Line
	7650 2850 8050 2850
Wire Wire Line
	7650 2850 7650 2350
Connection ~ 7650 2350
Wire Wire Line
	7650 2350 8050 2350
$Comp
L Diode:1N5819 D?
U 1 1 65F273DE
P 1750 6600
AR Path="/64798DC1/65F273DE" Ref="D?"  Part="1" 
AR Path="/65F273DE" Ref="D14"  Part="1" 
AR Path="/647E1209/65F273DE" Ref="D?"  Part="1" 
AR Path="/66A5434C/65F273DE" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/65F273DE" Ref="D?"  Part="1" 
F 0 "D14" H 1750 6816 50  0000 C CNN
F 1 "1N5819" H 1750 6725 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1750 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1750 6600 50  0001 C CNN
F 4 "COM-10926" H 1850 6650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 1850 6650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 1850 6650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 1850 6650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 1850 6650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 1850 6650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 1850 6650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 1850 6650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 1750 6600 50  0001 C CNN "Description"
	1    1750 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 6600 2050 6600
Wire Wire Line
	2500 6500 2500 6600
Wire Wire Line
	2050 7450 2050 7350
Wire Wire Line
	3800 7350 3400 7350
Wire Wire Line
	3800 7350 3800 7450
Connection ~ 3800 7350
Wire Wire Line
	4250 7350 3800 7350
Wire Wire Line
	4250 7150 4250 7350
Wire Wire Line
	3800 7150 3800 7350
Wire Wire Line
	3400 6700 3400 7350
Connection ~ 4250 6600
Wire Wire Line
	3800 6600 3800 6500
Wire Wire Line
	3300 6600 3350 6600
Wire Wire Line
	3800 6600 4250 6600
Connection ~ 3800 6600
$Comp
L power:PWR_FLAG #FLG?
U 1 1 660CE3C6
P 4250 6500
AR Path="/659D01BF/660CE3C6" Ref="#FLG?"  Part="1" 
AR Path="/660CE3C6" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 4250 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 6673 50  0000 C CNN
F 2 "" H 4250 6500 50  0001 C CNN
F 3 "~" H 4250 6500 50  0001 C CNN
	1    4250 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 660CE3D0
P 3800 7450
AR Path="/659D01BF/660CE3D0" Ref="#PWR?"  Part="1" 
AR Path="/660CE3D0" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3800 7200 50  0001 C CNN
F 1 "GND" H 3805 7277 50  0000 C CNN
F 2 "" H 3800 7450 50  0001 C CNN
F 3 "" H 3800 7450 50  0001 C CNN
	1    3800 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6700 3400 6700
Wire Wire Line
	3800 6850 3800 6600
$Comp
L Device:CP1 C?
U 1 1 660CE3FB
P 4250 7000
AR Path="/647E1209/660CE3FB" Ref="C?"  Part="1" 
AR Path="/660CE3FB" Ref="C12"  Part="1" 
AR Path="/65468F85/660CE3FB" Ref="C?"  Part="1" 
F 0 "C12" H 4365 7046 50  0000 L CNN
F 1 "10uF" H 4365 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4250 7000 50  0001 C CNN
F 3 "~" H 4250 7000 50  0001 C CNN
F 4 "COM-00523" H 5000 6950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 5000 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 5000 6950 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 5000 6950 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 5000 6950 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 5000 6950 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 5000 6950 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 5000 6950 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 5000 6950 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 5000 6950 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 4250 7000 50  0001 C CNN "Description"
	1    4250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6850 4250 6600
Wire Wire Line
	3650 6600 3800 6600
Wire Wire Line
	4250 6500 4250 6600
Wire Wire Line
	7100 3700 6700 3700
Wire Wire Line
	8550 3700 8150 3700
$Comp
L power:GND #PWR?
U 1 1 65EB6545
P 7000 5100
AR Path="/65ACE5DD/65EB6545" Ref="#PWR?"  Part="1" 
AR Path="/65EB6545" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7000 4850 50  0001 C CNN
F 1 "GND" H 7005 4927 50  0000 C CNN
F 2 "" H 7000 5100 50  0001 C CNN
F 3 "" H 7000 5100 50  0001 C CNN
	1    7000 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65EB6AB5
P 8250 5100
AR Path="/65ACE5DD/65EB6AB5" Ref="#PWR?"  Part="1" 
AR Path="/65EB6AB5" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 8250 4850 50  0001 C CNN
F 1 "GND" H 8255 4927 50  0000 C CNN
F 2 "" H 8250 5100 50  0001 C CNN
F 3 "" H 8250 5100 50  0001 C CNN
	1    8250 5100
	1    0    0    -1  
$EndComp
Entry Wire Line
	6600 4800 6700 4700
Entry Wire Line
	8550 4700 8650 4800
Text Label 8800 1300 0    50   ~ 0
MTR1A
Text Label 8800 1400 0    50   ~ 0
MTR1B
Text Label 8800 1500 0    50   ~ 0
MTR1C
Text Label 8250 4700 0    50   ~ 0
MTR1A
Text Label 8250 4800 0    50   ~ 0
MTR1B
Text Label 8250 4900 0    50   ~ 0
MTR1C
Text Label 6700 4700 0    50   ~ 0
MTR1A
Text Label 6700 4800 0    50   ~ 0
MTR1B
Text Label 6700 4900 0    50   ~ 0
MTR1C
Text Label 6150 4300 0    50   ~ 0
MTR1A
Text Label 6150 4400 0    50   ~ 0
MTR1B
Text Label 5350 4400 0    50   ~ 0
MTR1C
Entry Wire Line
	5100 4500 5200 4400
Entry Wire Line
	6600 4900 6700 4800
Entry Wire Line
	6600 5000 6700 4900
Entry Wire Line
	6600 3800 6700 3700
Entry Wire Line
	8650 4400 8750 4300
Entry Wire Line
	6500 4300 6600 4400
Entry Wire Line
	6500 4400 6600 4500
Entry Wire Line
	8550 4800 8650 4900
Entry Wire Line
	8550 4900 8650 5000
Entry Wire Line
	8550 3700 8650 3800
Entry Wire Line
	8650 1500 8750 1400
Entry Wire Line
	8650 1600 8750 1500
Entry Wire Line
	8650 1400 8750 1300
Wire Wire Line
	9100 1300 8750 1300
Wire Wire Line
	8750 1400 9100 1400
Wire Wire Line
	9100 1500 8750 1500
Wire Wire Line
	8150 4800 8550 4800
Wire Wire Line
	8550 4900 8150 4900
Wire Wire Line
	8150 5000 8250 5000
Wire Wire Line
	7100 4900 6700 4900
Wire Wire Line
	6700 4800 7100 4800
Wire Wire Line
	6100 4300 6500 4300
Wire Wire Line
	6500 4400 6100 4400
Wire Wire Line
	5200 4400 5600 4400
Wire Wire Line
	9450 5100 9050 5100
Wire Wire Line
	9050 5100 9050 4300
Wire Wire Line
	9050 4300 8750 4300
Text Label 8750 4300 0    50   ~ 0
MTR1A
Wire Wire Line
	6100 3000 6500 3000
Wire Wire Line
	6100 3100 6500 3100
Text Label 2850 2500 0    50   ~ 0
TEMP3
Entry Wire Line
	3100 2500 3200 2600
Wire Wire Line
	3100 2500 2800 2500
NoConn ~ 2800 2500
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6659009F
P 6500 2600
AR Path="/659D01BF/6659009F" Ref="#FLG?"  Part="1" 
AR Path="/6659009F" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 6500 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 2773 50  0000 C CNN
F 2 "" H 6500 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 6500 2700
Wire Wire Line
	6500 2700 6500 2600
Connection ~ 6200 2700
Wire Wire Line
	8250 5100 8250 5000
Wire Wire Line
	7000 5100 7000 5000
Wire Wire Line
	7000 5000 7100 5000
Wire Bus Line
	3300 5400 8550 5400
Wire Bus Line
	6600 2900 6600 5300
Wire Bus Line
	5100 2900 5100 5300
Wire Bus Line
	3200 1100 3200 5300
Wire Bus Line
	8650 1100 8650 5300
$EndSCHEMATC
