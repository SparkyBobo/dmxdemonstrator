EESchema Schematic File Version 4
LIBS:io-analog-pwm-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Analog IO PWM (DMX-IO4)"
Date "2023-09-17"
Rev "1.3"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L power:GND #PWR0111
U 1 1 5F4012A9
P 8750 3450
F 0 "#PWR0111" H 8750 3200 50  0001 C CNN
F 1 "GND" H 8755 3277 50  0000 C CNN
F 2 "" H 8750 3450 50  0001 C CNN
F 3 "" H 8750 3450 50  0001 C CNN
	1    8750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3450 8750 3350
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 5F42826E
P 9100 3150
F 0 "J2" H 9100 2700 50  0000 L CNN
F 1 "Output" H 8950 2800 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_5-G-3.81_1x05_P3.81mm_Horizontal" H 9100 3150 50  0001 C CNN
F 3 "~" H 9100 3150 50  0001 C CNN
F 4 "277-1109-ND" H 9100 3150 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757271/260477" H 9100 3150 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757271" H 9100 3150 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757271?qs=uD%2FdkN7XIa3szA65xzhSaQ%3D%3D" H 9100 3150 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 9100 3150 50  0001 C CNN "Description"
	1    9100 3150
	1    0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5F517793
P 4350 7050
F 0 "C2" H 4465 7096 50  0000 L CNN
F 1 "0.1uF" H 4465 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4388 6900 50  0001 C CNN
F 3 "~" H 4350 7050 50  0001 C CNN
F 4 "Decoupling Capacitor" H 1950 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 1950 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 1950 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 1950 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 1950 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 1950 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 1950 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 1950 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 1950 7000 50  0001 C CNN "MO_Detail_Page"
	1    4350 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F517B89
P 4800 7500
F 0 "#PWR0120" H 4800 7250 50  0001 C CNN
F 1 "GND" H 4805 7327 50  0000 C CNN
F 2 "" H 4800 7500 50  0001 C CNN
F 3 "" H 4800 7500 50  0001 C CNN
	1    4800 7500
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F5D2833
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3350 8900 3350
Text Label 6250 2300 0    50   ~ 0
AO0
Text Label 6250 2200 0    50   ~ 0
AO1
Text Label 6250 2100 0    50   ~ 0
AO2
Text Label 6250 2000 0    50   ~ 0
AO3
Wire Wire Line
	8900 3150 8100 3150
Wire Wire Line
	8900 3250 8200 3250
$Comp
L Device:C C1
U 1 1 5F7C4002
P 5400 7050
F 0 "C1" H 5515 7096 50  0000 L CNN
F 1 "0.1uF" H 5515 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5438 6900 50  0001 C CNN
F 3 "~" H 5400 7050 50  0001 C CNN
F 4 "Decoupling Capacitor" H 1950 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 1950 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 1950 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 1950 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 1950 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 1950 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 1950 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 1950 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 1950 7000 50  0001 C CNN "MO_Detail_Page"
	1    5400 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 63F3D862
P 6250 6950
F 0 "MH2" H 6350 6996 50  0000 L CNN
F 1 "MountingHole" H 6350 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6950 50  0001 C CNN
F 3 "~" H 6250 6950 50  0001 C CNN
	1    6250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 63F3D8D0
P 6250 7250
F 0 "MH3" H 6350 7296 50  0000 L CNN
F 1 "MountingHole" H 6350 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7250 50  0001 C CNN
F 3 "~" H 6250 7250 50  0001 C CNN
	1    6250 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 63F3D916
