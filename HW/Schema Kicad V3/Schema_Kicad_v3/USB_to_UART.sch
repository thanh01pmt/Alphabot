EESchema Schematic File Version 4
LIBS:Schema_Kicad_v3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
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
L Interface_USB:FT232RL U?
U 1 1 5DF50301
P 4800 4200
AR Path="/5DF50301" Ref="U?"  Part="1" 
AR Path="/5DF4B781/5DF50301" Ref="U?"  Part="1" 
F 0 "U?" H 4800 5381 50  0000 C CNN
F 1 "FT232RL" H 4800 5290 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 4800 4200 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 5DF50307
P 4700 2650
AR Path="/5DF50307" Ref="JP?"  Part="1" 
AR Path="/5DF4B781/5DF50307" Ref="JP?"  Part="1" 
F 0 "JP?" H 4700 2889 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 4700 2798 50  0000 C CNN
F 2 "" H 4700 2650 50  0001 C CNN
F 3 "~" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3200 4700 2750
$Comp
L power:+5V #PWR?
U 1 1 5DF5030E
P 5100 3200
AR Path="/5DF5030E" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF5030E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 3050 50  0001 C CNN
F 1 "+5V" H 5115 3373 50  0000 C CNN
F 2 "" H 5100 3200 50  0001 C CNN
F 3 "" H 5100 3200 50  0001 C CNN
	1    5100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF50314
P 5000 5250
AR Path="/5DF50314" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF50314" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5000 5000 50  0001 C CNN
F 1 "GND" H 5005 5077 50  0000 C CNN
F 2 "" H 5000 5250 50  0001 C CNN
F 3 "" H 5000 5250 50  0001 C CNN
	1    5000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3200 4900 3200
Wire Wire Line
	5000 5250 5000 5200
Wire Wire Line
	5000 5200 4900 5200
Connection ~ 5000 5200
Connection ~ 4800 5200
Wire Wire Line
	4800 5200 4600 5200
Connection ~ 4900 5200
Wire Wire Line
	4900 5200 4800 5200
Wire Wire Line
	4600 5200 4000 5200
Wire Wire Line
	4000 5200 4000 4900
Connection ~ 4600 5200
$Comp
L power:+3.3V #PWR?
U 1 1 5DF5033B
P 3950 3500
AR Path="/5DF5033B" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF5033B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 3350 50  0001 C CNN
F 1 "+3.3V" H 3965 3673 50  0000 C CNN
F 2 "" H 3950 3500 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3500 4000 3500
$Comp
L power:+3.3V #PWR?
U 1 1 5DF50342
P 4200 2650
AR Path="/5DF50342" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF50342" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4200 2500 50  0001 C CNN
F 1 "+3.3V" H 4215 2823 50  0000 C CNN
F 2 "" H 4200 2650 50  0001 C CNN
F 3 "" H 4200 2650 50  0001 C CNN
	1    4200 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2650 4450 2650
$Comp
L power:+5V #PWR?
U 1 1 5DF50349
P 5150 2650
AR Path="/5DF50349" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF50349" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 2500 50  0001 C CNN
F 1 "+5V" H 5165 2823 50  0000 C CNN
F 2 "" H 5150 2650 50  0001 C CNN
F 3 "" H 5150 2650 50  0001 C CNN
	1    5150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2650 4950 2650
Text GLabel 5750 3500 2    50   Input ~ 0
Rx
Text GLabel 5750 3600 2    50   Input ~ 0
Tx
$Comp
L Device:C C?
U 1 1 5DF50352
P 6900 3400
AR Path="/5DF50352" Ref="C?"  Part="1" 
AR Path="/5DF4B781/5DF50352" Ref="C?"  Part="1" 
F 0 "C?" H 7015 3446 50  0000 L CNN
F 1 "100n" H 7015 3355 50  0000 L CNN
F 2 "" H 6938 3250 50  0001 C CNN
F 3 "~" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DF50358
P 6900 3200
AR Path="/5DF50358" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF50358" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 3050 50  0001 C CNN
F 1 "+3.3V" H 6915 3373 50  0000 C CNN
F 2 "" H 6900 3200 50  0001 C CNN
F 3 "" H 6900 3200 50  0001 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF5035E
P 6900 3600
AR Path="/5DF5035E" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF5035E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 3350 50  0001 C CNN
F 1 "GND" H 6905 3427 50  0000 C CNN
F 2 "" H 6900 3600 50  0001 C CNN
F 3 "" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3200 6900 3250
Wire Wire Line
	6900 3600 6900 3550
$Comp
L Device:C C?
U 1 1 5DF50366
P 5850 3900
AR Path="/5DF50366" Ref="C?"  Part="1" 
AR Path="/5DF4B781/5DF50366" Ref="C?"  Part="1" 
F 0 "C?" V 5598 3900 50  0000 C CNN
F 1 "100n" V 5689 3900 50  0000 C CNN
F 2 "" H 5888 3750 50  0001 C CNN
F 3 "~" H 5850 3900 50  0001 C CNN
	1    5850 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3900 5600 3900
