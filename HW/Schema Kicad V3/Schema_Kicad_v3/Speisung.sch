EESchema Schematic File Version 4
LIBS:Schema_Kicad_v3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
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
L Regulator_Switching:TPS61090 U?
U 1 1 5E3B1B4F
P 2850 4400
F 0 "U?" H 2850 5125 50  0000 C CNN
F 1 "TPS61090" H 2850 5034 50  0000 C CNN
F 2 "Package_DFN_QFN:Texas_S-PVQFN-N16_EP2.7x2.7mm_ThermalVias" H 1900 3350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61090.pdf" H 3000 3250 50  0001 L CNN
	1    2850 4400
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73871 U?
U 1 1 5E3B28A4
P 5500 1850
F 0 "U?" H 5500 2931 50  0000 C CNN
F 1 "MCP73871" H 5500 2840 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 5700 950 50  0001 L CIN
F 3 "http://www.mouser.com/ds/2/268/22090a-52174.pdf" H 5350 2400 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E3B470A
P 1250 4350
F 0 "C?" H 1365 4396 50  0000 L CNN
F 1 "10u" H 1365 4305 50  0000 L CNN
F 2 "" H 1288 4200 50  0001 C CNN
F 3 "~" H 1250 4350 50  0001 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5E3B48C1
P 2050 4000
F 0 "L?" V 2240 4000 50  0000 C CNN
F 1 "6.8uH" V 2149 4000 50  0000 C CNN
F 2 "" H 2050 4000 50  0001 C CNN
F 3 "~" H 2050 4000 50  0001 C CNN
	1    2050 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E3B9991
P 1700 4350
F 0 "C?" H 1815 4396 50  0000 L CNN
F 1 "100n" H 1815 4305 50  0000 L CNN
F 2 "" H 1738 4200 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3BA225
P 2150 4350
F 0 "R?" H 2220 4396 50  0000 L CNN
F 1 "1.87M" H 2220 4305 50  0000 L CNN
F 2 "" V 2080 4350 50  0001 C CNN
F 3 "~" H 2150 4350 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3BC697
P 2150 4850
F 0 "R?" H 2220 4896 50  0000 L CNN
F 1 "340k" H 2220 4805 50  0000 L CNN
F 2 "" V 2080 4850 50  0001 C CNN
F 3 "~" H 2150 4850 50  0001 C CNN
	1    2150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4000 2450 3900
Wire Wire Line
	2450 4000 2200 4000
Connection ~ 2450 4000
Wire Wire Line
	2150 4200 1700 4200
Connection ~ 1700 4200
Wire Wire Line
	1700 4200 1600 4200
$Comp
L power:+5V #PWR?
U 1 1 5E3BF677
P 4250 3900
F 0 "#PWR?" H 4250 3750 50  0001 C CNN
F 1 "+5V" H 4265 4073 50  0000 C CNN
F 2 "" H 4250 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E3C7EC9
P 4500 4200
F 0 "C?" H 4615 4246 50  0000 L CNN
F 1 "2.2u" H 4615 4155 50  0000 L CNN
F 2 "" H 4538 4050 50  0001 C CNN
F 3 "~" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3C88C6
P 3600 4200
F 0 "R?" H 3670 4246 50  0000 L CNN
F 1 "1.87M" H 3670 4155 50  0000 L CNN
F 2 "" V 3530 4200 50  0001 C CNN
F 3 "~" H 3600 4200 50  0001 C CNN
	1    3600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3C996C
P 4650 3900
F 0 "R?" V 4443 3900 50  0000 C CNN
F 1 "12k" V 4534 3900 50  0000 C CNN
F 2 "" V 4580 3900 50  0001 C CNN
F 3 "~" H 4650 3900 50  0001 C CNN
	1    4650 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E3CA069
P 5100 3900
F 0 "D?" H 5093 3645 50  0000 C CNN
F 1 "LED" H 5093 3736 50  0000 C CNN
F 2 "" H 5100 3900 50  0001 C CNN
F 3 "~" H 5100 3900 50  0001 C CNN
	1    5100 3900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3CB409
P 5400 3900
F 0 "#PWR?" H 5400 3650 50  0001 C CNN
F 1 "GND" H 5405 3727 50  0000 C CNN
F 2 "" H 5400 3900 50  0001 C CNN
F 3 "" H 5400 3900 50  0001 C CNN
	1    5400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3900 5400 3900
