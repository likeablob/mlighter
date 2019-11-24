EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L tiny-idb-rescue:R_Small-RESCUE-low-power-switch-low-power-switch-rescue-sensor-node-1-rescue-low-power-switch-large-rescue-shihen2-rescue 10k
U 1 1 5CE873E2
P 4600 3150
F 0 "10k" H 4630 3170 50  0000 L CNN
F 1 "R_Small" H 4630 3110 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 50  0001 C CNN
	1    4600 3150
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5CE93C58
P 4600 2950
F 0 "#PWR0101" H 4600 2800 50  0001 C CNN
F 1 "VCC" H 4600 3100 50  0000 C CNN
F 2 "" H 4600 2950 50  0001 C CNN
F 3 "" H 4600 2950 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L tiny-idb-rescue:Conn_01x06-RESCUE-low-power-switch-low-power-switch-rescue-sensor-node-1-rescue-low-power-switch-large-rescue-shihen2-rescue J1
U 1 1 5CE93C59
P 3950 5050
F 0 "J1" H 3950 5350 50  0000 C CNN
F 1 "Conn_01x06" H 3950 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3950 5050 50  0001 C CNN
F 3 "" H 3950 5050 50  0001 C CNN
	1    3950 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CE93C5A
P 3000 5250
F 0 "#PWR0102" H 3000 5000 50  0001 C CNN
F 1 "GND" H 3000 5100 50  0000 C CNN
F 2 "" H 3000 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0001 C CNN
	1    3000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4850 3750 4850
Wire Wire Line
	3700 5250 3750 5250
Wire Wire Line
	3700 5350 3750 5350
Wire Wire Line
	3750 5050 3700 5050
Wire Wire Line
	3000 5150 3000 5250
Wire Wire Line
	3750 5150 3000 5150
Wire Wire Line
	4600 3250 4600 3350
Wire Wire Line
	4600 2950 4600 3050
$Comp
L power:GND #PWR0103
U 1 1 5CF8C1F7
P 1300 1500
F 0 "#PWR0103" H 1300 1250 50  0001 C CNN
F 1 "GND" H 1305 1327 50  0000 C CNN
F 2 "" H 1300 1500 50  0001 C CNN
F 3 "" H 1300 1500 50  0001 C CNN
	1    1300 1500
	1    0    0    -1  
$EndComp
Text GLabel 1400 1050 2    50   Input ~ 0
BAT_V
Wire Wire Line
	1300 1500 1300 1450
Wire Wire Line
	1300 1050 1400 1050
$Comp
L power:GND #PWR0104
U 1 1 5C4903EE
P 2800 4300
F 0 "#PWR0104" H 2800 4050 50  0001 C CNN
F 1 "GND" H 2800 4150 50  0000 C CNN
F 2 "" H 2800 4300 50  0001 C CNN
F 3 "" H 2800 4300 50  0001 C CNN
	1    2800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4250 2800 4300
$Comp
L Device:Battery_Cell BT1
U 1 1 5C51D8C5
P 1300 1350
F 0 "BT1" H 1418 1446 50  0000 L CNN
F 1 "Battery_Cell" H 1418 1355 50  0000 L CNN
F 2 "led-dot-matrix:BatteryHolder_Keystone_1060_1x2032_short" V 1300 1410 50  0001 C CNN
F 3 "~" V 1300 1410 50  0001 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1050 1300 1150
Text GLabel 3700 4950 0    50   Input ~ 0
AT_RESET
Wire Wire Line
	3700 4950 3750 4950
Text GLabel 4750 3350 2    50   Input ~ 0
AT_RESET
Wire Wire Line
	4600 3350 4750 3350
$Comp
L Device:C_Small C1
U 1 1 5CE873E6
P 1150 3200
F 0 "C1" H 1242 3246 50  0000 L CNN
F 1 "10uF" H 1242 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1150 3200 50  0001 C CNN
F 3 "~" H 1150 3200 50  0001 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CF8C1FB
P 1150 3350
F 0 "#PWR0106" H 1150 3100 50  0001 C CNN
F 1 "GND" H 1150 3200 50  0000 C CNN
F 2 "" H 1150 3350 50  0001 C CNN
F 3 "" H 1150 3350 50  0001 C CNN
	1    1150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3300 1150 3350
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U1
U 1 1 5CD9EC33
P 2800 3650
F 0 "U1" H 2270 3696 50  0000 R CNN
F 1 "ATtiny85-20SU" H 2270 3605 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 2800 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2800 3650 50  0001 C CNN
	1    2800 3650
	1    0    0    -1  
