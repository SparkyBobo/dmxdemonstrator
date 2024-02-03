EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMX Demonstrator - Constant Current Driver (DMX-DCC)"
Date "2024-02-02"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/"
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
$Comp
L Diode:1N5819 D?
U 1 1 659C302A
P 6300 1050
AR Path="/64798DC1/659C302A" Ref="D?"  Part="1" 
AR Path="/659C302A" Ref="D1"  Part="1" 
AR Path="/647E1209/659C302A" Ref="D?"  Part="1" 
AR Path="/65468F85/659C302A" Ref="D?"  Part="1" 
F 0 "D1" H 6300 1266 50  0000 C CNN
F 1 "SDM2100" H 6300 1175 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 6300 875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 6300 1050 50  0001 C CNN
F 4 "COM-10926" H 6300 1050 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 6300 1050 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 6300 1050 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 6300 1050 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 6300 1050 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 6300 1050 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 6300 1050 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 6300 1050 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 6300 1050 50  0001 C CNN "Description"
	1    6300 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 659C307A
P 7450 2050
F 0 "L1" V 7640 2050 50  0000 C CNN
F 1 "33uH" V 7549 2050 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 7450 2050 50  0001 C CNN
F 3 "~" H 7450 2050 50  0001 C CNN
	1    7450 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 659C3114
P 6600 1350
F 0 "R1" V 6395 1350 50  0000 C CNN
F 1 "0.1" V 6486 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6640 1340 50  0001 C CNN
F 3 "~" H 6600 1350 50  0001 C CNN
	1    6600 1350
	0    1    1    0   
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:AL8861 U1
U 1 1 659C45BE
P 6450 1900
F 0 "U1" H 6450 2304 45  0000 C CNN
F 1 "AL8861" H 6450 2220 45  0000 C CNN
F 2 "footprints:TSOT25" H 6450 2400 20  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fna556" H 6550 2500 60  0001 C CNN
	1    6450 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 659CADC0
P 6450 2550
F 0 "#PWR0103" H 6450 2300 50  0001 C CNN
F 1 "GND" H 6455 2377 50  0000 C CNN
F 2 "" H 6450 2550 50  0001 C CNN
F 3 "" H 6450 2550 50  0001 C CNN
	1    6450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1750 5800 1750
Wire Wire Line
	5800 1050 6150 1050
Wire Wire Line
	6450 1350 5800 1350
Connection ~ 5800 1350
Wire Wire Line
	5800 1350 5800 1750
Wire Wire Line
	7000 1750 7050 1750
Wire Wire Line
	7300 2050 7150 2050
Wire Wire Line
	7050 1750 7050 1350
Wire Wire Line
	7050 1350 6750 1350
Wire Wire Line
	6450 1050 7150 1050
Wire Wire Line
	7150 1050 7150 2050
Connection ~ 7150 2050
Wire Wire Line
	7150 2050 7000 2050
$Comp
L Diode:1N5819 D?
U 1 1 659EAC0A
P 6300 3000
AR Path="/64798DC1/659EAC0A" Ref="D?"  Part="1" 
AR Path="/659EAC0A" Ref="D2"  Part="1" 
AR Path="/647E1209/659EAC0A" Ref="D?"  Part="1" 
AR Path="/65468F85/659EAC0A" Ref="D?"  Part="1" 
F 0 "D2" H 6300 3216 50  0000 C CNN
F 1 "SDM2100" H 6300 3125 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 6300 2825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 6300 3000 50  0001 C CNN
F 4 "COM-10926" H 6300 3000 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 6300 3000 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 6300 3000 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 6300 3000 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 6300 3000 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 6300 3000 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 6300 3000 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 6300 3000 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 6300 3000 50  0001 C CNN "Description"
	1    6300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 659EAC10
P 7450 4000
F 0 "L2" V 7640 4000 50  0000 C CNN
F 1 "33uH" V 7549 4000 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 7450 4000 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 659EAC16
P 6600 3300
F 0 "R2" V 6395 3300 50  0000 C CNN
F 1 "0.1" V 6486 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6640 3290 50  0001 C CNN
F 3 "~" H 6600 3300 50  0001 C CNN
	1    6600 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 659EAC37
P 6450 4500
F 0 "#PWR0105" H 6450 4250 50  0001 C CNN
F 1 "GND" H 6455 4327 50  0000 C CNN
F 2 "" H 6450 4500 50  0001 C CNN
F 3 "" H 6450 4500 50  0001 C CNN
	1    6450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3700 5800 3700