P 6250 7550
F 0 "MH4" H 6350 7596 50  0000 L CNN
F 1 "MountingHole" H 6350 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7550 50  0001 C CNN
F 3 "~" H 6250 7550 50  0001 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH1
U 1 1 63F3D95E
P 6250 6650
F 0 "MH1" H 6350 6696 50  0000 L CNN
F 1 "MountingHole" H 6350 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6650 50  0001 C CNN
F 3 "~" H 6250 6650 50  0001 C CNN
	1    6250 6650
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 2 1 63F1BE6E
P 7500 1800
F 0 "U2" H 7500 2167 50  0000 C CNN
F 1 "LM339" H 7500 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 7550 2000 50  0001 C CNN
F 4 "296-1393-5-ND" H 7500 1800 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/LM339N/277628" H 7500 1800 50  0001 C CNN "DK_Detail_Page"
F 6 "595-LM339N" H 7500 1800 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/LM339N?qs=rshUhwi3fbY%252BaR%252BOl3edNw%3D%3D" H 7500 1800 50  0001 C CNN "MO_Detail_Page"
F 8 "Quad Differential Comparator" H 7500 1800 50  0001 C CNN "Description"
	2    7500 1800
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 3 1 63F1BED5
P 7500 4500
F 0 "U2" H 7500 4867 50  0000 C CNN
F 1 "LM339" H 7500 4776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 7550 2000 50  0001 C CNN
F 4 "296-1393-5-ND" H 7500 1800 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/LM339N/277628" H 7500 1800 50  0001 C CNN "DK_Detail_Page"
F 6 "595-LM339N" H 7500 1800 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/LM339N?qs=rshUhwi3fbY%252BaR%252BOl3edNw%3D%3D" H 7500 1800 50  0001 C CNN "MO_Detail_Page"
F 8 "Quad Differential Comparator" H 7500 1800 50  0001 C CNN "Description"
	3    7500 4500
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U2
U 4 1 63F1BF3E
P 7500 2700
F 0 "U2" H 7500 3067 50  0000 C CNN
F 1 "LM339" H 7500 2976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 7550 2000 50  0001 C CNN
F 4 "296-1393-5-ND" H 7500 1800 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/LM339N/277628" H 7500 1800 50  0001 C CNN "DK_Detail_Page"
F 6 "595-LM339N" H 7500 1800 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/LM339N?qs=rshUhwi3fbY%252BaR%252BOl3edNw%3D%3D" H 7500 1800 50  0001 C CNN "MO_Detail_Page"
F 8 "Quad Differential Comparator" H 7500 1800 50  0001 C CNN "Description"
	4    7500 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 63F1C187
P 5700 4850
F 0 "C5" H 5792 4896 50  0000 L CNN
F 1 "0.68uF" H 5792 4805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5700 4850 50  0001 C CNN
F 3 "~" H 5700 4850 50  0001 C CNN
F 4 "399-9749-ND" H 3550 4850 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/kemet/C315C684K5R5TA/3726079" H 3550 4850 50  0001 C CNN "DK_Detail_Page"
F 6 "80-C315C684K5R" H 3550 4850 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/KEMET/C315C684K5R5TA?qs=Tap6ps20mlPkpr5CwDda6Q%3D%3D" H 3550 4850 50  0001 C CNN "MO_Detail_Page"
	1    5700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 63F3258D
P 6200 4850
F 0 "R3" H 6132 4804 50  0000 R CNN
F 1 "10k" H 6132 4895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6240 4840 50  0001 C CNN
F 3 "~" H 6200 4850 50  0001 C CNN
F 4 "13-CFR-25JT-52-10KCT-ND" H 3550 4350 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/CFR-25JT-52-10K/9098531" H 3550 4350 50  0001 C CNN "DK_Detail_Page"
F 6 "603-CFR-25JT-52-10K" H 3550 4350 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/CFR-25JT-52-10K?qs=sxZXDnvRBEh6BTlAYl6hWg%3D%3D" H 3550 4350 50  0001 C CNN "MO_Detail_Page"
F 8 "2784" H 3550 4350 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2784" H 3550 4350 50  0001 C CNN "AF_Detail_Page"
	1    6200 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4750 5700 4600
Connection ~ 5700 4600
$Comp
L power:GND #PWR0127
U 1 1 63F662F2
P 4800 5100
F 0 "#PWR0127" H 4800 4850 50  0001 C CNN
F 1 "GND" H 4805 4927 50  0000 C CNN
F 2 "" H 4800 5100 50  0001 C CNN
F 3 "" H 4800 5100 50  0001 C CNN
	1    4800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3700 7200 3700
Connection ~ 6800 2800
Wire Wire Line
	6800 2800 6800 3700
Wire Wire Line
	6800 1900 7200 1900
Wire Wire Line
	6800 1900 6800 2800
Entry Wire Line
	6400 2000 6500 1900
Entry Wire Line
	6400 2100 6500 2000
Entry Wire Line
	6400 2200 6500 2100
Entry Wire Line
	6400 2300 6500 2200
Entry Wire Line
	6500 1800 6600 1700
Entry Wire Line
	6500 2700 6600 2600
Entry Wire Line
	6500 3400 6600 3500
Entry Wire Line
	6500 4300 6600 4400
Text Label 6600 4400 0    50   ~ 0
AO0
Text Label 6600 3500 0    50   ~ 0
AO1
Text Label 6600 2600 0    50   ~ 0
AO2
Text Label 6600 1700 0    50   ~ 0
AO3
Connection ~ 6800 3700
Wire Wire Line
	6800 2800 7200 2800
