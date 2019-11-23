EESchema Schematic File Version 4
LIBS:PCB-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Alarma Frigorifico"
Date "2019-10-22"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J1
U 1 1 5DAF0F30
P 1300 1600
F 0 "J1" H 1355 2067 50  0000 C CNN
F 1 "USB_B_Micro" H 1355 1976 50  0000 C CNN
F 2 "project_footprints:MicroUSB" H 1450 1550 50  0001 C CNN
F 3 "~" H 1450 1550 50  0001 C CNN
	1    1300 1600
	1    0    0    -1  
$EndComp
$Comp
L Mi_Libreria:TP4056 U1
U 1 1 5DAF0FDB
P 3100 1350
F 0 "U1" H 3375 1547 60  0000 C CNN
F 1 "TP4056" H 3375 1441 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3100 1350 60  0001 C CNN
F 3 "" H 3100 1350 60  0001 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
$Comp
L Mi_Libreria:DW01 U2
U 1 1 5DAF104C
P 8600 1750
F 0 "U2" H 8925 1947 60  0000 C CNN
F 1 "DW01" H 8925 1841 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 8600 1750 60  0001 C CNN
F 3 "" H 8600 1750 60  0001 C CNN
	1    8600 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5DAF11FD
P 2350 1900
F 0 "D2" V 2400 2100 50  0000 R CNN
F 1 "Red" V 2300 2100 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 1900 50  0001 C CNN
F 3 "~" H 2350 1900 50  0001 C CNN
	1    2350 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5DAF1257
P 2350 1800
F 0 "D1" V 2388 1683 50  0000 R CNN
F 1 "Green" V 2297 1683 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 1800 50  0001 C CNN
F 3 "~" H 2350 1800 50  0001 C CNN
	1    2350 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 1400 1800 1400
Wire Wire Line
	2900 1500 2650 1500
Wire Wire Line
	2650 1500 2650 1400
Connection ~ 2650 1400
Wire Wire Line
	2650 1400 2900 1400
$Comp
L Device:C C1
U 1 1 5DAF17F3
P 1800 1700
F 0 "C1" H 1915 1746 50  0000 L CNN
F 1 "10uF" H 1915 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1838 1550 50  0001 C CNN
F 3 "~" H 1800 1700 50  0001 C CNN
	1    1800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1400 2150 1400
Wire Wire Line
	1800 1850 1800 2250
Wire Wire Line
	1300 2000 1300 2250
$Comp
L power:GND #PWR02
U 1 1 5DAF18DC
P 1800 2250
F 0 "#PWR02" H 1800 2000 50  0001 C CNN
F 1 "GND" H 1805 2077 50  0000 C CNN
F 2 "" H 1800 2250 50  0001 C CNN
F 3 "" H 1800 2250 50  0001 C CNN
	1    1800 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DAF18FC
P 1300 2250
F 0 "#PWR01" H 1300 2000 50  0001 C CNN
F 1 "GND" H 1305 2077 50  0000 C CNN
F 2 "" H 1300 2250 50  0001 C CNN
F 3 "" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DAF1B91
P 2700 1900
F 0 "R3" H 2550 1950 50  0000 L CNN
F 1 "1k" H 2550 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2630 1900 50  0001 C CNN
F 3 "~" H 2700 1900 50  0001 C CNN
	1    2700 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5DAF1C09
P 2700 1800
F 0 "R1" H 2770 1846 50  0000 L CNN
F 1 "1k" H 2770 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2630 1800 50  0001 C CNN
F 3 "~" H 2700 1800 50  0001 C CNN
	1    2700 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1800 2550 1800
Wire Wire Line
	2850 1800 2900 1800
Wire Wire Line
	3850 1400 4500 1400
Text GLabel 5600 1400 2    50   Input ~ 0
BAT+
Wire Wire Line
	3850 1600 4250 1600
Wire Wire Line
	4250 1600 4250 2700
$Comp
L power:GND #PWR05
U 1 1 5DAF29AE
P 4250 2700
F 0 "#PWR05" H 4250 2450 50  0001 C CNN
F 1 "GND" H 4255 2527 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1900 3900 1900
Wire Wire Line
	3900 1900 3900 2700