Wire Wire Line
	5800 3000 6150 3000
Wire Wire Line
	6450 3300 5800 3300
Wire Wire Line
	5800 3000 5800 3300
Connection ~ 5800 3300
Wire Wire Line
	5800 3300 5800 3700
Wire Wire Line
	7000 3700 7050 3700
Wire Wire Line
	7300 4000 7150 4000
Wire Wire Line
	7050 3700 7050 3300
Wire Wire Line
	7050 3300 6750 3300
Wire Wire Line
	6450 3000 7150 3000
Wire Wire Line
	7150 3000 7150 4000
Connection ~ 7150 4000
Wire Wire Line
	7150 4000 7000 4000
Wire Wire Line
	7600 2050 7700 2050
$Comp
L power:+VDC #PWR0107
U 1 1 65ABEF06
P 5800 1000
F 0 "#PWR0107" H 5800 900 50  0001 C CNN
F 1 "+VDC" H 5800 1275 50  0000 C CNN
F 2 "" H 5800 1000 50  0001 C CNN
F 3 "" H 5800 1000 50  0001 C CNN
	1    5800 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR0108
U 1 1 65ABF048
P 5800 2950
F 0 "#PWR0108" H 5800 2850 50  0001 C CNN
F 1 "+VDC" H 5800 3225 50  0000 C CNN
F 2 "" H 5800 2950 50  0001 C CNN
F 3 "" H 5800 2950 50  0001 C CNN
	1    5800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 65AC4666
P 5300 7000
AR Path="/647E1209/65AC4666" Ref="C?"  Part="1" 
AR Path="/65AC4666" Ref="C1"  Part="1" 
AR Path="/65468F85/65AC4666" Ref="C?"  Part="1" 
F 0 "C1" H 5415 7046 50  0000 L CNN
F 1 "10uF" H 5415 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5300 7000 50  0001 C CNN
F 3 "~" H 5300 7000 50  0001 C CNN
F 4 "COM-00523" H 6050 6950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 6050 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 6050 6950 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 6050 6950 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 6050 6950 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 6050 6950 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 6050 6950 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 6050 6950 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 6050 6950 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 6050 6950 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 5300 7000 50  0001 C CNN "Description"
	1    5300 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6850 5750 6600
$Comp
L Device:CP1 C?
U 1 1 6546F2B6
P 5750 7000
AR Path="/647E1209/6546F2B6" Ref="C?"  Part="1" 
AR Path="/6546F2B6" Ref="C2"  Part="1" 
AR Path="/65468F85/6546F2B6" Ref="C?"  Part="1" 
F 0 "C2" H 5865 7046 50  0000 L CNN
F 1 "10uF" H 5865 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5750 7000 50  0001 C CNN
F 3 "~" H 5750 7000 50  0001 C CNN
F 4 "COM-00523" H 6500 6950 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 6500 6950 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 6500 6950 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 6500 6950 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 6500 6950 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 6500 6950 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 6500 6950 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 6500 6950 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 6500 6950 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 6500 6950 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 5750 7000 50  0001 C CNN "Description"
	1    5750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6850 5300 6600
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 659E3590
P 8050 2150
AR Path="/659D01BF/659E3590" Ref="J?"  Part="1" 
AR Path="/659E3590" Ref="J5"  Part="1" 
F 0 "J5" H 8150 2050 50  0000 L CNN
F 1 "C Out" H 8150 2150 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 8050 2150 50  0001 C CNN
F 3 "~" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 659E3597
P 4350 4850
AR Path="/659D01BF/659E3597" Ref="J?"  Part="1" 
AR Path="/659E3597" Ref="J1"  Part="1" 
F 0 "J1" H 4430 4892 50  0000 L CNN
F 1 "Input" H 4430 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 4350 4850 50  0001 C CNN
F 3 "~" H 4350 4850 50  0001 C CNN
	1    4350 4850
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 659E35A4
P 5300 7450
AR Path="/659D01BF/659E35A4" Ref="#FLG?"  Part="1" 
AR Path="/659E35A4" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 5300 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 7623 50  0000 C CNN
F 2 "" H 5300 7450 50  0001 C CNN
F 3 "~" H 5300 7450 50  0001 C CNN
	1    5300 7450
	-1   0    0    1   