Wire Wire Line
	4800 3900 4950 3900
Wire Wire Line
	4500 3900 4250 3900
Wire Wire Line
	3300 4050 3300 4100
Wire Wire Line
	3300 4100 3250 4100
Wire Wire Line
	3300 4050 3600 4050
Connection ~ 3600 4050
Wire Wire Line
	3250 3900 3250 4000
Connection ~ 3250 4100
Connection ~ 3250 4000
Wire Wire Line
	3250 4000 3250 4100
Wire Wire Line
	4500 4350 4300 4350
$Comp
L power:GND #PWR?
U 1 1 5E3CCABF
P 4300 4350
F 0 "#PWR?" H 4300 4100 50  0001 C CNN
F 1 "GND" H 4305 4177 50  0000 C CNN
F 2 "" H 4300 4350 50  0001 C CNN
F 3 "" H 4300 4350 50  0001 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
Connection ~ 4300 4350
Wire Wire Line
	4300 4350 4100 4350
Wire Wire Line
	4250 4050 4250 3900
Connection ~ 4250 4050
Wire Wire Line
	4250 4050 4500 4050
Connection ~ 4250 3900
$Comp
L Device:R R?
U 1 1 5E3CD7C9
P 3850 4600
F 0 "R?" H 3920 4646 50  0000 L CNN
F 1 "200k" H 3920 4555 50  0000 L CNN
F 2 "" V 3780 4600 50  0001 C CNN
F 3 "~" H 3850 4600 50  0001 C CNN
	1    3850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4400 3600 4400
Wire Wire Line
	3600 4400 3450 4400
Wire Wire Line
	3450 4400 3450 4300
Wire Wire Line
	3450 4300 3250 4300
Connection ~ 3600 4400
Wire Wire Line
	3600 4400 3600 4350
$Comp
L power:GND #PWR?
U 1 1 5E3CE569
P 3850 4800
F 0 "#PWR?" H 3850 4550 50  0001 C CNN
F 1 "GND" H 3855 4627 50  0000 C CNN
F 2 "" H 3850 4800 50  0001 C CNN
F 3 "" H 3850 4800 50  0001 C CNN
	1    3850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4800 3850 4750
$Comp
L Device:R R?
U 1 1 5E3D00B0
P 4550 5900
F 0 "R?" H 4620 5946 50  0000 L CNN
F 1 "12k" H 4620 5855 50  0000 L CNN
F 2 "" V 4480 5900 50  0001 C CNN
F 3 "~" H 4550 5900 50  0001 C CNN
	1    4550 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E3D0546
P 4550 6300
F 0 "D?" V 4589 6183 50  0000 R CNN
F 1 "LED" V 4498 6183 50  0000 R CNN
F 2 "" H 4550 6300 50  0001 C CNN
F 3 "~" H 4550 6300 50  0001 C CNN
	1    4550 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3D1317
P 4550 6550
F 0 "#PWR?" H 4550 6300 50  0001 C CNN
F 1 "GND" H 4555 6377 50  0000 C CNN
F 2 "" H 4550 6550 50  0001 C CNN
F 3 "" H 4550 6550 50  0001 C CNN
	1    4550 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5650 4550 5750
Wire Wire Line
	4550 6050 4550 6150
Wire Wire Line
	4550 6450 4550 6550
Wire Wire Line
	1600 4000 1900 4000
Wire Wire Line
	1600 4000 1600 4200
Connection ~ 1600 4200
Wire Wire Line
	1600 4200 1250 4200
Wire Wire Line
	1700 4500 1500 4500
$Comp
L power:GND #PWR?
U 1 1 5E3D9863
P 1500 4500
F 0 "#PWR?" H 1500 4250 50  0001 C CNN
F 1 "GND" H 1505 4327 50  0000 C CNN
F 2 "" H 1500 4500 50  0001 C CNN
F 3 "" H 1500 4500 50  0001 C CNN
	1    1500 4500
	1    0    0    -1  
$EndComp
Connection ~ 1500 4500
Wire Wire Line
	1500 4500 1250 4500
Wire Wire Line
	2450 4400 2300 4400
Wire Wire Line
	2300 4400 2300 4600