Text GLabel 6050 3900 2    50   Input ~ 0
Reset
Wire Wire Line
	6050 3900 6000 3900
Wire Wire Line
	5750 3500 5600 3500
Wire Wire Line
	5750 3600 5600 3600
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 5DF50371
P 8000 4500
AR Path="/5DF50371" Ref="JP?"  Part="1" 
AR Path="/5DF4B781/5DF50371" Ref="JP?"  Part="1" 
F 0 "JP?" V 7954 4602 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 8045 4602 50  0000 L CNN
F 2 "" H 8000 4500 50  0001 C CNN
F 3 "~" H 8000 4500 50  0001 C CNN
	1    8000 4500
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 5DF50377
P 8000 5350
AR Path="/5DF50377" Ref="JP?"  Part="1" 
AR Path="/5DF4B781/5DF50377" Ref="JP?"  Part="1" 
F 0 "JP?" V 7954 5452 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 8045 5452 50  0000 L CNN
F 2 "" H 8000 5350 50  0001 C CNN
F 3 "~" H 8000 5350 50  0001 C CNN
	1    8000 5350
	0    1    1    0   
$EndComp
Text GLabel 7850 4500 0    50   Input ~ 0
Rx
Text GLabel 7850 5350 0    50   Input ~ 0
Tx
Wire Wire Line
	8100 4250 8000 4250
Wire Wire Line
	8100 4750 8000 4750
Wire Wire Line
	7900 4500 7850 4500
Wire Wire Line
	7900 5350 7850 5350
Wire Wire Line
	8000 5100 8100 5100
Wire Wire Line
	8100 5600 8000 5600
$Comp
L Switch:SW_Push_Dual_x2 SW?
U 1 1 5DF50389
P 6750 1850
AR Path="/5DF50389" Ref="SW?"  Part="1" 
AR Path="/5DF4B781/5DF50389" Ref="SW?"  Part="1" 
F 0 "SW?" H 6750 2135 50  0000 C CNN
F 1 "SW_Push_Dual_x2" H 6750 2044 50  0000 C CNN
F 2 "" H 6750 2050 50  0001 C CNN
F 3 "~" H 6750 2050 50  0001 C CNN
	1    6750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1850 7050 1850
$Comp
L power:+5V #PWR?
U 1 1 5DF50390
P 7600 1850
AR Path="/5DF50390" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF50390" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 1700 50  0001 C CNN
F 1 "+5V" H 7615 2023 50  0000 C CNN
F 2 "" H 7600 1850 50  0001 C CNN
F 3 "" H 7600 1850 50  0001 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1850 7500 1850
$Comp
L power:GND #PWR?
U 1 1 5DF50397
P 6450 1850
AR Path="/5DF50397" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF50397" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 1600 50  0001 C CNN
F 1 "GND" H 6455 1677 50  0000 C CNN
F 2 "" H 6450 1850 50  0001 C CNN
F 3 "" H 6450 1850 50  0001 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1850 6550 1850
Text GLabel 7050 1900 3    50   Input ~ 0
Reset
Wire Wire Line
	7050 1900 7050 1850
Connection ~ 7050 1850
Wire Wire Line
	7050 1850 6950 1850
$Comp
L Device:R R?
U 1 1 5DF503A4
P 7350 1850
AR Path="/5DF503A4" Ref="R?"  Part="1" 
AR Path="/5DF4B781/5DF503A4" Ref="R?"  Part="1" 
F 0 "R?" V 7557 1850 50  0000 C CNN
F 1 "1k" V 7466 1850 50  0000 C CNN
F 2 "" V 7280 1850 50  0001 C CNN
F 3 "~" H 7350 1850 50  0001 C CNN
	1    7350 1850
	0    -1   -1   0   
$EndComp
Text HLabel 8100 4250 2    50   Input ~ 0
Rx_Wroom
Text HLabel 8100 4750 2    50   Input ~ 0
Rx_Arduino
Text HLabel 8100 5100 2    50   Input ~ 0
Tx_Wroom
Text HLabel 8100 5600 2    50   Input ~ 0
Tx_Arduino
$Comp
L power:+5V #PWR?
U 1 1 5DF56B2D
P 3950 4200
AR Path="/5DF56B2D" Ref="#PWR?"  Part="1" 
AR Path="/5DF4B781/5DF56B2D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 4050 50  0001 C CNN
F 1 "+5V" H 3965 4373 50  0000 C CNN
F 2 "" H 3950 4200 50  0001 C CNN
F 3 "" H 3950 4200 50  0001 C CNN
	1    3950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4200 3950 4200
Text HLabel 3800 3800 0    50   Input ~ 0
D+
Text HLabel 3800 3900 0    50   Input ~ 0
D-
Wire Wire Line
	3800 3800 4000 3800
Wire Wire Line
	4000 3900 3800 3900
$EndSCHEMATC
