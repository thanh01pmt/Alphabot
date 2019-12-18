EESchema Schematic File Version 4
LIBS:Schema_Kicad_v3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5DF1AD95
P 5600 3700
F 0 "U?" H 5600 2111 50  0000 C CNN
F 1 "ATmega328P-AU" H 5600 2020 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5600 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5600 3700 50  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Text HLabel 7050 4200 2    50   Input ~ 0
Rx
Text HLabel 7050 4300 2    50   Input ~ 0
Tx
$Comp
L Device:R R?
U 1 1 5DF1E220
P 6650 4200
F 0 "R?" V 6443 4200 50  0000 C CNN
F 1 "1k" V 6534 4200 50  0000 C CNN
F 2 "" V 6580 4200 50  0001 C CNN
F 3 "~" H 6650 4200 50  0001 C CNN
	1    6650 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF1E8B6
P 6650 4300
F 0 "R?" V 6850 4300 50  0000 C CNN
F 1 "1k" V 6750 4300 50  0000 C CNN
F 2 "" V 6580 4300 50  0001 C CNN
F 3 "~" H 6650 4300 50  0001 C CNN
	1    6650 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 4200 6800 4200
Wire Wire Line
	6500 4200 6200 4200
Wire Wire Line
	6200 4300 6500 4300
Wire Wire Line
	6800 4300 7050 4300
$Comp
L power:+5V #PWR?
U 1 1 5DF1FE1E
P 5600 2150
F 0 "#PWR?" H 5600 2000 50  0001 C CNN
F 1 "+5V" H 5615 2323 50  0000 C CNN
F 2 "" H 5600 2150 50  0001 C CNN
F 3 "" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2200 5600 2150
Wire Wire Line
	5700 2200 5600 2200
Connection ~ 5600 2200
$Comp
L power:GND #PWR?
U 1 1 5DF20EA2
P 5150 5200
F 0 "#PWR?" H 5150 4950 50  0001 C CNN
F 1 "GND" H 5155 5027 50  0000 C CNN
F 2 "" H 5150 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF217C5
P 7500 5500
F 0 "C?" H 7615 5546 50  0000 L CNN
F 1 "1u" H 7615 5455 50  0000 L CNN
F 2 "" H 7538 5350 50  0001 C CNN
F 3 "~" H 7500 5500 50  0001 C CNN
	1    7500 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5DF21E89
P 7850 5500
F 0 "C?" H 7968 5546 50  0000 L CNN
F 1 "4.7u" H 7968 5455 50  0000 L CNN
F 2 "" H 7888 5350 50  0001 C CNN
F 3 "~" H 7850 5500 50  0001 C CNN
	1    7850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5200 5150 5200
$Comp
L Device:C C?
U 1 1 5DF23134
P 4350 2650
F 0 "C?" H 4465 2696 50  0000 L CNN
F 1 "100n" H 4465 2605 50  0000 L CNN
F 2 "" H 4388 2500 50  0001 C CNN
F 3 "~" H 4350 2650 50  0001 C CNN
	1    4350 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2476A
P 4350 2900
F 0 "#PWR?" H 4350 2650 50  0001 C CNN
F 1 "GND" H 4355 2727 50  0000 C CNN
F 2 "" H 4350 2900 50  0001 C CNN
F 3 "" H 4350 2900 50  0001 C CNN
	1    4350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2900 4350 2800
Wire Wire Line
	4350 2500 5000 2500
Connection ~ 7850 5350
Wire Wire Line
	7850 5350 7500 5350
Connection ~ 7850 5650
Wire Wire Line
	7850 5650 7500 5650
$Comp
L power:GND #PWR?
U 1 1 5DF260EE
P 7850 5750
F 0 "#PWR?" H 7850 5500 50  0001 C CNN
F 1 "GND" H 7855 5577 50  0000 C CNN
F 2 "" H 7850 5750 50  0001 C CNN
F 3 "" H 7850 5750 50  0001 C CNN
	1    7850 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DF26500
P 7850 5250
F 0 "#PWR?" H 7850 5100 50  0001 C CNN
F 1 "+5V" H 7865 5423 50  0000 C CNN
F 2 "" H 7850 5250 50  0001 C CNN
F 3 "" H 7850 5250 50  0001 C CNN
	1    7850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5350 7850 5250
Wire Wire Line
	7850 5750 7850 5650
$Comp
L Device:C C?
U 1 1 5DF2798C
P 7750 3450
F 0 "C?" H 7865 3496 50  0000 L CNN
F 1 "15p" H 7865 3405 50  0000 L CNN
F 2 "" H 7788 3300 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5DF2876B
P 7450 3300
F 0 "Y?" H 7450 3032 50  0000 C CNN
F 1 "16MHz" H 7450 3123 50  0000 C CNN
F 2 "" H 7450 3300 50  0001 C CNN
F 3 "~" H 7450 3300 50  0001 C CNN
	1    7450 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5DF297E2
P 7150 3450
F 0 "C?" H 7265 3496 50  0000 L CNN
F 1 "15p" H 7265 3405 50  0000 L CNN
F 2 "" H 7188 3300 50  0001 C CNN
F 3 "~" H 7150 3450 50  0001 C CNN
	1    7150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3300 7600 3300
Wire Wire Line
	7300 3300 7150 3300
Wire Wire Line
	7150 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3200
Connection ~ 7150 3300
Text HLabel 6450 3000 2    50   Input ~ 0
D13SCK
Text HLabel 6450 2900 2    50   Input ~ 0
D12MISO
Text HLabel 6450 2800 2    50   Input ~ 0
D11MOSI
Text HLabel 6450 2700 2    50   Input ~ 0
D10
Text HLabel 6450 2600 2    50   Input ~ 0
D9
Text HLabel 6450 2500 2    50   Input ~ 0
D8
Wire Wire Line
	7300 3100 7300 2950