Wire Wire Line
	2300 4600 2150 4600
Wire Wire Line
	2150 4600 2150 4700
Wire Wire Line
	2150 4500 2150 4600
Connection ~ 2150 4600
Wire Wire Line
	2450 4200 2150 4200
Connection ~ 2150 4200
Wire Wire Line
	2450 4300 2350 4300
Wire Wire Line
	2350 4300 2350 3550
$Comp
L Device:R R?
U 1 1 5E3DC8F1
P 2350 3400
F 0 "R?" H 2420 3446 50  0000 L CNN
F 1 "200k" H 2420 3355 50  0000 L CNN
F 2 "" V 2280 3400 50  0001 C CNN
F 3 "~" H 2350 3400 50  0001 C CNN
	1    2350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3200 2350 3250
$Comp
L power:GND #PWR?
U 1 1 5E3DDFCB
P 2150 5050
F 0 "#PWR?" H 2150 4800 50  0001 C CNN
F 1 "GND" H 2155 4877 50  0000 C CNN
F 2 "" H 2150 5050 50  0001 C CNN
F 3 "" H 2150 5050 50  0001 C CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5050 2150 5000
Wire Wire Line
	2450 4600 2450 5000
Wire Wire Line
	2450 5000 2650 5000
Wire Wire Line
	3050 5000 2950 5000
Connection ~ 2650 5000
Connection ~ 2750 5000
Wire Wire Line
	2750 5000 2650 5000
Connection ~ 2850 5000
Wire Wire Line
	2850 5000 2800 5000
Connection ~ 2950 5000
Wire Wire Line
	2950 5000 2850 5000
$Comp
L power:GND #PWR?
U 1 1 5E3E0C6B
P 2800 5000
F 0 "#PWR?" H 2800 4750 50  0001 C CNN
F 1 "GND" H 2805 4827 50  0000 C CNN
F 2 "" H 2800 5000 50  0001 C CNN
F 3 "" H 2800 5000 50  0001 C CNN
	1    2800 5000
	1    0    0    -1  
$EndComp
Connection ~ 2800 5000
Wire Wire Line
	2800 5000 2750 5000
Wire Wire Line
	3250 4400 3250 4600
Text GLabel 3300 5150 2    50   Input ~ 0
LOW_BAT
Wire Wire Line
	3300 5150 3250 5150
Connection ~ 3250 5150
Wire Wire Line
	3250 5150 3250 5450
$Comp
L Regulator_Linear:LM317L_SO8 U?
U 1 1 5E3E996A
P 8200 4650
F 0 "U?" H 8200 4892 50  0000 C CNN
F 1 "LM317L_SO8" H 8200 4801 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8200 4850 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs775k/snvs775k.pdf" H 8200 4450 50  0001 C CNN
	1    8200 4650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM2937xMP U?
U 1 1 5E3EA708
P 8150 3800
F 0 "U?" H 8150 4042 50  0000 C CNN
F 1 "LM2937xMP" H 8150 3951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8150 4025 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2937.pdf" H 8150 3750 50  0001 C CNN
	1    8150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E3EBAE5
P 7400 3950
F 0 "C?" H 7515 3996 50  0000 L CNN
F 1 "2.2u" H 7515 3905 50  0000 L CNN
F 2 "" H 7438 3800 50  0001 C CNN
F 3 "~" H 7400 3950 50  0001 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3800 7400 3800
Wire Wire Line
	7400 4100 8150 4100
$Comp
L Device:C C?
U 1 1 5E3F080D
P 7400 4800
F 0 "C?" H 7515 4846 50  0000 L CNN
F 1 "100n" H 7515 4755 50  0000 L CNN
F 2 "" H 7438 4650 50  0001 C CNN
F 3 "~" H 7400 4800 50  0001 C CNN
	1    7400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4650 7400 4650
$Comp
L Device:R R?
U 1 1 5E3F22A4
P 8750 4800
F 0 "R?" H 8820 4846 50  0000 L CNN
F 1 "240" H 8820 4755 50  0000 L CNN
F 2 "" V 8680 4800 50  0001 C CNN
F 3 "~" H 8750 4800 50  0001 C CNN
	1    8750 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3F2F57