Wire Wire Line
	6600 1700 7200 1700
Wire Wire Line
	6600 2600 7200 2600
Wire Wire Line
	6600 4400 7200 4400
Wire Wire Line
	4800 5050 4800 5100
Wire Wire Line
	5700 4950 5700 5050
Wire Wire Line
	4800 7450 4800 7500
Connection ~ 4800 5050
Text Notes 9250 3250 0    50   ~ 0
PWM Output\n0%-100% duty cycle\n0v-Vo
Wire Wire Line
	7800 1800 8400 1800
Wire Wire Line
	7800 3600 8100 3600
Wire Wire Line
	7800 4500 8200 4500
Wire Wire Line
	6600 3500 7200 3500
$Comp
L Comparator:LM339 U2
U 1 1 63F1BDD7
P 7500 3600
F 0 "U2" H 7500 3967 50  0000 C CNN
F 1 "LM339" H 7500 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7450 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 7550 2000 50  0001 C CNN
F 4 "296-1393-5-ND" H 7500 1800 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/LM339N/277628" H 7500 1800 50  0001 C CNN "DK_Detail_Page"
F 6 "595-LM339N" H 7500 1800 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/LM339N?qs=rshUhwi3fbY%252BaR%252BOl3edNw%3D%3D" H 7500 1800 50  0001 C CNN "MO_Detail_Page"
F 8 "Quad Differential Comparator" H 7500 1800 50  0001 C CNN "Description"
	1    7500 3600
	1    0    0    -1  
$EndComp
$Comp
L Timer:TLC555 U1
U 1 1 649D4CA9
P 4250 4600
F 0 "U1" H 4500 5050 50  0000 C CNN
F 1 "NE555" H 4500 4950 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4300 4350 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/ne555.pdf" H 4900 4050 50  0001 C CNN
F 4 "296-NE555P-ND" H 4250 4600 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/texas-instruments/NE555P/277057" H 4250 4600 50  0001 C CNN "DK_Detail_Page"
F 6 "595-NE555P" H 4250 4600 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Texas-Instruments/NE555P?qs=rkhjVJ6%2F3EIf4CWgjIKuKQ%3D%3D" H 4250 4600 50  0001 C CNN "MO_Detail_Page"
	1    4250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 649D4EF3
P 4250 4000
F 0 "#PWR0107" H 4250 3850 50  0001 C CNN
F 1 "+5V" H 4265 4173 50  0000 C CNN
F 2 "" H 4250 4000 50  0001 C CNN
F 3 "" H 4250 4000 50  0001 C CNN
	1    4250 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 649D4F4E
P 3950 4100
F 0 "R1" V 3745 4100 50  0000 C CNN
F 1 "330" V 3836 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3990 4090 50  0001 C CNN
F 3 "~" H 3950 4100 50  0001 C CNN
F 4 "13-CFR-25JT-52-330RCT-ND" V 3950 4100 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/CFR-25JT-52-330R/9098603" V 3950 4100 50  0001 C CNN "DK_Detail_Page"
F 6 "603-CFR-25JT-52-330R" V 3950 4100 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/CFR-25JT-52-330R?qs=KUIzHt%2Fe91mWpUNK8rcuyw%3D%3D" V 3950 4100 50  0001 C CNN "MO_Detail_Page"
F 8 "PRT-14490" V 3950 4100 50  0001 C CNN "SP_PN"
F 9 "https://www.sparkfun.com/products/14490" V 3950 4100 50  0001 C CNN "SP_Detail_Page"
	1    3950 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4400 4800 4400
Wire Wire Line
	4800 4400 4800 4100
Wire Wire Line
	4800 4100 4250 4100
Wire Wire Line
	4250 4100 4250 4000
Wire Wire Line
	4250 4200 4250 4100
Connection ~ 4250 4100
Wire Wire Line
	4250 4100 4100 4100
Wire Wire Line
	3800 4100 3700 4100
Wire Wire Line
	3700 4100 3700 4400
Wire Wire Line
	3700 4400 3750 4400
Wire Wire Line
	3750 4600 3550 4600
Wire Wire Line
	3550 4600 3550 4700
Wire Wire Line
	3550 4700 3750 4700
$Comp
L Device:C_Small C3
U 1 1 64A01E27
P 4800 4850
F 0 "C3" H 4709 4804 50  0000 R CNN
F 1 "0.1uF" H 4709 4895 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4800 4850 50  0001 C CNN
F 3 "~" H 4800 4850 50  0001 C CNN
F 4 "Decoupling Capacitor" H 1950 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 1950 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 1950 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 1950 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 1950 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 1950 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 1950 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 1950 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 1950 7000 50  0001 C CNN "MO_Detail_Page"
	1    4800 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 4750 4800 4700
