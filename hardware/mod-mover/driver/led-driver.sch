EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Diode:1N5819 D?
U 1 1 65BE9B75
P 3900 1300
AR Path="/64798DC1/65BE9B75" Ref="D?"  Part="1" 
AR Path="/65BE9B75" Ref="D?"  Part="1" 
AR Path="/647E1209/65BE9B75" Ref="D?"  Part="1" 
AR Path="/65468F85/65BE9B75" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9B75" Ref="D2"  Part="1" 
F 0 "D2" H 3900 1516 50  0000 C CNN
F 1 "SDM2100" H 3900 1425 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3900 1125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3900 1300 50  0001 C CNN
F 4 "COM-10926" H 3900 1300 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 3900 1300 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 3900 1300 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 3900 1300 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 3900 1300 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 3900 1300 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 3900 1300 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 3900 1300 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 3900 1300 50  0001 C CNN "Description"
	1    3900 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 65BE9B7B
P 5050 2300
AR Path="/65BE9B7B" Ref="L?"  Part="1" 
AR Path="/65BD72F5/65BE9B7B" Ref="L1"  Part="1" 
F 0 "L1" V 5240 2300 50  0000 C CNN
F 1 "33uH" V 5149 2300 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 5050 2300 50  0001 C CNN
F 3 "~" H 5050 2300 50  0001 C CNN
	1    5050 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65BE9B81
P 4200 1600
AR Path="/65BE9B81" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9B81" Ref="R17"  Part="1" 
F 0 "R17" V 3995 1600 50  0000 C CNN
F 1 "0.1" V 4086 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4240 1590 50  0001 C CNN
F 3 "~" H 4200 1600 50  0001 C CNN
	1    4200 1600
	0    1    1    0   
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:AL8861 U?
U 1 1 65BE9B87
P 4050 2150
AR Path="/65BE9B87" Ref="U?"  Part="1" 
AR Path="/65BD72F5/65BE9B87" Ref="U1"  Part="1" 
F 0 "U1" H 4050 2554 45  0000 C CNN
F 1 "AL8861" H 4050 2470 45  0000 C CNN
F 2 "footprints:TSOT25" H 4050 2650 20  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fna556" H 4150 2750 60  0001 C CNN
	1    4050 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65BE9B8D
P 4050 2800
AR Path="/65BE9B8D" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65BE9B8D" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 4050 2550 50  0001 C CNN
F 1 "GND" H 4055 2627 50  0000 C CNN
F 2 "" H 4050 2800 50  0001 C CNN
F 3 "" H 4050 2800 50  0001 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2000 3400 2000
Wire Wire Line
	3400 1300 3750 1300
Wire Wire Line
	4050 1600 3400 1600
Connection ~ 3400 1600
Wire Wire Line
	3400 1600 3400 2000
Wire Wire Line
	4600 2000 4650 2000
Wire Wire Line
	4900 2300 4750 2300
Wire Wire Line
	4650 2000 4650 1600
Wire Wire Line
	4650 1600 4350 1600
Wire Wire Line
	4050 1300 4750 1300
Wire Wire Line
	4750 1300 4750 2300
Connection ~ 4750 2300
Wire Wire Line
	4750 2300 4600 2300
$Comp
L Diode:1N5819 D?
U 1 1 65BE9BA9
P 3900 3650
AR Path="/64798DC1/65BE9BA9" Ref="D?"  Part="1" 
AR Path="/65BE9BA9" Ref="D?"  Part="1" 
AR Path="/647E1209/65BE9BA9" Ref="D?"  Part="1" 
AR Path="/65468F85/65BE9BA9" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9BA9" Ref="D4"  Part="1" 
F 0 "D4" H 3900 3866 50  0000 C CNN
F 1 "SDM2100" H 3900 3775 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3900 3475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3900 3650 50  0001 C CNN
F 4 "COM-10926" H 3900 3650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 3900 3650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 3900 3650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 3900 3650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 3900 3650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 3900 3650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 3900 3650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 3900 3650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 3900 3650 50  0001 C CNN "Description"
	1    3900 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 65BE9BAF
P 5050 4650
AR Path="/65BE9BAF" Ref="L?"  Part="1" 
AR Path="/65BD72F5/65BE9BAF" Ref="L2"  Part="1" 
F 0 "L2" V 5240 4650 50  0000 C CNN
F 1 "33uH" V 5149 4650 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 5050 4650 50  0001 C CNN
F 3 "~" H 5050 4650 50  0001 C CNN
	1    5050 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65BE9BB5
P 4200 3950
AR Path="/65BE9BB5" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9BB5" Ref="R19"  Part="1" 
F 0 "R19" V 3995 3950 50  0000 C CNN
F 1 "0.1" V 4086 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4240 3940 50  0001 C CNN
F 3 "~" H 4200 3950 50  0001 C CNN
	1    4200 3950
	0    1    1    0   
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:AL8861 U?
U 1 1 65BE9BBB
P 4050 4500
AR Path="/65BE9BBB" Ref="U?"  Part="1" 
AR Path="/65BD72F5/65BE9BBB" Ref="U2"  Part="1" 
F 0 "U2" H 4050 4904 45  0000 C CNN
F 1 "AL8861" H 4050 4820 45  0000 C CNN
F 2 "footprints:TSOT25" H 4050 5000 20  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fna556" H 4150 5100 60  0001 C CNN
	1    4050 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65BE9BC1