P 8750 5200
F 0 "R?" H 8820 5246 50  0000 L CNN
F 1 "120" H 8820 5155 50  0000 L CNN
F 2 "" V 8680 5200 50  0001 C CNN
F 3 "~" H 8750 5200 50  0001 C CNN
	1    8750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4650 8500 4650
Wire Wire Line
	8750 4950 8200 4950
Wire Wire Line
	8750 5050 8750 4950
Connection ~ 8750 4950
$Comp
L power:GND #PWR?
U 1 1 5E3F7046
P 8750 5400
F 0 "#PWR?" H 8750 5150 50  0001 C CNN
F 1 "GND" H 8755 5227 50  0000 C CNN
F 2 "" H 8750 5400 50  0001 C CNN
F 3 "" H 8750 5400 50  0001 C CNN
	1    8750 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3F77A4
P 7400 5000
F 0 "#PWR?" H 7400 4750 50  0001 C CNN
F 1 "GND" H 7405 4827 50  0000 C CNN
F 2 "" H 7400 5000 50  0001 C CNN
F 3 "" H 7400 5000 50  0001 C CNN
	1    7400 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3F7EBC
P 8150 4150
F 0 "#PWR?" H 8150 3900 50  0001 C CNN
F 1 "GND" H 8155 3977 50  0000 C CNN
F 2 "" H 8150 4150 50  0001 C CNN
F 3 "" H 8150 4150 50  0001 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4150 8150 4100
Connection ~ 8150 4100
Wire Wire Line
	7400 5000 7400 4950
Wire Wire Line
	8750 5400 8750 5350
$Comp
L Device:C C?
U 1 1 5E3FC16F
P 9150 4800
F 0 "C?" H 9265 4846 50  0000 L CNN
F 1 "1u" H 9265 4755 50  0000 L CNN
F 2 "" H 9188 4650 50  0001 C CNN
F 3 "~" H 9150 4800 50  0001 C CNN
	1    9150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3FCC69
P 9150 5000
F 0 "#PWR?" H 9150 4750 50  0001 C CNN
F 1 "GND" H 9155 4827 50  0000 C CNN
F 2 "" H 9150 5000 50  0001 C CNN
F 3 "" H 9150 5000 50  0001 C CNN
	1    9150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5000 9150 4950
Wire Wire Line
	9150 4650 8750 4650
Connection ~ 8750 4650
$Comp
L power:+1V8 #PWR?
U 1 1 5E40038A
P 9150 4650
F 0 "#PWR?" H 9150 4500 50  0001 C CNN
F 1 "+1V8" H 9165 4823 50  0000 C CNN
F 2 "" H 9150 4650 50  0001 C CNN
F 3 "" H 9150 4650 50  0001 C CNN
	1    9150 4650
	1    0    0    -1  
$EndComp
Connection ~ 9150 4650
Connection ~ 3250 4600
Wire Wire Line
	3250 4600 3250 5150
$Comp
L power:+BATT #PWR?
U 1 1 5E418ACD
P 1600 4000
F 0 "#PWR?" H 1600 3850 50  0001 C CNN
F 1 "+BATT" H 1615 4173 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
Connection ~ 1600 4000
$Comp
L power:+BATT #PWR?
U 1 1 5E41B8CC
P 2350 3200
F 0 "#PWR?" H 2350 3050 50  0001 C CNN
F 1 "+BATT" H 2365 3373 50  0000 C CNN
F 2 "" H 2350 3200 50  0001 C CNN
F 3 "" H 2350 3200 50  0001 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5E41EC91
P 4550 4850
F 0 "#PWR?" H 4550 4700 50  0001 C CNN
F 1 "+BATT" H 4565 5023 50  0000 C CNN
F 2 "" H 4550 4850 50  0001 C CNN
F 3 "" H 4550 4850 50  0001 C CNN
	1    4550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4450 3850 4400
$Comp
L Device:Q_PNP_BEC Q?
U 1 1 5E428D20
P 4450 5450
F 0 "Q?" H 4640 5404 50  0000 L CNN
F 1 "Q_PNP_BEC" H 4640 5495 50  0000 L CNN
F 2 "" H 4650 5550 50  0001 C CNN
F 3 "~" H 4450 5450 50  0001 C CNN
	1    4450 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E42D776