Wire Wire Line
	4800 4950 4800 5050
Wire Wire Line
	4750 4700 4800 4700
Wire Wire Line
	4800 5050 4250 5050
Wire Wire Line
	4250 5050 4250 4900
Connection ~ 4250 5050
$Comp
L Device:C_Small C4
U 1 1 64A2A666
P 3550 4850
F 0 "C4" H 3459 4804 50  0000 R CNN
F 1 "0.68uF" H 3459 4895 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 3550 4850 50  0001 C CNN
F 3 "~" H 3550 4850 50  0001 C CNN
F 4 "399-9749-ND" H 3550 4850 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/kemet/C315C684K5R5TA/3726079" H 3550 4850 50  0001 C CNN "DK_Detail_Page"
F 6 "80-C315C684K5R" H 3550 4850 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/KEMET/C315C684K5R5TA?qs=Tap6ps20mlPkpr5CwDda6Q%3D%3D" H 3550 4850 50  0001 C CNN "MO_Detail_Page"
	1    3550 4850
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 5050 3550 5050
Wire Wire Line
	3550 5050 3550 4950
Wire Wire Line
	3550 4750 3550 4700
Connection ~ 3550 4700
Wire Wire Line
	4750 4600 5100 4600
$Comp
L Device:R_US R2
U 1 1 64A54F32
P 3550 4350
F 0 "R2" H 3618 4396 50  0000 L CNN
F 1 "10k" H 3618 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3590 4340 50  0001 C CNN
F 3 "~" H 3550 4350 50  0001 C CNN
F 4 "13-CFR-25JT-52-10KCT-ND" H 3550 4350 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/CFR-25JT-52-10K/9098531" H 3550 4350 50  0001 C CNN "DK_Detail_Page"
F 6 "603-CFR-25JT-52-10K" H 3550 4350 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/CFR-25JT-52-10K?qs=sxZXDnvRBEh6BTlAYl6hWg%3D%3D" H 3550 4350 50  0001 C CNN "MO_Detail_Page"
F 8 "2784" H 3550 4350 50  0001 C CNN "AF_PN"
F 9 "https://www.adafruit.com/product/2784" H 3550 4350 50  0001 C CNN "AF_Detail_Page"
	1    3550 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4200 3550 4100
Wire Wire Line
	3550 4100 3700 4100
Connection ~ 3700 4100
Wire Wire Line
	3550 4600 3550 4500
Connection ~ 3550 4600
Wire Wire Line
	6800 3700 6800 4600
Wire Wire Line
	6200 4600 6200 4700
Wire Wire Line
	6200 5000 6200 5050
Wire Wire Line
	5700 4600 6200 4600
Wire Wire Line
	4800 7450 4800 7350
Wire Wire Line
	4350 7450 4350 7200
Wire Wire Line
	4800 6650 4800 6750
$Comp
L Comparator:LM339 U2
U 5 1 63F1BFA7
P 4900 7050
F 0 "U2" H 4858 7096 50  0000 L CNN
F 1 "LM339" H 4858 7005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4850 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm339.pdf" H 4950 7250 50  0001 C CNN
	5    4900 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6900 4350 6650
Wire Wire Line
	6800 4600 7200 4600
Connection ~ 4800 7450
Wire Wire Line
	4800 5050 5700 5050
Wire Wire Line
	5700 5050 6200 5050
Connection ~ 5700 5050
Wire Wire Line
	6200 4600 6800 4600
Connection ~ 6200 4600
Connection ~ 6800 4600
Text Notes 5000 4300 0    50   ~ 0
Adjust RV1 for full range,\nabout 1/3 of travel.
Wire Wire Line
	5450 4600 5700 4600
Wire Wire Line
	5400 4600 5450 4600
Connection ~ 5450 4600
Wire Wire Line
	5450 4800 5450 4600
Wire Wire Line
	5250 4750 5250 4800