$EndComp
Text GLabel 3500 3350 2    50   Input ~ 0
AT_PB0_MISO
Wire Wire Line
	3500 3350 3400 3350
Text GLabel 3500 3450 2    50   Input ~ 0
AT_PB1_MOSI
Wire Wire Line
	3500 3450 3400 3450
Text GLabel 3500 3550 2    50   Input ~ 0
AT_PB2_CLK
Wire Wire Line
	3500 3550 3400 3550
Text GLabel 3500 3650 2    50   Input ~ 0
AT_PB3
Wire Wire Line
	3500 3650 3400 3650
Text GLabel 3500 3750 2    50   Input ~ 0
AT_PB4
Wire Wire Line
	3500 3750 3400 3750
Text GLabel 3500 3850 2    50   Input ~ 0
AT_RESET
Wire Wire Line
	3500 3850 3400 3850
Text GLabel 3700 5050 0    50   Input ~ 0
AT_PB2_CLK
Text GLabel 6850 1600 2    50   Input ~ 0
LIGHT_SENS
Wire Wire Line
	2800 3000 2800 3050
$Comp
L power:VCC #PWR0107
U 1 1 5CE873E3
P 2800 3000
F 0 "#PWR0107" H 2800 2850 50  0001 C CNN
F 1 "VCC" H 2800 3150 50  0000 C CNN
F 2 "" H 2800 3000 50  0001 C CNN
F 3 "" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
Text GLabel 3700 5250 0    50   Input ~ 0
AT_PB0_MISO
Text GLabel 3700 5350 0    50   Input ~ 0
AT_PB1_MOSI
$Comp
L Device:R_Small R3
U 1 1 5D754831
P 6350 1750
F 0 "R3" H 6409 1796 50  0000 L CNN
F 1 "200k" H 6409 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6350 1750 50  0001 C CNN
F 3 "~" H 6350 1750 50  0001 C CNN
	1    6350 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5D75D38A
P 6350 1950
F 0 "#PWR0113" H 6350 1700 50  0001 C CNN
F 1 "GND" H 6350 1800 50  0000 C CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1850 6350 1950
Wire Wire Line
	6350 1600 6850 1600
Connection ~ 6350 1600
Wire Wire Line
	6350 1600 6350 1650
Wire Wire Line
	3700 4800 3700 4850
$Comp
L power:VCC #PWR0112
U 1 1 5D775894
P 3700 4800
F 0 "#PWR0112" H 3700 4650 50  0001 C CNN
F 1 "VCC" H 3700 4950 50  0000 C CNN
F 2 "" H 3700 4800 50  0001 C CNN
F 3 "" H 3700 4800 50  0001 C CNN
	1    3700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1150 3200 1150
Text GLabel 2550 1250 0    50   Input ~ 0
BAT_V
Wire Wire Line
	2650 1250 2550 1250
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D76F2BC
P 2850 1250
F 0 "SW1" H 2850 1535 50  0000 C CNN
F 1 "SW_SPDT" H 2850 1444 50  0000 C CNN
F 2 "led-dot-matrix:MSK12C02" H 2850 1250 50  0001 C CNN
F 3 "" H 2850 1250 50  0001 C CNN
	1    2850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1050 3200 1150
$Comp
L power:VCC #PWR0109
U 1 1 5D75768D
P 3200 1050
F 0 "#PWR0109" H 3200 900 50  0001 C CNN
F 1 "VCC" H 3200 1200 50  0000 C CNN
F 2 "" H 3200 1050 50  0001 C CNN
F 3 "" H 3200 1050 50  0001 C CNN
	1    3200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3000 1150 3100
$Comp
L power:VCC #PWR0105
U 1 1 5CE873E7
P 1150 3000
F 0 "#PWR0105" H 1150 2850 50  0001 C CNN
F 1 "VCC" H 1150 3150 50  0000 C CNN
F 2 "" H 1150 3000 50  0001 C CNN
F 3 "" H 1150 3000 50  0001 C CNN
	1    1150 3000
	1    0    0    -1  
$EndComp
Text GLabel 4450 1100 2    50   Input ~ 0
SW_SENS
Wire Wire Line
	4300 1100 4450 1100