P 4050 5150
AR Path="/65BE9BC1" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65BE9BC1" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4050 4900 50  0001 C CNN
F 1 "GND" H 4055 4977 50  0000 C CNN
F 2 "" H 4050 5150 50  0001 C CNN
F 3 "" H 4050 5150 50  0001 C CNN
	1    4050 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4350 3400 4350
Wire Wire Line
	3400 3650 3750 3650
Wire Wire Line
	4050 3950 3400 3950
Wire Wire Line
	3400 3650 3400 3950
Connection ~ 3400 3950
Wire Wire Line
	3400 3950 3400 4350
Wire Wire Line
	4600 4350 4650 4350
Wire Wire Line
	4900 4650 4750 4650
Wire Wire Line
	4650 4350 4650 3950
Wire Wire Line
	4650 3950 4350 3950
Wire Wire Line
	4050 3650 4750 3650
Wire Wire Line
	4750 3650 4750 4650
Connection ~ 4750 4650
Wire Wire Line
	4750 4650 4600 4650
Wire Wire Line
	5200 2300 5300 2300
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65BE9BE2
P 5650 2200
AR Path="/659D01BF/65BE9BE2" Ref="J?"  Part="1" 
AR Path="/65BE9BE2" Ref="J?"  Part="1" 
AR Path="/65BD72F5/65BE9BE2" Ref="J22"  Part="1" 
F 0 "J22" H 5750 2100 50  0000 L CNN
F 1 "R2 Out" H 5750 2200 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 5650 2200 50  0001 C CNN
F 3 "~" H 5650 2200 50  0001 C CNN
	1    5650 2200
	1    0    0    1   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 65BE9BE8
P 3400 4900
AR Path="/65BE9BE8" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9BE8" Ref="D5"  Part="1" 
F 0 "D5" V 3354 4979 50  0000 L CNN
F 1 "3v" V 3445 4979 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 3400 4900 50  0001 C CNN
F 3 "~" H 3400 4900 50  0001 C CNN
	1    3400 4900
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 65BE9BEE
P 3400 2550
AR Path="/65BE9BEE" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9BEE" Ref="D3"  Part="1" 
F 0 "D3" V 3350 2350 50  0000 L CNN
F 1 "3v" V 3450 2350 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 3400 2550 50  0001 C CNN
F 3 "~" H 3400 2550 50  0001 C CNN
	1    3400 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2600 4050 2750
Wire Wire Line
	4050 4950 4050 5100
Wire Wire Line
	3400 1200 3400 1300
Connection ~ 3400 1300
Wire Wire Line
	3400 1300 3400 1600
Wire Wire Line
	3400 3550 3400 3650
Connection ~ 3400 3650
Connection ~ 4650 2000
Wire Wire Line
	4650 2000 5300 2000
Wire Wire Line
	5200 4650 5300 4650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65BE9BFE
P 5650 4550
AR Path="/659D01BF/65BE9BFE" Ref="J?"  Part="1" 
AR Path="/65BE9BFE" Ref="J?"  Part="1" 
AR Path="/65BD72F5/65BE9BFE" Ref="J24"  Part="1" 
F 0 "J24" H 5750 4450 50  0000 L CNN
F 1 "G2 Out" H 5750 4550 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 5650 4550 50  0001 C CNN
F 3 "~" H 5650 4550 50  0001 C CNN
	1    5650 4550
	1    0    0    1   
$EndComp
Connection ~ 4650 4350
Wire Wire Line
	3400 2400 3400 2300
Connection ~ 3400 2300
Wire Wire Line
	3400 2300 3500 2300
Wire Wire Line
	3400 2700 3400 2750
Wire Wire Line
	3400 2750 4050 2750
Wire Wire Line
	3400 4750 3400 4650
Connection ~ 3400 4650
Wire Wire Line
	3400 4650 3500 4650
Wire Wire Line
	3400 5050 3400 5100
Wire Wire Line
	3400 5100 4050 5100
$Comp
L Device:R_US R?
U 1 1 65BE9C0F
P 3000 2550
AR Path="/65BE9C0F" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9C0F" Ref="R16"  Part="1" 
F 0 "R16" H 2932 2504 50  0000 R CNN
F 1 "10k" H 2932 2595 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3040 2540 50  0001 C CNN
F 3 "~" H 3000 2550 50  0001 C CNN
	1    3000 2550
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65BE9C15
P 3000 4900
AR Path="/65BE9C15" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9C15" Ref="R18"  Part="1" 
F 0 "R18" H 2932 4854 50  0000 R CNN
F 1 "10k" H 2932 4945 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3040 4890 50  0001 C CNN
F 3 "~" H 3000 4900 50  0001 C CNN
	1    3000 4900
	1    0    0    1   
$EndComp
Connection ~ 4050 5100
Wire Wire Line
	4050 5100 4050 5150
Connection ~ 4050 2750
Wire Wire Line
	4050 2750 4050 2800
Wire Wire Line
	3000 2400 3000 2300
Wire Wire Line
	3000 2300 3400 2300
Wire Wire Line
	3000 4750 3000 4650
