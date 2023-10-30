EESchema Schematic File Version 4
LIBS:io-analog-voltage-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Analog IO Voltage (DMX-IO3)"
Date "2023-09-17"
Rev "1.3"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Wire Wire Line
	2400 7300 1850 7300
Wire Wire Line
	2400 7400 2400 7300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 647F56D0
P 2400 7400
AR Path="/647E1209/647F56D0" Ref="#FLG?"  Part="1" 
AR Path="/647F56D0" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 2400 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 7573 50  0000 C CNN
F 2 "" H 2400 7400 50  0001 C CNN
F 3 "~" H 2400 7400 50  0001 C CNN
	1    2400 7400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 647F56EC
P 7350 2950
AR Path="/647E1209/647F56EC" Ref="#PWR?"  Part="1" 
AR Path="/647F56EC" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 7350 2700 50  0001 C CNN
F 1 "GND" H 7355 2777 50  0000 C CNN
F 2 "" H 7350 2950 50  0001 C CNN
F 3 "" H 7350 2950 50  0001 C CNN
	1    7350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2950 7350 2850
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 647F56F3
P 7650 2650
AR Path="/647E1209/647F56F3" Ref="J?"  Part="1" 
AR Path="/647F56F3" Ref="J2"  Part="1" 
F 0 "J2" H 7650 2200 50  0000 L CNN
F 1 "Output" H 7500 2300 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_5-G-3.81_1x05_P3.81mm_Horizontal" H 7650 2650 50  0001 C CNN
F 3 "~" H 7650 2650 50  0001 C CNN
F 4 "277-1109-ND" H 9100 3150 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757271/260477" H 9100 3150 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757271" H 9100 3150 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757271?qs=uD%2FdkN7XIa3szA65xzhSaQ%3D%3D" H 9100 3150 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 7650 2650 50  0001 C CNN "Description"
	1    7650 2650
	1    0    0    1   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 647F56FA
P 3800 7050
AR Path="/647E1209/647F56FA" Ref="C?"  Part="1" 
AR Path="/647F56FA" Ref="C3"  Part="1" 
F 0 "C3" H 3915 7096 50  0000 L CNN
F 1 "10uF" H 3915 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3800 7050 50  0001 C CNN
F 3 "~" H 3800 7050 50  0001 C CNN
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
F 14 "Filter Capacitor" H 3800 7050 50  0001 C CNN "Description"
	1    3800 7050
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LM317T U?
U 1 1 647F570A
P 2850 6600
AR Path="/647E1209/647F570A" Ref="U?"  Part="1" 
AR Path="/647F570A" Ref="U3"  Part="1" 
F 0 "U3" H 2850 6887 60  0000 C CNN
F 1 "LM317T" H 2850 6781 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 3050 6800 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 3050 6900 60  0001 L CNN
F 4 "497-1575-5-ND" H 3050 7000 60  0001 L CNN "Digi-Key_PN"
F 5 "LM317T" H 3050 7100 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3050 7200 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 3050 7300 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 3050 7400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LM317T/497-1575-5-ND/591677" H 3050 7500 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LIN POS ADJ 1.5A TO220AB" H 3050 7600 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 3050 7700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3050 7800 60  0001 L CNN "Status"
F 13 "511-LM317T" H 2950 6650 50  0001 C CNN "MO_PN"
F 14 "https://www.mouser.com/ProductDetail/STMicroelectronics/LM317T?qs=swDD%252BF%252Bps7c8uLyY%252B3mJJw%3D%3D" H 2950 6650 50  0001 C CNN "MO_Detail_Page"
	1    2850 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 647F5711
P 3300 6850
AR Path="/647E1209/647F5711" Ref="R?"  Part="1" 
AR Path="/647F5711" Ref="R9"  Part="1" 
F 0 "R9" H 3232 6804 50  0000 R CNN
F 1 "392 1%" H 3232 6895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3340 6840 50  0001 C CNN
F 3 "~" H 3300 6850 50  0001 C CNN
F 4 "392XBK-ND" H 3400 6900 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-392R/12919" H 3400 6900 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-392R" H 3400 6900 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-392R?qs=oAGoVhmvjhy6pvrooMNCwg%3D%3D" H 3400 6900 50  0001 C CNN "MO_Detail_Page"
	1    3300 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 647F5718
