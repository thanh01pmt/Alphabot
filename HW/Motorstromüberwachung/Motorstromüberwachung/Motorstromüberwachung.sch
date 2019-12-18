EESchema Schematic File Version 4
LIBS:Motorstromüberwachung-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Motorstromüberwachung"
Date "2019-11-18"
Rev "1.0"
Comp "PSI"
Comment1 "DM13"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3350 5550 0    50   ~ 0
Spannung am + Eingang gross verstärkt, dass der FET normalerweise durchsteuert. \nSpannung am - Eingang so gross verstärken, dass ab 1A die Speisungsgranze\nunterschritten ist und der FET die Spannung regelt. Die für die Schwelle kann die -\nSignalverstärkung durch ein Poti geregelt werden.
$Comp
L Amplifier_Operational:TL071 U1
U 1 1 5DD4B277
P 4750 3200
F 0 "U1" H 5094 3246 50  0000 L CNN
F 1 "TL071" H 5094 3155 50  0000 L CNN
F 2 "" H 4800 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4900 3350 50  0001 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5DD4B27D
P 4650 2800
F 0 "#PWR03" H 4650 2650 50  0001 C CNN
F 1 "+5V" H 4665 2973 50  0000 C CNN
F 2 "" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2900 4650 2800
NoConn ~ 4850 3500
NoConn ~ 4750 3500
$Comp
L power:GND #PWR04
U 1 1 5DD4C098
P 4650 3600
F 0 "#PWR04" H 4650 3350 50  0001 C CNN
F 1 "GND" H 4655 3427 50  0000 C CNN
F 2 "" H 4650 3600 50  0001 C CNN
F 3 "" H 4650 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3600 4650 3500
$Comp
L Device:R R4
U 1 1 5DD52FDF
P 4400 3550
F 0 "R4" H 4330 3504 50  0000 R CNN
F 1 "39k" H 4330 3595 50  0000 R CNN
F 2 "" V 4330 3550 50  0001 C CNN
F 3 "~" H 4400 3550 50  0001 C CNN
	1    4400 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Shunt R1
U 1 1 5DD52FE5
P 3700 4100
F 0 "R1" V 3567 4100 50  0000 C CNN
F 1 "R_Shunt" V 3476 4100 50  0000 C CNN
F 2 "" V 3630 4100 50  0001 C CNN
F 3 "~" H 3700 4100 50  0001 C CNN
	1    3700 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DD52FEB
P 4200 3100
F 0 "R2" V 3993 3100 50  0000 C CNN
F 1 "10k" V 4084 3100 50  0000 C CNN
F 2 "" V 4130 3100 50  0001 C CNN
F 3 "~" H 4200 3100 50  0001 C CNN
	1    4200 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5DD52FF1
P 4200 3300
F 0 "R3" V 4300 3300 50  0000 C CNN
F 1 "10k" V 4400 3300 50  0000 C CNN
F 2 "" V 4130 3300 50  0001 C CNN
F 3 "~" H 4200 3300 50  0001 C CNN
	1    4200 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 3100 4400 3100
Wire Wire Line
	4450 3300 4400 3300
Wire Wire Line
	4400 3400 4400 3300
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 4350 3300
$Comp
L power:GND #PWR02
U 1 1 5DD52FFC
P 4400 3800
F 0 "#PWR02" H 4400 3550 50  0001 C CNN
F 1 "GND" H 4405 3627 50  0000 C CNN
F 2 "" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3800 4400 3700
Wire Wire Line
	4400 3100 4400 2500
Wire Wire Line
	4400 2500 4500 2500
Connection ~ 4400 3100
Wire Wire Line
	4400 3100 4350 3100
Wire Wire Line
	3800 3950 3800 3300
Wire Wire Line
	3800 3300 4050 3300
Wire Wire Line
	3600 3950 3600 3100
Wire Wire Line
	3600 3100 4050 3100
$Comp
L power:+5V #PWR01
U 1 1 5DD5300C
P 3400 4100
F 0 "#PWR01" H 3400 3950 50  0001 C CNN
F 1 "+5V" H 3415 4273 50  0000 C CNN
F 2 "" H 3400 4100 50  0001 C CNN
F 3 "" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4100 3400 4100
$Comp
L Device:R R5
U 1 1 5DD56564
P 4650 2500
F 0 "R5" V 4443 2500 50  0000 C CNN
F 1 "39k" V 4534 2500 50  0000 C CNN
F 2 "" V 4580 2500 50  0001 C CNN
F 3 "~" H 4650 2500 50  0001 C CNN
	1    4650 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2500 5100 2500
Wire Wire Line
	5100 2500 5100 3200
Wire Wire Line
	5050 3200 5100 3200
