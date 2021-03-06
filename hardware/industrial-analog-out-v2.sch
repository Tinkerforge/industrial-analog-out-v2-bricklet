EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Industrial Analog Out"
Date "2018-03-13"
Rev "2.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2018, L.Lauer <lukas@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6900 7650 2    47   ~ 0
Copyright Tinkerforge GmbH 2018.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
$Comp
L industrial-analog-out-v2-rescue:GND #PWR1
U 1 1 50066B39
P 850 2350
F 0 "#PWR1" H 850 2350 30  0001 C CNN
F 1 "GND" H 850 2280 30  0001 C CNN
F 2 "" H 850 2350 60  0001 C CNN
F 3 "" H 850 2350 60  0001 C CNN
	1    850  2350
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:DRILL U5
U 1 1 5006691C
P 10650 6950
F 0 "U5" H 10700 7000 60  0001 C CNN
F 1 "DRILL" H 10650 6950 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6950 60  0001 C CNN
F 3 "" H 10650 6950 60  0001 C CNN
	1    10650 6950
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:DRILL U4
U 1 1 5006691A
P 10650 6700
F 0 "U4" H 10700 6750 60  0001 C CNN
F 1 "DRILL" H 10650 6700 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6700 60  0001 C CNN
F 3 "" H 10650 6700 60  0001 C CNN
	1    10650 6700
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:DRILL U6
U 1 1 50066918
P 11000 6700
F 0 "U6" H 11050 6750 60  0001 C CNN
F 1 "DRILL" H 11000 6700 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6700 60  0001 C CNN
F 3 "" H 11000 6700 60  0001 C CNN
	1    11000 6700
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:DRILL U7
U 1 1 50066905
P 11000 6950
F 0 "U7" H 11050 7000 60  0001 C CNN
F 1 "DRILL" H 11000 6950 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6950 60  0001 C CNN
F 3 "" H 11000 6950 60  0001 C CNN
	1    11000 6950
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:+5V #PWR2
U 1 1 5326F89A
P 1300 750
F 0 "#PWR2" H 1300 840 20  0001 C CNN
F 1 "+5V" H 1300 840 30  0000 C CNN
F 2 "" H 1300 750 60  0000 C CNN
F 3 "" H 1300 750 60  0000 C CNN
	1    1300 750 
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:CONN_8 P2
U 1 1 5429473E
P 11050 2900
F 0 "P2" V 11000 2900 60  0000 C CNN
F 1 "CONN_8" V 11100 2900 60  0000 C CNN
F 2 "kicad-libraries:OQ_8P" H 11050 2900 60  0001 C CNN
F 3 "" H 11050 2900 60  0000 C CNN
	1    11050 2900
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:DACX760 U3
U 1 1 551BE46E
P 5900 2750
F 0 "U3" H 5800 3700 60  0000 C CNN
F 1 "DACX760" H 5900 2750 60  0000 C CNN
F 2 "kicad-libraries:TSSOP24-44-PWR" H 5900 2750 60  0001 C CNN
F 3 "" H 5900 2750 60  0000 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R R4
U 1 1 551BF5C3
P 5050 2150
F 0 "R4" V 5130 2150 50  0000 C CNN
F 1 "10k" V 5050 2150 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 5050 2150 60  0001 C CNN
F 3 "" H 5050 2150 60  0000 C CNN
	1    5050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2450 5050 2450
Wire Wire Line
	5050 2450 5050 2400
$Comp
L industrial-analog-out-v2-rescue:3V3 #PWR10
U 1 1 551C00BE
P 5050 700
F 0 "#PWR10" H 5050 800 40  0001 C CNN
F 1 "3V3" H 5050 825 40  0000 C CNN
F 2 "" H 5050 700 60  0001 C CNN
F 3 "" H 5050 700 60  0001 C CNN
	1    5050 700 
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:3V3 #PWR15
U 1 1 551C059C
P 5650 700
F 0 "#PWR15" H 5650 800 40  0001 C CNN
F 1 "3V3" H 5650 825 40  0000 C CNN
F 2 "" H 5650 700 60  0001 C CNN
F 3 "" H 5650 700 60  0001 C CNN
	1    5650 700 
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR11
U 1 1 551C1520
P 5100 4400
F 0 "#PWR11" H 5100 4400 30  0001 C CNN
F 1 "GND" H 5100 4330 30  0001 C CNN
F 2 "" H 5100 4400 60  0001 C CNN
F 3 "" H 5100 4400 60  0001 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2750 5100 2750
Wire Wire Line
	5100 2550 5100 2750
Wire Wire Line
	5200 2550 5100 2550
Connection ~ 5100 2750
$Comp
L industrial-analog-out-v2-rescue:GND #PWR16
U 1 1 551C19D5
P 5750 4400
F 0 "#PWR16" H 5750 4400 30  0001 C CNN
F 1 "GND" H 5750 4330 30  0001 C CNN
F 2 "" H 5750 4400 60  0001 C CNN
F 3 "" H 5750 4400 60  0001 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3700 5750 3800
Wire Wire Line
	5650 3700 5650 3800
Wire Wire Line
	5650 3800 5750 3800
Connection ~ 5750 3800
Wire Wire Line
	5850 3800 5850 3700