P 3300 7250
AR Path="/647E1209/647F5718" Ref="R?"  Part="1" 
AR Path="/647F5718" Ref="R10"  Part="1" 
F 0 "R10" H 3232 7204 50  0000 R CNN
F 1 "2.74k 1%" H 3232 7295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3340 7240 50  0001 C CNN
F 3 "~" H 3300 7250 50  0001 C CNN
F 4 "13-MFR-25FRF52-2K74TR-ND" H 3400 7300 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FRF52-2K74/14933" H 3400 7300 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FRF52-2K74" H 3400 7300 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FRF52-2K74?qs=oAGoVhmvjhwhcYVvwkvvFg%3D%3D" H 3400 7300 50  0001 C CNN "MO_Detail_Page"
	1    3300 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 6600 3300 6600
Wire Wire Line
	3300 6700 3300 6600
Connection ~ 3300 6600
Wire Wire Line
	3300 6600 3800 6600
Wire Wire Line
	3300 7000 3300 7050
Wire Wire Line
	3300 7050 2850 7050
Wire Wire Line
	2850 7050 2850 6900
Connection ~ 3300 7050
Wire Wire Line
	3300 7050 3300 7100
$Comp
L power:GND #PWR?
U 1 1 647F5728
P 3300 7450
AR Path="/647E1209/647F5728" Ref="#PWR?"  Part="1" 
AR Path="/647F5728" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 3300 7200 50  0001 C CNN
F 1 "GND" H 3305 7277 50  0000 C CNN
F 2 "" H 3300 7450 50  0001 C CNN
F 3 "" H 3300 7450 50  0001 C CNN
	1    3300 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7450 3300 7400
Wire Wire Line
	3800 6900 3800 6600
$Comp
L Device:C C?
U 1 1 647F5730
P 4250 7050
AR Path="/647E1209/647F5730" Ref="C?"  Part="1" 
AR Path="/647F5730" Ref="C1"  Part="1" 
F 0 "C1" H 4365 7096 50  0000 L CNN
F 1 "0.1uF" H 4365 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4288 6900 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
F 4 "Decoupling Capacitor" H 1950 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 1950 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 1950 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 1950 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 1950 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 1950 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 1950 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 1950 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 1950 7000 50  0001 C CNN "MO_Detail_Page"
	1    4250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6900 4250 6600
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO?
U 1 1 647F577B
P 10900 6850
AR Path="/647E1209/647F577B" Ref="#LOGO?"  Part="1" 
AR Path="/647F577B" Ref="#LOGO1"  Part="1" 
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2850 7450 2850
Wire Wire Line
	7450 2450 7100 2450
Wire Wire Line
	7100 2450 7100 1650
Wire Wire Line
	7450 2650 7100 2650
Wire Wire Line
	7100 2650 7100 3450
Wire Wire Line
	7450 2750 7200 2750
Wire Wire Line
	7200 2750 7200 4350
$Comp
L power:GND #PWR?
U 1 1 647F5798
P 4250 7450
AR Path="/647E1209/647F5798" Ref="#PWR?"  Part="1" 
AR Path="/647F5798" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 4250 7200 50  0001 C CNN
F 1 "GND" H 4255 7277 50  0000 C CNN
F 2 "" H 4250 7450 50  0001 C CNN
F 3 "" H 4250 7450 50  0001 C CNN
	1    4250 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7450 4250 7400
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57D8
P 6250 6950
AR Path="/647E1209/647F57D8" Ref="MH?"  Part="1" 
AR Path="/647F57D8" Ref="MH2"  Part="1" 
F 0 "MH2" H 6350 6996 50  0000 L CNN
F 1 "MountingHole" H 6350 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6950 50  0001 C CNN
F 3 "~" H 6250 6950 50  0001 C CNN
	1    6250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57DF
P 6250 7250
AR Path="/647E1209/647F57DF" Ref="MH?"  Part="1" 
AR Path="/647F57DF" Ref="MH3"  Part="1" 
F 0 "MH3" H 6350 7296 50  0000 L CNN
F 1 "MountingHole" H 6350 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7250 50  0001 C CNN
F 3 "~" H 6250 7250 50  0001 C CNN
	1    6250 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57E6