$EndComp
Text Label 5050 4950 0    50   ~ 0
D
Text Label 5050 4750 0    50   ~ 0
C
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 659E35AC
P 4400 6700
AR Path="/659D01BF/659E35AC" Ref="J?"  Part="1" 
AR Path="/659E35AC" Ref="J4"  Part="1" 
F 0 "J4" H 4300 6400 50  0000 C CNN
F 1 "Power" H 4300 6500 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 4400 6700 50  0001 C CNN
F 3 "~" H 4400 6700 50  0001 C CNN
	1    4400 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 6700 4850 6700
$Comp
L power:GND #PWR?
U 1 1 659E35BB
P 5750 7450
AR Path="/659D01BF/659E35BB" Ref="#PWR?"  Part="1" 
AR Path="/659E35BB" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5750 7200 50  0001 C CNN
F 1 "GND" H 5755 7277 50  0000 C CNN
F 2 "" H 5750 7450 50  0001 C CNN
F 3 "" H 5750 7450 50  0001 C CNN
	1    5750 7450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 659E35C1
P 5300 6550
AR Path="/659D01BF/659E35C1" Ref="#FLG?"  Part="1" 
AR Path="/659E35C1" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 5300 6625 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 6723 50  0000 C CNN
F 2 "" H 5300 6550 50  0001 C CNN
F 3 "~" H 5300 6550 50  0001 C CNN
	1    5300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6550 5300 6600
Connection ~ 5300 6600
Wire Wire Line
	5750 6600 5750 6550
Wire Wire Line
	5300 6600 5750 6600
Wire Wire Line
	4800 5450 4800 4850
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 659E35EC
P 8050 4850
AR Path="/659D01BF/659E35EC" Ref="J?"  Part="1" 
AR Path="/659E35EC" Ref="J2"  Part="1" 
F 0 "J2" H 8130 4892 50  0000 L CNN
F 1 "Output" H 8130 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 8050 4850 50  0001 C CNN
F 3 "~" H 8050 4850 50  0001 C CNN
	1    8050 4850
	1    0    0    -1  
$EndComp
Text Label 6750 4950 2    50   ~ 0
D
Text Label 6750 4750 2    50   ~ 0
C
Wire Wire Line
	7850 4850 6450 4850
Wire Wire Line
	6450 4850 6450 5450
$Comp
L power:GND #PWR?
U 1 1 659E35F8
P 6450 5450
AR Path="/659D01BF/659E35F8" Ref="#PWR?"  Part="1" 
AR Path="/659E35F8" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 6450 5200 50  0001 C CNN
F 1 "GND" H 6455 5277 50  0000 C CNN
F 2 "" H 6450 5450 50  0001 C CNN
F 3 "" H 6450 5450 50  0001 C CNN
	1    6450 5450
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3612
P 6300 6650
AR Path="/659D01BF/659E3612" Ref="MH?"  Part="1" 
AR Path="/659E3612" Ref="MH1"  Part="1" 
F 0 "MH1" H 6400 6696 50  0000 L CNN
F 1 "MountingHole" H 6400 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 6650 50  0001 C CNN
F 3 "~" H 6300 6650 50  0001 C CNN
	1    6300 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3619
P 6300 6950
AR Path="/659D01BF/659E3619" Ref="MH?"  Part="1" 
AR Path="/659E3619" Ref="MH2"  Part="1" 
F 0 "MH2" H 6400 6996 50  0000 L CNN
F 1 "MountingHole" H 6400 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 6950 50  0001 C CNN
F 3 "~" H 6300 6950 50  0001 C CNN
	1    6300 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3620
P 6300 7250
AR Path="/659D01BF/659E3620" Ref="MH?"  Part="1" 
AR Path="/659E3620" Ref="MH3"  Part="1" 
F 0 "MH3" H 6400 7296 50  0000 L CNN
F 1 "MountingHole" H 6400 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7250 50  0001 C CNN
F 3 "~" H 6300 7250 50  0001 C CNN
	1    6300 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH?
U 1 1 659E3627
P 6300 7550
AR Path="/659D01BF/659E3627" Ref="MH?"  Part="1" 
AR Path="/659E3627" Ref="MH4"  Part="1" 
F 0 "MH4" H 6400 7596 50  0000 L CNN
F 1 "MountingHole" H 6400 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7550 50  0001 C CNN
F 3 "~" H 6300 7550 50  0001 C CNN
	1    6300 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR?
U 1 1 659E363E
P 5750 6550
AR Path="/659D01BF/659E363E" Ref="#PWR?"  Part="1" 
AR Path="/659E363E" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 5750 6450 50  0001 C CNN
F 1 "+VDC" H 5750 6825 50  0000 C CNN
F 2 "" H 5750 6550 50  0001 C CNN
F 3 "" H 5750 6550 50  0001 C CNN
	1    5750 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1000 5800 1050