$Comp
L Amplifier_Operational:TL071 U2
U 1 1 5DD676CE
P 6450 3200
F 0 "U2" H 6794 3246 50  0000 L CNN
F 1 "TL071" H 6794 3155 50  0000 L CNN
F 2 "" H 6500 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6600 3350 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5DD676D4
P 6350 2800
F 0 "#PWR07" H 6350 2650 50  0001 C CNN
F 1 "+5V" H 6365 2973 50  0000 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2900 6350 2800
NoConn ~ 6550 3500
NoConn ~ 6450 3500
$Comp
L power:GND #PWR08
U 1 1 5DD676DD
P 6350 3600
F 0 "#PWR08" H 6350 3350 50  0001 C CNN
F 1 "GND" H 6355 3427 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3600 6350 3500
$Comp
L Device:R R7
U 1 1 5DD676E4
P 6100 3550
F 0 "R7" H 6030 3504 50  0000 R CNN
F 1 "30k" H 6030 3595 50  0000 R CNN
F 2 "" V 6030 3550 50  0001 C CNN
F 3 "~" H 6100 3550 50  0001 C CNN
	1    6100 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5DD676EA
P 5900 3100
F 0 "R6" V 5693 3100 50  0000 C CNN
F 1 "10k" V 5784 3100 50  0000 C CNN
F 2 "" V 5830 3100 50  0001 C CNN
F 3 "~" H 5900 3100 50  0001 C CNN
	1    5900 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3100 6100 3100
Wire Wire Line
	6150 3300 6100 3300
Wire Wire Line
	6100 3400 6100 3300
Connection ~ 6100 3300
Wire Wire Line
	6100 3300 6050 3300
$Comp
L power:GND #PWR06
U 1 1 5DD676FB
P 6100 3800
F 0 "#PWR06" H 6100 3550 50  0001 C CNN
F 1 "GND" H 6105 3627 50  0000 C CNN
F 2 "" H 6100 3800 50  0001 C CNN
F 3 "" H 6100 3800 50  0001 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3800 6100 3700
Wire Wire Line
	6100 3100 6100 2500
Wire Wire Line
	6100 2500 6200 2500
Connection ~ 6100 3100
Wire Wire Line
	6100 3100 6050 3100
Wire Wire Line
	5450 3350 5600 3350
Wire Wire Line
	5300 3100 5750 3100
$Comp
L Device:R R8
U 1 1 5DD67708
P 6350 2500
F 0 "R8" V 6143 2500 50  0000 C CNN
F 1 "30k" V 6234 2500 50  0000 C CNN
F 2 "" V 6280 2500 50  0001 C CNN
F 3 "~" H 6350 2500 50  0001 C CNN
	1    6350 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 2500 6800 2500
Wire Wire Line
	6800 2500 6800 3200
Wire Wire Line
	6750 3200 6800 3200
Wire Wire Line
	5100 3200 5300 3200
Wire Wire Line
	5300 3200 5300 3100
Connection ~ 5100 3200
$Comp
L Device:R_POT RV1
U 1 1 5DD69A28
P 5850 3350
F 0 "RV1" V 6150 3350 50  0000 C CNN
F 1 "10k" V 6050 3350 50  0000 C CNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    5850 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3500 5600 3500
Wire Wire Line
	5600 3500 5600 3350
Connection ~ 5600 3350
Wire Wire Line
	5600 3350 5700 3350
$Comp
L power:+5V #PWR05
U 1 1 5DD6B08A
P 5450 3350
F 0 "#PWR05" H 5450 3200 50  0001 C CNN
F 1 "+5V" H 5465 3523 50  0000 C CNN
F 2 "" H 5450 3350 50  0001 C CNN
F 3 "" H 5450 3350 50  0001 C CNN
	1    5450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3350 6050 3350
Wire Wire Line
	6050 3350 6050 3300
Text GLabel 7550 4100 2    50   Input ~ 0
VM
Wire Wire Line
	7450 4100 7550 4100
Wire Notes Line
	7550 3800 8200 3800
Wire Notes Line
	8200 3800 8200 4400
Wire Notes Line
	8200 4400 7550 4400
Wire Notes Line
	7550 3800 7550 4400
Text Notes 7650 3950 0    50   ~ 0
Motortreiber
Wire Wire Line
	6800 3200 7250 3200
Connection ~ 6800 3200
Wire Wire Line
	3900 4100 7050 4100
Wire Notes Line
	2900 1700 2900 5000
Wire Notes Line
	2900 5000 8600 5000
Wire Notes Line
	8600 5000 8600 1700
Wire Notes Line
	8600 1700 2900 1700
Text Notes 5500 2000 0    100  ~ 0
Idee 2
Text Notes 3050 4900 0    50   ~ 0
Signal vergleichen und gleichzeitig verstärken. Dann wird diese Spannung von einer Referenzspannung abgezogen, die ebenso\nwie in Idee 1 verstärkt wird. 
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5DD43119
P 7250 4000
F 0 "Q1" V 7600 3950 50  0000 L CNN
F 1 "NDS331n" V 7500 3850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7450 3925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7250 4000 50  0001 L CNN
	1    7250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3200 7250 3800
$EndSCHEMATC