P 6250 7550
AR Path="/647E1209/647F57E6" Ref="MH?"  Part="1" 
AR Path="/647F57E6" Ref="MH4"  Part="1" 
F 0 "MH4" H 6350 7596 50  0000 L CNN
F 1 "MountingHole" H 6350 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 7550 50  0001 C CNN
F 3 "~" H 6250 7550 50  0001 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 647F57ED
P 6250 6650
AR Path="/647E1209/647F57ED" Ref="MH?"  Part="1" 
AR Path="/647F57ED" Ref="MH1"  Part="1" 
F 0 "MH1" H 6350 6696 50  0000 L CNN
F 1 "MountingHole" H 6350 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6250 6650 50  0001 C CNN
F 3 "~" H 6250 6650 50  0001 C CNN
	1    6250 6650
	1    0    0    -1  
$EndComp
Entry Wire Line
	4300 1650 4400 1550
Entry Wire Line
	4300 2550 4400 2450
Entry Wire Line
	4300 3250 4400 3350
Entry Wire Line
	4300 4150 4400 4250
Text Label 4400 4250 0    50   ~ 0
AO0
Text Label 4400 3350 0    50   ~ 0
AO1
Text Label 4400 2450 0    50   ~ 0
AO2
Text Label 4400 1550 0    50   ~ 0
AO3
Wire Wire Line
	6300 3450 6900 3450
Wire Wire Line
	6300 1650 6900 1650
$Comp
L Device:R_US R?
U 1 1 647F58BE
P 5200 2950
AR Path="/64798DC1/647F58BE" Ref="R?"  Part="1" 
AR Path="/647F58BE" Ref="R3"  Part="1" 
AR Path="/647E1209/647F58BE" Ref="R?"  Part="1" 
F 0 "R3" V 4995 2950 50  0000 C CNN
F 1 "22.6k 1%" V 5086 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5240 2940 50  0001 C CNN
F 3 "~" H 5200 2950 50  0001 C CNN
F 4 "22.6KXBK-ND" V 5200 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-22K6/13286" V 5200 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-22K6" V 5200 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-22K6?qs=oAGoVhmvjhyqOVvYs9FeFg%3D%3D" V 5200 2050 50  0001 C CNN "MO_Detail_Page"
	1    5200 2950
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 647F58C5
P 6500 2950
AR Path="/64798DC1/647F58C5" Ref="R?"  Part="1" 
AR Path="/647F58C5" Ref="R4"  Part="1" 
AR Path="/647E1209/647F58C5" Ref="R?"  Part="1" 
F 0 "R4" V 6295 2950 50  0000 C CNN
F 1 "68.1k 1%" V 6386 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6540 2940 50  0001 C CNN
F 3 "~" H 6500 2950 50  0001 C CNN
F 4 "68.1KXBK-ND" V 6500 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-68K1/13440" V 6500 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-68K1" V 6500 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-68K1?qs=oAGoVhmvjhxWiKYWiCojiA%3D%3D" V 6500 2050 50  0001 C CNN "MO_Detail_Page"
	1    6500 2950
	0    -1   1    0   
$EndComp
Wire Wire Line
	5350 2950 5600 2950
Wire Wire Line
	5700 2650 5600 2650
Wire Wire Line
	5600 2650 5600 2950
Connection ~ 5600 2950
Wire Wire Line
	5600 2950 6350 2950
Wire Wire Line
	6300 2550 6900 2550
Wire Wire Line
	6900 2550 6900 2950
Wire Wire Line
	6900 2950 6650 2950