$Comp
L power:GND #PWR03
U 1 1 5DAF2B67
P 3900 2700
F 0 "#PWR03" H 3900 2450 50  0001 C CNN
F 1 "GND" H 3905 2527 50  0000 C CNN
F 2 "" H 3900 2700 50  0001 C CNN
F 3 "" H 3900 2700 50  0001 C CNN
	1    3900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DAF2B86
P 4050 2500
F 0 "R5" H 4120 2546 50  0000 L CNN
F 1 "2K7" H 4120 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 2500 50  0001 C CNN
F 3 "~" H 4050 2500 50  0001 C CNN
	1    4050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1700 4050 1700
Wire Wire Line
	4050 1700 4050 2350
$Comp
L power:GND #PWR04
U 1 1 5DAF2D99
P 4050 2700
F 0 "#PWR04" H 4050 2450 50  0001 C CNN
F 1 "GND" H 4055 2527 50  0000 C CNN
F 2 "" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0001 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2700 4050 2650
Wire Wire Line
	2150 1900 2150 1800
Connection ~ 2150 1400
Wire Wire Line
	2150 1400 2650 1400
Wire Wire Line
	2850 1900 2900 1900
Wire Wire Line
	2550 1900 2500 1900
Wire Wire Line
	2200 1900 2150 1900
Wire Wire Line
	2200 1800 2150 1800
Connection ~ 2150 1800
Wire Wire Line
	2150 1800 2150 1400
$Comp
L Device:C C3
U 1 1 5DAF4E1A
P 4500 2050
F 0 "C3" H 4615 2096 50  0000 L CNN
F 1 "10uF" H 4615 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4538 1900 50  0001 C CNN
F 3 "~" H 4500 2050 50  0001 C CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1900 4500 1400
Connection ~ 4500 1400
Wire Wire Line
	4500 2200 4500 2700
$Comp
L power:GND #PWR06
U 1 1 5DAF57E7
P 4500 2700
F 0 "#PWR06" H 4500 2450 50  0001 C CNN
F 1 "GND" H 4505 2527 50  0000 C CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5DAF5857
P 5000 1700
F 0 "BT1" H 5118 1796 50  0000 L CNN
F 1 "Battery_Cell" H 5118 1705 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5000 1760 50  0001 C CNN
F 3 "~" V 5000 1760 50  0001 C CNN
	1    5000 1700
	1    0    0    -1  
$EndComp
NoConn ~ 9450 2150
Wire Wire Line
	4500 1400 5000 1400
Wire Wire Line
	5000 1500 5000 1400
$Comp
L Mi_Libreria:8205A Q1
U 1 1 5DAF9D4A
P 5450 2100
F 0 "Q1" V 5829 1562 50  0000 R CNN
F 1 "8205A" V 5920 1562 50  0000 R CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 5800 1500 50  0001 L CIN
F 3 "" V 5650 1900 50  0001 L CNN
	1    5450 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1800 5000 1850
Wire Wire Line
	5150 2100 5150 2000
Wire Wire Line
	5150 2000 5000 2000
Connection ~ 5000 2000
Wire Wire Line
	5000 2000 5000 2100
Wire Wire Line
	5050 2950 5050 3150
Wire Wire Line
	5050 3150 5150 3150
Wire Wire Line
	5150 3150 5150 2950
$Comp
L power:GND #PWR09
U 1 1 5DAFB0F3
P 5150 3200
F 0 "#PWR09" H 5150 2950 50  0001 C CNN
F 1 "GND" H 5155 3027 50  0000 C CNN
F 2 "" H 5150 3200 50  0001 C CNN
F 3 "" H 5150 3200 50  0001 C CNN
	1    5150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3200 5150 3150
Connection ~ 5150 3150
$Comp
L Device:R R2
U 1 1 5DAFB60F
P 8050 1800
F 0 "R2" V 7843 1800 50  0000 C CNN
F 1 "100" V 7934 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7980 1800 50  0001 C CNN
F 3 "~" H 8050 1800 50  0001 C CNN
	1    8050 1800
	0    1    1    0   
