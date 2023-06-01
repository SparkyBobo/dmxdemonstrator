EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "DMX Demonstrator - Transmitter-Retro Core (DMX-TX3)"
Date "2023-05-27"
Rev "1.0"
Comp "Crazy Giraffe Software"
Comment1 ""
Comment2 "Designed by: SparkyBobo"
Comment3 "https://creativecommons.org/licenses/by-sa/4.0/ "
Comment4 "Released under the Creative Commons Attribution Share-Alike 4.0 License"
$EndDescr
Text HLabel 4150 3750 0    50   Input ~ 0
CLK_SAMPLE_IN
Text HLabel 7450 3250 2    50   Input ~ 0
CLK_TX_OUT
Text HLabel 7450 3650 2    50   Input ~ 0
CLK_RX_OUT
Wire Wire Line
	6650 3650 6050 3650
Wire Wire Line
	6050 3650 6050 3250
Wire Wire Line
	6050 3250 7450 3250
Wire Wire Line
	7250 3650 7450 3650
Wire Wire Line
	4900 3250 4750 3250
Wire Wire Line
	4750 3250 4750 3300
Wire Wire Line
	4750 3250 4750 3150
Wire Wire Line
	4750 3150 4900 3150
Connection ~ 4750 3250
Wire Wire Line
	4750 3150 4750 3050
Wire Wire Line
	4750 3050 4900 3050
Connection ~ 4750 3150
Wire Wire Line
	4750 3050 4750 2950
Wire Wire Line
	4750 2950 4900 2950
Connection ~ 4750 3050
$Comp
L power:GND #PWR?
U 1 1 6339910F
P 4750 3300
AR Path="/6339910F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6339910F" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6339910F" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 4750 3050 50  0001 C CNN
F 1 "GND" H 4850 3200 50  0000 C CNN
F 2 "" H 4750 3300 50  0001 C CNN
F 3 "" H 4750 3300 50  0001 C CNN
	1    4750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63399115
P 5400 2650
AR Path="/63399115" Ref="#PWR?"  Part="1" 
AR Path="/63268641/63399115" Ref="#PWR?"  Part="1" 
AR Path="/63268613/63399115" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 5400 2500 50  0001 C CNN
F 1 "+5V" H 5415 2823 50  0000 C CNN
F 2 "" H 5400 2650 50  0001 C CNN
F 3 "" H 5400 2650 50  0001 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6339911F
P 4650 2650
AR Path="/6841E790/6339911F" Ref="#PWR?"  Part="1" 
AR Path="/6339911F" Ref="#PWR?"  Part="1" 
AR Path="/63268641/6339911F" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6339911F" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 4650 2500 50  0001 C CNN
F 1 "+5V" H 4665 2823 50  0000 C CNN
F 2 "" H 4650 2650 50  0001 C CNN
F 3 "" H 4650 2650 50  0001 C CNN
	1    4650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3250 6050 3250
Wire Wire Line
	4650 3550 4900 3550
Wire Wire Line
	4650 3450 4650 3150
Wire Wire Line
	4650 3450 4900 3450
$Comp
L 74xx:74LS161 U?
U 1 1 63399130
P 5400 3450
AR Path="/63399130" Ref="U?"  Part="1" 
AR Path="/63268641/63399130" Ref="U?"  Part="1" 
AR Path="/63268613/63399130" Ref="U1"  Part="1" 
F 0 "U1" H 5500 4200 50  0000 C CNN
F 1 "74LS163" H 5600 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5400 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5400 3450 50  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3950 4650 3950
Wire Wire Line
	4650 3950 4650 3650
$Comp
L power:GND #PWR?
U 1 1 6339913E
P 5400 4250
AR Path="/63268641/6339913E" Ref="#PWR?"  Part="1" 
AR Path="/63268613/6339913E" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 5400 4000 50  0001 C CNN
F 1 "GND" H 5405 4077 50  0000 C CNN
F 2 "" H 5400 4250 50  0001 C CNN
F 3 "" H 5400 4250 50  0001 C CNN
	1    5400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3650 4650 3550