Wire Wire Line
	5250 4800 5450 4800
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 649CE4C9
P 5250 4600
F 0 "RV1" V 5045 4600 50  0000 C CNN
F 1 "10k" V 5136 4600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3299W_Vertical" H 5250 4600 50  0001 C CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/3299.pdf" H 5250 4600 50  0001 C CNN
F 4 "3299W-103LF-ND" V 5250 4600 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/bourns-inc/3299W-1-103LF/1088137" V 5250 4600 50  0001 C CNN "DK_Detail_Page"
F 6 "3299W-1-103LF" V 5250 4600 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Bourns/3299W-1-103LF?qs=Ic5%252BeoIHScV3GzYsoC1Uog%3D%3D" V 5250 4600 50  0001 C CNN "MO_Detail_Page"
	1    5250 4600
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 653B9279
P 4250 2600
AR Path="/647E1209/653B9279" Ref="#PWR?"  Part="1" 
AR Path="/653B9279" Ref="#PWR02"  Part="1" 
AR Path="/64992F34/653B9279" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 4250 2350 50  0001 C CNN
F 1 "GND" H 4255 2427 50  0000 C CNN
F 2 "" H 4250 2600 50  0001 C CNN
F 3 "" H 4250 2600 50  0001 C CNN
	1    4250 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 2600 4250 2500
Wire Wire Line
	4250 2500 4150 2500
Wire Wire Line
	4250 2500 4250 2400
Wire Wire Line
	4250 2400 4150 2400
Connection ~ 4250 2500
$Comp
L power:+5V #PWR?
U 1 1 653B9284
P 4250 1700
AR Path="/647E1209/653B9284" Ref="#PWR?"  Part="1" 
AR Path="/653B9284" Ref="#PWR01"  Part="1" 
AR Path="/64992F34/653B9284" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 4250 1550 50  0001 C CNN
F 1 "+5V" H 4265 1873 50  0000 C CNN
F 2 "" H 4250 1700 50  0001 C CNN
F 3 "" H 4250 1700 50  0001 C CNN
	1    4250 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 1700 4250 1800
Wire Wire Line
	4150 1800 4250 1800
Connection ~ 4250 1800
Wire Wire Line
	4250 1800 4250 1900
Wire Wire Line
	4150 1900 4250 1900
Text Label 4300 2000 2    50   ~ 0
AO3
Text Label 4300 2100 2    50   ~ 0
AO2
Text Label 4300 2200 2    50   ~ 0
AO1
Text Label 4300 2300 2    50   ~ 0
AO0
Wire Wire Line
	4150 2000 6400 2000
Wire Wire Line
	4150 2100 6400 2100
Wire Wire Line
	4150 2200 6400 2200
Wire Wire Line
	4150 2300 6400 2300
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 653B9297
P 3950 2100
F 0 "J1" H 4100 2100 50  0000 C CNN
F 1 "Analog Extension" H 4350 2000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3950 2100 50  0001 C CNN
F 3 "~" H 3950 2100 50  0001 C CNN
F 4 "PRT-09279" H 3950 2100 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/9279" H 3950 2100 50  0001 C CNN "SP_Detail_Page"
F 6 "992-8FX1L-254MM" H 3950 2100 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Gravitech/8Fx1L-254mm?qs=fkzBJ5HM%252BdAyuablm941Ag%3D%3D" H 3950 2100 50  0001 C CNN "MO_Detail_Page"
F 8 "Arduino Stackable Header - 8 Pin" H 3950 2100 50  0001 C CNN "Description"
	1    3950 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 8900 3050
Wire Wire Line
	8400 2950 8900 2950
Wire Wire Line
	7800 2700 8300 2700
Wire Wire Line
	8400 1800 8400 2950
Wire Wire Line
	8300 2700 8300 3050
Wire Wire Line
	2500 7350 1950 7350
Wire Wire Line
	2500 7450 2500 7350
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6546F2B0
P 2500 7450
AR Path="/647E1209/6546F2B0" Ref="#FLG?"  Part="1" 
AR Path="/6546F2B0" Ref="#FLG02"  Part="1" 
AR Path="/65468F85/6546F2B0" Ref="#FLG?"  Part="1" 
F 0 "#FLG02" H 2500 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 7623 50  0000 C CNN
F 2 "" H 2500 7450 50  0001 C CNN
F 3 "~" H 2500 7450 50  0001 C CNN
	1    2500 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6546F2B6