$Comp
L industrial-analog-out-v2-rescue:C C8
U 1 1 551C1FBA
P 6100 4000
F 0 "C8" H 6150 4100 50  0000 L CNN
F 1 "100nF" H 6150 3900 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 6100 4000 60  0001 C CNN
F 3 "" H 6100 4000 60  0001 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR18
U 1 1 551C21F4
P 6100 4400
F 0 "#PWR18" H 6100 4400 30  0001 C CNN
F 1 "GND" H 6100 4330 30  0001 C CNN
F 2 "" H 6100 4400 60  0001 C CNN
F 3 "" H 6100 4400 60  0001 C CNN
	1    6100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3700 6100 3800
Wire Wire Line
	6100 3800 6350 3800
Wire Wire Line
	6350 3800 6350 3700
Wire Wire Line
	6100 4200 6100 4400
Connection ~ 6100 3800
$Comp
L industrial-analog-out-v2-rescue:C C6
U 1 1 551C2D5B
P 5450 850
F 0 "C6" V 5300 800 50  0000 L CNN
F 1 "100nF" V 5600 750 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 5450 850 60  0001 C CNN
F 3 "" H 5450 850 60  0001 C CNN
	1    5450 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1750 5650 850 
Connection ~ 5650 850 
$Comp
L industrial-analog-out-v2-rescue:GND #PWR12
U 1 1 551C36E3
P 5200 950
F 0 "#PWR12" H 5200 950 30  0001 C CNN
F 1 "GND" H 5200 880 30  0001 C CNN
F 2 "" H 5200 950 60  0001 C CNN
F 3 "" H 5200 950 60  0001 C CNN
	1    5200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1900 5050 700 
$Comp
L industrial-analog-out-v2-rescue:C C9
U 1 1 551C3C0C
P 6700 750
F 0 "C9" V 6550 700 50  0000 L CNN
F 1 "100nF" V 6650 800 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 6700 750 60  0001 C CNN
F 3 "" H 6700 750 60  0001 C CNN
	1    6700 750 
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C10
U 1 1 551C3E2A
P 6700 1050
F 0 "C10" V 6550 1000 50  0000 L CNN
F 1 "100pF" V 6650 1100 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 6700 1050 60  0001 C CNN
F 3 "" H 6700 1050 60  0001 C CNN
	1    6700 1050
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR23
U 1 1 551C4EED
P 7100 1200
F 0 "#PWR23" H 7100 1200 30  0001 C CNN
F 1 "GND" H 7100 1130 30  0001 C CNN
F 2 "" H 7100 1200 60  0001 C CNN
F 3 "" H 7100 1200 60  0001 C CNN
	1    7100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1050 7100 1050
Wire Wire Line
	6900 750  7100 750 
$Comp
L industrial-analog-out-v2-rescue:+12V #PWR19
U 1 1 551C5937
P 6300 700
F 0 "#PWR19" H 6300 650 20  0001 C CNN
F 1 "+12V" H 6300 800 30  0000 C CNN
F 2 "" H 6300 700 60  0000 C CNN
F 3 "" H 6300 700 60  0000 C CNN
	1    6300 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 700  6300 750 
Wire Wire Line
	6500 750  6300 750 
Connection ~ 6300 750 
Wire Wire Line
	6500 1050 6300 1050
Connection ~ 6300 1050
$Comp
L industrial-analog-out-v2-rescue:GND #PWR13
U 1 1 551C82C6
P 5200 1650
F 0 "#PWR13" H 5200 1650 30  0001 C CNN
F 1 "GND" H 5200 1580 30  0001 C CNN
F 2 "" H 5200 1650 60  0001 C CNN
F 3 "" H 5200 1650 60  0001 C CNN
	1    5200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1600 5400 1750
NoConn ~ 5400 3700
$Comp
L industrial-analog-out-v2-rescue:R R5
U 1 1 551C9533
P 5500 4000
F 0 "R5" V 5580 4000 50  0000 C CNN
F 1 "DNP" V 5500 4000 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 5500 4000 60  0001 C CNN
F 3 "" H 5500 4000 60  0000 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR14
U 1 1 551C98A9
P 5500 4400
F 0 "#PWR14" H 5500 4400 30  0001 C CNN
F 1 "GND" H 5500 4330 30  0001 C CNN
F 2 "" H 5500 4400 60  0001 C CNN
F 3 "" H 5500 4400 60  0001 C CNN
	1    5500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3750 5500 3700
Wire Wire Line
	5500 4250 5500 4400
$Comp
L industrial-analog-out-v2-rescue:R R6
U 1 1 551CB2BD
P 7500 2350
F 0 "R6" V 7450 2550 50  0000 C CNN
F 1 "15" V 7500 2350 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 7500 2350 60  0001 C CNN
F 3 "" H 7500 2350 60  0000 C CNN
	1    7500 2350
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R R7
U 1 1 551CB792
P 7500 2550
F 0 "R7" V 7450 2750 50  0000 C CNN
F 1 "15" V 7500 2550 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 7500 2550 60  0001 C CNN
F 3 "" H 7500 2550 60  0000 C CNN
	1    7500 2550
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C11
U 1 1 551CB92A
P 6900 2450
F 0 "C11" V 6850 2500 50  0000 L CNN
F 1 "1nF" V 6950 2500 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 6900 2450 60  0001 C CNN
F 3 "" H 6900 2450 60  0001 C CNN
	1    6900 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 2450 6700 2450
Wire Wire Line
	7100 2450 7200 2450
Wire Wire Line
	7200 2450 7200 2550
Wire Wire Line
	6550 2550 7200 2550
Connection ~ 7200 2550
Wire Wire Line
	6550 2350 7250 2350
Wire Wire Line
	7750 2350 7850 2350
Wire Wire Line
	7850 2350 7850 2550