Connection ~ 4650 3450
Connection ~ 4650 3550
Wire Wire Line
	4650 3550 4650 3450
Wire Wire Line
	4650 3650 4900 3650
Connection ~ 4650 3650
NoConn ~ 5900 2950
NoConn ~ 5900 3050
NoConn ~ 5900 3150
NoConn ~ 5900 3450
Connection ~ 6050 3250
Text Notes 6150 4200 0    50   ~ 0
CLK_RX is the same frequency at CLK_TX\nand offset by 2x frequency. So the rising edge\nof CLK_RX is occurs midway between the rising\nedges of CLK_TX.
Text Notes 6100 2750 0    50   ~ 0
CLK_SAMPLE is 16x CLK_TX. From\nrising edge to rising edge of CLK_TX,\nCLK_SAMPLE has 32 rising edges.
Wire Wire Line
	4150 3750 4400 3750
Wire Notes Line
	6600 3100 6650 3100
Wire Notes Line
	6650 3100 6650 3000
Wire Notes Line
	6650 3000 6700 3000
Wire Notes Line
	6700 3000 6700 3100
Wire Notes Line
	6700 3100 6750 3100
Wire Notes Line
	6750 3100 6750 3000
Wire Notes Line
	6750 3000 6800 3000
Wire Notes Line
	6800 3000 6800 3100
Wire Notes Line
	6800 3100 6850 3100
Wire Notes Line
	6850 3100 6850 3000
Wire Notes Line
	6850 3000 6900 3000
Wire Notes Line
	6900 3000 6900 3100
Wire Notes Line
	6900 3100 6950 3100
Wire Notes Line
	6950 3100 6950 3000
Wire Notes Line
	6950 3000 7000 3000
Wire Notes Line
	7000 3000 7000 3100
Wire Notes Line
	7000 3100 7050 3100
Wire Notes Line
	7050 3100 7050 3000
Wire Notes Line
	7050 3000 7100 3000
Wire Notes Line
	7100 3000 7100 3100
Wire Notes Line
	7100 3100 7150 3100
Wire Notes Line
	7150 3100 7150 3000
Wire Notes Line
	7150 3000 7200 3000
Wire Notes Line
	7200 3000 7200 3100
Wire Notes Line
	7200 3100 7250 3100
Wire Notes Line
	7250 3100 7250 3000
Wire Notes Line
	7250 3000 7300 3000
Wire Notes Line
	7300 3000 7300 3100
Wire Notes Line
	7300 3100 7350 3100
Wire Notes Line
	7350 3100 7350 3000
Wire Notes Line
	7350 3000 7400 3000
Wire Notes Line
	7400 3000 7400 3100
Wire Notes Line
	7400 3100 7450 3100
Wire Notes Line
	7450 3100 7450 3000
Wire Notes Line
	7450 3000 7500 3000
Wire Notes Line
	7500 3000 7500 3100
Wire Notes Line
	7500 3100 7550 3100
Wire Notes Line
	7550 3100 7550 3000
Wire Notes Line
	7550 3000 7600 3000
Wire Notes Line
	7600 3000 7600 3100
Wire Notes Line
	7600 3100 7650 3100
Wire Notes Line
	7650 3100 7650 3000
Wire Notes Line
	7650 3000 7700 3000
Wire Notes Line
	7700 3000 7700 3100
Wire Notes Line
	7700 3100 7750 3100
Wire Notes Line
	7750 3100 7750 3000
Wire Notes Line
	7750 3000 7800 3000
Wire Notes Line
	7800 3000 7800 3100
Wire Notes Line
	7800 3100 7850 3100
Wire Notes Line
	7850 3100 7850 3000
Wire Notes Line
	7850 3000 7900 3000
Wire Notes Line
	7900 3000 7900 3100
Wire Notes Line
	7900 3100 7950 3100
Wire Notes Line
	7950 3100 7950 3000
Wire Notes Line
	7950 3000 8000 3000
Wire Notes Line
	8000 3000 8000 3100
Wire Notes Line
	8000 3100 8050 3100
Wire Notes Line
	8050 3100 8050 3000
Wire Notes Line
	8050 3000 8100 3000
