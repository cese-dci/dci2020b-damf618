EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Dispositivo Secundario - SMRAI "
Date "2020-09-11"
Rev "1.1"
Comp "Daniel Marquez - ISOLSE srl revisor: Monzon Lucas"
Comment1 "* Version con adaptador nrf24l01(solo Antena)  "
Comment2 "* Dispositivo de Monitoreo de Contactos secos de Alarma/Falla (N.O)"
Comment3 "* Sistema Monitoreo Remoto de Alarma de Incencio (SMRAI )"
Comment4 "* Licensia BSD (Isolse SRL) "
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 5F5D302C
P 4425 6025
F 0 "#PWR0101" H 4425 5775 50  0001 C CNN
F 1 "GND" H 4525 6025 50  0000 C CNN
F 2 "" H 4425 6025 50  0001 C CNN
F 3 "" H 4425 6025 50  0001 C CNN
	1    4425 6025
	1    0    0    -1  
$EndComp
$Comp
L ESP8266:NodeMCU1.0(ESP-12E) U1
U 1 1 5F5DE59B
P 1900 5450
F 0 "U1" H 1900 6537 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 1900 6431 60  0000 C CNN
F 2 "Disp_Sec_V_1:NodeMCU1.0" H 1300 4600 60  0001 C CNN
F 3 "https://github.com/nodemcu/nodemcu-devkit-v1.0/blob/master/NODEMCU_DEVKIT_V1.0.PDF" H 1300 4600 60  0001 C CNN
F 4 "https://www.todomicro.com.ar/arduino/223-nodemcu-wifi-esp8266.html" H 1900 5450 50  0001 C CNN "Catalogo"
F 5 "https://www.todomicro.com.ar/" H 1900 5450 50  0001 C CNN "Proveedor"
	1    1900 5450
	1    0    0    -1  
$EndComp
Entry Wire Line
	3300 5350 3200 5450
Wire Wire Line
	2700 5450 3200 5450
Entry Wire Line
	3300 4950 3400 5050
Entry Wire Line
	3300 5050 3400 5150
Entry Wire Line
	3300 5150 3400 5250
Entry Wire Line
	3300 5350 3400 5450
Entry Wire Line
	3300 4650 3200 4750
Entry Wire Line
	3300 4950 3200 5050
Entry Wire Line
	3300 5450 3200 5550
Entry Wire Line
	3300 5550 3200 5650
Wire Wire Line
	2700 4750 3200 4750
Wire Wire Line
	3200 5050 2700 5050
Wire Wire Line
	3200 5550 2700 5550
Wire Wire Line
	2700 5650 3200 5650
Wire Wire Line
	3925 5450 3400 5450
Wire Wire Line
	3925 5250 3400 5250
Wire Wire Line
	3400 5150 3925 5150
Wire Wire Line
	3925 5050 3400 5050
Wire Wire Line
	3400 4950 3925 4950
Wire Wire Line
	4425 5850 4425 6025
Text Label 3025 4750 0    50   ~ 0
CE
Text Label 3025 5050 0    50   ~ 0
CSN
Text Label 3025 5450 0    50   ~ 0
SCK
Text Label 3025 5550 0    50   ~ 0
MOSI
Text Label 3025 5650 0    50   ~ 0
MISO
Text Label 3400 4950 0    50   ~ 0
MOSI
Text Label 3400 5050 0    50   ~ 0
MISO
Text Label 3400 5150 0    50   ~ 0
SCK
Text Label 3400 5250 0    50   ~ 0
CSN
Text Label 3400 5450 0    50   ~ 0
CE
$Comp
L power:GND #PWR0102
U 1 1 5F6453A3
P 2825 6150
F 0 "#PWR0102" H 2825 5900 50  0001 C CNN
F 1 "GND" H 2830 5977 50  0000 C CNN
F 2 "" H 2825 6150 50  0001 C CNN
F 3 "" H 2825 6150 50  0001 C CNN
	1    2825 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6050 2825 6050
Wire Wire Line
	2825 6050 2825 6150
Wire Wire Line
	900  5650 900  5750
Wire Wire Line
	900  5750 1100 5750
Text Label 925  5225 2    50   ~ 0
FALLA
$Comp
L Device:D D1
U 1 1 5F65EBEA
P 9225 1350
F 0 "D1" V 9125 1175 50  0000 L CNN
F 1 "1N5349B" V 9225 925 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 9225 1350 50  0001 C CNN
F 3 "https://www.alldatasheet.es/datasheet-pdf/pdf/58838/DIODES/1N5349B.html" H 9225 1350 50  0001 C CNN
	1    9225 1350
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 5F67D889
P 9350 2000
F 0 "Q2" H 9541 2046 50  0000 L CNN
F 1 "BC337" H 9541 1955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:NEC_Molded_7x4x9mm" H 9550 2100 50  0001 C CNN
F 3 "https://www.alldatasheet.com/datasheet-pdf/pdf/661765/PHILIPS/BC337.html" H 9350 2000 50  0001 C CNN
F 4 "https://html.alldatasheet.com/html-pdf/661765/PHILIPS/BC337/590/2/BC337.html" H 9350 2000 50  0001 C CNN "Catalogo"
	1    9350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5F67D893
P 6800 2900
F 0 "Q1" H 6650 2750 50  0000 L CNN
F 1 "BC337" H 6600 2675 50  0000 L CNN
F 2 "Package_TO_SOT_THT:NEC_Molded_7x4x9mm" H 7000 3000 50  0001 C CNN
F 3 "https://www.alldatasheet.com/datasheet-pdf/pdf/661765/PHILIPS/BC337.html" H 6800 2900 50  0001 C CNN
F 4 "https://html.alldatasheet.com/html-pdf/661765/PHILIPS/BC337/590/2/BC337.html" H 6800 2900 50  0001 C CNN "Catalogo"
	1    6800 2900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F6AAEE0
P 7025 2250
F 0 "C1" H 6850 2350 50  0000 L CNN
F 1 "10nF" H 6825 2150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 7063 2100 50  0001 C CNN
F 3 "~" H 7025 2250 50  0001 C CNN
	1    7025 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2050 8525 2050
Wire Wire Line
	8525 2250 8400 2250
$Comp
L power:GND #PWR0103
U 1 1 5F5F3788
P 7900 2575
F 0 "#PWR0103" H 7900 2325 50  0001 C CNN
F 1 "GND" H 7905 2402 50  0000 C CNN
F 2 "" H 7900 2575 50  0001 C CNN
F 3 "" H 7900 2575 50  0001 C CNN
	1    7900 2575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F5F3B12
P 7025 2550
F 0 "#PWR0104" H 7025 2300 50  0001 C CNN
F 1 "GND" H 6925 2550 50  0000 C CNN
F 2 "" H 7025 2550 50  0001 C CNN
F 3 "" H 7025 2550 50  0001 C CNN
	1    7025 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2450 7900 2575
Wire Wire Line
	7900 1500 7900 1650
$Comp
L power:VCC #PWR0105
U 1 1 5F5F9BB7
P 7275 2325
F 0 "#PWR0105" H 7275 2175 50  0001 C CNN
F 1 "VCC" H 7275 2500 50  0000 C CNN
F 2 "" H 7275 2325 50  0001 C CNN
F 3 "" H 7275 2325 50  0001 C CNN
	1    7275 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 2400 7025 2550