Wire Wire Line
	3000 4650 3400 4650
Wire Wire Line
	5450 2100 5300 2100
Wire Wire Line
	5300 2100 5300 2000
Wire Wire Line
	5300 2300 5300 2200
Wire Wire Line
	5300 2200 5450 2200
Wire Wire Line
	5450 4450 5300 4450
Wire Wire Line
	5300 4450 5300 4350
Wire Wire Line
	5300 4350 4650 4350
Wire Wire Line
	5300 4650 5300 4550
Wire Wire Line
	5300 4550 5450 4550
$Comp
L Diode:1N5819 D?
U 1 1 65BE9C37
P 7800 1300
AR Path="/64798DC1/65BE9C37" Ref="D?"  Part="1" 
AR Path="/65BE9C37" Ref="D?"  Part="1" 
AR Path="/647E1209/65BE9C37" Ref="D?"  Part="1" 
AR Path="/65468F85/65BE9C37" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9C37" Ref="D6"  Part="1" 
F 0 "D6" H 7800 1516 50  0000 C CNN
F 1 "SDM2100" H 7800 1425 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 7800 1125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 7800 1300 50  0001 C CNN
F 4 "COM-10926" H 7800 1300 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 7800 1300 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 7800 1300 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 7800 1300 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 7800 1300 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 7800 1300 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 7800 1300 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 7800 1300 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 7800 1300 50  0001 C CNN "Description"
	1    7800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 65BE9C3D
P 8950 2300
AR Path="/65BE9C3D" Ref="L?"  Part="1" 
AR Path="/65BD72F5/65BE9C3D" Ref="L3"  Part="1" 
F 0 "L3" V 9140 2300 50  0000 C CNN
F 1 "33uH" V 9049 2300 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 8950 2300 50  0001 C CNN
F 3 "~" H 8950 2300 50  0001 C CNN
	1    8950 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65BE9C43
P 8100 1600
AR Path="/65BE9C43" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9C43" Ref="R21"  Part="1" 
F 0 "R21" V 7895 1600 50  0000 C CNN
F 1 "0.1" V 7986 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8140 1590 50  0001 C CNN
F 3 "~" H 8100 1600 50  0001 C CNN
	1    8100 1600
	0    1    1    0   
$EndComp
$Comp
L CrazyGiraffe_DMXDemonstrator:AL8861 U?
U 1 1 65BE9C49
P 7950 2150
AR Path="/65BE9C49" Ref="U?"  Part="1" 
AR Path="/65BD72F5/65BE9C49" Ref="U3"  Part="1" 
F 0 "U3" H 7950 2554 45  0000 C CNN
F 1 "AL8861" H 7950 2470 45  0000 C CNN
F 2 "footprints:TSOT25" H 7950 2650 20  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fna556" H 8050 2750 60  0001 C CNN
	1    7950 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65BE9C4F
P 7950 2800
AR Path="/65BE9C4F" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65BE9C4F" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 7950 2550 50  0001 C CNN
F 1 "GND" H 7955 2627 50  0000 C CNN
F 2 "" H 7950 2800 50  0001 C CNN
F 3 "" H 7950 2800 50  0001 C CNN
	1    7950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2000 7300 2000
Wire Wire Line
	7300 1300 7650 1300
Wire Wire Line
	7950 1600 7300 1600
Connection ~ 7300 1600
Wire Wire Line
	7300 1600 7300 2000
Wire Wire Line
	8500 2000 8550 2000
Wire Wire Line
	8800 2300 8650 2300
Wire Wire Line
	8550 2000 8550 1600
Wire Wire Line
	8550 1600 8250 1600
Wire Wire Line
	7950 1300 8650 1300
Wire Wire Line
	8650 1300 8650 2300
Connection ~ 8650 2300
Wire Wire Line
	8650 2300 8500 2300
$Comp
L Diode:1N5819 D?
U 1 1 65BE9C6B
P 7800 3650
AR Path="/64798DC1/65BE9C6B" Ref="D?"  Part="1" 
AR Path="/65BE9C6B" Ref="D?"  Part="1" 
AR Path="/647E1209/65BE9C6B" Ref="D?"  Part="1" 
AR Path="/65468F85/65BE9C6B" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9C6B" Ref="D8"  Part="1" 
F 0 "D8" H 7800 3866 50  0000 C CNN
F 1 "SDM2100" H 7800 3775 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 7800 3475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 7800 3650 50  0001 C CNN
F 4 "COM-10926" H 7800 3650 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 7800 3650 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 7800 3650 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 7800 3650 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 7800 3650 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 7800 3650 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 7800 3650 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 7800 3650 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 7800 3650 50  0001 C CNN "Description"
	1    7800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 65BE9C71
P 8950 4650
AR Path="/65BE9C71" Ref="L?"  Part="1" 
AR Path="/65BD72F5/65BE9C71" Ref="L4"  Part="1" 
F 0 "L4" V 9140 4650 50  0000 C CNN
F 1 "33uH" V 9049 4650 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 8950 4650 50  0001 C CNN
F 3 "~" H 8950 4650 50  0001 C CNN
	1    8950 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65BE9C77