$Comp
L power:GND #PWR0110
U 1 1 5DDC5AE3
P 3850 1250
F 0 "#PWR0110" H 3850 1000 50  0001 C CNN
F 1 "GND" H 3850 1100 50  0000 C CNN
F 2 "" H 3850 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 5DDEFCEF
P 6350 950
F 0 "#PWR0111" H 6350 800 50  0001 C CNN
F 1 "VCC" H 6350 1100 50  0000 C CNN
F 2 "" H 6350 950 50  0001 C CNN
F 3 "" H 6350 950 50  0001 C CNN
	1    6350 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5DDF8B4E
P 6250 2900
F 0 "R4" H 6309 2946 50  0000 L CNN
F 1 "100k" H 6309 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6250 2900 50  0001 C CNN
F 3 "~" H 6250 2900 50  0001 C CNN
	1    6250 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5DDFA79D
P 6750 4950
F 0 "#PWR0114" H 6750 4700 50  0001 C CNN
F 1 "GND" H 6750 4800 50  0000 C CNN
F 2 "" H 6750 4950 50  0001 C CNN
F 3 "" H 6750 4950 50  0001 C CNN
	1    6750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4900 6750 4950
Wire Wire Line
	6350 4700 6250 4700
Wire Wire Line
	6350 4600 6250 4600
Wire Wire Line
	6250 4500 6350 4500
Text GLabel 6250 4700 0    50   Input ~ 0
LED_DIN
Text GLabel 6250 4600 0    50   Input ~ 0
LED_CLK
Text GLabel 6250 4500 0    50   Input ~ 0
LED_LOAD
Text GLabel 4800 4250 0    50   Input ~ 0
AT_PB1_MOSI
Text GLabel 4800 4150 0    50   Input ~ 0
AT_PB2_CLK
Text GLabel 4800 4050 0    50   Input ~ 0
AT_PB3
Wire Wire Line
	4800 4050 4900 4050
Wire Wire Line
	4800 4150 4900 4150
Wire Wire Line
	4800 4250 4900 4250
Text GLabel 4900 4050 2    50   Input ~ 0
LED_LOAD
Text GLabel 4900 4150 2    50   Input ~ 0
LED_CLK
Text GLabel 4900 4250 2    50   Input ~ 0
LED_DIN
Entry Wire Line
	7300 3300 7400 3400
Entry Wire Line
	7300 3400 7400 3500
Entry Wire Line
	7300 3500 7400 3600
Entry Wire Line
	7300 3600 7400 3700
Entry Wire Line
	7300 3700 7400 3800
Entry Wire Line
	7300 3800 7400 3900
Entry Wire Line
	7300 3900 7400 4000
Entry Wire Line
	7300 4000 7400 4100
Entry Wire Line
	7300 4100 7400 4200
Entry Wire Line
	7300 4200 7400 4300
Entry Wire Line
	7300 4300 7400 4400
Entry Wire Line
	7300 4400 7400 4500
Entry Wire Line
	7300 4500 7400 4600
Entry Wire Line
	7700 4050 7800 4150
Entry Wire Line
	7700 3950 7800 4050
Entry Wire Line
	7700 3850 7800 3950
Entry Wire Line
	7700 3750 7800 3850
Entry Wire Line
	7700 3650 7800 3750
Entry Wire Line
	7700 3550 7800 3650
Entry Wire Line
	7700 3450 7800 3550
Text Label 7800 3650 0    50   ~ 0
ROW2
Text Label 7800 3750 0    50   ~ 0
ROW3
Text Label 7800 3850 0    50   ~ 0
ROW4
Text Label 7800 3950 0    50   ~ 0
ROW5
Text Label 7800 4050 0    50   ~ 0
ROW6
Text Label 7800 3550 0    50   ~ 0
ROW1
Text Label 7800 4250 0    50   ~ 0
ROW8
Text Label 7800 4150 0    50   ~ 0
ROW7
Wire Wire Line
	8050 4250 7800 4250
Wire Wire Line
	8050 4150 7800 4150
Wire Wire Line
	8050 4050 7800 4050
Wire Wire Line
	8050 3950 7800 3950
Wire Wire Line
	8050 3850 7800 3850
Wire Wire Line
	8050 3750 7800 3750
Wire Wire Line
	8050 3650 7800 3650
Wire Wire Line
	8050 3550 7800 3550
$Comp
L led_dot_matrix:led-dot-matrix-8x8 LED1
U 1 1 5DE2EFED
P 8150 3150
F 0 "LED1" H 8978 2504 50  0000 L CNN
F 1 "led-dot-matrix-8x8" H 8978 2413 50  0000 L CNN
F 2 "led-dot-matrix:led-dot-matrix-8x8" H 8150 3150 50  0001 C CNN
F 3 "" H 8150 3150 50  0001 C CNN
	1    8150 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	7700 4150 7800 4250