Connection ~ 5800 1050
Wire Wire Line
	5800 1050 5800 1350
Wire Wire Line
	5800 2950 5800 3000
Connection ~ 5800 3000
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
Connection ~ 5750 6600
$Comp
L power:GND #PWR?
U 1 1 65B91D25
P 4850 7450
AR Path="/659D01BF/65B91D25" Ref="#PWR?"  Part="1" 
AR Path="/65B91D25" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 4850 7200 50  0001 C CNN
F 1 "GND" H 4855 7277 50  0000 C CNN
F 2 "" H 4850 7450 50  0001 C CNN
F 3 "" H 4850 7450 50  0001 C CNN
	1    4850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6700 4850 7350
Wire Wire Line
	5300 7150 5300 7350
Wire Wire Line
	5750 7150 5750 7350
Wire Wire Line
	5750 7350 5300 7350
Connection ~ 5750 7350
Wire Wire Line
	5750 7350 5750 7450
Connection ~ 5300 7350
Wire Wire Line
	5300 7350 5300 7450
Wire Wire Line
	5300 7350 4850 7350
Connection ~ 4850 7350
Wire Wire Line
	4850 7350 4850 7450
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 65BD64B0
P 8050 1650
F 0 "J7" H 8129 1642 50  0000 L CNN
F 1 "LED C" H 8129 1551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8050 1650 50  0001 C CNN
F 3 "~" H 8050 1650 50  0001 C CNN
	1    8050 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 65BD65CB
P 4350 1850
F 0 "J9" H 4270 2167 50  0000 C CNN
F 1 "CTRL_C" H 4270 2076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4350 1850 50  0001 C CNN
F 3 "~" H 4350 1850 50  0001 C CNN
	1    4350 1850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 65BD6623
P 4350 3800
F 0 "J10" H 4270 4117 50  0000 C CNN
F 1 "CTRL_D" H 4270 4026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4350 3800 50  0001 C CNN
F 3 "~" H 4350 3800 50  0001 C CNN
	1    4350 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 2050 7800 2050
Wire Wire Line
	7800 2050 7800 1750
Wire Wire Line
	7800 1750 7850 1750
Wire Wire Line
	7850 1650 7700 1650
Wire Wire Line
	7700 1650 7700 2050
Wire Wire Line
	7700 2150 7850 2150
Connection ~ 7050 1750
Connection ~ 7700 2050
Wire Wire Line
	7700 2050 7700 2150
Wire Wire Line
	7050 1750 7800 1750
Connection ~ 7800 1750
Wire Wire Line
	7600 4000 7700 4000
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65BF0792
P 8050 4100
AR Path="/659D01BF/65BF0792" Ref="J?"  Part="1" 
AR Path="/65BF0792" Ref="J6"  Part="1" 
F 0 "J6" H 8150 4000 50  0000 L CNN
F 1 "D Out" H 8150 4100 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MC_1,5_2-G-3.81_1x02_P3.81mm_Horizontal" H 8050 4100 50  0001 C CNN
F 3 "~" H 8050 4100 50  0001 C CNN
	1    8050 4100
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 65BF0798
P 8050 3600
F 0 "J8" H 8129 3592 50  0000 L CNN
F 1 "LED D" H 8129 3501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8050 3600 50  0001 C CNN
F 3 "~" H 8050 3600 50  0001 C CNN
	1    8050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4000 7800 4000
Wire Wire Line
	7800 4000 7800 3700
Wire Wire Line
	7800 3700 7850 3700
Wire Wire Line
	7850 3600 7700 3600
Wire Wire Line
	7700 4100 7850 4100
Connection ~ 7700 4000
Wire Wire Line
	7700 4000 7700 4100
Wire Wire Line
	7700 3600 7700 4000
Wire Wire Line
	7800 3700 7050 3700
Connection ~ 7800 3700
Connection ~ 7050 3700
Wire Wire Line
	5800 1850 5800 1750
Connection ~ 5800 1750
Wire Wire Line
	5800 3800 5800 3700
Connection ~ 5800 3700
Wire Wire Line
	4550 1750 4800 1750
Wire Wire Line
	4800 1750 4800 1950
Wire Wire Line
	4550 1950 4800 1950
Wire Wire Line
	4550 3700 4800 3700
Wire Wire Line
	4550 3900 4800 3900
Wire Wire Line
	4600 6600 5300 6600