Wire Wire Line
	7400 2250 7350 2250
Wire Wire Line
	7350 2250 7350 2400
Wire Wire Line
	7350 2400 7275 2400
Wire Wire Line
	7275 2400 7275 2325
Wire Wire Line
	6700 2700 6700 1850
Wire Wire Line
	6700 1850 7400 1850
Wire Wire Line
	7025 2100 7025 2050
Wire Wire Line
	7025 2050 7400 2050
$Comp
L power:GND #PWR0106
U 1 1 5F638AFE
P 6700 3325
F 0 "#PWR0106" H 6700 3075 50  0001 C CNN
F 1 "GND" H 6705 3152 50  0000 C CNN
F 2 "" H 6700 3325 50  0001 C CNN
F 3 "" H 6700 3325 50  0001 C CNN
	1    6700 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3100 6700 3325
Text Label 7500 2900 0    50   ~ 0
RST
Wire Wire Line
	9150 2000 8675 2000
Wire Wire Line
	8675 2000 8675 1850
Wire Wire Line
	8400 1850 8675 1850
$Comp
L power:GND #PWR0107
U 1 1 5F6A6246
P 9450 2250
F 0 "#PWR0107" H 9450 2000 50  0001 C CNN
F 1 "GND" H 9575 2250 50  0000 C CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2200 9450 2250
$Comp
L Relay:FINDER-36.11 K1
U 1 1 5F6B17BE
P 9900 1275
F 0 "K1" H 10425 1100 50  0000 R CNN
F 1 "FINDER-36.11" H 10850 1200 50  0000 R CNN
F 2 "Disp_Sec_V_1:Relay_SPDT_Finder_36.11" H 11170 1245 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 9900 1275 50  0001 C CNN
	1    9900 1275
	1    0    0    1   
$EndComp
Wire Wire Line
	9700 1725 9450 1725
Wire Wire Line
	9450 1725 9450 1800
Wire Wire Line
	9225 1500 9225 1725
Wire Wire Line
	9225 1725 9450 1725
Connection ~ 9450 1725
$Comp
L power:+12V #PWR0108
U 1 1 5F6C7B1B
P 7900 1500
F 0 "#PWR0108" H 7900 1350 50  0001 C CNN
F 1 "+12V" H 7915 1673 50  0000 C CNN
F 2 "" H 7900 1500 50  0001 C CNN
F 3 "" H 7900 1500 50  0001 C CNN
	1    7900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5F6CC475
P 9225 875
F 0 "#PWR0109" H 9225 725 50  0001 C CNN
F 1 "+12V" H 9240 1048 50  0000 C CNN
F 2 "" H 9225 875 50  0001 C CNN
F 3 "" H 9225 875 50  0001 C CNN
	1    9225 875 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0110
U 1 1 5F6CC8B7
P 9700 875
F 0 "#PWR0110" H 9700 725 50  0001 C CNN
F 1 "+12V" H 9715 1048 50  0000 C CNN
F 2 "" H 9700 875 50  0001 C CNN
F 3 "" H 9700 875 50  0001 C CNN
	1    9700 875 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5F6D3A12
P 900 5650
F 0 "#PWR0111" H 900 5500 50  0001 C CNN
F 1 "+3.3V" H 915 5823 50  0000 C CNN
F 2 "" H 900 5650 50  0001 C CNN
F 3 "" H 900 5650 50  0001 C CNN
	1    900  5650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 5F6E005D
P 6700 1200
F 0 "#PWR0112" H 6700 1050 50  0001 C CNN
F 1 "+12V" H 6715 1373 50  0000 C CNN
F 2 "" H 6700 1200 50  0001 C CNN
F 3 "" H 6700 1200 50  0001 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F6E41E0
P 6700 1525
F 0 "R1" H 6770 1571 50  0000 L CNN
F 1 "100K" H 6770 1480 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 6630 1525 50  0001 C CNN
F 3 "~" H 6700 1525 50  0001 C CNN
	1    6700 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1200 6700 1375
Wire Wire Line
	6700 1675 6700 1850
Connection ~ 6700 1850
Wire Wire Line
	9225 875  9225 1200
Wire Wire Line
	9700 1575 9700 1725
Wire Wire Line
	9700 875  9700 975 
$Comp
L power:+12V #PWR0113
U 1 1 5F717198
P 10100 875
F 0 "#PWR0113" H 10100 725 50  0001 C CNN
F 1 "+12V" H 10115 1048 50  0000 C CNN
F 2 "" H 10100 875 50  0001 C CNN
F 3 "" H 10100 875 50  0001 C CNN
	1    10100 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 875  10100 975 
Wire Wire Line
	10000 1575 10000 1825
Wire Wire Line
	10000 1825 10475 1825
Text Label 10475 1825 0    50   ~ 0
VCC_CONT
Text Label 700  6150 0    50   ~ 0
VCC_CONT
Wire Wire Line
	1100 6150 700  6150
$Comp
L Regulator_Switching:CRE1S1212SC U4
U 1 1 5FB51D2F
P 5350 1150
F 0 "U4" H 5350 1617 50  0000 C CNN
F 1 "LM2596" H 5350 1526 50  0000 C CNN
F 2 "Disp_Sec_V_1:DC_DC_Converter_lm2596" H 5350 750 50  0001 C CNN
F 3 "https://www.sunrom.com/p/dc-dc-step-down-switching-regulator-based-on-lm2596" H 5350 650 50  0001 C CNN
F 4 "https://www.todomicro.com.ar/arduino/204-regulador-de-voltaje-step-down-lm2596s-13v-35v.html" H 5350 1150 50  0001 C CNN "Catalogo"
F 5 "https://www.todomicro.com.ar" H 5350 1150 50  0001 C CNN "Proveedor"
	1    5350 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0129
U 1 1 5FB6F944
P 6100 850
F 0 "#PWR0129" H 6100 700 50  0001 C CNN
F 1 "+12V" H 6115 1023 50  0000 C CNN
F 2 "" H 6100 850 50  0001 C CNN
F 3 "" H 6100 850 50  0001 C CNN
	1    6100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 850  6100 950 
Wire Wire Line
	6100 950  5850 950 
$Comp
L power:GND #PWR0130
U 1 1 5FB7555A
P 6100 1425
F 0 "#PWR0130" H 6100 1175 50  0001 C CNN
F 1 "GND" H 6105 1252 50  0000 C CNN
F 2 "" H 6100 1425 50  0001 C CNN
F 3 "" H 6100 1425 50  0001 C CNN
	1    6100 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1350 6100 1350
Wire Wire Line
	6100 1350 6100 1425
Wire Notes Line width 10 style solid
	6475 550  6475 3725
Text Notes 7850 3675 0    79   ~ 0
MODULO RESETEO ALIMENTACION DC
Wire Notes Line width 10 style solid
	3775 550  550  550 
Text Notes 4000 6250 0    59   ~ 0
MODULO\nADAPTADOR NRF24L01
Wire Notes Line width 10 style solid
	3975 550  3975 1775
Wire Notes Line width 10 style solid
	3975 1775 6250 1775
Wire Notes Line width 10 style solid
	6250 1775 6250 550 
Wire Notes Line width 10 style solid
	6250 550  3975 550 
Text Notes 4050 1725 0    79   ~ 0
MODULO\nALIMENTACION DC
Wire Notes Line width 10 style solid
	11150 3725 11150 550 