Wire Wire Line
	7750 2550 7850 2550
Connection ~ 7850 2550
NoConn ~ 6550 3100
$Comp
L industrial-analog-out-v2-rescue:GND #PWR20
U 1 1 551CD234
P 6850 4400
F 0 "#PWR20" H 6850 4400 30  0001 C CNN
F 1 "GND" H 6850 4330 30  0001 C CNN
F 2 "" H 6850 4400 60  0001 C CNN
F 3 "" H 6850 4400 60  0001 C CNN
	1    6850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3000 6850 3000
Wire Wire Line
	6850 3000 6850 4400
Wire Wire Line
	6550 3200 8200 3200
Wire Wire Line
	7100 750  7100 1050
Connection ~ 7100 1050
$Comp
L industrial-analog-out-v2-rescue:GND #PWR17
U 1 1 551DD56C
P 5900 1650
F 0 "#PWR17" H 5900 1650 30  0001 C CNN
F 1 "GND" H 5900 1580 30  0001 C CNN
F 2 "" H 5900 1650 60  0001 C CNN
F 3 "" H 5900 1650 60  0001 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1650 5900 1600
Wire Wire Line
	5900 1600 6050 1600
Wire Wire Line
	6050 1600 6050 1750
$Comp
L industrial-analog-out-v2-rescue:+12V #PWR33
U 1 1 551DF6B5
P 10450 1300
F 0 "#PWR33" H 10450 1250 20  0001 C CNN
F 1 "+12V" H 10450 1400 30  0000 C CNN
F 2 "" H 10450 1300 60  0000 C CNN
F 3 "" H 10450 1300 60  0000 C CNN
	1    10450 1300
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:FUSE F1
U 1 1 551E30D0
P 10450 1650
F 0 "F1" H 10550 1700 40  0000 C CNN
F 1 "OZCJ0035FF2G" H 10350 1600 40  0000 C CNN
F 2 "kicad-libraries:C1206" H 10450 1650 60  0001 C CNN
F 3 "" H 10450 1650 60  0000 C CNN
	1    10450 1650
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:INDUCT L4
U 1 1 551E36C5
P 8450 2550
F 0 "L4" V 8530 2550 50  0000 C CNN
F 1 "FB" V 8350 2550 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 8450 2550 60  0001 C CNN
F 3 "" H 8450 2550 60  0000 C CNN
	1    8450 2550
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R R8
U 1 1 551E3D7C
P 8450 3200
F 0 "R8" V 8400 3400 50  0000 C CNN
F 1 "10" V 8450 3200 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 8450 3200 60  0001 C CNN
F 3 "" H 8450 3200 60  0000 C CNN
	1    8450 3200
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:TVS2 D3
U 1 1 551E4211
P 8850 3200
F 0 "D3" H 8895 3360 40  0000 C CNN
F 1 "DESD1P0RFW" H 8945 3040 40  0000 C CNN
F 2 "kicad-libraries:SOT23-3" V 8850 3275 60  0001 C CNN
F 3 "" V 8850 3275 60  0000 C CNN
	1    8850 3200
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR34
U 1 1 551E607B
P 10550 4400
F 0 "#PWR34" H 10550 4400 30  0001 C CNN
F 1 "GND" H 10550 4330 30  0001 C CNN
F 2 "" H 10550 4400 60  0001 C CNN
F 3 "" H 10550 4400 60  0001 C CNN
	1    10550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 3250 10700 3250
Wire Wire Line
	10550 3050 10700 3050
Wire Wire Line
	10550 2850 10700 2850
Wire Wire Line
	10450 2750 10700 2750
Wire Wire Line
	10450 2550 10700 2550
Wire Wire Line
	10450 1900 10450 2200
$Comp
L industrial-analog-out-v2-rescue:TVS D4
U 1 1 551E7E53
P 10200 2200
F 0 "D4" H 10150 2300 40  0000 C CNN
F 1 "CDSOD323-T15SC" H 10200 2100 40  0000 C CNN
F 2 "kicad-libraries:SOD-323" H 10200 2200 60  0001 C CNN
F 3 "" H 10200 2200 60  0000 C CNN
	1    10200 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 1300 10450 1400
Connection ~ 10450 2200
Connection ~ 10450 2550
$Comp
L industrial-analog-out-v2-rescue:GND #PWR31
U 1 1 551E8C85
P 9950 2300
F 0 "#PWR31" H 9950 2300 30  0001 C CNN
F 1 "GND" H 9950 2230 30  0001 C CNN
F 2 "" H 9950 2300 60  0001 C CNN
F 3 "" H 9950 2300 60  0001 C CNN
	1    9950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2300 9950 2200
$Comp
L industrial-analog-out-v2-rescue:TVS2 D2
U 1 1 551E9268
P 8850 2550
F 0 "D2" H 8895 2710 40  0000 C CNN
F 1 "DESD1P0RFW" H 8945 2390 40  0000 C CNN
F 2 "kicad-libraries:SOT23-3" V 8850 2625 60  0001 C CNN
F 3 "" V 8850 2625 60  0000 C CNN
	1    8850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2550 8950 2550
Wire Wire Line
	9800 2550 9800 2950
Wire Wire Line
	9800 2950 10700 2950
Connection ~ 8950 2550
Wire Wire Line
	9800 3200 9800 3150
Wire Wire Line
	9800 3150 10700 3150