Wire Notes Line
	8100 3000 8100 3100
Wire Notes Line
	8100 3100 8150 3100
Wire Notes Line
	8150 3100 8150 3000
Wire Notes Line
	8150 3000 8200 3000
Wire Notes Line
	8200 3000 8200 3100
Wire Notes Line
	8200 3100 8250 3100
Wire Notes Line
	6600 2950 6650 2950
Wire Notes Line
	6650 2950 6650 2850
Wire Notes Line
	6650 2850 8200 2850
Wire Notes Line
	8200 2850 8200 2950
Wire Notes Line
	8200 2950 9850 2950
Wire Notes Line
	8250 3100 8250 3000
Wire Notes Line
	8250 3000 8300 3000
Wire Notes Line
	8300 3000 8300 3100
Wire Notes Line
	8300 3100 8350 3100
Wire Notes Line
	8350 3100 8350 3000
Wire Notes Line
	8350 3000 8400 3000
Wire Notes Line
	8400 3000 8400 3100
Wire Notes Line
	8400 3100 8450 3100
Wire Notes Line
	8450 3100 8450 3000
Wire Notes Line
	8450 3000 8500 3000
Wire Notes Line
	8500 3000 8500 3100
Wire Notes Line
	8500 3100 8550 3100
Wire Notes Line
	8550 3100 8550 3000
Wire Notes Line
	8550 3000 8600 3000
Wire Notes Line
	8600 3000 8600 3100
Wire Notes Line
	8600 3100 8650 3100
Wire Notes Line
	8650 3100 8650 3000
Wire Notes Line
	8650 3000 8700 3000
Wire Notes Line
	8700 3000 8700 3100
Wire Notes Line
	8700 3100 8750 3100
Wire Notes Line
	8750 3100 8750 3000
Wire Notes Line
	8750 3000 8800 3000
Wire Notes Line
	8800 3000 8800 3100
Wire Notes Line
	8800 3100 8850 3100
Wire Notes Line
	8850 3100 8850 3000
Wire Notes Line
	8850 3000 8900 3000
Wire Notes Line
	8900 3000 8900 3100
Wire Notes Line
	8900 3100 8950 3100
Wire Notes Line
	8950 3100 8950 3000
Wire Notes Line
	8950 3000 9000 3000
Wire Notes Line
	9000 3000 9000 3100
Wire Notes Line
	9000 3100 9050 3100
Wire Notes Line
	9050 3100 9050 3000
Wire Notes Line
	9050 3000 9100 3000
Wire Notes Line
	9100 3000 9100 3100
Wire Notes Line
	9100 3100 9150 3100
Wire Notes Line
	9150 3100 9150 3000
Wire Notes Line
	9150 3000 9200 3000
Wire Notes Line
	9200 3000 9200 3100
Wire Notes Line
	9200 3100 9250 3100
Wire Notes Line
	9250 3100 9250 3000
Wire Notes Line
	9250 3000 9300 3000
Wire Notes Line
	9300 3000 9300 3100
Wire Notes Line
	9300 3100 9350 3100
Wire Notes Line
	9350 3100 9350 3000
Wire Notes Line
	9350 3000 9400 3000
Wire Notes Line
	9400 3000 9400 3100
Wire Notes Line
	9400 3100 9450 3100
Wire Notes Line
	9450 3100 9450 3000
Wire Notes Line
	9450 3000 9500 3000
Wire Notes Line
	9500 3000 9500 3100
Wire Notes Line
	9500 3100 9550 3100
Wire Notes Line
	9550 3100 9550 3000
Wire Notes Line
	9550 3000 9600 3000
Wire Notes Line
	9600 3000 9600 3100
Wire Notes Line
	9600 3100 9650 3100
Wire Notes Line
	9650 3100 9650 3000
Wire Notes Line
	9650 3000 9700 3000
Wire Notes Line
	9700 3000 9700 3100
Wire Notes Line
	9700 3100 9750 3100
Wire Notes Line
	9750 3100 9750 3000
Wire Notes Line
	9750 3000 9800 3000
Wire Notes Line
	9800 3000 9800 3100