P 4250 5150
F 0 "R?" H 4320 5196 50  0000 L CNN
F 1 "200k" H 4320 5105 50  0000 L CNN
F 2 "" V 4180 5150 50  0001 C CNN
F 3 "~" H 4250 5150 50  0001 C CNN
	1    4250 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E42F4EA
P 4050 5450
F 0 "R?" V 3843 5450 50  0000 C CNN
F 1 "200k" V 3934 5450 50  0000 C CNN
F 2 "" V 3980 5450 50  0001 C CNN
F 3 "~" H 4050 5450 50  0001 C CNN
	1    4050 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 5450 4200 5450
Wire Wire Line
	3250 5450 3900 5450
Wire Wire Line
	4250 5450 4250 5300
Connection ~ 4250 5450
Wire Wire Line
	4550 4850 4550 5000
Wire Wire Line
	4550 5000 4550 5250
Connection ~ 4550 5000
Wire Wire Line
	4250 5000 4550 5000
Wire Wire Line
	3600 4050 4100 4050
$Comp
L Device:C C?
U 1 1 5E43E3F1
P 4100 4200
F 0 "C?" H 4215 4246 50  0000 L CNN
F 1 "100u" H 4215 4155 50  0000 L CNN
F 2 "" H 4138 4050 50  0001 C CNN
F 3 "~" H 4100 4200 50  0001 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
Connection ~ 4100 4050
Wire Wire Line
	4100 4050 4250 4050
Wire Wire Line
	7400 4650 7100 4650
Wire Wire Line
	7100 4650 7100 3800
Wire Wire Line
	7100 3800 7400 3800
Connection ~ 7400 4650
Connection ~ 7400 3800
$Comp
L power:+5V #PWR?
U 1 1 5E4405E3
P 7100 3800
F 0 "#PWR?" H 7100 3650 50  0001 C CNN
F 1 "+5V" H 7115 3973 50  0000 C CNN
F 2 "" H 7100 3800 50  0001 C CNN
F 3 "" H 7100 3800 50  0001 C CNN
	1    7100 3800
	1    0    0    -1  
$EndComp
Connection ~ 7100 3800
$Comp
L Device:C C?
U 1 1 5E44120F
P 8800 3950
F 0 "C?" H 8915 3996 50  0000 L CNN
F 1 "1u" H 8915 3905 50  0000 L CNN
F 2 "" H 8838 3800 50  0001 C CNN
F 3 "~" H 8800 3950 50  0001 C CNN
	1    8800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4100 8150 4100
Wire Wire Line
	8450 3800 8800 3800
$Comp
L power:+3V3 #PWR?
U 1 1 5E4454AB
P 8800 3800
F 0 "#PWR?" H 8800 3650 50  0001 C CNN
F 1 "+3V3" H 8815 3973 50  0000 C CNN
F 2 "" H 8800 3800 50  0001 C CNN
F 3 "" H 8800 3800 50  0001 C CNN
	1    8800 3800
	1    0    0    -1  
$EndComp
Connection ~ 8800 3800
Wire Notes Line
	6650 3250 6650 5700
Wire Notes Line
	6650 5700 9650 5700
Wire Notes Line
	9650 5700 9650 3250
Wire Notes Line
	9650 3250 6650 3250
Text Notes 7800 3450 0    50   ~ 0
Spannungswandler
$Comp
L power:VBUS #PWR?
U 1 1 5E3C5D65
P 5950 900
F 0 "#PWR?" H 5950 750 50  0001 C CNN
F 1 "VBUS" H 5965 1073 50  0000 C CNN
F 2 "" H 5950 900 50  0001 C CNN
F 3 "" H 5950 900 50  0001 C CNN
	1    5950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 900  5500 900 
Wire Wire Line
	5500 900  5500 950 
$Comp
L power:+BATT #PWR?
U 1 1 5E45B050
P 6400 1250
F 0 "#PWR?" H 6400 1100 50  0001 C CNN
F 1 "+BATT" H 6415 1423 50  0000 C CNN
F 2 "" H 6400 1250 50  0001 C CNN
F 3 "" H 6400 1250 50  0001 C CNN
	1    6400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1250 6200 1250