Connection ~ 8950 3200
$Comp
L industrial-analog-out-v2-rescue:+12V #PWR26
U 1 1 551E9F9B
P 8850 2300
F 0 "#PWR26" H 8850 2250 20  0001 C CNN
F 1 "+12V" H 8850 2400 30  0000 C CNN
F 2 "" H 8850 2300 60  0000 C CNN
F 3 "" H 8850 2300 60  0000 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2300 8850 2350
$Comp
L industrial-analog-out-v2-rescue:+12V #PWR28
U 1 1 551EB129
P 8850 2950
F 0 "#PWR28" H 8850 2900 20  0001 C CNN
F 1 "+12V" H 8850 3050 30  0000 C CNN
F 2 "" H 8850 2950 60  0000 C CNN
F 3 "" H 8850 2950 60  0000 C CNN
	1    8850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3000 8850 2950
$Comp
L industrial-analog-out-v2-rescue:GND #PWR27
U 1 1 551EBBA4
P 8850 2800
F 0 "#PWR27" H 8850 2800 30  0001 C CNN
F 1 "GND" H 8850 2730 30  0001 C CNN
F 2 "" H 8850 2800 60  0001 C CNN
F 3 "" H 8850 2800 60  0001 C CNN
	1    8850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2800 8850 2750
$Comp
L industrial-analog-out-v2-rescue:GND #PWR29
U 1 1 551EC1E8
P 8850 4400
F 0 "#PWR29" H 8850 4400 30  0001 C CNN
F 1 "GND" H 8850 4330 30  0001 C CNN
F 2 "" H 8850 4400 60  0001 C CNN
F 3 "" H 8850 4400 60  0001 C CNN
	1    8850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3400 8850 4400
Wire Wire Line
	7850 6100 7850 5650
$Comp
L industrial-analog-out-v2-rescue:GND #PWR24
U 1 1 5547B17C
P 7850 6100
F 0 "#PWR24" H 7850 6100 30  0001 C CNN
F 1 "GND" H 7850 6030 30  0001 C CNN
F 2 "" H 7850 6100 60  0001 C CNN
F 3 "" H 7850 6100 60  0001 C CNN
	1    7850 6100
	1    0    0    -1  
$EndComp
Connection ~ 8200 4950
Connection ~ 8400 4950
Wire Wire Line
	8200 5500 8200 5450
Wire Wire Line
	8350 5500 8200 5500
$Comp
L industrial-analog-out-v2-rescue:R R1
U 1 1 5547AACC
P 8200 5200
F 0 "R1" V 8280 5200 50  0000 C CNN
F 1 "1M" V 8200 5200 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 8200 5200 60  0001 C CNN
F 3 "" H 8200 5200 60  0000 C CNN
	1    8200 5200
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C2
U 1 1 5547AA0C
P 7850 5450
F 0 "C2" V 7700 5400 50  0000 L CNN
F 1 "4.7µF" V 7800 5500 50  0000 L CNN
F 2 "kicad-libraries:C0805" H 7850 5450 60  0001 C CNN
F 3 "" H 7850 5450 60  0001 C CNN
	1    7850 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 4950 7850 4950
Wire Wire Line
	8400 5150 8400 4950
Wire Wire Line
	8550 5150 8400 5150
Connection ~ 9100 4950
Wire Wire Line
	9100 5150 8950 5150
Wire Wire Line
	9100 4950 9100 5150
Wire Wire Line
	9050 4950 9100 4950
Wire Wire Line
	9500 5250 9500 5500
Connection ~ 10000 4950
Connection ~ 10000 5250
Wire Wire Line
	10000 4950 10000 5250
Wire Wire Line
	10000 5500 9950 5500
Connection ~ 9500 5500
Wire Wire Line
	9150 5500 9500 5500
Wire Wire Line
	9500 6100 9500 6000
Wire Wire Line
	10250 5650 10250 6100
Wire Wire Line
	9600 4950 10000 4950
$Comp
L industrial-analog-out-v2-rescue:GND #PWR32
U 1 1 55479F2B
P 10250 6100
F 0 "#PWR32" H 10250 6100 30  0001 C CNN
F 1 "GND" H 10250 6030 30  0001 C CNN
F 2 "" H 10250 6100 60  0001 C CNN
F 3 "" H 10250 6100 60  0001 C CNN
	1    10250 6100
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R R3
U 1 1 55479DC6
P 9750 5250
F 0 "R3" V 9830 5250 50  0000 C CNN
F 1 "118k" V 9750 5250 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 9750 5250 60  0001 C CNN
F 3 "" H 9750 5250 60  0000 C CNN
	1    9750 5250
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR30
U 1 1 55479999
P 9500 6100
F 0 "#PWR30" H 9500 6100 30  0001 C CNN
F 1 "GND" H 9500 6030 30  0001 C CNN
F 2 "" H 9500 6100 60  0001 C CNN
F 3 "" H 9500 6100 60  0001 C CNN
	1    9500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6100 8750 5850
$Comp
L industrial-analog-out-v2-rescue:C C4
U 1 1 554795FF
P 9750 5500
F 0 "C4" V 9700 5550 50  0000 L CNN
F 1 "270pF" V 9850 5550 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 9750 5500 60  0001 C CNN
F 3 "" H 9750 5500 60  0001 C CNN
	1    9750 5500
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R R2
U 1 1 5547946F
P 9500 5750
F 0 "R2" V 9580 5750 50  0000 C CNN
F 1 "13.3k" V 9500 5750 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 9500 5750 60  0001 C CNN
F 3 "" H 9500 5750 60  0000 C CNN
	1    9500 5750
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C5
U 1 1 55479137
P 10250 5450
F 0 "C5" V 10100 5400 50  0000 L CNN
F 1 "4.7µF" V 10200 5500 50  0000 L CNN
F 2 "kicad-libraries:C0805" H 10250 5450 60  0001 C CNN
F 3 "" H 10250 5450 60  0001 C CNN
	1    10250 5450
	-1   0    0    1   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:DIODESCH D1