Entry Wire Line
	7300 4600 7400 4700
$Comp
L power:VCC #PWR0115
U 1 1 5DEFE37A
P 6750 5500
F 0 "#PWR0115" H 6750 5350 50  0001 C CNN
F 1 "VCC" H 6750 5650 50  0000 C CNN
F 2 "" H 6750 5500 50  0001 C CNN
F 3 "" H 6750 5500 50  0001 C CNN
	1    6750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5500 6750 5600
$Comp
L power:GND #PWR0116
U 1 1 5DF0081D
P 6750 6050
F 0 "#PWR0116" H 6750 5800 50  0001 C CNN
F 1 "GND" H 6750 5900 50  0000 C CNN
F 2 "" H 6750 6050 50  0001 C CNN
F 3 "" H 6750 6050 50  0001 C CNN
	1    6750 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6000 6750 6050
$Comp
L Device:C_Small C2
U 1 1 5DF09B10
P 6500 5800
F 0 "C2" H 6592 5846 50  0000 L CNN
F 1 "10uF" H 6592 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6500 5800 50  0001 C CNN
F 3 "~" H 6500 5800 50  0001 C CNN
	1    6500 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DF0F7C5
P 7000 5800
F 0 "C3" H 7092 5846 50  0000 L CNN
F 1 "100n" H 7092 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 5800 50  0001 C CNN
F 3 "~" H 7000 5800 50  0001 C CNN
	1    7000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5700 6500 5600
Wire Wire Line
	6500 5600 6750 5600
Wire Wire Line
	6750 5600 7000 5600
Wire Wire Line
	7000 5600 7000 5700
Connection ~ 6750 5600
Wire Wire Line
	6500 5900 6500 6000
Wire Wire Line
	6500 6000 6750 6000
Wire Wire Line
	6750 6000 7000 6000
Wire Wire Line
	7000 6000 7000 5900
Connection ~ 6750 6000
$Comp
L Driver_LED:MAX7219 U2
U 1 1 5DDE52AE
P 6750 3900
F 0 "U2" H 6750 5081 50  0000 C CNN
F 1 "MAX7219" H 6750 4990 50  0000 C CNN
F 2 "Package_SO:SOP-24_7.5x15.4mm_P1.27mm" H 6700 3950 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf" H 6800 3750 50  0001 C CNN
	1    6750 3900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5DDFF63D
P 6250 2700
F 0 "#PWR0117" H 6250 2550 50  0001 C CNN
F 1 "VCC" H 6250 2850 50  0000 C CNN
F 2 "" H 6250 2700 50  0001 C CNN
F 3 "" H 6250 2700 50  0001 C CNN
	1    6250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3000 6250 3100
Wire Wire Line
	6250 3100 6350 3100
Wire Wire Line
	6750 2900 6400 2900
Wire Wire Line
	6400 2900 6400 2750
Wire Wire Line
	6400 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2700
Wire Wire Line
	6250 2800 6250 2750
Connection ~ 6250 2750
Text GLabel 4900 4400 2    50   Input ~ 0
SW_SENS
Text GLabel 4900 4500 2    50   Input ~ 0
LIGHT_SENS
Text GLabel 4800 4400 0    50   Input ~ 0
AT_PB0_MISO
Wire Wire Line
	4800 4400 4900 4400
Text GLabel 4800 4500 0    50   Input ~ 0
AT_PB4
Wire Wire Line
	4800 4500 4900 4500
Entry Wire Line
	8200 3150 8100 3050
Entry Wire Line
	8300 3150 8200 3050
Entry Wire Line
	8400 3150 8300 3050
Entry Wire Line
	8500 3150 8400 3050
Entry Wire Line
	8600 3150 8500 3050
Entry Wire Line
	8700 3150 8600 3050
Entry Wire Line
	8800 3150 8700 3050
Entry Wire Line
	8900 3150 8800 3050
Text Label 8900 3350 1    50   ~ 0
COL8
Text Label 8800 3350 1    50   ~ 0
COL7
Text Label 8700 3350 1    50   ~ 0
COL6
Text Label 8600 3350 1    50   ~ 0
COL5
Text Label 8500 3350 1    50   ~ 0
COL4
Text Label 8400 3350 1    50   ~ 0
COL3
Text Label 8300 3350 1    50   ~ 0
COL2
Text Label 8200 3350 1    50   ~ 0
COL1
Wire Wire Line
	8500 3150 8500 3400