P 8100 3950
AR Path="/65BE9C77" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9C77" Ref="R23"  Part="1" 
F 0 "R23" V 7895 3950 50  0000 C CNN
F 1 "0.1" V 7986 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8140 3940 50  0001 C CNN
F 3 "~" H 8100 3950 50  0001 C CNN
	1    8100 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65BE9C7D
P 7950 5150
AR Path="/65BE9C7D" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65BE9C7D" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 7950 4900 50  0001 C CNN
F 1 "GND" H 7955 4977 50  0000 C CNN
F 2 "" H 7950 5150 50  0001 C CNN
F 3 "" H 7950 5150 50  0001 C CNN
	1    7950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4350 7300 4350
Wire Wire Line
	7300 3650 7650 3650
Wire Wire Line
	7950 3950 7300 3950
Wire Wire Line
	7300 3650 7300 3950
Connection ~ 7300 3950
Wire Wire Line
	7300 3950 7300 4350
Wire Wire Line
	8500 4350 8550 4350
Wire Wire Line
	8800 4650 8650 4650
Wire Wire Line
	8550 4350 8550 3950
Wire Wire Line
	8550 3950 8250 3950
Wire Wire Line
	7950 3650 8650 3650
Wire Wire Line
	8650 3650 8650 4650
Connection ~ 8650 4650
Wire Wire Line
	8650 4650 8500 4650
Wire Wire Line
	9100 2300 9200 2300
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65BE9C9E
P 9550 2200
AR Path="/659D01BF/65BE9C9E" Ref="J?"  Part="1" 
AR Path="/65BE9C9E" Ref="J?"  Part="1" 
AR Path="/65BD72F5/65BE9C9E" Ref="J23"  Part="1" 
F 0 "J23" H 9650 2100 50  0000 L CNN
F 1 "B2 Out" H 9650 2200 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 9550 2200 50  0001 C CNN
F 3 "~" H 9550 2200 50  0001 C CNN
	1    9550 2200
	1    0    0    1   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 65BE9CA4
P 7300 4900
AR Path="/65BE9CA4" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9CA4" Ref="D9"  Part="1" 
F 0 "D9" V 7254 4979 50  0000 L CNN
F 1 "3v" V 7345 4979 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 7300 4900 50  0001 C CNN
F 3 "~" H 7300 4900 50  0001 C CNN
	1    7300 4900
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 65BE9CAA
P 7300 2550
AR Path="/65BE9CAA" Ref="D?"  Part="1" 
AR Path="/65BD72F5/65BE9CAA" Ref="D7"  Part="1" 
F 0 "D7" V 7250 2350 50  0000 L CNN
F 1 "3v" V 7350 2350 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 7300 2550 50  0001 C CNN
F 3 "~" H 7300 2550 50  0001 C CNN
	1    7300 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 2600 7950 2750
Wire Wire Line
	7950 4950 7950 5100
Wire Wire Line
	7300 1200 7300 1300
Connection ~ 7300 1300
Wire Wire Line
	7300 1300 7300 1600
Wire Wire Line
	7300 3550 7300 3650
Connection ~ 7300 3650
Connection ~ 8550 2000
Wire Wire Line
	8550 2000 9200 2000
Wire Wire Line
	9100 4650 9200 4650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 65BE9CBA
P 9550 4550
AR Path="/659D01BF/65BE9CBA" Ref="J?"  Part="1" 
AR Path="/65BE9CBA" Ref="J?"  Part="1" 
AR Path="/65BD72F5/65BE9CBA" Ref="J25"  Part="1" 
F 0 "J25" H 9650 4450 50  0000 L CNN
F 1 "R3 Out" H 9650 4550 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 9550 4550 50  0001 C CNN
F 3 "~" H 9550 4550 50  0001 C CNN
	1    9550 4550
	1    0    0    1   
$EndComp
Connection ~ 8550 4350
Wire Wire Line
	7300 2400 7300 2300
Connection ~ 7300 2300
Wire Wire Line
	7300 2300 7400 2300
Wire Wire Line
	7300 2700 7300 2750
Wire Wire Line
	7300 2750 7950 2750
Wire Wire Line
	7300 4750 7300 4650
Connection ~ 7300 4650
Wire Wire Line
	7300 4650 7400 4650
Wire Wire Line
	7300 5050 7300 5100
Wire Wire Line
	7300 5100 7950 5100
$Comp
L Device:R_US R?
U 1 1 65BE9CCB
P 6900 2550
AR Path="/65BE9CCB" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9CCB" Ref="R20"  Part="1" 
F 0 "R20" H 6832 2504 50  0000 R CNN
F 1 "10k" H 6832 2595 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6940 2540 50  0001 C CNN
F 3 "~" H 6900 2550 50  0001 C CNN
	1    6900 2550
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 65BE9CD1
P 6900 4900
AR Path="/65BE9CD1" Ref="R?"  Part="1" 
AR Path="/65BD72F5/65BE9CD1" Ref="R22"  Part="1" 
F 0 "R22" H 6832 4854 50  0000 R CNN
F 1 "10k" H 6832 4945 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6940 4890 50  0001 C CNN
F 3 "~" H 6900 4900 50  0001 C CNN
	1    6900 4900
	1    0    0    1   
$EndComp
Connection ~ 7950 5100
Wire Wire Line
	7950 5100 7950 5150
Connection ~ 7950 2750
Wire Wire Line
	7950 2750 7950 2800