Wire Wire Line
	7300 2950 7750 2950
Wire Wire Line
	7750 2950 7750 3300
Wire Wire Line
	6200 3100 7300 3100
Connection ~ 7750 3300
Wire Wire Line
	6200 3000 6300 3000
Wire Wire Line
	6450 2900 6200 2900
Wire Wire Line
	6200 2800 6450 2800
Wire Wire Line
	6200 2700 6450 2700
Wire Wire Line
	6200 2600 6450 2600
Wire Wire Line
	6200 2500 6450 2500
Text HLabel 6450 3400 2    50   Input ~ 0
A0
Text HLabel 6450 3500 2    50   Input ~ 0
A1
Text HLabel 6450 3600 2    50   Input ~ 0
A2
Text HLabel 6450 3700 2    50   Input ~ 0
A3
Text HLabel 6450 3800 2    50   Input ~ 0
A4
Text HLabel 6450 3900 2    50   Input ~ 0
A5
Text HLabel 4950 2700 0    50   Input ~ 0
A6
Text HLabel 4950 2800 0    50   Input ~ 0
A7
Wire Wire Line
	5000 2700 4950 2700
Wire Wire Line
	4950 2800 5000 2800
Wire Wire Line
	6200 3400 6450 3400
Wire Wire Line
	6450 3500 6200 3500
Wire Wire Line
	6200 3600 6450 3600
Wire Wire Line
	6450 3700 6200 3700
Wire Wire Line
	6200 3800 6450 3800
Wire Wire Line
	6450 3900 6200 3900
Text HLabel 6450 4400 2    50   Input ~ 0
D2
Text HLabel 6450 4500 2    50   Input ~ 0
D3
Text HLabel 6450 4600 2    50   Input ~ 0
D4
Text HLabel 6450 4700 2    50   Input ~ 0
D5
Text HLabel 6450 4800 2    50   Input ~ 0
D6
Text HLabel 6450 4900 2    50   Input ~ 0
D7
Wire Wire Line
	6200 4400 6450 4400
Wire Wire Line
	6450 4500 6200 4500
Wire Wire Line
	6200 4600 6450 4600
Wire Wire Line
	6200 4700 6450 4700
Wire Wire Line
	6200 4800 6450 4800
Wire Wire Line
	6450 4900 6200 4900
$Comp
L Device:CP C?
U 1 1 5DF47CE4
P 8250 5500
F 0 "C?" H 8368 5546 50  0000 L CNN
F 1 "4.7u" H 8368 5455 50  0000 L CNN
F 2 "" H 8288 5350 50  0001 C CNN
F 3 "~" H 8250 5500 50  0001 C CNN
	1    8250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5350 7850 5350
Wire Wire Line
	7850 5650 8250 5650
$Comp
L Device:R R?
U 1 1 5DF59506
P 8200 3850
F 0 "R?" H 8270 3896 50  0000 L CNN
F 1 "1k" H 8270 3805 50  0000 L CNN
F 2 "" V 8130 3850 50  0001 C CNN
F 3 "~" H 8200 3850 50  0001 C CNN
	1    8200 3850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5DF5B0B3
P 8700 4000
F 0 "SW?" H 8700 4285 50  0000 C CNN
F 1 "SW_Push" H 8700 4194 50  0000 C CNN
F 2 "" H 8700 4200 50  0001 C CNN
F 3 "~" H 8700 4200 50  0001 C CNN
	1    8700 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DF605EB
P 8200 3650
F 0 "#PWR?" H 8200 3500 50  0001 C CNN
F 1 "+5V" H 8215 3823 50  0000 C CNN
F 2 "" H 8200 3650 50  0001 C CNN
F 3 "" H 8200 3650 50  0001 C CNN
	1    8200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4000 8200 4000
Wire Wire Line
	8500 4000 8200 4000
Connection ~ 8200 4000
$Comp
L power:GND #PWR?
U 1 1 5DF63F83
P 8950 4000
F 0 "#PWR?" H 8950 3750 50  0001 C CNN
F 1 "GND" H 8955 3827 50  0000 C CNN
F 2 "" H 8950 4000 50  0001 C CNN
F 3 "" H 8950 4000 50  0001 C CNN
	1    8950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4000 8950 4000
Wire Wire Line
	8200 3650 8200 3700
$Comp
L power:GND #PWR?
U 1 1 5DF69A04
P 7750 2700
F 0 "#PWR?" H 7750 2450 50  0001 C CNN
F 1 "GND" H 7755 2527 50  0000 C CNN
F 2 "" H 7750 2700 50  0001 C CNN
F 3 "" H 7750 2700 50  0001 C CNN
	1    7750 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E03A677
P 7050 2700
F 0 "R?" V 6843 2700 50  0000 C CNN
F 1 "1k" V 6934 2700 50  0000 C CNN
F 2 "" V 6980 2700 50  0001 C CNN
F 3 "~" H 7050 2700 50  0001 C CNN
	1    7050 2700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E03A93C
P 7450 2700
F 0 "D?" H 7443 2445 50  0000 C CNN
F 1 "LED" H 7443 2536 50  0000 C CNN
F 2 "" H 7450 2700 50  0001 C CNN
F 3 "~" H 7450 2700 50  0001 C CNN
	1    7450 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 2700 7200 2700
Wire Wire Line
	6900 2700 6900 3050
Wire Wire Line
	6900 3050 6300 3050
Wire Wire Line
	6300 3050 6300 3000
Connection ~ 6300 3000
Wire Wire Line
	6300 3000 6450 3000
Wire Wire Line
	7750 2700 7600 2700
Wire Wire Line
	7150 3600 7750 3600
$EndSCHEMATC