$EndComp
Connection ~ 5000 1400
Wire Wire Line
	5000 1400 5350 1400
Wire Wire Line
	8200 1800 8300 1800
Text GLabel 7700 1800 0    50   Input ~ 0
BAT+
Wire Wire Line
	7700 1800 7900 1800
$Comp
L Device:C C2
U 1 1 5DAFD1D9
P 8300 2000
F 0 "C2" H 8000 2050 50  0000 L CNN
F 1 "0.1uF" H 8000 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8338 1850 50  0001 C CNN
F 3 "~" H 8300 2000 50  0001 C CNN
	1    8300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1850 8300 1800
Connection ~ 8300 1800
Wire Wire Line
	8300 1800 8400 1800
Wire Wire Line
	8300 2150 8300 2250
Wire Wire Line
	8300 2250 8400 2250
Text GLabel 5600 1850 2    50   Input ~ 0
BAT-
Wire Wire Line
	5600 1850 5000 1850
Connection ~ 5000 1850
Wire Wire Line
	5000 1850 5000 2000
Text GLabel 7700 2250 0    50   Input ~ 0
BAT-
Wire Wire Line
	7700 2250 7750 2250
Connection ~ 8300 2250
Text GLabel 5600 2750 2    50   Input ~ 0
OC
Text GLabel 5600 2300 2    50   Input ~ 0
OD
$Comp
L Device:R R4
U 1 1 5DB00BF3
P 9550 2450
F 0 "R4" H 9620 2496 50  0000 L CNN
F 1 "1k" H 9620 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2450 50  0001 C CNN
F 3 "~" H 9550 2450 50  0001 C CNN
	1    9550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2250 9550 2250
Wire Wire Line
	9550 2250 9550 2300
$Comp
L power:GND #PWR07
U 1 1 5DB014AC
P 9550 2700
F 0 "#PWR07" H 9550 2450 50  0001 C CNN
F 1 "GND" H 9555 2527 50  0000 C CNN
F 2 "" H 9550 2700 50  0001 C CNN
F 3 "" H 9550 2700 50  0001 C CNN
	1    9550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2600 9550 2700
Wire Wire Line
	5450 2300 5500 2300
Wire Wire Line
	5450 2750 5500 2750
Text GLabel 9550 1950 2    50   Input ~ 0
OD
Text GLabel 9550 1850 2    50   Input ~ 0
OC
Wire Wire Line
	9550 1850 9450 1850
Wire Wire Line
	9450 1950 9550 1950
$Comp
L Device:LED D3
U 1 1 5DB061A4
P 8700 4500
F 0 "D3" V 8750 4450 50  0000 R CNN
F 1 "Green" V 8650 4450 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8700 4500 50  0001 C CNN
F 3 "~" H 8700 4500 50  0001 C CNN
	1    8700 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5DB062E7
P 9100 4500
F 0 "R6" H 9170 4546 50  0000 L CNN
F 1 "1k" H 9170 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 4500 50  0001 C CNN
F 3 "~" H 9100 4500 50  0001 C CNN
	1    9100 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5DB065A1
P 9000 5800
F 0 "BZ1" H 9153 5829 50  0000 L CNN
F 1 "Buzzer" H 9153 5738 50  0000 L CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" V 8975 5900 50  0001 C CNN
F 3 "~" V 8975 5900 50  0001 C CNN
	1    9000 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DB06B92
P 4150 4000
F 0 "J3" H 4229 3992 50  0000 L CNN
F 1 "Magnetic Switch" H 4229 3901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4150 4000 50  0001 C CNN
F 3 "~" H 4150 4000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4150 2750 4100
Wire Wire Line
	2750 4100 3950 4100
Wire Wire Line
	3950 4000 3700 4000
Text GLabel 3700 4000 0    50   Input ~ 0
BAT+
$Comp
L power:GND #PWR012
U 1 1 5DB085D3
P 2750 7300
F 0 "#PWR012" H 2750 7050 50  0001 C CNN
F 1 "GND" H 2755 7127 50  0000 C CNN
F 2 "" H 2750 7300 50  0001 C CNN
F 3 "" H 2750 7300 50  0001 C CNN
	1    2750 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7200 2750 7300