Wire Notes Line width 10 style solid
	6475 3725 11150 3725
Wire Notes Line width 10 style solid
	6475 550  11150 550 
Wire Notes Line width 10 style solid
	550  6750 5250 6750
Wire Notes Line width 10 style solid
	5250 6750 5250 4225
Wire Notes Line width 10 style solid
	5250 4225 550  4225
Wire Notes Line width 10
	5000 6300 5000 4325
Text Notes 2600 6725 0    79   ~ 0
NODEMCU V3.0
$Comp
L Device:Fuse F1
U 1 1 5F65107C
P 4550 950
F 0 "F1" V 4475 950 50  0000 C CNN
F 1 "100mA (5 x 20)" V 4444 950 50  0001 C CNN
F 2 "Disp_Sec_V_1:Fuse" V 4480 950 50  0001 C CNN
F 3 "~" H 4550 950 50  0001 C CNN
	1    4550 950 
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5F667A59
P 4775 1150
F 0 "D2" V 4675 975 50  0000 L CNN
F 1 "1N5359B" V 4875 775 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 4775 1150 50  0001 C CNN
F 3 "https://www.alldatasheet.es/datasheet-pdf/pdf/58838/DIODES/1N5349B.html" H 4775 1150 50  0001 C CNN
	1    4775 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 950  4350 950 
Wire Wire Line
	4350 950  4350 1125
Wire Wire Line
	4350 1125 4275 1125
Wire Wire Line
	4275 1225 4350 1225
Wire Wire Line
	4350 1225 4350 1350
Wire Wire Line
	4350 1350 4775 1350
Wire Wire Line
	4700 950  4775 950 
Wire Wire Line
	4775 1000 4775 950 
Connection ~ 4775 950 
Wire Wire Line
	4775 950  4850 950 
Wire Wire Line
	4775 1300 4775 1350
Connection ~ 4775 1350
Wire Wire Line
	4775 1350 4850 1350
Wire Wire Line
	8525 2150 8525 2250
Wire Wire Line
	8525 2050 8525 2150
Connection ~ 8525 2150
Wire Wire Line
	8675 2150 8525 2150
Wire Wire Line
	9375 2850 9025 2850
Wire Wire Line
	9375 2700 9375 2850
$Comp
L power:+12V #PWR0131
U 1 1 5F76F02C
P 9375 2700
F 0 "#PWR0131" H 9375 2550 50  0001 C CNN
F 1 "+12V" H 9250 2825 50  0000 C CNN
F 2 "" H 9375 2700 50  0001 C CNN
F 3 "" H 9375 2700 50  0001 C CNN
	1    9375 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8675 2550 8875 2550
Connection ~ 8675 2550
Wire Wire Line
	8675 2150 8675 2550
Wire Wire Line
	8875 2550 8875 2700
Wire Wire Line
	8475 2550 8675 2550
Wire Wire Line
	8475 2725 8475 2550
Wire Wire Line
	8475 3025 8475 3200
$Comp
L power:GND #PWR0132
U 1 1 5F5F1381
P 8475 3200
F 0 "#PWR0132" H 8475 2950 50  0001 C CNN
F 1 "GND" H 8480 3027 50  0000 C CNN
F 2 "" H 8475 3200 50  0001 C CNN
F 3 "" H 8475 3200 50  0001 C CNN
	1    8475 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F6AB8E6
P 8875 2850
F 0 "RV1" H 8925 2625 50  0000 R CNN
F 1 "R_POT 100k" H 9425 2775 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266W_Vertical" H 8875 2850 50  0001 C CNN
F 3 "~" H 8875 2850 50  0001 C CNN
	1    8875 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F6AA403
P 8475 2875
F 0 "C2" H 8590 2921 50  0000 L CNN
F 1 "47uF" H 8590 2830 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 8513 2725 50  0001 C CNN
F 3 "~" H 8475 2875 50  0001 C CNN
	1    8475 2875
	1    0    0    -1  
$EndComp
$Comp
L Timer:LM555xN U2
U 1 1 5F6A8ECB
P 7900 2050
F 0 "U2" H 8125 2500 50  0000 C CNN
F 1 "LM555xN" H 8100 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8550 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 8750 1650 50  0001 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2900 7275 2900
$Comp
L Device:R R3
U 1 1 5F775589
P 7275 3150
F 0 "R3" H 7345 3196 50  0000 L CNN
F 1 "220" H 7345 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7205 3150 50  0001 C CNN
F 3 "~" H 7275 3150 50  0001 C CNN
	1    7275 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 3000 7275 2900
Connection ~ 7275 2900
Wire Wire Line
	7275 2900 7500 2900
$Comp
L power:GND #PWR0133
U 1 1 5F77B9F0
P 7275 3400
F 0 "#PWR0133" H 7275 3150 50  0001 C CNN
F 1 "GND" H 7280 3227 50  0000 C CNN
F 2 "" H 7275 3400 50  0001 C CNN
F 3 "" H 7275 3400 50  0001 C CNN
	1    7275 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 3300 7275 3400
Wire Notes Line width 20 style dotted rgb(0, 0, 0)
	8875 2650 9075 2450
Wire Notes Line width 20 style dotted rgb(0, 0, 0)
	9075 2450 9450 2450
Text Notes 9525 2625 0    35   ~ 0
Potenciometro para definir el periodo de\ntiempo que permanecera apagado el \nsistema ante un RESET (RST)
Text Notes 3550 6525 0    50   Italic 0
Diseno exlusivo para adaptador nrf24l01.\n(Solo version con antena)
Text Notes 1025 6550 0    50   Italic 0
No admite a la version HUZZAH de Adafruit.\n(dimensiones y pinout diferentes)  
Text Label 4425 4550 0    50   ~ 0
VCC_CONT
Entry Wire Line
	3300 4750 3200 4850
Wire Wire Line
	2700 4850 3200 4850
Text Label 2800 4850 0    50   ~ 0
ALARM_PIN
Text Label 2800 4950 0    50   ~ 0
RST
Wire Wire Line
	2700 4950 2800 4950
$Comp
L Device:R R4
U 1 1 5F94040F
P 3550 5900
F 0 "R4" H 3400 5950 50  0000 L CNN
F 1 "47K" H 3350 5875 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3480 5900 50  0001 C CNN
F 3 "~" H 3550 5900 50  0001 C CNN
	1    3550 5900
	1    0    0    -1  
$EndComp
Text Label 3400 5650 0    50   ~ 0
ALARM_PIN
Entry Wire Line
	3300 5550 3400 5650
Wire Wire Line
	3550 5650 3550 5750
Wire Wire Line
	3400 5650 3550 5650
Text Label 3550 6175 2    50   ~ 0
ALARMA
$Comp
L Device:R R2
U 1 1 5F97A9E8
P 925 4950
F 0 "R2" H 775 5000 50  0000 L CNN
F 1 "47K" H 725 4925 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 855 4950 50  0001 C CNN
F 3 "~" H 925 4950 50  0001 C CNN
	1    925  4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  5100 925  5225
Wire Wire Line
	925  4750 925  4800
Wire Wire Line
	1100 4750 925  4750