$Comp
L Device:R_US R?
U 1 1 647F58D4
P 5200 2050
AR Path="/64798DC1/647F58D4" Ref="R?"  Part="1" 
AR Path="/647F58D4" Ref="R1"  Part="1" 
AR Path="/647E1209/647F58D4" Ref="R?"  Part="1" 
F 0 "R1" V 4995 2050 50  0000 C CNN
F 1 "22.6k 1%" V 5086 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5240 2040 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
F 4 "22.6KXBK-ND" V 5200 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-22K6/13286" V 5200 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-22K6" V 5200 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-22K6?qs=oAGoVhmvjhyqOVvYs9FeFg%3D%3D" V 5200 2050 50  0001 C CNN "MO_Detail_Page"
	1    5200 2050
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 647F58DB
P 6500 2050
AR Path="/64798DC1/647F58DB" Ref="R?"  Part="1" 
AR Path="/647F58DB" Ref="R2"  Part="1" 
AR Path="/647E1209/647F58DB" Ref="R?"  Part="1" 
F 0 "R2" V 6295 2050 50  0000 C CNN
F 1 "68.1k 1%" V 6386 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6540 2040 50  0001 C CNN
F 3 "~" H 6500 2050 50  0001 C CNN
F 4 "68.1KXBK-ND" V 6500 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-68K1/13440" V 6500 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-68K1" V 6500 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-68K1?qs=oAGoVhmvjhxWiKYWiCojiA%3D%3D" V 6500 2050 50  0001 C CNN "MO_Detail_Page"
	1    6500 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2050 5600 2050
Wire Wire Line
	5700 1750 5600 1750
Wire Wire Line
	5600 1750 5600 2050
Connection ~ 5600 2050
Wire Wire Line
	5600 2050 6350 2050
$Comp
L Device:R_US R?
U 1 1 647F58E7
P 5200 4750
AR Path="/64798DC1/647F58E7" Ref="R?"  Part="1" 
AR Path="/647F58E7" Ref="R7"  Part="1" 
AR Path="/647E1209/647F58E7" Ref="R?"  Part="1" 
F 0 "R7" V 4995 4750 50  0000 C CNN
F 1 "22.6k 1%" V 5086 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5240 4740 50  0001 C CNN
F 3 "~" H 5200 4750 50  0001 C CNN
F 4 "22.6KXBK-ND" V 5200 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-22K6/13286" V 5200 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-22K6" V 5200 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-22K6?qs=oAGoVhmvjhyqOVvYs9FeFg%3D%3D" V 5200 2050 50  0001 C CNN "MO_Detail_Page"
	1    5200 4750
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 647F58EE
P 6500 4750
AR Path="/64798DC1/647F58EE" Ref="R?"  Part="1" 
AR Path="/647F58EE" Ref="R8"  Part="1" 
AR Path="/647E1209/647F58EE" Ref="R?"  Part="1" 
F 0 "R8" V 6295 4750 50  0000 C CNN
F 1 "68.1k 1%" V 6386 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6540 4740 50  0001 C CNN
F 3 "~" H 6500 4750 50  0001 C CNN
F 4 "68.1KXBK-ND" V 6500 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-68K1/13440" V 6500 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-68K1" V 6500 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-68K1?qs=oAGoVhmvjhxWiKYWiCojiA%3D%3D" V 6500 2050 50  0001 C CNN "MO_Detail_Page"
	1    6500 4750
	0    -1   1    0   
$EndComp
Wire Wire Line
	5350 4750 5600 4750
Wire Wire Line
	5700 4450 5600 4450
Wire Wire Line
	5600 4450 5600 4750
Connection ~ 5600 4750
Wire Wire Line
	5600 4750 6350 4750
Wire Wire Line
	6300 4350 6900 4350
Wire Wire Line
	6900 4350 6900 4750
Wire Wire Line
	6900 4750 6650 4750