P 3900 7050
AR Path="/647E1209/6546F2B6" Ref="C?"  Part="1" 
AR Path="/6546F2B6" Ref="C6"  Part="1" 
AR Path="/65468F85/6546F2B6" Ref="C?"  Part="1" 
F 0 "C6" H 4015 7096 50  0000 L CNN
F 1 "10uF" H 4015 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3900 7050 50  0001 C CNN
F 3 "~" H 3900 7050 50  0001 C CNN
F 4 "COM-00523" H 4650 7000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 4650 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 4650 7000 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 4650 7000 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 4650 7000 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 4650 7000 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 4650 7000 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 4650 7000 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 4650 7000 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 4650 7000 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 3900 7050 50  0001 C CNN "Description"
	1    3900 7050
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LM317T U?
U 1 1 6546F2C6
P 2950 6650
AR Path="/647E1209/6546F2C6" Ref="U?"  Part="1" 
AR Path="/6546F2C6" Ref="U3"  Part="1" 
AR Path="/65468F85/6546F2C6" Ref="U?"  Part="1" 
F 0 "U3" H 2950 6937 60  0000 C CNN
F 1 "LM317T" H 2950 6831 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3150 6850 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 3150 6950 60  0001 L CNN
F 4 "497-1575-5-ND" H 3150 7050 60  0001 L CNN "Digi-Key_PN"
F 5 "LM317T" H 3150 7150 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3150 7250 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 3150 7350 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 3150 7450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LM317T/497-1575-5-ND/591677" H 3150 7550 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LIN POS ADJ 1.5A TO220AB" H 3150 7650 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 3150 7750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3150 7850 60  0001 L CNN "Status"
F 13 "511-LM317T" H 2950 6650 50  0001 C CNN "MO_PN"
F 14 "https://www.mouser.com/ProductDetail/STMicroelectronics/LM317T?qs=swDD%252BF%252Bps7c8uLyY%252B3mJJw%3D%3D" H 2950 6650 50  0001 C CNN "MO_Detail_Page"
	1    2950 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6546F2CD
P 3400 6900
AR Path="/647E1209/6546F2CD" Ref="R?"  Part="1" 
AR Path="/6546F2CD" Ref="R4"  Part="1" 
AR Path="/65468F85/6546F2CD" Ref="R?"  Part="1" 
F 0 "R4" H 3332 6854 50  0000 R CNN
F 1 "392 1%" H 3332 6945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3440 6890 50  0001 C CNN
F 3 "~" H 3400 6900 50  0001 C CNN
F 4 "392XBK-ND" H 3400 6900 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-392R/12919" H 3400 6900 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-392R" H 3400 6900 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-392R?qs=oAGoVhmvjhy6pvrooMNCwg%3D%3D" H 3400 6900 50  0001 C CNN "MO_Detail_Page"
	1    3400 6900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 6546F2D4
P 3400 7300
AR Path="/647E1209/6546F2D4" Ref="R?"  Part="1" 
AR Path="/6546F2D4" Ref="R5"  Part="1" 
AR Path="/65468F85/6546F2D4" Ref="R?"  Part="1" 
F 0 "R5" H 3332 7254 50  0000 R CNN
F 1 "2.74k 1%" H 3332 7345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3440 7290 50  0001 C CNN
F 3 "~" H 3400 7300 50  0001 C CNN
F 4 "13-MFR-25FRF52-2K74TR-ND" H 3400 7300 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FRF52-2K74/14933" H 3400 7300 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FRF52-2K74" H 3400 7300 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FRF52-2K74?qs=oAGoVhmvjhwhcYVvwkvvFg%3D%3D" H 3400 7300 50  0001 C CNN "MO_Detail_Page"
	1    3400 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 6650 3400 6650
Wire Wire Line
	3400 6750 3400 6650
Connection ~ 3400 6650
Wire Wire Line
	3400 6650 3900 6650
Wire Wire Line
	3400 7050 3400 7100
Wire Wire Line
	3400 7100 2950 7100
Wire Wire Line
	2950 7100 2950 6950
Connection ~ 3400 7100
Wire Wire Line
	3400 7100 3400 7150
$Comp
L power:GND #PWR?
U 1 1 6546F2E4
P 3400 7500
AR Path="/647E1209/6546F2E4" Ref="#PWR?"  Part="1" 
AR Path="/6546F2E4" Ref="#PWR04"  Part="1" 
AR Path="/65468F85/6546F2E4" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 3400 7250 50  0001 C CNN
F 1 "GND" H 3405 7327 50  0000 C CNN
F 2 "" H 3400 7500 50  0001 C CNN
F 3 "" H 3400 7500 50  0001 C CNN
	1    3400 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7500 3400 7450
Wire Wire Line
	3900 6900 3900 6650