U 1 1 55478E56
P 9400 4950
F 0 "D1" H 9400 5050 40  0000 C CNN
F 1 "B0520LW" H 9400 4850 40  0000 C CNN
F 2 "kicad-libraries:SOD-123" H 9400 4950 60  0001 C CNN
F 3 "" H 9400 4950 60  0000 C CNN
	1    9400 4950
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:INDUCTOR L2
U 1 1 55478A9A
P 8750 4950
F 0 "L2" V 8700 4950 40  0000 C CNN
F 1 "10µH" V 8850 4950 40  0000 C CNN
F 2 "kicad-libraries:NR3030" H 8750 4950 60  0001 C CNN
F 3 "" H 8750 4950 60  0000 C CNN
	1    8750 4950
	-1   0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR25
U 1 1 554785D5
P 8750 6100
F 0 "#PWR25" H 8750 6100 30  0001 C CNN
F 1 "GND" H 8750 6030 30  0001 C CNN
F 2 "" H 8750 6100 60  0001 C CNN
F 3 "" H 8750 6100 60  0001 C CNN
	1    8750 6100
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:LMR62014X U1
U 1 1 554783D5
P 8750 5500
F 0 "U1" H 8450 5200 60  0000 C CNN
F 1 "LMR62014X" H 9050 5200 60  0000 C CNN
F 2 "kicad-libraries:SOT23-5" H 8750 5500 60  0001 C CNN
F 3 "" H 8750 5500 60  0000 C CNN
	1    8750 5500
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:+5V #PWR21
U 1 1 551D9F61
P 7050 4850
F 0 "#PWR21" H 7050 4940 20  0001 C CNN
F 1 "+5V" H 7050 4940 30  0000 C CNN
F 2 "" H 7050 4850 60  0000 C CNN
F 3 "" H 7050 4850 60  0000 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:+12V #PWR36
U 1 1 551D7236
P 10950 4900
F 0 "#PWR36" H 10950 4850 20  0001 C CNN
F 1 "+12V" H 10950 5000 30  0000 C CNN
F 2 "" H 10950 4900 60  0000 C CNN
F 3 "" H 10950 4900 60  0000 C CNN
	1    10950 4900
	1    0    0    -1  
$EndComp
Connection ~ 7850 4950
Connection ~ 10250 4950
$Comp
L industrial-analog-out-v2-rescue:INDUCT L3
U 1 1 5547E852
P 10600 4950
F 0 "L3" V 10680 4950 50  0000 C CNN
F 1 "FB" V 10500 4950 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 10600 4950 60  0001 C CNN
F 3 "" H 10600 4950 60  0000 C CNN
	1    10600 4950
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C7
U 1 1 5547EBDA
P 10850 5450
F 0 "C7" V 10700 5400 50  0000 L CNN
F 1 "4.7µF" V 10800 5500 50  0000 L CNN
F 2 "kicad-libraries:C0805" H 10850 5450 60  0001 C CNN
F 3 "" H 10850 5450 60  0001 C CNN
	1    10850 5450
	-1   0    0    1   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR35
U 1 1 5547EC52
P 10850 6100
F 0 "#PWR35" H 10850 6100 30  0001 C CNN
F 1 "GND" H 10850 6030 30  0001 C CNN
F 2 "" H 10850 6100 60  0001 C CNN
F 3 "" H 10850 6100 60  0001 C CNN
	1    10850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4950 10250 5250
Wire Wire Line
	10850 5250 10850 4950
Wire Wire Line
	10950 4900 10950 4950
Wire Wire Line
	10950 4950 10850 4950
Wire Wire Line
	10850 6100 10850 5650
Connection ~ 10850 4950
$Comp
L industrial-analog-out-v2-rescue:INDUCT L1
U 1 1 55480197
P 7500 4950
F 0 "L1" V 7580 4950 50  0000 C CNN
F 1 "FB" V 7400 4950 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 7500 4950 60  0001 C CNN
F 3 "" H 7500 4950 60  0000 C CNN
	1    7500 4950
	0    1    1    0   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C1
U 1 1 55480353
P 7050 5450
F 0 "C1" V 6900 5400 50  0000 L CNN
F 1 "4.7µF" V 7000 5500 50  0000 L CNN
F 2 "kicad-libraries:C0805" H 7050 5450 60  0001 C CNN
F 3 "" H 7050 5450 60  0001 C CNN
	1    7050 5450
	-1   0    0    1   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR22
U 1 1 55480405
P 7050 6100
F 0 "#PWR22" H 7050 6100 30  0001 C CNN
F 1 "GND" H 7050 6030 30  0001 C CNN
F 2 "" H 7050 6100 60  0001 C CNN
F 3 "" H 7050 6100 60  0001 C CNN
	1    7050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 6100 7050 5650
Wire Wire Line
	7250 4950 7050 4950
Wire Wire Line
	7050 4850 7050 4950
Connection ~ 7050 4950
Wire Wire Line
	7850 4950 7850 5250
$Comp
L industrial-analog-out-v2-rescue:C C3
U 1 1 50065789
P 1650 1050
F 0 "C3" H 1700 1150 50  0000 L CNN
F 1 "10uF" H 1700 950 50  0000 L CNN
F 2 "kicad-libraries:C0805" H 1650 1050 60  0001 C CNN
F 3 "" H 1650 1050 60  0001 C CNN
	1    1650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3200 8950 3200