Wire Wire Line
	8350 4500 8550 4500
Wire Wire Line
	8850 4500 8950 4500
Wire Wire Line
	9250 4500 9300 4500
Wire Wire Line
	9300 4500 9300 4700
$Comp
L power:GND #PWR010
U 1 1 5DB0F48B
P 9300 4700
F 0 "#PWR010" H 9300 4450 50  0001 C CNN
F 1 "GND" H 9305 4527 50  0000 C CNN
F 2 "" H 9300 4700 50  0001 C CNN
F 3 "" H 9300 4700 50  0001 C CNN
	1    9300 4700
	1    0    0    -1  
$EndComp
Text Notes 2200 1100 0    157  ~ 0
Battery Charger\n
Text Notes 7700 1400 0    157  ~ 0
Battery Protection\n
Text Notes 2550 3700 0    157  ~ 0
uControler
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J2
U 1 1 5DB19488
P 9200 3500
F 0 "J2" H 9250 3817 50  0000 C CNN
F 1 "ISP" H 9250 3726 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical_SMD" H 9200 3500 50  0001 C CNN
F 3 "~" H 9200 3500 50  0001 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3400 9700 3400
Wire Wire Line
	9500 3500 9700 3500
Wire Wire Line
	9500 3600 9700 3600
Wire Wire Line
	9000 3400 8900 3400
Wire Wire Line
	8500 3500 9000 3500
Wire Wire Line
	9000 3600 8850 3600
Text GLabel 8850 3400 0    50   Input ~ 0
VCC
Text GLabel 2500 4100 0    50   Input ~ 0
VCC
Connection ~ 2750 4100
Wire Wire Line
	2500 4100 2650 4100
Text GLabel 8850 3600 0    50   Input ~ 0
SCK
Text GLabel 9700 3400 2    50   Input ~ 0
MOSI
Text GLabel 9700 3500 2    50   Input ~ 0
MISO
Text GLabel 9700 3600 2    50   Input ~ 0
RST
Text GLabel 3550 4450 2    50   Input ~ 0
MOSI
Text GLabel 3550 4550 2    50   Input ~ 0
MISO
Text GLabel 3550 4650 2    50   Input ~ 0
SCK
Wire Wire Line
	3350 4450 3550 4450
Wire Wire Line
	3350 4550 3550 4550
Wire Wire Line
	3550 4650 3350 4650
Text GLabel 3550 4950 2    50   Input ~ 0
RST
Wire Wire Line
	3350 4950 3550 4950
$Comp
L Connector:TestPoint TP1
U 1 1 5DB2A661
P 1800 1350
F 0 "TP1" H 1858 1470 50  0000 L CNN
F 1 "USB_V+" H 1858 1379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2000 1350 50  0001 C CNN
F 3 "~" H 2000 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5DB2A7B3
P 5350 1350
F 0 "TP2" H 5400 1550 50  0000 L CNN
F 1 "BAT+" H 5400 1450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5550 1350 50  0001 C CNN
F 3 "~" H 5550 1350 50  0001 C CNN
	1    5350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1350 5350 1400
Connection ~ 5350 1400
Wire Wire Line
	5350 1400 5600 1400
Connection ~ 1800 1400
Wire Wire Line
	1800 1550 1800 1400
Wire Wire Line
	1800 1350 1800 1400
$Comp
L Connector:TestPoint TP6
U 1 1 5DB2F605
P 1150 3100
F 0 "TP6" H 1200 3300 50  0000 L CNN
F 1 "GND" H 1200 3200 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1350 3100 50  0001 C CNN
F 3 "~" H 1350 3100 50  0001 C CNN
	1    1150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DB2F68D