NoConn ~ 2700 5150
NoConn ~ 2700 5250
NoConn ~ 2700 5750
NoConn ~ 2700 5850
NoConn ~ 2700 5950
NoConn ~ 1100 5950
NoConn ~ 1100 5850
NoConn ~ 1100 5650
NoConn ~ 1100 5550
NoConn ~ 1100 5450
NoConn ~ 1100 5350
NoConn ~ 1100 5250
NoConn ~ 1100 5150
NoConn ~ 1100 5050
NoConn ~ 1100 4950
NoConn ~ 3925 5550
NoConn ~ 8875 3000
NoConn ~ 2700 6150
NoConn ~ 1100 4850
NoConn ~ 10200 1575
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FA605D4
P 4775 925
F 0 "#FLG0101" H 4775 1000 50  0001 C CNN
F 1 "PWR_FLAG" H 4875 1075 50  0000 C CNN
F 2 "" H 4775 925 50  0001 C CNN
F 3 "~" H 4775 925 50  0001 C CNN
	1    4775 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 925  4775 950 
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FA68D47
P 4775 1400
F 0 "#FLG0102" H 4775 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 4775 1573 50  0000 C CNN
F 2 "" H 4775 1400 50  0001 C CNN
F 3 "~" H 4775 1400 50  0001 C CNN
	1    4775 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4775 1400 4775 1350
Wire Wire Line
	4425 4550 4425 4600
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5FA98A37
P 4425 4600
F 0 "#FLG0103" H 4425 4675 50  0001 C CNN
F 1 "PWR_FLAG" V 4425 4728 50  0000 L CNN
F 2 "" H 4425 4600 50  0001 C CNN
F 3 "~" H 4425 4600 50  0001 C CNN
	1    4425 4600
	0    1    1    0   
$EndComp
Connection ~ 4425 4600
Wire Wire Line
	4425 4600 4425 4650
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5FA9951B
P 7350 2450
F 0 "#FLG0105" H 7350 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 2623 50  0000 C CNN
F 2 "" H 7350 2450 50  0001 C CNN
F 3 "~" H 7350 2450 50  0001 C CNN
	1    7350 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 2450 7350 2400
Connection ~ 7350 2400
Entry Wire Line
	3300 4850 3400 4950
$Comp
L RF2:NRF24L01_Breakout U3
U 1 1 5FABA0C6
P 4425 5250
F 0 "U3" H 4125 5850 50  0000 L CNN
F 1 "NRF24L01" H 3975 5775 50  0000 L CNN
F 2 "Disp_Sec_V_1:nRF24L01_Adapter" H 4575 5850 50  0001 L CIN
F 3 "https://es.aliexpress.com/item/32969668221.html" H 4425 5150 50  0001 C CNN
F 4 "https://www.todomicro.com.ar/arduino/274-modulo-transceptor-rf-nrf24l01-24ghz.html" H 4425 5250 50  0001 C CNN "Catalogo"
F 5 "https://www.todomicro.com.ar/" H 4425 5250 50  0001 C CNN "Proveedor"
	1    4425 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6175 3550 6050
Wire Notes Line width 10
	5000 4350 3875 4350
Wire Notes Line width 10
	3875 4350 3875 6300
Wire Notes Line width 10
	3875 6300 5000 6300
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FB55054
P 4075 1225
F 0 "J1" H 4075 925 50  0000 L CNN
F 1 "DC Supply" H 3775 1400 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 4075 1225 50  0001 C CNN
F 3 "~" H 4075 1225 50  0001 C CNN
	1    4075 1225
	-1   0    0    1   
$EndComp
Text Notes 9525 3425 0    50   ~ 0
Modulo de reseteo temporizado (periodo \nconfigurable), para reposicion ante fallas \nde comunicacion.    
$Comp
L power:GND #PWR0141
U 1 1 5F76DA08
P 625 6200
F 0 "#PWR0141" H 625 5950 50  0001 C CNN
F 1 "GND" H 630 6027 50  0000 C CNN
F 2 "" H 625 6200 50  0001 C CNN
F 3 "" H 625 6200 50  0001 C CNN
	1    625  6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6050 625  6050
Wire Wire Line
	625  6050 625  6200
$Comp
L power:GND #PWR0142
U 1 1 5F706F84
P 2950 5200
F 0 "#PWR0142" H 2950 4950 50  0001 C CNN
F 1 "GND" H 2955 5027 50  0000 C CNN
F 2 "" H 2950 5200 50  0001 C CNN
F 3 "" H 2950 5200 50  0001 C CNN
	1    2950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5350 2800 5350
Wire Wire Line
	2800 5350 2800 5150
Wire Wire Line
	2800 5150 2950 5150
Wire Wire Line
	2950 5150 2950 5200
$Comp
L Mechanical:MountingHole H1
U 1 1 5F818DB5
P 3825 6975
F 0 "H1" H 3925 7021 50  0000 L CNN
F 1 "MountingHole" H 3925 6930 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 3825 6975 50  0001 C CNN
F 3 "~" H 3825 6975 50  0001 C CNN
	1    3825 6975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F840C62
P 3825 7275
F 0 "H2" H 3925 7321 50  0000 L CNN
F 1 "MountingHole" H 3925 7230 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 3825 7275 50  0001 C CNN
F 3 "~" H 3825 7275 50  0001 C CNN
	1    3825 7275
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F849A92
P 4600 6975
F 0 "H3" H 4700 7021 50  0000 L CNN
F 1 "MountingHole" H 4700 6930 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 4600 6975 50  0001 C CNN
F 3 "~" H 4600 6975 50  0001 C CNN
	1    4600 6975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F852899
P 4600 7275
F 0 "H4" H 4700 7321 50  0000 L CNN
F 1 "MountingHole" H 4700 7230 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 4600 7275 50  0001 C CNN
F 3 "~" H 4600 7275 50  0001 C CNN
	1    4600 7275
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5F93101C
P 5625 7250
F 0 "FID1" H 5710 7296 50  0000 L CNN
F 1 "Fiducial" H 5710 7205 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 5625 7250 50  0001 C CNN
F 3 "~" H 5625 7250 50  0001 C CNN
	1    5625 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5F94124B
P 5875 7000
F 0 "FID2" H 5960 7046 50  0000 L CNN
F 1 "Fiducial" H 5960 6955 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 5875 7000 50  0001 C CNN
F 3 "~" H 5875 7000 50  0001 C CNN
	1    5875 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5F949FD6
P 6125 7250
F 0 "FID3" H 6210 7296 50  0000 L CNN
F 1 "Fiducial" H 6210 7205 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 6125 7250 50  0001 C CNN
F 3 "~" H 6125 7250 50  0001 C CNN
	1    6125 7250
	1    0    0    -1  
$EndComp
$Comp
L Disp_Sec_V_1-rescue:isolseLOGO-Disp_Sec_V_1-cache U6
U 1 1 5F9C88A1
P 1800 7025
F 0 "U6" H 1800 6925 50  0001 C CNN
F 1 "isolseLOGO" H 1800 7025 50  0000 C CNN
F 2 "Disp_Sec_V_1:isolse" H 1800 7025 50  0001 C CNN
F 3 "" H 1800 7025 50  0001 C CNN
	1    1800 7025
	1    0    0    -1  
$EndComp
$Comp
L Disp_Sec_V_1-rescue:DEEPCONTROL_LOGO-Disp_Sec_V_1-cache U5
U 1 1 5F9CE70D
P 1075 7025
F 0 "U5" H 1075 6925 50  0001 C CNN
F 1 "DEEPCONTROL_LOGO" H 1075 7025 50  0000 C CNN
F 2 "Disp_Sec_V_1:DC" H 1075 7025 50  0001 C CNN
F 3 "" H 1075 7025 50  0001 C CNN
	1    1075 7025
	1    0    0    -1  