Wire Wire Line
	10700 2650 10550 2650
Wire Wire Line
	10550 2650 10550 2850
Connection ~ 10550 2850
Connection ~ 10550 3050
Connection ~ 10550 3250
Wire Wire Line
	5400 1600 5200 1600
Wire Wire Line
	5200 1600 5200 1650
Wire Wire Line
	5250 850  5200 850 
Wire Wire Line
	5200 850  5200 950 
$Comp
L industrial-analog-out-v2-rescue:CON-SENSOR2 P1
U 1 1 5AA8B3AC
P 850 1500
F 0 "P1" H 700 1900 60  0000 C CNN
F 1 "CON-SENSOR2" V 1000 1500 60  0000 C CNN
F 2 "kicad-libraries:CON-SENSOR2" H 950 1350 60  0001 C CNN
F 3 "" H 950 1350 60  0000 C CNN
	1    850  1500
	-1   0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C13
U 1 1 5AA8C413
P 2150 1050
F 0 "C13" H 2200 1150 50  0000 L CNN
F 1 "1uF" H 2200 950 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 2150 1050 60  0001 C CNN
F 3 "" H 2150 1050 60  0001 C CNN
	1    2150 1050
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:3V3 #PWR5
U 1 1 5AA8D071
P 2150 750
F 0 "#PWR5" H 2150 850 40  0001 C CNN
F 1 "3V3" H 2150 875 40  0000 C CNN
F 2 "" H 2150 750 60  0001 C CNN
F 3 "" H 2150 750 60  0001 C CNN
	1    2150 750 
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR6
U 1 1 5AA8E27C
P 2150 1350
F 0 "#PWR6" H 2150 1350 30  0001 C CNN
F 1 "GND" H 2150 1280 30  0001 C CNN
F 2 "" H 2150 1350 60  0001 C CNN
F 3 "" H 2150 1350 60  0001 C CNN
	1    2150 1350
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C12
U 1 1 5AA8E7F1
P 1450 2050
F 0 "C12" H 1500 2150 50  0000 L CNN
F 1 "220pF" H 1500 1950 50  0000 L CNN
F 2 "kicad-libraries:C0402F" H 1450 2050 60  0001 C CNN
F 3 "" H 1450 2050 60  0001 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R_PACK4 RP1
U 1 1 5AA8EBA9
P 1850 1850
F 0 "RP1" H 1850 2300 50  0000 C CNN
F 1 "82" H 1850 1800 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 1850 1850 50  0001 C CNN
F 3 "" H 1850 1850 50  0000 C CNN
	1    1850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1300 1650 1300
Wire Wire Line
	2150 1250 2150 1300
Wire Wire Line
	1650 1250 1650 1300
Connection ~ 1650 1300
Connection ~ 2150 1300
Wire Wire Line
	1200 1400 1450 1400
Wire Wire Line
	1450 1400 1450 800 
Wire Wire Line
	1450 800  1650 800 
Wire Wire Line
	2150 750  2150 800 
Connection ~ 2150 800 
Wire Wire Line
	1650 850  1650 800 
Connection ~ 1650 800 
Wire Wire Line
	1300 750  1300 1200
Wire Wire Line
	1300 1200 1200 1200
Wire Wire Line
	1200 1500 1650 1500
Wire Wire Line
	1650 1600 1200 1600
Wire Wire Line
	1200 1700 1650 1700
Wire Wire Line
	1200 1800 1450 1800
Wire Wire Line
	1450 1850 1450 1800
Connection ~ 1450 1800
$Comp
L industrial-analog-out-v2-rescue:GND #PWR3
U 1 1 5AA9142B
P 1450 2350
F 0 "#PWR3" H 1450 2350 30  0001 C CNN
F 1 "GND" H 1450 2280 30  0001 C CNN
F 2 "" H 1450 2350 60  0001 C CNN
F 3 "" H 1450 2350 60  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2250 1450 2350
Wire Wire Line
	850  1950 850  2350
Wire Wire Line
	2050 1500 2300 1500
Wire Wire Line
	2050 1600 2300 1600
Wire Wire Line
	2050 1700 2300 1700
Wire Wire Line
	2050 1800 2300 1800