$Comp
L Diode:1N5819 D?
U 1 1 6546F2EC
P 2150 6650
AR Path="/64798DC1/6546F2EC" Ref="D?"  Part="1" 
AR Path="/6546F2EC" Ref="D1"  Part="1" 
AR Path="/647E1209/6546F2EC" Ref="D?"  Part="1" 
AR Path="/65468F85/6546F2EC" Ref="D?"  Part="1" 
F 0 "D1" H 2150 6866 50  0000 C CNN
F 1 "1N5819" H 2150 6775 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2150 6475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2150 6650 50  0001 C CNN
F 4 "COM-10926" H 2150 6650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 2150 6650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 2150 6650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 2150 6650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 2150 6650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 2150 6650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 2150 6650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 2150 6650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 2150 6650 50  0001 C CNN "Description"
	1    2150 6650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 6650 2500 6650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6546F2F4
P 2500 6600
AR Path="/64798DC1/6546F2F4" Ref="#FLG?"  Part="1" 
AR Path="/6546F2F4" Ref="#FLG01"  Part="1" 
AR Path="/647E1209/6546F2F4" Ref="#FLG?"  Part="1" 
AR Path="/65468F85/6546F2F4" Ref="#FLG?"  Part="1" 
F 0 "#FLG01" H 2500 6675 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 6773 50  0000 C CNN
F 2 "" H 2500 6600 50  0001 C CNN
F 3 "~" H 2500 6600 50  0001 C CNN
	1    2500 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6600 2500 6650
Connection ~ 2500 6650
Wire Wire Line
	2500 6650 2650 6650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 6546F2FD
P 1450 6750
AR Path="/647946E8/6546F2FD" Ref="J?"  Part="1" 
AR Path="/6546F2FD" Ref="J4"  Part="1" 
AR Path="/64798DC1/6546F2FD" Ref="J?"  Part="1" 
AR Path="/647E1209/6546F2FD" Ref="J?"  Part="1" 
AR Path="/65468F85/6546F2FD" Ref="J?"  Part="1" 
F 0 "J4" H 1350 6450 50  0000 C CNN
F 1 "Power" H 1350 6550 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 1450 6750 50  0001 C CNN
F 3 "~" H 1450 6750 50  0001 C CNN
F 4 "277-1106-ND" H 1450 6750 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 1450 6750 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 1450 6750 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 1450 6750 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 1450 6750 50  0001 C CNN "Description"
	1    1450 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 7350 1950 6750
Wire Wire Line
	1650 6750 1950 6750
Connection ~ 1950 7350
$Comp
L power:GND #PWR?
U 1 1 6546F317
P 1950 7500
AR Path="/6BB77A68/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313E/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/647946E8/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/6546F317" Ref="#PWR03"  Part="1" 
AR Path="/64798DC1/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/647E1209/6546F317" Ref="#PWR?"  Part="1" 
AR Path="/65468F85/6546F317" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 1950 7250 50  0001 C CNN
F 1 "GND" H 1955 7327 50  0000 C CNN
F 2 "" H 1950 7500 50  0001 C CNN
F 3 "" H 1950 7500 50  0001 C CNN
	1    1950 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7200 3900 7450
Connection ~ 3900 6650
Text Notes 1350 7050 2    50   ~ 0
VIn Input\n(12v-15v)
$Comp
L Device:CP1 C?
U 1 1 6546F324
P 2500 7100
AR Path="/647E1209/6546F324" Ref="C?"  Part="1" 
AR Path="/6546F324" Ref="C7"  Part="1" 
AR Path="/65468F85/6546F324" Ref="C?"  Part="1" 
F 0 "C7" H 2615 7146 50  0000 L CNN
F 1 "10uF" H 2615 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2500 7100 50  0001 C CNN
F 3 "~" H 2500 7100 50  0001 C CNN
F 4 "COM-00523" H 4650 7000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 4650 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 4650 7000 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 4650 7000 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 4650 7000 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 4650 7000 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 4650 7000 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 4650 7000 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 4650 7000 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 4650 7000 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 2500 7100 50  0001 C CNN "Description"
	1    2500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6650 2500 6950
Wire Wire Line
	2500 7250 2500 7350
Connection ~ 2500 7350
Text Notes 4550 6550 2    50   ~ 0
R4, R5 control the output voltage\nVo = 1.25 * (1 + R5 / R4)
$Comp
L power:PWR_FLAG #FLG?
U 1 1 654D8601
P 4550 1700
AR Path="/64798DC1/654D8601" Ref="#FLG?"  Part="1" 
AR Path="/654D8601" Ref="#FLG0101"  Part="1" 
AR Path="/647E1209/654D8601" Ref="#FLG?"  Part="1" 
AR Path="/65468F85/654D8601" Ref="#FLG?"  Part="1" 
F 0 "#FLG0101" H 4550 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 1873 50  0000 C CNN
F 2 "" H 4550 1700 50  0001 C CNN
F 3 "~" H 4550 1700 50  0001 C CNN
	1    4550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1900 4550 1900