$Comp
L power:GND #PWR?
U 1 1 659E359E
P 4800 5450
AR Path="/659D01BF/659E359E" Ref="#PWR?"  Part="1" 
AR Path="/659E359E" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 4800 5200 50  0001 C CNN
F 1 "GND" H 4805 5277 50  0000 C CNN
F 2 "" H 4800 5450 50  0001 C CNN
F 3 "" H 4800 5450 50  0001 C CNN
	1    4800 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 3700 4800 3900
Wire Wire Line
	4550 4850 4800 4850
Wire Wire Line
	4800 4300 4800 3900
Connection ~ 4800 3900
$Comp
L power:GND #PWR0110
U 1 1 65E7BBA7
P 4800 2150
F 0 "#PWR0110" H 4800 1900 50  0001 C CNN
F 1 "GND" H 4805 1977 50  0000 C CNN
F 2 "" H 4800 2150 50  0001 C CNN
F 3 "" H 4800 2150 50  0001 C CNN
	1    4800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2150 4800 1950
Connection ~ 4800 1950
Wire Wire Line
	6450 2350 6450 2550
Wire Wire Line
	6450 4300 6450 4500
Wire Wire Line
	4550 3800 5800 3800
$Comp
L CrazyGiraffe_DMXDemonstrator:AL8861 U2
U 1 1 659EAC1C
P 6450 3850
F 0 "U2" H 6450 4254 45  0000 C CNN
F 1 "AL8861" H 6450 4170 45  0000 C CNN
F 2 "footprints:TSOT25" H 6450 4350 20  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fna556" H 6550 4450 60  0001 C CNN
	1    6450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2550 6450 2550
Connection ~ 6450 2550
Wire Wire Line
	5800 4500 6450 4500
Connection ~ 6450 4500
$Comp
L power:GND #PWR0111
U 1 1 65C09020
P 4800 4300
F 0 "#PWR0111" H 4800 4050 50  0001 C CNN
F 1 "GND" H 4805 4127 50  0000 C CNN
F 2 "" H 4800 4300 50  0001 C CNN
F 3 "" H 4800 4300 50  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2050 5000 2050
$Comp
L Device:R_US R3
U 1 1 660659C8
P 5450 2050
F 0 "R3" V 5550 2050 50  0000 C CNN
F 1 "10k" V 5650 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5490 2040 50  0001 C CNN
F 3 "~" H 5450 2050 50  0001 C CNN
	1    5450 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 6606675E
P 5450 4000
F 0 "R4" V 5550 4000 50  0000 C CNN
F 1 "10k" V 5650 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5490 3990 50  0001 C CNN
F 3 "~" H 5450 4000 50  0001 C CNN
	1    5450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 4000 5200 4000
$Comp
L Device:D_Zener D3
U 1 1 660676A2
P 5800 2300
F 0 "D3" V 5754 2379 50  0000 L CNN
F 1 "5.1v" V 5845 2379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5800 2300 50  0001 C CNN
F 3 "~" H 5800 2300 50  0001 C CNN
	1    5800 2300
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D4
U 1 1 66067F01
P 5800 4250
F 0 "D4" V 5754 4329 50  0000 L CNN
F 1 "5.1v" V 5845 4329 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5800 4250 50  0001 C CNN
F 3 "~" H 5800 4250 50  0001 C CNN
	1    5800 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 2050 5800 2050
Wire Wire Line
	5800 2150 5800 2050
Connection ~ 5800 2050
Wire Wire Line
	5800 2050 5900 2050
Wire Wire Line
	5800 2450 5800 2550
Wire Wire Line
	5600 4000 5800 4000
Wire Wire Line
	5800 4100 5800 4000
Connection ~ 5800 4000
Wire Wire Line
	5800 4000 5900 4000
Wire Wire Line
	5800 4400 5800 4500
Wire Wire Line
	5200 4000 5200 4950
Connection ~ 5200 4000
Wire Wire Line
	5200 4000 5300 4000
Connection ~ 5200 4950
Wire Wire Line
	5200 4950 7850 4950
Wire Wire Line
	4550 4950 5200 4950
Wire Wire Line
	4550 4750 5000 4750
Wire Wire Line
	4550 1850 5800 1850
Wire Wire Line
	5000 2050 5000 4750
Connection ~ 5000 2050
Wire Wire Line
	5000 2050 5300 2050
Connection ~ 5000 4750
Wire Wire Line
	5000 4750 7850 4750
$EndSCHEMATC