Text GLabel 2300 1500 2    47   Output ~ 0
S-CS
Text GLabel 2300 1600 2    47   Output ~ 0
S-CLK
Text GLabel 2300 1700 2    47   Output ~ 0
S-MOSI
Text GLabel 2300 1800 2    47   Input ~ 0
S-MISO
$Comp
L industrial-analog-out-v2-rescue:XMC1XXX24 U2
U 1 1 5AA96366
P 3650 7000
F 0 "U2" H 3500 7400 60  0000 C CNN
F 1 "XMC1100" H 3650 6600 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 3800 7750 60  0001 C CNN
F 3 "" H 3800 7750 60  0000 C CNN
	1    3650 7000
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:XMC1XXX24 U2
U 2 1 5AA9641D
P 3650 3300
F 0 "U2" H 3500 3850 60  0000 C CNN
F 1 "XMC1100" H 3650 2750 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 3800 4050 60  0001 C CNN
F 3 "" H 3800 4050 60  0000 C CNN
	2    3650 3300
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:XMC1XXX24 U2
U 3 1 5AA964B2
P 3650 4550
F 0 "U2" H 3500 4800 60  0000 C CNN
F 1 "XMC1100" H 3650 4300 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 3800 5300 60  0001 C CNN
F 3 "" H 3800 5300 60  0000 C CNN
	3    3650 4550
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:XMC1XXX24 U2
U 4 1 5AA96558
P 3650 5650
F 0 "U2" H 3500 6100 60  0000 C CNN
F 1 "XMC1100" H 3650 5200 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 3800 6400 60  0001 C CNN
F 3 "" H 3800 6400 60  0000 C CNN
	4    3650 5650
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:C C14
U 1 1 5AA989EA
P 3100 6950
F 0 "C14" H 3150 7050 50  0000 L CNN
F 1 "100nF" H 3150 6850 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 3100 6950 60  0001 C CNN
F 3 "" H 3100 6950 60  0001 C CNN
	1    3100 6950
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR9
U 1 1 5AA994B2
P 3100 7350
F 0 "#PWR9" H 3100 7350 30  0001 C CNN
F 1 "GND" H 3100 7280 30  0001 C CNN
F 2 "" H 3100 7350 60  0001 C CNN
F 3 "" H 3100 7350 60  0001 C CNN
	1    3100 7350
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:3V3 #PWR8
U 1 1 5AA996C5
P 3100 6650
F 0 "#PWR8" H 3100 6750 40  0001 C CNN
F 1 "3V3" H 3100 6775 40  0000 C CNN
F 2 "" H 3100 6650 60  0001 C CNN
F 3 "" H 3100 6650 60  0001 C CNN
	1    3100 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7150 3100 7200
Wire Wire Line
	3300 7200 3100 7200
Connection ~ 3100 7200
Wire Wire Line
	3300 7300 3100 7300
Connection ~ 3100 7300
Wire Wire Line
	3100 6650 3100 6700
Wire Wire Line
	3300 6700 3100 6700
Connection ~ 3100 6700
Text GLabel 3050 4600 0    47   Input ~ 0
S-MOSI
Text GLabel 3050 4700 0    47   Input ~ 0
S-CLK
Wire Wire Line
	3300 4600 3050 4600
Wire Wire Line
	3050 4700 3300 4700
$Comp
L industrial-analog-out-v2-rescue:CONN_01X01 P3
U 1 1 5AAA3BFB
P 2850 2850
F 0 "P3" H 2850 2950 50  0000 C CNN
F 1 "DEBUG" V 2950 2850 50  0000 C CNN
F 2 "kicad-libraries:DEBUG_PAD" H 2850 2850 50  0001 C CNN
F 3 "" H 2850 2850 50  0000 C CNN
	1    2850 2850
	-1   0    0    1   
$EndComp
Text GLabel 3050 3150 0    47   Output ~ 0
S-MISO
Text GLabel 3050 3350 0    47   Input ~ 0
S-CS
$Comp
L industrial-analog-out-v2-rescue:R_PACK4 RP2
U 1 1 5AAA790D
P 2850 3900
F 0 "RP2" H 2850 4350 50  0000 C CNN
F 1 "82" H 2850 3850 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 2850 3900 50  0001 C CNN
F 3 "" H 2850 3900 50  0000 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
Text GLabel 2550 3550 0    47   Output ~ 0
M-CS
Text GLabel 2550 3650 0    47   Output ~ 0
M-CLK
Text GLabel 2550 3750 0    47   Input ~ 0
M-MISO
Text GLabel 2550 3850 0    47   Output ~ 0
M-MOSI
Wire Wire Line
	2650 3550 2550 3550
Wire Wire Line
	2550 3650 2650 3650
Wire Wire Line
	2650 3750 2550 3750
Wire Wire Line
	2550 3850 2650 3850
Wire Wire Line
	3050 3550 3300 3550
Wire Wire Line
	3300 3650 3050 3650
Wire Wire Line
	3050 3750 3300 3750
Wire Wire Line
	3050 3350 3300 3350
Wire Wire Line
	3300 3150 3050 3150
Wire Wire Line
	3050 2850 3300 2850
Wire Wire Line
	3050 3850 3150 3850
Wire Wire Line
	3150 3850 3150 3950
Wire Wire Line
	3150 3950 3250 3950
Text GLabel 3250 3950 2    47   Input ~ 0
P0.2
Text GLabel 3050 5300 0    47   Output ~ 0
P0.2
Wire Wire Line
	3050 5300 3300 5300
NoConn ~ 3300 3450
NoConn ~ 3300 3250
NoConn ~ 3300 3050
NoConn ~ 3300 2950
NoConn ~ 3300 5500
NoConn ~ 3300 5600
NoConn ~ 3300 5700
NoConn ~ 3300 5800
NoConn ~ 3300 6000
$Comp
L industrial-analog-out-v2-rescue:LED D5
U 1 1 5AAB3B63
P 1950 4400
F 0 "D5" H 1950 4500 50  0000 C CNN
F 1 "blue" H 1950 4300 50  0000 C CNN
F 2 "kicad-libraries:D0603F" H 1950 4400 50  0001 C CNN
F 3 "" H 1950 4400 50  0000 C CNN
	1    1950 4400
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:3V3 #PWR4
U 1 1 5AAB4864
P 1700 4350
F 0 "#PWR4" H 1700 4450 40  0001 C CNN
F 1 "3V3" H 1700 4450 40  0000 C CNN
F 2 "" H 1700 4350 60  0001 C CNN
F 3 "" H 1700 4350 60  0001 C CNN
	1    1700 4350
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:CONN_01X02 P4
U 1 1 5AABA086
P 2850 5950
F 0 "P4" H 2850 6100 50  0000 C CNN
F 1 "BOOT" V 2950 5950 50  0000 C CNN
F 2 "kicad-libraries:SolderJumper" H 2850 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0000 C CNN
	1    2850 5950
	-1   0    0    1   