Wire Wire Line
	8700 3150 8700 3400
Wire Wire Line
	8200 3150 8200 3400
Wire Wire Line
	8800 3150 8800 3400
Wire Wire Line
	8900 3150 8900 3400
Wire Wire Line
	8300 3150 8300 3400
Wire Wire Line
	8400 3150 8400 3400
Wire Wire Line
	8600 3150 8600 3400
Entry Wire Line
	7300 3100 7400 3200
Entry Wire Line
	7300 3200 7400 3300
Wire Bus Line
	7400 4750 7700 4750
Text Label 7150 3700 0    50   ~ 0
COL8
Text Label 7150 3600 0    50   ~ 0
COL7
Text Label 7150 3500 0    50   ~ 0
COL6
Text Label 7150 3400 0    50   ~ 0
COL5
Text Label 7150 3300 0    50   ~ 0
COL4
Text Label 7150 3200 0    50   ~ 0
COL3
Text Label 7150 3100 0    50   ~ 0
COL2
Text Label 7150 3800 0    50   ~ 0
COL1
Wire Wire Line
	7300 3700 7150 3700
Wire Wire Line
	7300 3600 7150 3600
Wire Wire Line
	7300 3500 7150 3500
Wire Wire Line
	7300 3400 7150 3400
Wire Wire Line
	7300 3300 7150 3300
Wire Wire Line
	7300 3200 7150 3200
Wire Wire Line
	7300 3100 7150 3100
Wire Wire Line
	7300 3800 7150 3800
Wire Wire Line
	7300 4000 7150 4000
Wire Wire Line
	7300 4200 7150 4200
Wire Wire Line
	7300 4300 7150 4300
Wire Wire Line
	7300 4400 7150 4400
Wire Wire Line
	7300 4500 7150 4500
Wire Wire Line
	7300 4600 7150 4600
Wire Wire Line
	7300 3900 7150 3900
Wire Wire Line
	7300 4100 7150 4100
Text Label 7150 4000 0    50   ~ 0
ROW2
Text Label 7150 4100 0    50   ~ 0
ROW3
Text Label 7150 4200 0    50   ~ 0
ROW4
Text Label 7150 4300 0    50   ~ 0
ROW5
Text Label 7150 4400 0    50   ~ 0
ROW6
Text Label 7150 3900 0    50   ~ 0
ROW1
Text Label 7150 4600 0    50   ~ 0
ROW8
Text Label 7150 4500 0    50   ~ 0
ROW7
$Comp
L Switch:SW_Push SW2
U 1 1 5E084D43
P 4100 1100
F 0 "SW2" H 4100 1385 50  0000 C CNN
F 1 "SW_Push" H 4100 1294 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 4100 1300 50  0001 C CNN
F 3 "~" H 4100 1300 50  0001 C CNN
	1    4100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1100 3850 1100
Wire Wire Line
	3850 1100 3850 1250
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E0CA77B
P 3100 1900
F 0 "H1" H 3200 1949 50  0000 L CNN
F 1 "MountingHole_Pad" H 3200 1858 50  0000 L CNN
F 2 "led-dot-matrix:brooch-pin-15mm" H 3100 1900 50  0001 C CNN
F 3 "~" H 3100 1900 50  0001 C CNN
	1    3100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1550 6350 1600
$Comp
L Device:Q_Photo_NPN_CE SN2
U 1 1 5E0104D3
P 6250 1350
F 0 "SN2" H 6441 1396 50  0000 L CNN
F 1 "SFH 3710" H 6441 1305 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6250 1350 50  0001 C CNN
F 3 "~" H 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
Connection ~ 6350 1050
Wire Wire Line
	6350 1050 6350 1150
Wire Wire Line
	6350 950  6350 1050
Wire Wire Line
	5850 1050 5850 1250
Wire Wire Line
	5850 1600 6350 1600
Wire Wire Line
	5850 1550 5850 1600
$Comp
L Device:R_PHOTO SN1
U 1 1 5D7547BD
P 5850 1400
F 0 "SN1" H 5909 1446 50  0000 L CNN
F 1 "10k" H 5909 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 5850 1400 50  0001 C CNN
F 3 "~" H 5850 1400 50  0001 C CNN
	1    5850 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 1050 5850 1050
Wire Bus Line
	7700 3450 7700 4750
Wire Bus Line
	7400 3050 7400 3900
Wire Bus Line
	7400 3050 8800 3050
Wire Bus Line
	7400 4000 7400 4750
$EndSCHEMATC