$Comp
L Device:R_US R?
U 1 1 647F58FD
P 5200 3850
AR Path="/64798DC1/647F58FD" Ref="R?"  Part="1" 
AR Path="/647F58FD" Ref="R5"  Part="1" 
AR Path="/647E1209/647F58FD" Ref="R?"  Part="1" 
F 0 "R5" V 4995 3850 50  0000 C CNN
F 1 "22.6k 1%" V 5086 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5240 3840 50  0001 C CNN
F 3 "~" H 5200 3850 50  0001 C CNN
F 4 "22.6KXBK-ND" V 5200 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-22K6/13286" V 5200 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-22K6" V 5200 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-22K6?qs=oAGoVhmvjhyqOVvYs9FeFg%3D%3D" V 5200 2050 50  0001 C CNN "MO_Detail_Page"
	1    5200 3850
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 647F5904
P 6500 3850
AR Path="/64798DC1/647F5904" Ref="R?"  Part="1" 
AR Path="/647F5904" Ref="R6"  Part="1" 
AR Path="/647E1209/647F5904" Ref="R?"  Part="1" 
F 0 "R6" V 6295 3850 50  0000 C CNN
F 1 "68.1k 1%" V 6386 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6540 3840 50  0001 C CNN
F 3 "~" H 6500 3850 50  0001 C CNN
F 4 "68.1KXBK-ND" V 6500 2050 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/yageo/MFR-25FBF52-68K1/13440" V 6500 2050 50  0001 C CNN "DK_Detail_Page"
F 6 "603-MFR-25FBF52-68K1" V 6500 2050 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/YAGEO/MFR-25FBF52-68K1?qs=oAGoVhmvjhxWiKYWiCojiA%3D%3D" V 6500 2050 50  0001 C CNN "MO_Detail_Page"
	1    6500 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	5350 3850 5600 3850
Wire Wire Line
	5700 3550 5600 3550
Wire Wire Line
	5600 3550 5600 3850
Connection ~ 5600 3850
Wire Wire Line
	5600 3850 6350 3850
Wire Wire Line
	5050 2050 4800 2050
Wire Wire Line
	4800 2050 4800 2950
Wire Wire Line
	5050 4750 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	4800 4750 4800 4850
Wire Wire Line
	5050 2950 4800 2950
Connection ~ 4800 2950
Wire Wire Line
	4800 2950 4800 3850
Wire Wire Line
	5050 3850 4800 3850
Connection ~ 4800 3850
Wire Wire Line
	4800 3850 4800 4750
Wire Wire Line
	6900 3450 6900 3850
Wire Wire Line
	6900 3850 6650 3850
Wire Wire Line
	6650 2050 6900 2050
Wire Wire Line
	6900 2050 6900 1650
$Comp
L power:GND #PWR?
U 1 1 647F5923
P 4800 4850
AR Path="/64798DC1/647F5923" Ref="#PWR?"  Part="1" 
AR Path="/647F5923" Ref="#PWR0115"  Part="1" 
AR Path="/647E1209/647F5923" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 4800 4600 50  0001 C CNN
F 1 "GND" H 4805 4677 50  0000 C CNN
F 2 "" H 4800 4850 50  0001 C CNN
F 3 "" H 4800 4850 50  0001 C CNN
	1    4800 4850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D?
U 1 1 647F593E
P 2050 6600
AR Path="/64798DC1/647F593E" Ref="D?"  Part="1" 
AR Path="/647F593E" Ref="D1"  Part="1" 
AR Path="/647E1209/647F593E" Ref="D?"  Part="1" 
F 0 "D1" H 2050 6816 50  0000 C CNN
F 1 "1N5819" H 2050 6725 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2050 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2050 6600 50  0001 C CNN
F 4 "COM-10926" H 2150 6650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 2150 6650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 2150 6650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 2150 6650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 2150 6650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 2150 6650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 2150 6650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 2150 6650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 2050 6600 50  0001 C CNN "Description"
	1    2050 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 6600 2400 6600
$Comp
L power:PWR_FLAG #FLG?
U 1 1 647F5946
P 2400 6550
AR Path="/64798DC1/647F5946" Ref="#FLG?"  Part="1" 
AR Path="/647F5946" Ref="#FLG0103"  Part="1" 
AR Path="/647E1209/647F5946" Ref="#FLG?"  Part="1" 
F 0 "#FLG0103" H 2400 6625 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 6723 50  0000 C CNN
F 2 "" H 2400 6550 50  0001 C CNN
F 3 "~" H 2400 6550 50  0001 C CNN
	1    2400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6550 2400 6600