$Comp
L power:GND #PWR?
U 1 1 5E45DF96
P 5500 2800
F 0 "#PWR?" H 5500 2550 50  0001 C CNN
F 1 "GND" H 5505 2627 50  0000 C CNN
F 2 "" H 5500 2800 50  0001 C CNN
F 3 "" H 5500 2800 50  0001 C CNN
	1    5500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2800 5500 2750
$Comp
L power:VBUS #PWR?
U 1 1 5E4603F5
P 4400 2250
F 0 "#PWR?" H 4400 2100 50  0001 C CNN
F 1 "VBUS" H 4415 2423 50  0000 C CNN
F 2 "" H 4400 2250 50  0001 C CNN
F 3 "" H 4400 2250 50  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2250 4800 2250
Wire Wire Line
	4800 2450 4800 2250
Connection ~ 4800 2250
$Comp
L power:VBUS #PWR?
U 1 1 5E464876
P 4600 1450
F 0 "#PWR?" H 4600 1300 50  0001 C CNN
F 1 "VBUS" H 4615 1623 50  0000 C CNN
F 2 "" H 4600 1450 50  0001 C CNN
F 3 "" H 4600 1450 50  0001 C CNN
	1    4600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1450 4800 1450
Wire Wire Line
	4800 1750 4600 1750
Wire Wire Line
	4600 1750 4600 1450
Connection ~ 4600 1450
NoConn ~ 6200 2050
$Comp
L Device:R R?
U 1 1 5E46AC92
P 4250 1450
F 0 "R?" H 4320 1496 50  0000 L CNN
F 1 "100k" H 4320 1405 50  0000 L CNN
F 2 "" V 4180 1450 50  0001 C CNN
F 3 "~" H 4250 1450 50  0001 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E46B4C5
P 4250 1000
F 0 "R?" H 4320 1046 50  0000 L CNN
F 1 "270k" H 4320 955 50  0000 L CNN
F 2 "" V 4180 1000 50  0001 C CNN
F 3 "~" H 4250 1000 50  0001 C CNN
	1    4250 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1250 4750 1250
Wire Wire Line
	4750 1250 4750 1200
Wire Wire Line
	4750 1200 4250 1200
Wire Wire Line
	4250 1200 4250 1150
Wire Wire Line
	4250 1300 4250 1200
Connection ~ 4250 1200
$Comp
L power:VBUS #PWR?
U 1 1 5E47055C
P 4250 800
F 0 "#PWR?" H 4250 650 50  0001 C CNN
F 1 "VBUS" H 4265 973 50  0000 C CNN
F 2 "" H 4250 800 50  0001 C CNN
F 3 "" H 4250 800 50  0001 C CNN
	1    4250 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E470B5C
P 4250 1650
F 0 "#PWR?" H 4250 1400 50  0001 C CNN
F 1 "GND" H 4255 1477 50  0000 C CNN
F 2 "" H 4250 1650 50  0001 C CNN
F 3 "" H 4250 1650 50  0001 C CNN
	1    4250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1650 4250 1600
Wire Wire Line
	4250 800  4250 850 
$Comp
L Device:LED D?
U 1 1 5E4954E5
P 7450 1650
F 0 "D?" V 7489 1533 50  0000 R CNN
F 1 "LED" V 7398 1533 50  0000 R CNN
F 2 "" H 7450 1650 50  0001 C CNN
F 3 "~" H 7450 1650 50  0001 C CNN
	1    7450 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E4954EB
P 7100 1650
F 0 "D?" V 7139 1533 50  0000 R CNN
F 1 "LED" V 7048 1533 50  0000 R CNN
F 2 "" H 7100 1650 50  0001 C CNN
F 3 "~" H 7100 1650 50  0001 C CNN
	1    7100 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 1500 7300 1500
$Comp
L Device:R R?
U 1 1 5E4954F4
P 7450 2100
F 0 "R?" H 7520 2146 50  0000 L CNN
F 1 "270k" H 7520 2055 50  0000 L CNN
F 2 "" V 7380 2100 50  0001 C CNN
F 3 "~" H 7450 2100 50  0001 C CNN
	1    7450 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E4954FA
P 7100 2100
F 0 "R?" H 7170 2146 50  0000 L CNN
F 1 "270k" H 7170 2055 50  0000 L CNN
F 2 "" V 7030 2100 50  0001 C CNN
F 3 "~" H 7100 2100 50  0001 C CNN
	1    7100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1800 7450 1950