Wire Wire Line
	4550 1700 4550 1900
Connection ~ 4250 1900
Wire Wire Line
	8100 3150 8100 3600
Wire Wire Line
	8200 3250 8200 4500
Wire Wire Line
	3900 7450 4350 7450
Wire Wire Line
	3900 6650 4350 6650
Connection ~ 4350 6650
Wire Wire Line
	4350 6650 4800 6650
Connection ~ 4350 7450
Wire Wire Line
	4350 7450 4800 7450
$Comp
L power:GND #PWR0101
U 1 1 65516237
P 5400 7500
F 0 "#PWR0101" H 5400 7250 50  0001 C CNN
F 1 "GND" H 5405 7327 50  0000 C CNN
F 2 "" H 5400 7500 50  0001 C CNN
F 3 "" H 5400 7500 50  0001 C CNN
	1    5400 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7200 5400 7500
$Comp
L power:+5V #PWR0102
U 1 1 6551A56F
P 5400 6550
F 0 "#PWR0102" H 5400 6400 50  0001 C CNN
F 1 "+5V" H 5415 6723 50  0000 C CNN
F 2 "" H 5400 6550 50  0001 C CNN
F 3 "" H 5400 6550 50  0001 C CNN
	1    5400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6550 5400 6900
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 64BD059C
P 9100 4400
F 0 "J3" H 9150 4717 50  0000 C CNN
F 1 "Output" H 9150 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 9100 4400 50  0001 C CNN
F 3 "~" H 9100 4400 50  0001 C CNN
F 4 " COM-12792" H 9100 4400 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/12792" H 9100 4400 50  0001 C CNN "SP_Detail_Page"
F 6 "1541" H 9100 4400 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/1541" H 9100 4400 50  0001 C CNN "AF_Detail_Page"
F 8 "10129382-906002BLF-ND" H 9100 4400 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/amphenol-cs-fci/10129382-906002BLF/7916128" H 9100 4400 50  0001 C CNN "DK_Detail_Page"
F 10 "649-1012938290602BLF" H 9100 4400 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Amphenol-FCI/10129382-906002BLF?qs=0lQeLiL1qyakKLNNkrKqfA%3D%3D" H 9100 4400 50  0001 C CNN "MO_Detail_Page"
F 12 "Header" H 9100 4400 50  0001 C CNN "Description"
	1    9100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 64BD49F3
P 8750 4650
F 0 "#PWR0103" H 8750 4400 50  0001 C CNN
F 1 "GND" H 8755 4477 50  0000 C CNN
F 2 "" H 8750 4650 50  0001 C CNN
F 3 "" H 8750 4650 50  0001 C CNN
	1    8750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4650 8750 4400
Wire Wire Line
	8750 4400 8900 4400
$Comp
L power:GND #PWR0104
U 1 1 64BDCF0D
P 9550 4650
F 0 "#PWR0104" H 9550 4400 50  0001 C CNN
F 1 "GND" H 9555 4477 50  0000 C CNN
F 2 "" H 9550 4650 50  0001 C CNN
F 3 "" H 9550 4650 50  0001 C CNN
	1    9550 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9550 4650 9550 4400
Wire Wire Line
	9550 4400 9400 4400
Wire Wire Line
	8200 4500 8900 4500
Wire Wire Line
	8900 4300 8100 4300
Wire Wire Line
	8100 4300 8100 3600
Connection ~ 8100 3600
Connection ~ 8200 4500
Wire Wire Line
	8300 3050 8300 3950
Wire Wire Line
	8300 3950 9750 3950
Wire Wire Line
	9750 3950 9750 4500
Wire Wire Line
	9750 4500 9400 4500
Connection ~ 8300 3050
Wire Wire Line
	9400 4300 9650 4300
Wire Wire Line
	9650 4300 9650 3850
Wire Wire Line
	9650 3850 8400 3850
Wire Wire Line
	8400 3850 8400 2950
Connection ~ 8400 2950
Text Notes 9850 4550 0    50   ~ 0
PWM Output\n0%-100% duty cycle\n0v-Vo\nFor use with DMX-DSP
Wire Wire Line
	1650 6650 2000 6650
Wire Wire Line
	1950 7350 1950 7500
Wire Bus Line
	6500 1800 6500 4300
$EndSCHEMATC