$EndComp
Text Notes 3700 7500 0    79   ~ 0
ELEMENTOS MECANICOS
Text Notes 1900 7275 0    79   ~ 0
ELEMENTOS DE SERIGRAFIA
$Comp
L Disp_Sec_V_1-rescue:Contacto_Alarma-Disp_Sec_V_1-cache U8
U 1 1 5FAF25D4
P 2475 7025
F 0 "U8" H 2475 6925 50  0001 C CNN
F 1 "Contacto_Alarma" H 2475 7025 50  0000 C CNN
F 2 "Disp_Sec_V_1:C.ALARMA" H 2475 7025 50  0001 C CNN
F 3 "" H 2475 7025 50  0001 C CNN
	1    2475 7025
	1    0    0    -1  
$EndComp
$Comp
L Disp_Sec_V_1-rescue:Contacto_Falla-Disp_Sec_V_1-cache U7
U 1 1 5FAF3302
P 3200 7025
F 0 "U7" H 3200 6925 50  0001 C CNN
F 1 "Contacto_Falla" H 3200 7025 50  0000 C CNN
F 2 "Disp_Sec_V_1:C.FALLA" H 3200 7025 50  0001 C CNN
F 3 "" H 3200 7025 50  0001 C CNN
	1    3200 7025
	1    0    0    -1  
$EndComp
Wire Notes Line width 10 style solid
	625  6900 625  7275
Wire Notes Line width 10 style solid
	625  7275 3525 7275
Wire Notes Line width 10 style solid
	3525 7275 3525 6900
Wire Notes Line width 10 style solid
	3525 6900 625  6900
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5F818A8C
P 1100 1275
F 0 "J2" H 1180 1267 50  0000 L CNN
F 1 "Contacto A (N.O) " H 1180 1176 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1100 1275 50  0001 C CNN
F 3 "~" H 1100 1275 50  0001 C CNN
	1    1100 1275
	0    -1   -1   0   
$EndComp
Connection ~ 2925 1675
Wire Wire Line
	3025 1675 2925 1675
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5FA850D7
P 3025 1675
F 0 "#FLG0104" H 3025 1750 50  0001 C CNN
F 1 "PWR_FLAG" V 2925 1475 50  0000 L CNN
F 2 "" H 3025 1675 50  0001 C CNN
F 3 "~" H 3025 1675 50  0001 C CNN
	1    3025 1675
	0    1    -1   0   
$EndComp
Wire Wire Line
	2700 1675 2925 1675
Wire Wire Line
	2925 1525 2925 1675
$Comp
L power:+3.3V #PWR0140
U 1 1 5F9156A2
P 2925 1525
F 0 "#PWR0140" H 2925 1375 50  0001 C CNN
F 1 "+3.3V" H 3050 1625 50  0000 C CNN
F 2 "" H 2925 1525 50  0001 C CNN
F 3 "" H 2925 1525 50  0001 C CNN
	1    2925 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 3475 2950 3475
Wire Wire Line
	2950 3475 2950 3275
$Comp
L power:+3.3V #PWR0139
U 1 1 5F90DD9A
P 2950 3275
F 0 "#PWR0139" H 2950 3125 50  0001 C CNN
F 1 "+3.3V" H 3075 3375 50  0000 C CNN
F 2 "" H 2950 3275 50  0001 C CNN
F 3 "" H 2950 3275 50  0001 C CNN
	1    2950 3275
	1    0    0    -1  
$EndComp
Text Notes 2475 2150 0    50   ~ 0
Led de indicacion de estado\nde alarma, al cerrar el contacto\ncorrespondiente.
Text Notes 2575 3950 0    50   ~ 0
Led de indicacion de estado\nde falla, al cerrar el contacto\ncorrespondiente.
Wire Wire Line
	1575 1575 1575 2000
Wire Wire Line
	1550 1575 1575 1575
Wire Wire Line
	1200 1575 1250 1575
Wire Wire Line
	1200 1475 1200 1575
Wire Wire Line
	900  1950 900  2050
$Comp
L power:GND #PWR0138
U 1 1 5F818AC6
P 900 2050
F 0 "#PWR0138" H 900 1800 50  0001 C CNN
F 1 "GND" H 1025 2050 50  0000 C CNN
F 2 "" H 900 2050 50  0001 C CNN
F 3 "" H 900 2050 50  0001 C CNN
	1    900  2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1150 900  1225
$Comp
L power:+12V #PWR0137
U 1 1 5F818ABB
P 900 1150
F 0 "#PWR0137" H 900 1000 50  0001 C CNN
F 1 "+12V" H 915 1323 50  0000 C CNN
F 2 "" H 900 1150 50  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1650 900  1575
Wire Wire Line
	900  1575 1100 1575
Connection ~ 900  1575
Wire Wire Line
	900  1525 900  1575
Wire Wire Line
	1100 1575 1100 1475
Wire Wire Line
	650  1575 900  1575
Wire Wire Line
	650  1150 650  1575
$Comp
L Device:D_Schottky D4
U 1 1 5F818AAA
P 900 1800
F 0 "D4" V 900 1900 50  0000 L CNN
F 1 "SR2100" V 1000 1850 50  0000 L CNN
F 2 "Diode_THT:D_DO-34_SOD68_P10.16mm_Horizontal" H 900 1800 50  0001 C CNN
F 3 "https://html.alldatasheet.es/html-pdf/191389/WTE/SR2100/53/1/SR2100.html" H 900 1800 50  0001 C CNN
	1    900  1800
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5F818AA0
P 900 1375
F 0 "D3" V 700 1250 50  0000 L CNN
F 1 "SR2100" V 775 1125 39  0000 L CNN
F 2 "Diode_THT:D_DO-34_SOD68_P10.16mm_Horizontal" H 900 1375 50  0001 C CNN
F 3 "https://html.alldatasheet.es/html-pdf/191389/WTE/SR2100/53/1/SR2100.html" H 900 1375 50  0001 C CNN
	1    900  1375
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0136
U 1 1 5F818A96
P 650 1150
F 0 "#PWR0136" H 650 1000 50  0001 C CNN
F 1 "+12V" H 665 1323 50  0000 C CNN
F 2 "" H 650 1150 50  0001 C CNN
F 3 "" H 650 1150 50  0001 C CNN
	1    650  1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F818A82
P 1400 1575
F 0 "R6" V 1500 1525 50  0000 L CNN
F 1 "220" V 1575 1500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1330 1575 50  0001 C CNN
F 3 "~" H 1400 1575 50  0001 C CNN
	1    1400 1575
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3525 1250 3525
Wire Wire Line
	1200 3425 1200 3525
Wire Wire Line
	1600 3525 1600 3800
Wire Wire Line
	1550 3525 1600 3525
Wire Wire Line
	900  3900 900  4000
$Comp
L power:GND #PWR0135
U 1 1 5F7D3FFE
P 900 4000
F 0 "#PWR0135" H 900 3750 50  0001 C CNN
F 1 "GND" H 1025 4000 50  0000 C CNN
F 2 "" H 900 4000 50  0001 C CNN
F 3 "" H 900 4000 50  0001 C CNN
	1    900  4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3100 900  3175