Wire Wire Line
	6900 2400 6900 2300
Wire Wire Line
	6900 2300 7300 2300
Wire Wire Line
	6900 4750 6900 4650
Wire Wire Line
	6900 4650 7300 4650
Wire Wire Line
	9350 2100 9200 2100
Wire Wire Line
	9200 2100 9200 2000
Wire Wire Line
	9200 2300 9200 2200
Wire Wire Line
	9200 2200 9350 2200
Wire Wire Line
	9350 4450 9200 4450
Wire Wire Line
	9200 4450 9200 4350
Wire Wire Line
	9200 4350 8550 4350
Wire Wire Line
	9200 4650 9200 4550
Wire Wire Line
	9200 4550 9350 4550
$Comp
L CrazyGiraffe_DMXDemonstrator:AL8861 U?
U 1 1 65BE9CEA
P 7950 4500
AR Path="/65BE9CEA" Ref="U?"  Part="1" 
AR Path="/65BD72F5/65BE9CEA" Ref="U4"  Part="1" 
F 0 "U4" H 7950 4904 45  0000 C CNN
F 1 "AL8861" H 7950 4820 45  0000 C CNN
F 2 "footprints:TSOT25" H 7950 5000 20  0001 C CNN
F 3 "https://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=https%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fna556" H 8050 5100 60  0001 C CNN
	1    7950 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 65C00494
P 3000 1600
AR Path="/647E1209/65C00494" Ref="C?"  Part="1" 
AR Path="/65C00494" Ref="C?"  Part="1" 
AR Path="/65468F85/65C00494" Ref="C?"  Part="1" 
AR Path="/65BD72F5/65C00494" Ref="C4"  Part="1" 
F 0 "C4" H 3115 1646 50  0000 L CNN
F 1 "10uF" H 3115 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3000 1600 50  0001 C CNN
F 3 "~" H 3000 1600 50  0001 C CNN
F 4 "COM-00523" H 3750 1550 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 3750 1550 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 3750 1550 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 3750 1550 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 3750 1550 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 3750 1550 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 3750 1550 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 3750 1550 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 3750 1550 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 3750 1550 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 3000 1600 50  0001 C CNN "Description"
	1    3000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3000 1300
Wire Wire Line
	3400 1300 3000 1300
$Comp
L power:GND #PWR?
U 1 1 65C10D93
P 3000 1900
AR Path="/65C10D93" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65C10D93" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3000 1650 50  0001 C CNN
F 1 "GND" H 3005 1727 50  0000 C CNN
F 2 "" H 3000 1900 50  0001 C CNN
F 3 "" H 3000 1900 50  0001 C CNN
	1    3000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1750 3000 1900
$Comp
L Device:CP1 C?
U 1 1 65C17017
P 3000 3950
AR Path="/647E1209/65C17017" Ref="C?"  Part="1" 
AR Path="/65C17017" Ref="C?"  Part="1" 
AR Path="/65468F85/65C17017" Ref="C?"  Part="1" 
AR Path="/65BD72F5/65C17017" Ref="C5"  Part="1" 
F 0 "C5" H 3115 3996 50  0000 L CNN
F 1 "10uF" H 3115 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3000 3950 50  0001 C CNN
F 3 "~" H 3000 3950 50  0001 C CNN
F 4 "COM-00523" H 3750 3900 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 3750 3900 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 3750 3900 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 3750 3900 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 3750 3900 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 3750 3900 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 3750 3900 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 3750 3900 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 3750 3900 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 3750 3900 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 3000 3950 50  0001 C CNN "Description"
	1    3000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3800 3000 3650
Wire Wire Line
	3400 3650 3000 3650
$Comp
L power:GND #PWR?
U 1 1 65C17431
P 3000 4250
AR Path="/65C17431" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65C17431" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 3000 4000 50  0001 C CNN
F 1 "GND" H 3005 4077 50  0000 C CNN
F 2 "" H 3000 4250 50  0001 C CNN
F 3 "" H 3000 4250 50  0001 C CNN
	1    3000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4100 3000 4250
$Comp
L Device:CP1 C?
U 1 1 65C1D645
P 6900 1600
AR Path="/647E1209/65C1D645" Ref="C?"  Part="1" 
AR Path="/65C1D645" Ref="C?"  Part="1" 
AR Path="/65468F85/65C1D645" Ref="C?"  Part="1" 
AR Path="/65BD72F5/65C1D645" Ref="C6"  Part="1" 
F 0 "C6" H 7015 1646 50  0000 L CNN
F 1 "10uF" H 7015 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6900 1600 50  0001 C CNN
F 3 "~" H 6900 1600 50  0001 C CNN
F 4 "COM-00523" H 7650 1550 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 7650 1550 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 7650 1550 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 7650 1550 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 7650 1550 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 7650 1550 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 7650 1550 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 7650 1550 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 7650 1550 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 7650 1550 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 6900 1600 50  0001 C CNN "Description"
	1    6900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1450 6900 1300
Wire Wire Line
	7300 1300 6900 1300
$Comp
L power:GND #PWR?
U 1 1 65C1DA83
P 6900 1900
AR Path="/65C1DA83" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65C1DA83" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 6900 1650 50  0001 C CNN
F 1 "GND" H 6905 1727 50  0000 C CNN
F 2 "" H 6900 1900 50  0001 C CNN
F 3 "" H 6900 1900 50  0001 C CNN
	1    6900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1750 6900 1900