Wire Wire Line
	7100 1950 7100 1800
Wire Wire Line
	7100 2250 6200 2250
Wire Wire Line
	6200 2350 7450 2350
Wire Wire Line
	7450 2350 7450 2250
$Comp
L power:VBUS #PWR?
U 1 1 5E4A4C87
P 7300 1500
F 0 "#PWR?" H 7300 1350 50  0001 C CNN
F 1 "VBUS" H 7315 1673 50  0000 C CNN
F 2 "" H 7300 1500 50  0001 C CNN
F 3 "" H 7300 1500 50  0001 C CNN
	1    7300 1500
	1    0    0    -1  
$EndComp
Connection ~ 7300 1500
Wire Wire Line
	7300 1500 7100 1500
Wire Wire Line
	6200 1750 6200 1550
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5E4A8232
P 6850 1350
F 0 "J?" V 6912 1394 50  0000 L CNN
F 1 "Akku" V 7003 1394 50  0000 L CNN
F 2 "" H 6850 1350 50  0001 C CNN
F 3 "~" H 6850 1350 50  0001 C CNN
	1    6850 1350
	0    1    1    0   
$EndComp
Connection ~ 6200 1550
$Comp
L power:GND #PWR?
U 1 1 5E4ABA46
P 6850 1600
F 0 "#PWR?" H 6850 1350 50  0001 C CNN
F 1 "GND" H 6855 1427 50  0000 C CNN
F 2 "" H 6850 1600 50  0001 C CNN
F 3 "" H 6850 1600 50  0001 C CNN
	1    6850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1600 6850 1550
$Comp
L Device:C C?
U 1 1 5E4AEA2F
P 6300 1850
F 0 "C?" H 6415 1896 50  0000 L CNN
F 1 "10u" H 6415 1805 50  0000 L CNN
F 2 "" H 6338 1700 50  0001 C CNN
F 3 "~" H 6300 1850 50  0001 C CNN
	1    6300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1700 6300 1550
Wire Wire Line
	6300 1550 6200 1550
$Comp
L power:GND #PWR?
U 1 1 5E4B2061
P 6400 2000
F 0 "#PWR?" H 6400 1750 50  0001 C CNN
F 1 "GND" H 6405 1827 50  0000 C CNN
F 2 "" H 6400 2000 50  0001 C CNN
F 3 "" H 6400 2000 50  0001 C CNN
	1    6400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2000 6300 2000
$Comp
L Device:R R?
U 1 1 5E4B593F
P 3800 2000
F 0 "R?" H 3870 2046 50  0000 L CNN
F 1 "10k" H 3870 1955 50  0000 L CNN
F 2 "" V 3730 2000 50  0001 C CNN
F 3 "~" H 3800 2000 50  0001 C CNN
	1    3800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E4B6193
P 3500 2000
F 0 "R?" H 3570 2046 50  0000 L CNN
F 1 "100k" H 3570 1955 50  0000 L CNN
F 2 "" V 3430 2000 50  0001 C CNN
F 3 "~" H 3500 2000 50  0001 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E4B636E
P 3200 2000
F 0 "R?" H 3270 2046 50  0000 L CNN
F 1 "1k" H 3270 1955 50  0000 L CNN
F 2 "" V 3130 2000 50  0001 C CNN
F 3 "~" H 3200 2000 50  0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2150 3500 2150
Connection ~ 3500 2150
Wire Wire Line
	3500 2150 3200 2150
$Comp
L power:GND #PWR?
U 1 1 5E4B97E2
P 3500 2150
F 0 "#PWR?" H 3500 1900 50  0001 C CNN
F 1 "GND" H 3505 1977 50  0000 C CNN
F 2 "" H 3500 2150 50  0001 C CNN
F 3 "" H 3500 2150 50  0001 C CNN
	1    3500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1850 4100 1850
Wire Wire Line
	4100 1850 4100 2050
Wire Wire Line
	4100 2050 4800 2050
Wire Wire Line
	3500 1850 3500 1800
Wire Wire Line
	3500 1800 4150 1800
Wire Wire Line
	4150 1800 4150 1850
Wire Wire Line
	4150 1850 4800 1850
Wire Wire Line
	4800 1650 4400 1650
Wire Wire Line
	4400 1650 4400 1800