P 1150 3200
F 0 "#PWR08" H 1150 2950 50  0001 C CNN
F 1 "GND" H 1155 3027 50  0000 C CNN
F 2 "" H 1150 3200 50  0001 C CNN
F 3 "" H 1150 3200 50  0001 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3100 1150 3200
$Comp
L Connector:TestPoint TP3
U 1 1 5DB3115A
P 5500 2250
F 0 "TP3" H 5550 2450 50  0000 L CNN
F 1 "OD" H 5550 2350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5700 2250 50  0001 C CNN
F 3 "~" H 5700 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5DB312A3
P 5500 2700
F 0 "TP5" H 5550 2900 50  0000 L CNN
F 1 "OC" H 5550 2800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5700 2700 50  0001 C CNN
F 3 "~" H 5700 2700 50  0001 C CNN
	1    5500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2250 5500 2300
Connection ~ 5500 2300
Wire Wire Line
	5500 2300 5600 2300
Wire Wire Line
	5500 2700 5500 2750
Connection ~ 5500 2750
Wire Wire Line
	5500 2750 5600 2750
$Comp
L Connector:TestPoint TP7
U 1 1 5DB349AA
P 2650 4000
F 0 "TP7" H 2700 4200 50  0000 L CNN
F 1 "VCC" H 2700 4100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2850 4000 50  0001 C CNN
F 3 "~" H 2850 4000 50  0001 C CNN
	1    2650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4000 2650 4100
Connection ~ 2650 4100
Wire Wire Line
	2650 4100 2750 4100
$Comp
L Connector:TestPoint TP4
U 1 1 5DB36821
P 7750 2250
F 0 "TP4" H 7800 2450 50  0000 L CNN
F 1 "BAT-" H 7800 2350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7950 2250 50  0001 C CNN
F 3 "~" H 7950 2250 50  0001 C CNN
	1    7750 2250
	1    0    0    -1  
$EndComp
Connection ~ 7750 2250
Wire Wire Line
	7750 2250 8300 2250
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U3
U 1 1 5DB36CF2
P 2750 4750
F 0 "U3" H 2220 4796 50  0000 R CNN
F 1 "ATtiny85-20PU" H 2220 4705 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2750 4750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2750 4750 50  0001 C CNN
	1    2750 4750
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-SSU U4
U 1 1 5DB37344
P 2750 6600
F 0 "U4" H 2220 6646 50  0000 R CNN
F 1 "ATtiny13A-SSU" H 2220 6555 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2750 6600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 2750 6600 50  0001 C CNN
	1    2750 6600
	1    0    0    -1  
$EndComp
Text GLabel 3550 4850 2    50   Input ~ 0
BUZZ
Text GLabel 3550 4750 2    50   Input ~ 0
LED
Wire Wire Line
	3350 4750 3550 4750
Wire Wire Line
	3350 4850 3550 4850
Text GLabel 2650 5900 0    50   Input ~ 0
VCC
Text GLabel 8350 4500 0    50   Input ~ 0
LED
Text GLabel 8600 5700 0    50   Input ~ 0
BUZZ
Wire Wire Line
	8600 5700 8900 5700
Wire Wire Line
	8900 5900 8800 5900
Wire Wire Line
	8800 5900 8800 6050
$Comp
L power:GND #PWR011
U 1 1 5DB4FC92
P 8800 6050
F 0 "#PWR011" H 8800 5800 50  0001 C CNN
F 1 "GND" H 8805 5877 50  0000 C CNN
F 2 "" H 8800 6050 50  0001 C CNN
F 3 "" H 8800 6050 50  0001 C CNN
	1    8800 6050
	1    0    0    -1  
$EndComp
Text GLabel 3550 6300 2    50   Input ~ 0
MOSI
Text GLabel 3550 6400 2    50   Input ~ 0
MISO
Text GLabel 3550 6500 2    50   Input ~ 0
SCK
Wire Wire Line
	3350 6300 3550 6300
Wire Wire Line
	3350 6400 3550 6400
Wire Wire Line
	3550 6500 3350 6500
Text GLabel 3550 6800 2    50   Input ~ 0
RST
Wire Wire Line
	3350 6800 3550 6800
Text GLabel 3550 6700 2    50   Input ~ 0
BUZZ
Text GLabel 3550 6600 2    50   Input ~ 0
LED
Wire Wire Line
	3350 6600 3550 6600