$Comp
L Device:CP1 C?
U 1 1 65C23BBB
P 6900 3950
AR Path="/647E1209/65C23BBB" Ref="C?"  Part="1" 
AR Path="/65C23BBB" Ref="C?"  Part="1" 
AR Path="/65468F85/65C23BBB" Ref="C?"  Part="1" 
AR Path="/65BD72F5/65C23BBB" Ref="C7"  Part="1" 
F 0 "C7" H 7015 3996 50  0000 L CNN
F 1 "10uF" H 7015 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6900 3950 50  0001 C CNN
F 3 "~" H 6900 3950 50  0001 C CNN
F 4 "COM-00523" H 7650 3900 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/523" H 7650 3900 50  0001 C CNN "SP_Detail_Page"
F 6 "2195" H 7650 3900 50  0001 C CNN "AF_PN"
F 7 "https://www.adafruit.com/product/2195" H 7650 3900 50  0001 C CNN "AF_Detail_Page"
F 8 "P10425CT-ND" H 7650 3900 50  0001 C CNN "Digi-Key_PN"
F 9 "en/products/detail/panasonic-electronic-components/ECA-1HM100I/268510" H 7650 3900 50  0001 C CNN "DK_Detail_Page"
F 10 "667-ECA-1HM100I" H 7650 3900 50  0001 C CNN "MO_PN"
F 11 "https://www.mouser.com/ProductDetail/Panasonic/ECA-1HM100I" H 7650 3900 50  0001 C CNN "MO_Detail_Page"
F 12 "ECA-1HM100I" H 7650 3900 50  0001 C CNN "NW_PN"
F 13 "https://www.newark.com/panasonic/eca-1hm100i/aluminum-electrolytic-capacitor/dp/48W7714?" H 7650 3900 50  0001 C CNN "NW_Page_Detail"
F 14 "Filter Capacitor" H 6900 3950 50  0001 C CNN "Description"
	1    6900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3800 6900 3650
Wire Wire Line
	7300 3650 6900 3650
$Comp
L power:GND #PWR?
U 1 1 65C2401D
P 6900 4250
AR Path="/65C2401D" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/65C2401D" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 6900 4000 50  0001 C CNN
F 1 "GND" H 6905 4077 50  0000 C CNN
F 2 "" H 6900 4250 50  0001 C CNN
F 3 "" H 6900 4250 50  0001 C CNN
	1    6900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4100 6900 4250
Text HLabel 1600 2800 0    50   Input ~ 0
LED_R2
Text HLabel 1600 5150 0    50   Input ~ 0
LED_G2
Text HLabel 1600 3150 0    50   Input ~ 0
LED_B2
Text HLabel 1600 5500 0    50   Input ~ 0
LED_R3
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 66325887
P 4450 6150
AR Path="/65ACE5DD/66325887" Ref="J?"  Part="1" 
AR Path="/66325887" Ref="J?"  Part="1" 
AR Path="/65BD72F5/66325887" Ref="J26"  Part="1" 
F 0 "J26" H 4370 6467 50  0000 C CNN
F 1 "LED PWM 1-2" H 4370 6376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4450 6150 50  0001 C CNN
F 3 "~" H 4450 6150 50  0001 C CNN
	1    4450 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6632588D
P 4450 6750
AR Path="/65ACE5DD/6632588D" Ref="J?"  Part="1" 
AR Path="/6632588D" Ref="J?"  Part="1" 
AR Path="/65BD72F5/6632588D" Ref="J27"  Part="1" 
F 0 "J27" H 4370 7067 50  0000 C CNN
F 1 "LED PWM 3-4" H 4370 6976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4450 6750 50  0001 C CNN
F 3 "~" H 4450 6750 50  0001 C CNN
	1    4450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6250 4250 6250
Wire Wire Line
	4250 6850 1650 6850
Wire Wire Line
	4250 6650 1650 6650
Wire Wire Line
	4250 6050 1650 6050
Wire Wire Line
	4050 6750 4250 6750
Wire Wire Line
	4050 6150 4250 6150
Text HLabel 1650 6650 0    50   Input ~ 0
LED_B0
Text HLabel 1650 6850 0    50   Input ~ 0
LED_R1
Text HLabel 1650 6250 0    50   Input ~ 0
LED_G0
Text HLabel 1650 6050 0    50   Input ~ 0
LED_R0
$Comp
L power:GND #PWR?
U 1 1 6633D4EC
P 4050 7000
AR Path="/6633D4EC" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/6633D4EC" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4050 6750 50  0001 C CNN
F 1 "GND" H 4055 6827 50  0000 C CNN
F 2 "" H 4050 7000 50  0001 C CNN
F 3 "" H 4050 7000 50  0001 C CNN
	1    4050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6150 4050 6750
Connection ~ 4050 6750
Wire Wire Line
	4050 6750 4050 7000
Wire Wire Line
	1600 2800 3000 2800
Wire Wire Line
	3000 2800 3000 2700
Wire Wire Line
	1600 3150 6900 3150
Wire Wire Line
	6900 3150 6900 2700