$Comp
L power:+12V #PWR0134
U 1 1 5F7BD88B
P 900 3100
F 0 "#PWR0134" H 900 2950 50  0001 C CNN
F 1 "+12V" H 915 3273 50  0000 C CNN
F 2 "" H 900 3100 50  0001 C CNN
F 3 "" H 900 3100 50  0001 C CNN
	1    900  3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3600 900  3525
Wire Wire Line
	900  3525 1100 3525
Connection ~ 900  3525
Wire Wire Line
	900  3475 900  3525
Wire Wire Line
	1100 3525 1100 3425
Wire Wire Line
	650  3525 900  3525
Wire Wire Line
	650  3100 650  3525
$Comp
L Device:D_Schottky D6
U 1 1 5F7A9FE8
P 900 3750
F 0 "D6" V 775 3600 50  0000 L CNN
F 1 "SR2100" V 975 3850 50  0000 L CNN
F 2 "Diode_THT:D_DO-34_SOD68_P10.16mm_Horizontal" H 900 3750 50  0001 C CNN
F 3 "https://html.alldatasheet.es/html-pdf/191389/WTE/SR2100/53/1/SR2100.htmlhttps://html.alldatasheet.es/html-pdf/191389/WTE/SR2100/53/1/SR2100.html" H 900 3750 50  0001 C CNN
	1    900  3750
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 5F78DCEC
P 900 3325
F 0 "D5" V 900 3150 50  0000 L CNN
F 1 "SR2100" V 800 3075 39  0000 L CNN
F 2 "Diode_THT:D_DO-34_SOD68_P10.16mm_Horizontal" H 900 3325 50  0001 C CNN
F 3 "https://html.alldatasheet.es/html-pdf/191389/WTE/SR2100/53/1/SR2100.html" H 900 3325 50  0001 C CNN
	1    900  3325
	0    1    1    0   
$EndComp
Text Notes 2125 2350 0    79   ~ 0
MODULO CONTACTO ALARMA
Wire Notes Line width 10 style solid
	550  2400 3775 2400
Text Notes 2125 4175 0    79   ~ 0
MODULO CONTACTO FALLA
Wire Wire Line
	3425 850  3425 925 
Connection ~ 3425 850 
Wire Wire Line
	2600 850  3425 850 
Wire Wire Line
	2600 975  2600 850 
Wire Wire Line
	3425 700  3425 850 
Wire Wire Line
	3450 2625 3450 2725
Connection ~ 3450 2625
Wire Wire Line
	2625 2625 3450 2625
Wire Wire Line
	2625 2775 2625 2625
Wire Wire Line
	3450 2500 3450 2625
$Comp
L Device:R R10
U 1 1 5F911492
P 3425 1450
F 0 "R10" H 3495 1496 50  0000 L CNN
F 1 "220" H 3495 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3355 1450 50  0001 C CNN
F 3 "~" H 3425 1450 50  0001 C CNN
	1    3425 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D10
U 1 1 5F911488
P 3425 1075
F 0 "D10" V 3372 1155 50  0000 L CNN
F 1 "LED" V 3463 1155 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 3425 1075 50  0001 C CNN
F 3 "~" H 3425 1075 50  0001 C CNN
	1    3425 1075
	0    1    -1   0   
$EndComp
Text Label 3425 700  0    50   ~ 0
ALARMA
Wire Wire Line
	3425 1225 3425 1300
$Comp
L power:GND #PWR0124
U 1 1 5F91147C
P 3425 1700
F 0 "#PWR0124" H 3425 1450 50  0001 C CNN
F 1 "GND" H 3550 1700 50  0000 C CNN
F 2 "" H 3425 1700 50  0001 C CNN
F 3 "" H 3425 1700 50  0001 C CNN
	1    3425 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 1600 3425 1700
Wire Wire Line
	2700 1575 2700 1675
Wire Wire Line
	2500 1575 2500 1725
$Comp
L power:GND #PWR0123
U 1 1 5F91146D
P 2500 1725
F 0 "#PWR0123" H 2500 1475 50  0001 C CNN
F 1 "GND" H 2375 1725 50  0000 C CNN
F 2 "" H 2500 1725 50  0001 C CNN
F 3 "" H 2500 1725 50  0001 C CNN
	1    2500 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 850  2200 975 
$Comp
L power:+12V #PWR0122
U 1 1 5F911455
P 2200 850
F 0 "#PWR0122" H 2200 700 50  0001 C CNN
F 1 "+12V" H 2215 1023 50  0000 C CNN
F 2 "" H 2200 850 50  0001 C CNN
F 3 "" H 2200 850 50  0001 C CNN
	1    2200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 850  1700 1100
$Comp
L power:+12V #PWR0121
U 1 1 5F91144A
P 1700 850
F 0 "#PWR0121" H 1700 700 50  0001 C CNN
F 1 "+12V" H 1715 1023 50  0000 C CNN
F 2 "" H 1700 850 50  0001 C CNN
F 3 "" H 1700 850 50  0001 C CNN
	1    1700 850 
	1    0    0    -1  
$EndComp
Connection ~ 1875 1700
Wire Wire Line
	2200 1700 1875 1700
Wire Wire Line
	2200 1575 2200 1700
Wire Wire Line
	1875 1700 1875 1800
Wire Wire Line
	1700 1700 1875 1700
Wire Wire Line
	1700 1400 1700 1700
Wire Wire Line
	1875 2200 1875 2275
$Comp
L power:GND #PWR0120
U 1 1 5F911436
P 1875 2275
F 0 "#PWR0120" H 1875 2025 50  0001 C CNN
F 1 "GND" H 2000 2275 50  0000 C CNN
F 2 "" H 1875 2275 50  0001 C CNN
F 3 "" H 1875 2275 50  0001 C CNN
	1    1875 2275
	1    0    0    -1  
$EndComp
$Comp
L Relay:FINDER-36.11 K2
U 1 1 5F91142C
P 2400 1275
F 0 "K2" H 2925 1100 50  0000 R CNN
F 1 "FINDER-36.11" H 3175 1000 50  0000 R CNN
F 2 "Disp_Sec_V_1:Relay_SPDT_Finder_36.11" H 3670 1245 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 2400 1275 50  0001 C CNN
	1    2400 1275
	1    0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q4
U 1 1 5F911422
P 1775 2000
F 0 "Q4" H 1966 2046 50  0000 L CNN
F 1 "BC337" H 1966 1955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:NEC_Molded_7x4x9mm" H 1975 2100 50  0001 C CNN
F 3 "https://www.alldatasheet.com/datasheet-pdf/pdf/661765/PHILIPS/BC337.html" H 1775 2000 50  0001 C CNN
F 4 "https://html.alldatasheet.com/html-pdf/661765/PHILIPS/BC337/590/2/BC337.html" H 1775 2000 50  0001 C CNN "Catalogo"
	1    1775 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5F91140E
P 1700 1250
F 0 "D7" V 1600 1100 50  0000 L CNN
F 1 "1N5349B" V 1675 850 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 1700 1250 50  0001 C CNN
F 3 "https://www.alldatasheet.es/datasheet-pdf/pdf/58838/DIODES/1N5349B.html" H 1700 1250 50  0001 C CNN
	1    1700 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F662ECF
