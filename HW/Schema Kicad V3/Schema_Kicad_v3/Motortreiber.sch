EESchema Schematic File Version 4
LIBS:Schema_Kicad_v3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L Driver_Motor:TB6612FNG U?
U 1 1 5DF3B9A4
P 4800 3700
F 0 "U?" H 4800 4881 50  0000 C CNN
F 1 "TB6612FNG" H 4800 4790 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 5250 4300 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/us/product/linear/motordriver/detail.TB6612FNG.html" H 5250 4300 50  0001 C CNN
	1    4800 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DF3C49B
P 4500 2600
F 0 "#PWR?" H 4500 2450 50  0001 C CNN
F 1 "+5V" H 4515 2773 50  0000 C CNN
F 2 "" H 4500 2600 50  0001 C CNN
F 3 "" H 4500 2600 50  0001 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF3C695
P 4500 4800
F 0 "#PWR?" H 4500 4550 50  0001 C CNN
F 1 "GND" H 4505 4627 50  0000 C CNN
F 2 "" H 4500 4800 50  0001 C CNN
F 3 "" H 4500 4800 50  0001 C CNN
	1    4500 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF3CA0B
P 6900 3650
F 0 "C?" H 7015 3696 50  0000 L CNN
F 1 "100nF" H 7015 3605 50  0000 L CNN
F 2 "" H 6938 3500 50  0001 C CNN
F 3 "~" H 6900 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5DF3CE0E
P 7400 3650
F 0 "C?" H 7518 3696 50  0000 L CNN
F 1 "10uF" H 7518 3605 50  0000 L CNN
F 2 "" H 7438 3500 50  0001 C CNN
F 3 "~" H 7400 3650 50  0001 C CNN
	1    7400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2700 5000 2700
Connection ~ 4900 2700
Wire Wire Line
	4900 2700 4500 2700
Connection ~ 5000 2700
Wire Wire Line
	5000 2700 4900 2700
Wire Wire Line
	4500 2600 4500 2700
Connection ~ 4500 2700
Wire Wire Line
	5100 4700 5000 4700
Connection ~ 4800 4700
Wire Wire Line
	4800 4700 4500 4700
Connection ~ 4900 4700
Wire Wire Line
	4900 4700 4800 4700
Connection ~ 5000 4700
Wire Wire Line
	5000 4700 4900 4700
Wire Wire Line
	4500 4800 4500 4700
Connection ~ 4500 4700
$Comp
L Device:C C?
U 1 1 5DF3E14D
P 6400 3650
F 0 "C?" H 6515 3696 50  0000 L CNN
F 1 "100nF" H 6515 3605 50  0000 L CNN
F 2 "" H 6438 3500 50  0001 C CNN
F 3 "~" H 6400 3650 50  0001 C CNN
	1    6400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3500 6900 3500
Connection ~ 6900 3500
Wire Wire Line
	6900 3500 6400 3500
Wire Wire Line
	6400 3800 6900 3800
Connection ~ 6900 3800
Wire Wire Line
	6900 3800 7400 3800
$Comp
L power:+5V #PWR?
U 1 1 5DF3FFE8
P 6900 3500
F 0 "#PWR?" H 6900 3350 50  0001 C CNN
F 1 "+5V" H 6915 3673 50  0000 C CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF4063B
P 6900 3800
F 0 "#PWR?" H 6900 3550 50  0001 C CNN
F 1 "GND" H 6905 3627 50  0000 C CNN
F 2 "" H 6900 3800 50  0001 C CNN
F 3 "" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Text HLabel 5500 3350 2    50   Input ~ 0
AO1
Text HLabel 5500 3550 2    50   Input ~ 0
AO2
Text HLabel 5500 3850 2    50   Input ~ 0
BO1
Text HLabel 5500 4050 2    50   Input ~ 0
BO2
Text HLabel 4100 3300 0    50   Input ~ 0
STBY
Text HLabel 4100 3500 0    50   Input ~ 0
PWMA
Text HLabel 4100 3600 0    50   Input ~ 0
PWMB
Text HLabel 4100 3800 0    50   Input ~ 0
AIN1
Text HLabel 4100 3900 0    50   Input ~ 0
AIN2
Text HLabel 4100 4000 0    50   Input ~ 0
BIN1
Text HLabel 4100 4100 0    50   Input ~ 0
BIN2
Wire Wire Line
	4200 3300 4100 3300
Wire Wire Line
	4200 3500 4100 3500
Wire Wire Line
	4200 3600 4100 3600
Wire Wire Line
	4200 3800 4100 3800
Wire Wire Line
	4200 3900 4100 3900
Wire Wire Line
	4200 4000 4100 4000
Wire Wire Line
	4100 4100 4200 4100
Wire Wire Line
	5400 3300 5400 3350
Wire Wire Line
	5500 3350 5400 3350
Connection ~ 5400 3350
Wire Wire Line
	5400 3350 5400 3400
Wire Wire Line
	5400 3500 5400 3550
Wire Wire Line
	5400 3800 5400 3850
Wire Wire Line
	5400 4000 5400 4050
Wire Wire Line
	5500 4050 5400 4050
Connection ~ 5400 4050
Wire Wire Line
	5400 4050 5400 4100
Wire Wire Line
	5500 3850 5400 3850
Connection ~ 5400 3850
Wire Wire Line
	5400 3850 5400 3900
Wire Wire Line
	5500 3550 5400 3550
Connection ~ 5400 3550
Wire Wire Line
	5400 3550 5400 3600
$EndSCHEMATC