Wire Wire Line
	1600 5150 3000 5150
Wire Wire Line
	3000 5150 3000 5050
Wire Wire Line
	1600 5500 6900 5500
Wire Wire Line
	6900 5500 6900 5050
Wire Wire Line
	5450 5900 5450 6050
Wire Wire Line
	5450 6050 5650 6050
$Comp
L power:GND #PWR?
U 1 1 6641543D
P 6050 6350
AR Path="/65A70F21/6641543D" Ref="#PWR?"  Part="1" 
AR Path="/6641543D" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/6641543D" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/6641543D" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 6050 6100 50  0001 C CNN
F 1 "GND" H 6055 6177 50  0000 C CNN
F 2 "" H 6050 6350 50  0001 C CNN
F 3 "" H 6050 6350 50  0001 C CNN
	1    6050 6350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 6150 6050 6150
Wire Wire Line
	6050 6150 6050 6350
Wire Wire Line
	6150 6050 5950 6050
$Comp
L Diode:1N5819 D?
U 1 1 6641544F
P 5800 6050
AR Path="/64798DC1/6641544F" Ref="D?"  Part="1" 
AR Path="/6641544F" Ref="D?"  Part="1" 
AR Path="/647E1209/6641544F" Ref="D?"  Part="1" 
AR Path="/66A5434C/6641544F" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/6641544F" Ref="D?"  Part="1" 
AR Path="/65BD72F5/6641544F" Ref="D10"  Part="1" 
F 0 "D10" H 5800 6266 50  0000 C CNN
F 1 "1N5819" H 5800 6175 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5800 5875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5800 6050 50  0001 C CNN
F 4 "COM-10926" H 5900 6100 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 5900 6100 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 5900 6100 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 5900 6100 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 5900 6100 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 5900 6100 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 5900 6100 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 5900 6100 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 5800 6050 50  0001 C CNN "Description"
	1    5800 6050
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR?
U 1 1 6641A4DD
P 5450 5900
AR Path="/6641A4DD" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/6641A4DD" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 5450 5750 50  0001 C CNN
F 1 "VAA" H 5467 6073 50  0000 C CNN
F 2 "" H 5450 5900 50  0001 C CNN
F 3 "" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 66430418
P 6350 7150
AR Path="/647946E8/66430418" Ref="J?"  Part="1" 
AR Path="/66430418" Ref="J?"  Part="1" 
AR Path="/64798DC1/66430418" Ref="J?"  Part="1" 
AR Path="/647E1209/66430418" Ref="J?"  Part="1" 
AR Path="/66A5434C/66430418" Ref="J?"  Part="1" 
AR Path="/65B0DCEA/66430418" Ref="J?"  Part="1" 
AR Path="/65BD72F5/66430418" Ref="J29"  Part="1" 
F 0 "J29" H 6550 7050 50  0000 C CNN
F 1 "GBW Power" H 6650 7150 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 6350 7150 50  0001 C CNN
F 3 "~" H 6350 7150 50  0001 C CNN
F 4 "277-1106-ND" H 6450 7200 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 6450 7200 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 6450 7200 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 6450 7200 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 6350 7150 50  0001 C CNN "Description"
	1    6350 7150
	1    0    0    1   
$EndComp
Wire Wire Line
	5450 6900 5450 7050
Wire Wire Line
	5450 7050 5650 7050
$Comp
L power:GND #PWR?
U 1 1 66430880
P 6050 7350
AR Path="/65A70F21/66430880" Ref="#PWR?"  Part="1" 
AR Path="/66430880" Ref="#PWR?"  Part="1" 
AR Path="/65B0DCEA/66430880" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/66430880" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 6050 7100 50  0001 C CNN
F 1 "GND" H 6055 7177 50  0000 C CNN
F 2 "" H 6050 7350 50  0001 C CNN
F 3 "" H 6050 7350 50  0001 C CNN
	1    6050 7350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 7150 6050 7150
Wire Wire Line
	6050 7150 6050 7350
Wire Wire Line
	6150 7050 5950 7050
$Comp
L Diode:1N5819 D?
U 1 1 66430896
P 5800 7050
AR Path="/64798DC1/66430896" Ref="D?"  Part="1" 
AR Path="/66430896" Ref="D?"  Part="1" 
AR Path="/647E1209/66430896" Ref="D?"  Part="1" 
AR Path="/66A5434C/66430896" Ref="D?"  Part="1" 
AR Path="/65B0DCEA/66430896" Ref="D?"  Part="1" 
AR Path="/65BD72F5/66430896" Ref="D11"  Part="1" 
F 0 "D11" H 5800 7266 50  0000 C CNN
F 1 "1N5819" H 5800 7175 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5800 6875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5800 7050 50  0001 C CNN
F 4 "COM-10926" H 5900 7100 50  0001 C CNN "SP_PN"
F 5 "https://www.sparkfun.com/products/10926" H 5900 7100 50  0001 C CNN "SP_Detail_Page"
F 6 "1N5819-E3/54GITR-ND" H 5900 7100 50  0001 C CNN "Digi-Key_PN"
F 7 "en/products/detail/vishay-general-semiconductor-diodes-division/1N5819-E3-54/1023527" H 5900 7100 50  0001 C CNN "DK_Detail_Page"
F 8 "625-1N5819-E3" H 5900 7100 50  0001 C CNN "MO_PN"
F 9 "https://www.mouser.com/ProductDetail/Vishay-General-Semiconductor/1N5819-E3-54?qs=7w0fSgRKp93guDuu%252B5hJ0Q%3D%3D" H 5900 7100 50  0001 C CNN "MO_Detail_Page"
F 10 "78K2616" H 5900 7100 50  0001 C CNN "NW_PN"
F 11 "https://www.newark.com/vishay/1n5819-e3-54/schottky-rectifier-1a-40v-do-204al/dp/78K2616?st=1n5819-e3/54" H 5900 7100 50  0001 C CNN "NW_Detail_Page"
F 12 "Reverse Voltage Protection" H 5800 7050 50  0001 C CNN "Description"
	1    5800 7050
	1    0    0    -1  