Wire Notes Line
	9800 3100 9850 3100
Wire Notes Line
	6500 4400 6550 4400
Wire Notes Line
	6550 4400 6550 4300
Wire Notes Line
	6700 4300 6700 4400
Wire Notes Line
	6850 4400 6850 4300
Wire Notes Line
	7000 4300 7000 4400
Wire Notes Line
	6550 4300 6700 4300
Wire Notes Line
	6700 4400 6850 4400
Wire Notes Line
	6850 4300 7000 4300
Wire Notes Line
	6550 4550 6700 4550
Wire Notes Line
	6700 4550 6700 4450
Wire Notes Line
	6850 4450 6850 4550
Wire Notes Line
	7000 4550 7000 4450
Wire Notes Line
	7150 4450 7150 4550
Wire Notes Line
	6550 4550 6550 4450
Wire Notes Line
	6550 4450 6500 4450
Wire Notes Line
	6700 4450 6850 4450
Wire Notes Line
	6850 4550 7000 4550
Wire Notes Line
	7000 4450 7150 4450
Wire Notes Line
	7150 4550 7300 4550
Wire Notes Line
	7300 4550 7300 4450
Wire Notes Line
	7450 4450 7450 4550
Wire Notes Line
	7600 4550 7600 4450
Wire Notes Line
	7750 4450 7750 4550
Wire Notes Line
	7300 4450 7450 4450
Wire Notes Line
	7450 4550 7600 4550
Wire Notes Line
	7600 4450 7750 4450
Wire Notes Line
	7000 4400 7150 4400
Wire Notes Line
	7150 4400 7150 4300
Wire Notes Line
	7300 4300 7300 4400
Wire Notes Line
	7450 4400 7450 4300
Wire Notes Line
	7600 4300 7600 4400
Wire Notes Line
	7150 4300 7300 4300
Wire Notes Line
	7300 4400 7450 4400
Wire Notes Line
	7450 4300 7600 4300
Wire Notes Line
	7600 4400 7750 4400
Wire Notes Line
	7750 4300 7750 4400
Wire Notes Line
	7900 4300 7900 4400
Wire Notes Line
	8050 4400 8050 4300
Wire Notes Line
	8200 4300 8200 4400
Wire Notes Line
	7750 4300 7900 4300
Wire Notes Line
	7900 4400 8050 4400
Wire Notes Line
	8050 4300 8200 4300
Wire Notes Line
	7750 4550 7900 4550
Wire Notes Line
	7900 4550 7900 4450
Wire Notes Line
	8050 4450 8050 4550
Wire Notes Line
	8200 4550 8200 4450
Wire Notes Line
	7900 4450 8050 4450
Wire Notes Line
	8050 4550 8200 4550
Wire Notes Line
	8200 4400 8250 4400
Wire Notes Line
	8250 4450 8200 4450
Text Notes 6100 3100 0    50   ~ 0
CLK_TX\n\nCLK_SAMPLE
Text Notes 6150 4550 0    50   ~ 0
CLK_TX\n\nCLK_RX
$Comp
L Device:R_US R1
U 1 1 647866BB
P 4400 3450
F 0 "R1" H 4332 3404 50  0000 R CNN
F 1 "10k" H 4332 3495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4440 3440 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	4400 3600 4400 3750
Connection ~ 4400 3750
Wire Wire Line
	4400 3750 4900 3750
Wire Wire Line
	4400 3300 4400 3150
Wire Wire Line
	4400 3150 4650 3150
Connection ~ 4650 3150
Wire Wire Line
	4650 3150 4650 2650
$Comp
L 74xx:74LS04 U?
U 3 1 645E53DD
P 6950 3650
AR Path="/63268641/645E53DD" Ref="U?"  Part="3" 
AR Path="/63268613/645E53DD" Ref="U10"  Part="3" 
F 0 "U10" H 6950 3333 50  0000 C CNN
F 1 "74LS04" H 6950 3424 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6950 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6950 3650 50  0001 C CNN
	3    6950 3650
	1    0    0    1   
$EndComp
Text Notes 5150 4650 0    50   ~ 0
Clock Divide
$EndSCHEMATC