Wire Wire Line
	4400 1800 4200 1800
Wire Wire Line
	4200 1800 4200 1750
Wire Wire Line
	4200 1750 3200 1750
Wire Wire Line
	3200 1750 3200 1850
$Comp
L Switch:SW_Push SW?
U 1 1 5E4D130D
P 6550 1550
F 0 "SW?" H 6550 1835 50  0000 C CNN
F 1 "SW_Push" H 6550 1744 50  0000 C CNN
F 2 "" H 6550 1750 50  0001 C CNN
F 3 "~" H 6550 1750 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1550 6300 1550
Connection ~ 6300 1550
$Comp
L Connector:USB_B_Micro J?
U 1 1 5E4D619B
P 1400 1550
F 0 "J?" H 1457 2017 50  0000 C CNN
F 1 "USB_B_Micro" H 1457 1926 50  0000 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "~" H 1550 1500 50  0001 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E4DB424
P 2000 1350
F 0 "SW?" H 2000 1635 50  0000 C CNN
F 1 "SW_Push" H 2000 1544 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "~" H 2000 1550 50  0001 C CNN
	1    2000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 5E4DC30C
P 2350 1350
F 0 "#PWR?" H 2350 1200 50  0001 C CNN
F 1 "VBUS" H 2365 1523 50  0000 C CNN
F 2 "" H 2350 1350 50  0001 C CNN
F 3 "" H 2350 1350 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4DC7E7
P 2300 1500
F 0 "C?" H 2415 1546 50  0000 L CNN
F 1 "10u" H 2415 1455 50  0000 L CNN
F 2 "" H 2338 1350 50  0001 C CNN
F 3 "~" H 2300 1500 50  0001 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1650 2300 2000
Wire Wire Line
	2300 2000 1750 2000
Wire Wire Line
	1400 2000 1400 1950
Wire Wire Line
	2350 1350 2300 1350
Connection ~ 2300 1350
Wire Wire Line
	2300 1350 2200 1350
Wire Wire Line
	1800 1350 1700 1350
$Comp
L power:GND #PWR?
U 1 1 5E4EA2A6
P 1750 2000
F 0 "#PWR?" H 1750 1750 50  0001 C CNN
F 1 "GND" H 1755 1827 50  0000 C CNN
F 2 "" H 1750 2000 50  0001 C CNN
F 3 "" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
Connection ~ 1750 2000
Wire Wire Line
	1750 2000 1400 2000
Text HLabel 1750 1550 2    50   Input ~ 0
D+
Text HLabel 1750 1650 2    50   Input ~ 0
D-
NoConn ~ 1700 1750
Wire Wire Line
	1400 2000 1300 2000
Wire Wire Line
	1300 2000 1300 1950
Connection ~ 1400 2000
Wire Wire Line
	1750 1550 1700 1550
Wire Wire Line
	1700 1650 1750 1650
Text HLabel 8600 3800 1    50   Input ~ 0
3.3V
Text HLabel 8950 4650 1    50   Input ~ 0
1.8V
Text HLabel 4400 3900 1    50   Input ~ 0
5V
Text HLabel 1950 2000 3    50   Input ~ 0
GND
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 5E506BBC
P 9400 1900
F 0 "JP?" H 9400 2139 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 9400 2048 50  0000 C CNN
F 2 "" H 9400 1900 50  0001 C CNN
F 3 "~" H 9400 1900 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
Text HLabel 9400 2050 3    50   Input ~ 0
5V
$Comp
L power:+5V #PWR?
U 1 1 5E5071D4
P 9000 1900
F 0 "#PWR?" H 9000 1750 50  0001 C CNN
F 1 "+5V" H 9015 2073 50  0000 C CNN
F 2 "" H 9000 1900 50  0001 C CNN
F 3 "" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 5E507905
P 9800 1900
F 0 "#PWR?" H 9800 1750 50  0001 C CNN
F 1 "VBUS" H 9815 2073 50  0000 C CNN
F 2 "" H 9800 1900 50  0001 C CNN
F 3 "" H 9800 1900 50  0001 C CNN
	1    9800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1900 9650 1900
Wire Wire Line
	9400 2050 9400 2000
Wire Wire Line
	9150 1900 9000 1900
$EndSCHEMATC