P 3450 3250
F 0 "R11" H 3520 3296 50  0000 L CNN
F 1 "220" H 3520 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3380 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 5F66B1EC
P 3450 2875
F 0 "D11" V 3397 2955 50  0000 L CNN
F 1 "LED" V 3488 2955 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 3450 2875 50  0001 C CNN
F 3 "~" H 3450 2875 50  0001 C CNN
	1    3450 2875
	0    1    -1   0   
$EndComp
Text Label 3450 2500 0    50   ~ 0
FALLA
Wire Wire Line
	3450 3025 3450 3100
$Comp
L power:GND #PWR0119
U 1 1 5F8072F4
P 3450 3500
F 0 "#PWR0119" H 3450 3250 50  0001 C CNN
F 1 "GND" H 3575 3500 50  0000 C CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3400 3450 3500
Wire Wire Line
	2725 3375 2725 3475
Wire Wire Line
	2525 3375 2525 3525
$Comp
L power:GND #PWR0118
U 1 1 5F83DDA7
P 2525 3525
F 0 "#PWR0118" H 2525 3275 50  0001 C CNN
F 1 "GND" H 2400 3525 50  0000 C CNN
F 2 "" H 2525 3525 50  0001 C CNN
F 3 "" H 2525 3525 50  0001 C CNN
	1    2525 3525
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 5F7E27D4
P 650 3100
F 0 "#PWR0117" H 650 2950 50  0001 C CNN
F 1 "+12V" H 665 3273 50  0000 C CNN
F 2 "" H 650 3100 50  0001 C CNN
F 3 "" H 650 3100 50  0001 C CNN
	1    650  3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 2725 2225 2775
$Comp
L power:+12V #PWR0116
U 1 1 5F7D9E4F
P 2225 2725
F 0 "#PWR0116" H 2225 2575 50  0001 C CNN
F 1 "+12V" H 2240 2898 50  0000 C CNN
F 2 "" H 2225 2725 50  0001 C CNN
F 3 "" H 2225 2725 50  0001 C CNN
	1    2225 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 2725 1725 2900
$Comp
L power:+12V #PWR0115
U 1 1 5F7D6867
P 1725 2725
F 0 "#PWR0115" H 1725 2575 50  0001 C CNN
F 1 "+12V" H 1740 2898 50  0000 C CNN
F 2 "" H 1725 2725 50  0001 C CNN
F 3 "" H 1725 2725 50  0001 C CNN
	1    1725 2725
	1    0    0    -1  
$EndComp
Connection ~ 1900 3500
Wire Wire Line
	2225 3500 1900 3500
Wire Wire Line
	2225 3375 2225 3500
Wire Wire Line
	1900 3500 1900 3600
Wire Wire Line
	1725 3500 1900 3500
Wire Wire Line
	1725 3200 1725 3500
Wire Wire Line
	1900 4000 1900 4075
$Comp
L power:GND #PWR0114
U 1 1 5F7C5B42
P 1900 4075
F 0 "#PWR0114" H 1900 3825 50  0001 C CNN
F 1 "GND" H 2025 4075 50  0000 C CNN
F 2 "" H 1900 4075 50  0001 C CNN
F 3 "" H 1900 4075 50  0001 C CNN
	1    1900 4075
	1    0    0    -1  
$EndComp
$Comp
L Relay:FINDER-36.11 K3
U 1 1 5F790C0F
P 2425 3075
F 0 "K3" H 2950 2900 50  0000 R CNN
F 1 "FINDER-36.11" H 3200 2800 50  0000 R CNN
F 2 "Disp_Sec_V_1:Relay_SPDT_Finder_36.11" H 3695 3045 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 2425 3075 50  0001 C CNN
	1    2425 3075
	1    0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q5
U 1 1 5F67D87F
P 1800 3800
F 0 "Q5" H 1991 3846 50  0000 L CNN
F 1 "BC337" H 1991 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:NEC_Molded_7x4x9mm" H 2000 3900 50  0001 C CNN
F 3 "https://www.alldatasheet.com/datasheet-pdf/pdf/661765/PHILIPS/BC337.html" H 1800 3800 50  0001 C CNN
F 4 "https://html.alldatasheet.com/html-pdf/661765/PHILIPS/BC337/590/2/BC337.html" H 1800 3800 50  0001 C CNN "Catalogo"
	1    1800 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F670F99
P 1100 3225
F 0 "J3" H 1180 3217 50  0000 L CNN
F 1 "Contacto F (N.0)" H 1180 3126 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1100 3225 50  0001 C CNN
F 3 "~" H 1100 3225 50  0001 C CNN
	1    1100 3225
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D8
U 1 1 5F65D67C
P 1725 3050
F 0 "D8" V 1625 2850 50  0000 L CNN
F 1 "1N5349B" V 1725 2650 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 1725 3050 50  0001 C CNN
F 3 "https://www.alldatasheet.es/datasheet-pdf/pdf/58838/DIODES/1N5349B.html" H 1725 3050 50  0001 C CNN
	1    1725 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F657505
P 1400 3525
F 0 "R7" V 1500 3475 50  0000 L CNN
F 1 "220" V 1575 3450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1330 3525 50  0001 C CNN
F 3 "~" H 1400 3525 50  0001 C CNN
	1    1400 3525
	0    1    1    0   
$EndComp
Wire Notes Line width 10 style solid
	3775 4225 3775 550 
Wire Notes Line width 10 style solid
	550  550  550  6750
Wire Notes Line width 10 style solid
	11150 4225 11150 6250
Text Notes 9525 6225 0    79   ~ 0
MODULO ESTADO NORMAL
Wire Wire Line
	9825 4375 9825 4575
Text Notes 7900 4850 0    50   ~ 0
Led de indicacion de estado normal,\ncomo la ausencia de los estados de\nfalla o alarma.\n
$Comp
L Device:R R9
U 1 1 5F80DA58
P 9825 4725
F 0 "R9" H 9895 4771 50  0000 L CNN
F 1 "220" H 9895 4680 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9755 4725 50  0001 C CNN
F 3 "~" H 9825 4725 50  0001 C CNN
	1    9825 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 5F80DA62
P 10100 5150
F 0 "D9" V 10047 5230 50  0000 L CNN
F 1 "LED" V 10138 5230 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 10100 5150 50  0001 C CNN
F 3 "~" H 10100 5150 50  0001 C CNN
	1    10100 5150
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5F80DA6F
P 10100 5450
F 0 "#PWR0128" H 10100 5200 50  0001 C CNN
F 1 "GND" H 10225 5450 50  0000 C CNN
F 2 "" H 10100 5450 50  0001 C CNN
F 3 "" H 10100 5450 50  0001 C CNN
	1    10100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5300 10100 5450
Wire Wire Line
	9825 4875 9825 5000
Wire Wire Line
	9825 5000 10100 5000
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5F9AA9B0
P 9475 5650
F 0 "Q6" H 9666 5696 50  0000 L CNN
F 1 "BC337" H 9700 5575 50  0000 L CNN
F 2 "Package_TO_SOT_THT:NEC_Molded_7x4x9mm" H 9675 5750 50  0001 C CNN
F 3 "https://www.alldatasheet.com/datasheet-pdf/pdf/661765/PHILIPS/BC337.html" H 9475 5650 50  0001 C CNN
F 4 "https://html.alldatasheet.com/html-pdf/661765/PHILIPS/BC337/590/2/BC337.html" H 9475 5650 50  0001 C CNN "Catalogo"
	1    9475 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 5000 9825 5000