$EndComp
$Comp
L industrial-analog-out-v2-rescue:GND #PWR7
U 1 1 5AABD265
P 3100 6050
F 0 "#PWR7" H 3100 6050 30  0001 C CNN
F 1 "GND" H 3100 5980 30  0001 C CNN
F 2 "" H 3100 6050 60  0001 C CNN
F 3 "" H 3100 6050 60  0001 C CNN
	1    3100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5900 3050 5900
Wire Wire Line
	3050 6000 3100 6000
Wire Wire Line
	3100 6000 3100 6050
Text Notes 700  3250 0    47   ~ 0
SPI Slave\nP1.2 : USIC0_CH1-DOUT0 : MOSI\nP0.7 : USIC0_CH1-DX0D : MISO\nP1.3 : USIC0_CH1-SCLKOUT: CLK\nP0.9 : USIC0_CH1-DX2B : SEL\n
Text Notes 700  3800 0    47   ~ 0
SPI Master\nP0.13 : USIC0_CH0-SELO4    : SEL\nP0.14 : USIC0_CH0-SCLKOUT : CLK\nP0.15 : USIC0_CH0-DX0B    : MISO\nP2.0  : USIC0_CH0-DOUT0   : MOSI
Text GLabel 4750 2650 0    47   Input ~ 0
M-CS
Text GLabel 4750 3200 0    47   Input ~ 0
M-CLK
Text GLabel 4750 3000 0    47   Output ~ 0
M-MISO
Text GLabel 4750 3100 0    47   Input ~ 0
M-MOSI
Wire Wire Line
	4750 2650 5200 2650
Wire Wire Line
	5200 3000 4750 3000
Wire Wire Line
	4750 3100 5200 3100
Wire Wire Line
	5200 3200 4750 3200
NoConn ~ 3300 5400
Wire Wire Line
	2600 4400 3300 4400
Wire Wire Line
	1750 4400 1700 4400
Wire Wire Line
	1700 4350 1700 4400
$Comp
L industrial-analog-out-v2-rescue:LED D6
U 1 1 5AAF65DF
P 1950 4700
F 0 "D6" H 1950 4800 50  0000 C CNN
F 1 "blue" H 1950 4600 50  0000 C CNN
F 2 "kicad-libraries:D0603F" H 1950 4700 50  0001 C CNN
F 3 "" H 1950 4700 50  0000 C CNN
	1    1950 4700
	1    0    0    -1  
$EndComp
$Comp
L industrial-analog-out-v2-rescue:R_PACK4 RP3
U 1 1 5AAF66DC
P 2400 4750
F 0 "RP3" H 2400 5200 50  0000 C CNN
F 1 "1k" H 2400 4700 50  0000 C CNN
F 2 "kicad-libraries:4X0603" H 2400 4750 50  0001 C CNN
F 3 "" H 2400 4750 50  0000 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
NoConn ~ 2200 4500
NoConn ~ 2200 4600
NoConn ~ 2600 4600
NoConn ~ 2600 4500
Wire Wire Line
	3300 4500 2700 4500
Wire Wire Line
	2700 4500 2700 4700
Wire Wire Line
	2700 4700 2600 4700
Wire Wire Line
	2200 4400 2150 4400
Wire Wire Line
	2200 4700 2150 4700
Wire Wire Line
	1700 4700 1750 4700
Connection ~ 1700 4400
Wire Wire Line
	5100 2750 5100 4400
Wire Wire Line
	5750 3800 5750 4400
Wire Wire Line
	5750 3800 5850 3800
Wire Wire Line
	5650 850  5650 700 
Wire Wire Line
	6300 750  6300 1050
Wire Wire Line
	6300 1050 6300 1750
Wire Wire Line
	7200 2550 7250 2550
Wire Wire Line
	7850 2550 8200 2550
Wire Wire Line
	7100 1050 7100 1200
Wire Wire Line
	10450 2200 10450 2550
Wire Wire Line
	10450 2550 10450 2750
Wire Wire Line
	8950 2550 9800 2550
Wire Wire Line
	8950 3200 9800 3200
Wire Wire Line
	8200 4950 8400 4950
Wire Wire Line
	8400 4950 8450 4950
Wire Wire Line
	9100 4950 9200 4950
Wire Wire Line
	10000 4950 10250 4950
Wire Wire Line
	10000 5250 10000 5500
Wire Wire Line
	9500 5500 9550 5500
Wire Wire Line
	7850 4950 8200 4950
Wire Wire Line
	10250 4950 10350 4950
Wire Wire Line
	7050 4950 7050 5250
Wire Wire Line
	10550 2850 10550 3050
Wire Wire Line
	10550 3050 10550 3250
Wire Wire Line
	10550 3250 10550 4400
Wire Wire Line
	1650 1300 2150 1300
Wire Wire Line
	2150 1300 2150 1350
Wire Wire Line
	2150 800  2150 850 
Wire Wire Line
	1650 800  2150 800 
Wire Wire Line
	1450 1800 1650 1800
Wire Wire Line
	3100 7200 3100 7300
Wire Wire Line
	3100 7300 3100 7350
Wire Wire Line
	3100 6700 3100 6750
Wire Wire Line
	1700 4400 1700 4700
$EndSCHEMATC