Connection ~ 2400 6600
Wire Wire Line
	2400 6600 2550 6600
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 647F594F
P 1350 6700
AR Path="/647946E8/647F594F" Ref="J?"  Part="1" 
AR Path="/647F594F" Ref="J3"  Part="1" 
AR Path="/64798DC1/647F594F" Ref="J?"  Part="1" 
AR Path="/647E1209/647F594F" Ref="J?"  Part="1" 
F 0 "J3" H 1250 6400 50  0000 C CNN
F 1 "Power" H 1250 6500 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 1350 6700 50  0001 C CNN
F 3 "~" H 1350 6700 50  0001 C CNN
F 4 "277-1106-ND" H 1450 6750 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 1450 6750 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 1450 6750 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 1450 6750 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 1350 6700 50  0001 C CNN "Description"
	1    1350 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 7300 1850 6700
Wire Wire Line
	1550 6700 1850 6700
Connection ~ 1850 7300
$Comp
L power:GND #PWR?
U 1 1 647F5969
P 1850 7450
AR Path="/6BB77A68/647F5969" Ref="#PWR?"  Part="1" 
AR Path="/64132440/6413313E/647F5969" Ref="#PWR?"  Part="1" 
AR Path="/647946E8/647F5969" Ref="#PWR?"  Part="1" 
AR Path="/647F5969" Ref="#PWR0116"  Part="1" 
AR Path="/64798DC1/647F5969" Ref="#PWR?"  Part="1" 
AR Path="/647E1209/647F5969" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 1850 7200 50  0001 C CNN
F 1 "GND" H 1855 7277 50  0000 C CNN
F 2 "" H 1850 7450 50  0001 C CNN
F 3 "" H 1850 7450 50  0001 C CNN
	1    1850 7450
	1    0    0    -1  
$EndComp
Connection ~ 6900 1650
Connection ~ 6900 2550
Connection ~ 6900 3450
Connection ~ 6900 4350
Wire Wire Line
	3800 7200 3800 7400
Wire Wire Line
	3800 6600 4250 6600
Connection ~ 3800 6600
Connection ~ 4250 6600
Wire Wire Line
	3800 7400 4250 7400
Connection ~ 4250 7400
Wire Wire Line
	4250 7400 4250 7200
Wire Wire Line
	6900 1650 7100 1650
Wire Wire Line
	6900 2550 7450 2550
Wire Wire Line
	6900 3450 7100 3450
Wire Wire Line
	6900 4350 7200 4350
Wire Wire Line
	4250 6600 4700 6600
Wire Wire Line
	4250 7400 4700 7400
Wire Notes Line
	8800 1800 10050 1800
Wire Notes Line
	10050 5150 8800 5150
Text Notes 5000 5050 0    50   ~ 0
R1/R3/R5/R7 and R2/R4/R6/R8 control the output gain\nGain = Vo / 2.5v = 1 + (R2/R4/R6/R8) / (R1/R3/R5/R7)
Text Notes 1250 7000 2    50   ~ 0
VIn Input\n(12v-15v)
Wire Wire Line
	4400 4250 5700 4250
Wire Wire Line
	4400 2450 5700 2450
Wire Wire Line
	4400 3350 5700 3350
Wire Wire Line
	4400 1550 5700 1550
Text Notes 8900 5150 0    50   ~ 0
The output can be scaled\nfrom 1.25v to 40v. The\nfollowing are the values\nfor standard voltages:\n\n5V:\nGain=2\nR1/R3/R5/R7=22.6k 1%\nR2/R4/R6/R8=22.6k 1%\nR9=392 1%\nR10=11.8k 1%\nVIn=8v-24v\n\n\n10V:\nGain=4\nR1/R3/R5/R7=22.6k 1%\nR2/R4/R6/R8=68.1k 1%\nR9=392 1%\nR10=27.4k 1%\nVIn=12v-24v\n\n12V:\nGain=4.8\nR1/R3/R5/R7=22.6k 1%\nR2/R4/R6/R8=84.5k 1%\nR9=392 1%\nR10=34.0k 1%\nVIn=15v-24v\n\n15V:\nGain=6\nR1/R3/R5/R7=22.6k 1%\nR2/R4/R6/R8=113k 1%\nR9=392 1%\nR10=43.2k 1%\nVIn=20v-24v\n\n24V:\nGain=9.6\nR1/R3/R5/R7=22.6k 1%\nR2/R4/R6/R8=196k 1%\nR9=392 1%\nR10=71.5k 1%\nVIn=28v-30v\n\n
Text Notes 7800 2700 0    50   ~ 0
Analog Output\nVo = 0-10v
Wire Notes Line
	8800 1400 10050 1400