Connection ~ 9825 5000
$Comp
L power:GND #PWR0127
U 1 1 5F9DDF7C
P 9575 6000
F 0 "#PWR0127" H 9575 5750 50  0001 C CNN
F 1 "GND" H 9700 6000 50  0000 C CNN
F 2 "" H 9575 6000 50  0001 C CNN
F 3 "" H 9575 6000 50  0001 C CNN
	1    9575 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 5850 9575 6000
Wire Wire Line
	9575 5000 9575 5450
$Comp
L Device:Q_NPN_BCE Q3
U 1 1 5F9E92CE
P 8725 5650
F 0 "Q3" H 8916 5696 50  0000 L CNN
F 1 "BC337" H 8925 5550 50  0000 L CNN
F 2 "Package_TO_SOT_THT:NEC_Molded_7x4x9mm" H 8925 5750 50  0001 C CNN
F 3 "https://www.alldatasheet.com/datasheet-pdf/pdf/661765/PHILIPS/BC337.html" H 8725 5650 50  0001 C CNN
F 4 "https://html.alldatasheet.com/html-pdf/661765/PHILIPS/BC337/590/2/BC337.html" H 8725 5650 50  0001 C CNN "Catalogo"
	1    8725 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F9EA11C
P 8825 6025
F 0 "#PWR0126" H 8825 5775 50  0001 C CNN
F 1 "GND" H 8650 6075 50  0000 C CNN
F 2 "" H 8825 6025 50  0001 C CNN
F 3 "" H 8825 6025 50  0001 C CNN
	1    8825 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8825 5850 8825 6025
Wire Wire Line
	8825 5450 8825 5000
Wire Wire Line
	8825 5000 9575 5000
Connection ~ 9575 5000
$Comp
L Device:R R8
U 1 1 5FA4D757
P 9150 5375
F 0 "R8" H 9220 5421 50  0000 L CNN
F 1 "1K" H 9220 5330 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9080 5375 50  0001 C CNN
F 3 "~" H 9150 5375 50  0001 C CNN
	1    9150 5375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FA4DCF0
P 8400 5375
F 0 "R5" H 8470 5421 50  0000 L CNN
F 1 "1K" H 8470 5330 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8330 5375 50  0001 C CNN
F 3 "~" H 8400 5375 50  0001 C CNN
	1    8400 5375
	1    0    0    -1  
$EndComp
Text Label 9150 5125 0    50   ~ 0
FALLA
Wire Wire Line
	9150 5125 9150 5225
Wire Wire Line
	9150 5525 9150 5650
Wire Wire Line
	9150 5650 9275 5650
Wire Wire Line
	8400 5525 8400 5650
Wire Wire Line
	8400 5650 8525 5650
Text Label 8400 5125 0    50   ~ 0
ALARMA
Wire Wire Line
	8400 5125 8400 5225
$Comp
L power:+3.3V #PWR0125
U 1 1 5FA7481D
P 9825 4375
F 0 "#PWR0125" H 9825 4225 50  0001 C CNN
F 1 "+3.3V" H 9950 4475 50  0000 C CNN
F 2 "" H 9825 4375 50  0001 C CNN
F 3 "" H 9825 4375 50  0001 C CNN
	1    9825 4375
	1    0    0    -1  
$EndComp
Wire Notes Line width 10 style solid
	7825 4225 7825 6250
Wire Notes Line width 10 style solid
	7825 6250 11150 6250
Wire Notes Line width 10 style solid
	7825 4225 11150 4225
Text Notes 5400 7500 0    79   ~ 0
ELEMENTOS DE ARMADO
Wire Notes Line width 10 style solid
	5225 7500 5225 6875
Wire Notes Line width 10 style solid
	5225 6875 3675 6875
Wire Notes Line width 10 style solid
	3675 6875 3675 7500
Wire Notes Line width 10 style solid
	3675 7500 5225 7500
Wire Notes Line width 10 style solid
	5400 7500 5400 6875
Wire Notes Line width 10 style solid
	5400 6875 6825 6875
Wire Notes Line width 10 style solid
	6825 6875 6825 7500
Wire Notes Line width 10 style solid
	6825 7500 5400 7500
$Comp
L Connector:TestPoint TP1
U 1 1 5F8A70EF
P 1100 7525
F 0 "TP1" H 1158 7597 50  0000 L CNN
F 1 "TestPoint" H 1158 7552 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 1300 7525 50  0001 C CNN
F 3 "~" H 1300 7525 50  0001 C CNN
	1    1100 7525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5F8CEECA
P 1100 7600
F 0 "#PWR0143" H 1100 7350 50  0001 C CNN
F 1 "GND" H 1225 7600 50  0000 C CNN
F 2 "" H 1100 7600 50  0001 C CNN
F 3 "" H 1100 7600 50  0001 C CNN
	1    1100 7600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5F90867B
P 2900 7525
F 0 "TP4" H 2958 7597 50  0000 L CNN
F 1 "TestPoint" H 2958 7552 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 3100 7525 50  0001 C CNN
F 3 "~" H 3100 7525 50  0001 C CNN
	1    2900 7525
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 5F918C85
P 3150 7525
F 0 "#PWR02" H 3150 7375 50  0001 C CNN
F 1 "+3.3V" H 3275 7625 50  0000 C CNN
F 2 "" H 3150 7525 50  0001 C CNN
F 3 "" H 3150 7525 50  0001 C CNN
	1    3150 7525
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5F8DCFED
P 1550 7525
F 0 "TP2" H 1608 7597 50  0000 L CNN
F 1 "TestPoint" H 1608 7552 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 1750 7525 50  0001 C CNN
F 3 "~" H 1750 7525 50  0001 C CNN
	1    1550 7525
	1    0    0    -1  
$EndComp
Text Label 1550 7625 0    50   ~ 0
VCC_CONT
$Comp
L Connector:TestPoint TP3
U 1 1 5F9712EF
P 2050 7525
F 0 "TP3" H 2108 7597 50  0000 L CNN
F 1 "TestPoint" H 2108 7552 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 2250 7525 50  0001 C CNN
F 3 "~" H 2250 7525 50  0001 C CNN
	1    2050 7525
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5F9924A6
P 2300 7525
F 0 "#PWR01" H 2300 7375 50  0001 C CNN
F 1 "+12V" H 2425 7625 50  0000 C CNN
F 2 "" H 2300 7525 50  0001 C CNN
F 3 "" H 2300 7525 50  0001 C CNN
	1    2300 7525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7525 1100 7600
Wire Wire Line
	1550 7525 1550 7625
Text Notes 2300 7700 0    79   ~ 0
PUNTOS DE PRUEBA
Wire Notes Line width 10 style solid
	625  7350 625  7725
Wire Notes Line width 10 style solid
	625  7725 3525 7725
Wire Notes Line width 10 style solid
	3525 7725 3525 7350
Wire Notes Line width 10 style solid
	3525 7350 625  7350
Wire Wire Line
	2050 7525 2050 7575
Wire Wire Line
	2050 7575 2300 7575
Wire Wire Line
	2300 7575 2300 7525
Wire Wire Line
	2900 7525 2900 7575
Wire Wire Line
	2900 7575 3150 7575
Wire Wire Line
	3150 7575 3150 7525
Wire Bus Line
	3300 4475 3300 5775
$EndSCHEMATC