$EndComp
Text Notes 6450 7700 2    50   ~ 0
Blue,\nGreen,\nWhite\nLED\nPower
$Comp
L power:VCC #PWR0137
U 1 1 6643AD82
P 5450 6900
F 0 "#PWR0137" H 5450 6750 50  0001 C CNN
F 1 "VCC" H 5467 7073 50  0000 C CNN
F 2 "" H 5450 6900 50  0001 C CNN
F 3 "" H 5450 6900 50  0001 C CNN
	1    5450 6900
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR?
U 1 1 6643BBC8
P 3400 1200
AR Path="/6643BBC8" Ref="#PWR?"  Part="1" 
AR Path="/65BD72F5/6643BBC8" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 3400 1050 50  0001 C CNN
F 1 "VAA" H 3417 1373 50  0000 C CNN
F 2 "" H 3400 1200 50  0001 C CNN
F 3 "" H 3400 1200 50  0001 C CNN
	1    3400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0139
U 1 1 6643C414
P 3400 3550
F 0 "#PWR0139" H 3400 3400 50  0001 C CNN
F 1 "VCC" H 3417 3723 50  0000 C CNN
F 2 "" H 3400 3550 50  0001 C CNN
F 3 "" H 3400 3550 50  0001 C CNN
	1    3400 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0140
U 1 1 6643C8B3
P 7300 3550
F 0 "#PWR0140" H 7300 3400 50  0001 C CNN
F 1 "VCC" H 7317 3723 50  0000 C CNN
F 2 "" H 7300 3550 50  0001 C CNN
F 3 "" H 7300 3550 50  0001 C CNN
	1    7300 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0141
U 1 1 6643CE09
P 7300 1200
F 0 "#PWR0141" H 7300 1050 50  0001 C CNN
F 1 "VCC" H 7317 1373 50  0000 C CNN
F 2 "" H 7300 1200 50  0001 C CNN
F 3 "" H 7300 1200 50  0001 C CNN
	1    7300 1200
	1    0    0    -1  
$EndComp
Text Notes 6400 6550 2    50   ~ 0
Red\nLED\nPower
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 66415435
P 6350 6150
AR Path="/647946E8/66415435" Ref="J?"  Part="1" 
AR Path="/66415435" Ref="J?"  Part="1" 
AR Path="/64798DC1/66415435" Ref="J?"  Part="1" 
AR Path="/647E1209/66415435" Ref="J?"  Part="1" 
AR Path="/66A5434C/66415435" Ref="J?"  Part="1" 
AR Path="/65B0DCEA/66415435" Ref="J?"  Part="1" 
AR Path="/65BD72F5/66415435" Ref="J28"  Part="1" 
F 0 "J28" H 6550 6050 50  0000 C CNN
F 1 "Red Power" H 6650 6150 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 6350 6150 50  0001 C CNN
F 3 "~" H 6350 6150 50  0001 C CNN
F 4 "277-1106-ND" H 6450 6200 50  0001 C CNN "Digi-Key_PN"
F 5 "en/products/detail/phoenix-contact/1757242/260474" H 6450 6200 50  0001 C CNN "DK_Detail_Page"
F 6 "651-1757242" H 6450 6200 50  0001 C CNN "MO_PN"
F 7 "https://www.mouser.com/ProductDetail/Phoenix-Contact/1757242?qs=uD%2FdkN7XIa3Ejiz9qDxlzw%3D%3D" H 6450 6200 50  0001 C CNN "MO_Detail_Page"
F 8 "Screw Terminal" H 6350 6150 50  0001 C CNN "Description"
	1    6350 6150
	1    0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 665778D5
P 5150 5900
F 0 "#FLG0107" H 5150 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 6073 50  0000 C CNN
F 2 "" H 5150 5900 50  0001 C CNN
F 3 "~" H 5150 5900 50  0001 C CNN
	1    5150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0108
U 1 1 6657809C
P 5150 6900
F 0 "#FLG0108" H 5150 6975 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 7073 50  0000 C CNN
F 2 "" H 5150 6900 50  0001 C CNN
F 3 "~" H 5150 6900 50  0001 C CNN
	1    5150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5900 5150 6050
Wire Wire Line
	5150 6050 5450 6050
Connection ~ 5450 6050
Wire Wire Line
	5150 6900 5150 7050
Wire Wire Line
	5150 7050 5450 7050
Connection ~ 5450 7050
$EndSCHEMATC