Wire Notes Line
	10050 1400 10050 5150
Wire Notes Line
	8800 1400 8800 5150
$Comp
L Device:CP1 C?
U 1 1 64B90521
P 2400 7050
AR Path="/647E1209/64B90521" Ref="C?"  Part="1" 
AR Path="/64B90521" Ref="C4"  Part="1" 
F 0 "C4" H 2515 7096 50  0000 L CNN
F 1 "10uF" H 2515 7005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2400 7050 50  0001 C CNN
F 3 "~" H 2400 7050 50  0001 C CNN
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
F 14 "Filter Capacitor" H 2400 7050 50  0001 C CNN "Description"
	1    2400 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6600 2400 6900
Wire Wire Line
	2400 7200 2400 7300
Connection ~ 2400 7300
Text Notes 4650 6500 2    50   ~ 0
U4, R9, R10 control the output voltage\nVo = 1.25 * (1 + R10 / R9)
$Comp
L power:GND #PWR?
U 1 1 6493AF5E
P 3600 3450
AR Path="/647E1209/6493AF5E" Ref="#PWR?"  Part="1" 
AR Path="/6493AF5E" Ref="#PWR0101"  Part="1" 
AR Path="/6492C404/6493AF5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 3600 3200 50  0001 C CNN
F 1 "GND" H 3605 3277 50  0000 C CNN
F 2 "" H 3600 3450 50  0001 C CNN
F 3 "" H 3600 3450 50  0001 C CNN
	1    3600 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 3450 3600 3350
Wire Wire Line
	3600 3350 3500 3350
Wire Wire Line
	3600 3350 3600 3250
Wire Wire Line
	3600 3250 3500 3250
Connection ~ 3600 3350
Wire Wire Line
	4200 2950 3500 2950
Wire Wire Line
	4200 2850 3500 2850
Wire Wire Line
	4200 3050 3500 3050
Wire Wire Line
	3500 3150 4200 3150
Text Label 4200 2850 2    50   ~ 0
AO3
Text Label 4200 2950 2    50   ~ 0
AO2
Text Label 4200 3050 2    50   ~ 0
AO1
Text Label 4200 3150 2    50   ~ 0
AO0
Entry Wire Line
	4200 2850 4300 2750
Entry Wire Line
	4200 2950 4300 2850
Entry Wire Line
	4200 3050 4300 2950
Entry Wire Line
	4200 3150 4300 3050
NoConn ~ 3500 2750
NoConn ~ 3500 2650
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 6531B9D7
P 3300 2950
F 0 "J1" H 3450 3000 50  0000 C CNN
F 1 "Analog Extension" H 3700 2900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3300 2950 50  0001 C CNN
F 3 "~" H 3300 2950 50  0001 C CNN
F 4 "PRT-09279" H 3950 2100 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/9279" H 3950 2100 50  0001 C CNN "SP_Detail_Page"
F 6 "992-8FX1L-254MM" H 3950 2100 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Gravitech/8Fx1L-254mm?qs=fkzBJ5HM%252BdAyuablm941Ag%3D%3D" H 3950 2100 50  0001 C CNN "MO_Detail_Page"
F 8 "Arduino Stackable Header - 8 Pin" H 3950 2100 50  0001 C CNN "Description"
	1    3300 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 6600 5100 6700
Wire Wire Line
	5100 7400 5100 7300
Wire Wire Line
	4700 6600 5100 6600
Wire Wire Line
	4700 7400 5100 7400