Wire Wire Line
	3350 6700 3550 6700
$Comp
L power:GND #PWR013
U 1 1 5DB5E89B
P 2750 5450
F 0 "#PWR013" H 2750 5200 50  0001 C CNN
F 1 "GND" H 2755 5277 50  0000 C CNN
F 2 "" H 2750 5450 50  0001 C CNN
F 3 "" H 2750 5450 50  0001 C CNN
	1    2750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5350 2750 5450
$Comp
L Device:C C4
U 1 1 5DB4C9F9
P 10450 5250
F 0 "C4" H 10565 5296 50  0000 L CNN
F 1 "1uF" H 10565 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10488 5100 50  0001 C CNN
F 3 "~" H 10450 5250 50  0001 C CNN
	1    10450 5250
	1    0    0    -1  
$EndComp
Text GLabel 10300 4450 0    50   Input ~ 0
VCC
$Comp
L Device:R R7
U 1 1 5DB4CC55
P 10450 4750
F 0 "R7" H 10520 4796 50  0000 L CNN
F 1 "10k" H 10520 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10380 4750 50  0001 C CNN
F 3 "~" H 10450 4750 50  0001 C CNN
	1    10450 4750
	1    0    0    -1  
$EndComp
Text GLabel 10300 5000 0    50   Input ~ 0
RST
Wire Wire Line
	10300 4450 10450 4450
Wire Wire Line
	10450 4450 10450 4600
Wire Wire Line
	10300 5000 10450 5000
Wire Wire Line
	10450 5000 10450 4900
Wire Wire Line
	10450 5000 10450 5100
Connection ~ 10450 5000
Wire Wire Line
	10450 5400 10450 5500
$Comp
L power:GND #PWR014
U 1 1 5DB580BF
P 10450 5500
F 0 "#PWR014" H 10450 5250 50  0001 C CNN
F 1 "GND" H 10455 5327 50  0000 C CNN
F 2 "" H 10450 5500 50  0001 C CNN
F 3 "" H 10450 5500 50  0001 C CNN
	1    10450 5500
	1    0    0    -1  
$EndComp
NoConn ~ 1600 1600
NoConn ~ 1600 1700
NoConn ~ 1600 1800
NoConn ~ 1200 2000
NoConn ~ 5050 2450
NoConn ~ 5050 2550
$Comp
L power:GND #PWR0101
U 1 1 5DB74E89
P 8500 3550
F 0 "#PWR0101" H 8500 3300 50  0001 C CNN
F 1 "GND" H 8505 3377 50  0000 C CNN
F 2 "" H 8500 3550 50  0001 C CNN
F 3 "" H 8500 3550 50  0001 C CNN
	1    8500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3500 8500 3550
Wire Wire Line
	2650 5900 2750 5900
Wire Wire Line
	2750 5900 2750 6000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DB8640C
P 8900 3400
F 0 "#FLG0101" H 8900 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 8900 3574 50  0000 C CNN
F 2 "" H 8900 3400 50  0001 C CNN
F 3 "~" H 8900 3400 50  0001 C CNN
	1    8900 3400
	1    0    0    -1  
$EndComp
Connection ~ 8900 3400
Wire Wire Line
	8900 3400 8850 3400
Text GLabel 6450 4400 0    50   Input ~ 0
VCC
$Comp
L power:GND #PWR015
U 1 1 5DB75AF1
P 6800 5250
F 0 "#PWR015" H 6800 5000 50  0001 C CNN
F 1 "GND" H 6805 5077 50  0000 C CNN
F 2 "" H 6800 5250 50  0001 C CNN
F 3 "" H 6800 5250 50  0001 C CNN
	1    6800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4400 6800 4400
$Comp
L Device:C C5
U 1 1 5DB83074
P 6800 4850
F 0 "C5" H 6915 4896 50  0000 L CNN
F 1 ".1uF" H 6915 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6838 4700 50  0001 C CNN
F 3 "~" H 6800 4850 50  0001 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4400 6800 4700
Wire Wire Line
	6800 5000 6800 5250
$EndSCHEMATC