Connection ~ 4700 6600
Connection ~ 4700 7400
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U1
U 1 1 65330243
P 6000 1650
F 0 "U1" H 6000 2017 50  0000 C CNN
F 1 "TLV2772" H 6000 1926 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6000 1650 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 6000 1650 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   0   50  0001 C CNN "Description"
	1    6000 1650
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U2
U 1 1 653302B5
P 6000 3450
F 0 "U2" H 6000 3817 50  0000 C CNN
F 1 "TLV2772" H 6000 3726 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6000 3450 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 6000 3450 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   0   50  0001 C CNN "Description"
	1    6000 3450
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U1
U 2 1 6533033E
P 6000 2550
F 0 "U1" H 6000 2917 50  0000 C CNN
F 1 "TLV2772" H 6000 2826 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6000 2550 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 6000 2550 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   0   50  0001 C CNN "Description"
	2    6000 2550
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U2
U 2 1 653303A0
P 6000 4350
F 0 "U2" H 6000 4717 50  0000 C CNN
F 1 "TLV2772" H 6000 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6000 4350 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 6000 4350 50  0001 C CNN
F 4 "en/products/detail/texas-instruments/TLV2772CP/374329" H 0   0   50  0001 C CNN "DK_Detail_Page"
F 5 "296-7592-5-ND" H 0   0   50  0001 C CNN "Digi-Key_PN"
F 6 "https://www.mouser.com/ProductDetail/Texas-Instruments/TLV2772CP?qs=xJkDX%2FqrskNfjj3oeOxKDg%3D%3D" H 0   0   50  0001 C CNN "MO_Detail_Page"
F 7 "TLV2772CP" H 0   0   50  0001 C CNN "MO_PN"
F 8 "Rail-to-Rail Operational Amplifier" H 0   0   50  0001 C CNN "Description"
	2    6000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6600 5550 6700
Wire Wire Line
	5550 7400 5550 7300
Wire Wire Line
	5100 6600 5550 6600
Wire Wire Line
	5100 7400 5550 7400
Connection ~ 5100 6600
Connection ~ 5100 7400
$Comp
L Device:C C?
U 1 1 65344754
P 4700 7050
AR Path="/647E1209/65344754" Ref="C?"  Part="1" 
AR Path="/65344754" Ref="C2"  Part="1" 
F 0 "C2" H 4815 7096 50  0000 L CNN
F 1 "0.1uF" H 4815 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4738 6900 50  0001 C CNN
F 3 "~" H 4700 7050 50  0001 C CNN
F 4 "Decoupling Capacitor" H 1950 7000 50  0001 C CNN "Description"
F 5 "https://www.sparkfun.com/products/8375" H 1950 7000 50  0001 C CNN "SP_Detail_Page"
F 6 "COM-08375" H 1950 7000 50  0001 C CNN "SP_PN"
F 7 "753" H 1950 7000 50  0001 C CNN "AF_PN"
F 8 "https://www.adafruit.com/product/753" H 1950 7000 50  0001 C CNN "AF_Detail_Page"
F 9 "https://www.newark.com/kemet/c315c104m5u5ta/capacitor-mlcc-z5u-100nf-50v-radial/dp/39K6432" H 1950 7000 50  0001 C CNN "NW_Detail_Page"
F 10 "13K6284" H 1950 7000 50  0001 C CNN "NW_PN"
F 11 "80-C320C104K5R7301" H 1950 7000 50  0001 C CNN "MO_PN"
F 12 "https://www.mouser.com/ProductDetail/KEMET/C320C104K5R5TA7301/?qs=cWONFOU2MXytiO%2Fz22pl%252Bg%3D%3D" H 1950 7000 50  0001 C CNN "MO_Detail_Page"
	1    4700 7050
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U1
U 3 1 65344877
P 5200 7000
F 0 "U1" H 5158 7046 50  0000 L CNN
F 1 "TLV2772" H 5158 6955 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5200 7000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 5200 7000 50  0001 C CNN
	3    5200 7000
	1    0    0    -1  
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:TLV2772CP U2
U 3 1 653448D9
P 5650 7000
F 0 "U2" H 5608 7046 50  0000 L CNN
F 1 "TLV2772" H 5608 6955 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5650 7000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/slos209g/slos209g.pdf" H 5650 7000 50  0001 C CNN
	3    5650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7200 4700 7400
Wire Wire Line
	4700 6600 4700 6900
Wire Bus Line
	4300 1650 4300 4150
Wire Wire Line
	1550 6600 1900 6600
Wire Wire Line
	1850 7300 1850 7450
$EndSCHEMATC
