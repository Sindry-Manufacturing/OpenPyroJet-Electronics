EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Open-PyroJet Controller"
Date "2022-06-14"
Rev "0.7"
Comp "OPJ"
Comment1 "PRL"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1495 6385 1100 680 
U 6231D682
F0 "UART" 50
F1 "UART.sch" 50
$EndSheet
Text GLabel 3245 2175 2    50   Input ~ 0
PH1
Text GLabel 3245 1875 2    50   Input ~ 0
PH2
Text GLabel 3245 2475 2    50   Input ~ 0
PH3
Text GLabel 3245 2575 2    50   Input ~ 0
PH4
Text GLabel 3245 2675 2    50   Input ~ 0
PH5
Text GLabel 3245 2775 2    50   Input ~ 0
PH6
Text GLabel 3245 3075 2    50   Input ~ 0
PH7
Text GLabel 3245 2275 2    50   Input ~ 0
PH0
$Comp
L RF_Module:ESP32-WROOM-32D U?
U 1 1 6234078B
P 2570 2675
AR Path="/6231FCB3/6234078B" Ref="U?"  Part="1" 
AR Path="/6234078B" Ref="U1"  Part="1" 
F 0 "U1" H 2180 4035 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 2100 1300 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2570 1175 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2270 2725 50  0001 C CNN
	1    2570 2675
	1    0    0    -1  
$EndComp
NoConn ~ 1970 2675
NoConn ~ 1970 2775
NoConn ~ 1970 2875
NoConn ~ 1970 2975
NoConn ~ 1970 3075
NoConn ~ 1970 3175
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 62340797
P 2570 930
AR Path="/6231FCB3/62340797" Ref="#PWR?"  Part="1" 
AR Path="/62340797" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2570 780 50  0001 C CNN
F 1 "+3.3V" H 2585 1103 50  0000 C CNN
F 2 "" H 2570 930 50  0001 C CNN
F 3 "" H 2570 930 50  0001 C CNN
	1    2570 930 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2570 4075 2570 4110
$Comp
L power:GND #PWR?
U 1 1 6234079F
P 2570 4110
AR Path="/6231FCB3/6234079F" Ref="#PWR?"  Part="1" 
AR Path="/6234079F" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 2570 3860 50  0001 C CNN
F 1 "GND" H 2575 3937 50  0000 C CNN
F 2 "" H 2570 4110 50  0001 C CNN
F 3 "" H 2570 4110 50  0001 C CNN
	1    2570 4110
	1    0    0    -1  
$EndComp
Text GLabel 1900 1475 0    50   Input ~ 0
RESET
Wire Wire Line
	1970 1475 1900 1475
Text GLabel 3245 1475 2    50   Input ~ 0
BOOT
Wire Wire Line
	3245 1475 3170 1475
$Comp
L Switch:SW_Push SW?
U 1 1 623407A9
P 9170 3340
AR Path="/6231FCB3/623407A9" Ref="SW?"  Part="1" 
AR Path="/623407A9" Ref="SW3"  Part="1" 
F 0 "SW3" V 9095 3500 50  0000 C CNN
F 1 "BOOT" V 9320 3540 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:SMD_Switch_5x3" H 9170 3540 50  0001 C CNN
F 3 "~" H 9170 3540 50  0001 C CNN
	1    9170 3340
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 623407AF
P 9170 2975
AR Path="/6231FCB3/623407AF" Ref="R?"  Part="1" 
AR Path="/623407AF" Ref="R5"  Part="1" 
F 0 "R5" H 9229 3021 50  0000 L CNN
F 1 "10K" H 9229 2930 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9170 2975 50  0001 C CNN
F 3 "~" H 9170 2975 50  0001 C CNN
	1    9170 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 623407B6
P 9075 3345
AR Path="/6231FCB3/623407B6" Ref="C?"  Part="1" 
AR Path="/623407B6" Ref="C7"  Part="1" 
F 0 "C7" H 9155 3270 50  0000 L CNN
F 1 "100nF" H 9105 3425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9075 3345 50  0001 C CNN
F 3 "~" H 9075 3345 50  0001 C CNN
F 4 "16V Ceramic" H 9075 3345 50  0001 C CNN "Description"
	1    9075 3345
	-1   0    0    1   
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 623407BC
P 9170 2830
AR Path="/6231FCB3/623407BC" Ref="#PWR?"  Part="1" 
AR Path="/623407BC" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 9170 2680 50  0001 C CNN
F 1 "+3.3V" H 9185 3003 50  0000 C CNN
F 2 "" H 9170 2830 50  0001 C CNN
F 3 "" H 9170 2830 50  0001 C CNN
	1    9170 2830
	1    0    0    -1  
$EndComp
Wire Wire Line
	9170 3540 9170 3570
Wire Wire Line
	9075 3445 9075 3570
Wire Wire Line
	9075 3570 9170 3570
Connection ~ 9170 3570
Wire Wire Line
	9170 3570 9170 3605
Wire Wire Line
	9170 3140 9170 3105
Wire Wire Line
	9170 2875 9170 2830
Wire Wire Line
	9075 3245 9075 3105
Wire Wire Line
	9075 3105 9170 3105
Connection ~ 9170 3105
Wire Wire Line
	9170 3105 9170 3075
Wire Wire Line
	9170 3105 9295 3105
Text GLabel 9295 3105 2    50   Input ~ 0
BOOT
$Comp
L Switch:SW_Push SW?
U 1 1 623407CF
P 10000 3390
AR Path="/6231FCB3/623407CF" Ref="SW?"  Part="1" 
AR Path="/623407CF" Ref="SW4"  Part="1" 
F 0 "SW4" V 9925 3550 50  0000 C CNN
F 1 "RESET" V 10150 3590 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:SMD_Switch_5x3" H 10000 3590 50  0001 C CNN
F 3 "~" H 10000 3590 50  0001 C CNN
	1    10000 3390
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 623407D5
P 10000 3025
AR Path="/6231FCB3/623407D5" Ref="R?"  Part="1" 
AR Path="/623407D5" Ref="R7"  Part="1" 
F 0 "R7" H 10059 3071 50  0000 L CNN
F 1 "10K" H 10059 2980 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10000 3025 50  0001 C CNN
F 3 "~" H 10000 3025 50  0001 C CNN
	1    10000 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 623407DC
P 9905 3395
AR Path="/6231FCB3/623407DC" Ref="C?"  Part="1" 
AR Path="/623407DC" Ref="C8"  Part="1" 
F 0 "C8" H 9985 3320 50  0000 L CNN
F 1 "100nF" H 9935 3475 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9905 3395 50  0001 C CNN
F 3 "~" H 9905 3395 50  0001 C CNN
F 4 "16V Ceramic" H 9905 3395 50  0001 C CNN "Description"
	1    9905 3395
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 623407E2
P 10000 3655
AR Path="/6231FCB3/623407E2" Ref="#PWR?"  Part="1" 
AR Path="/623407E2" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 10000 3405 50  0001 C CNN
F 1 "GND" H 10005 3482 50  0000 C CNN
F 2 "" H 10000 3655 50  0001 C CNN
F 3 "" H 10000 3655 50  0001 C CNN
	1    10000 3655
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 623407E8
P 10000 2880
AR Path="/6231FCB3/623407E8" Ref="#PWR?"  Part="1" 
AR Path="/623407E8" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 10000 2730 50  0001 C CNN
F 1 "+3.3V" H 10015 3053 50  0000 C CNN
F 2 "" H 10000 2880 50  0001 C CNN
F 3 "" H 10000 2880 50  0001 C CNN
	1    10000 2880
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3590 10000 3620
Wire Wire Line
	9905 3495 9905 3620
Wire Wire Line
	9905 3620 10000 3620
Connection ~ 10000 3620
Wire Wire Line
	10000 3620 10000 3655
Wire Wire Line
	10000 3190 10000 3155
Wire Wire Line
	10000 2925 10000 2880
Wire Wire Line
	9905 3295 9905 3155
Wire Wire Line
	9905 3155 10000 3155
Connection ~ 10000 3155
Wire Wire Line
	10000 3155 10000 3125
Wire Wire Line
	10000 3155 10125 3155
Text GLabel 10125 3155 2    50   Input ~ 0
RESET
Text GLabel 3245 1775 2    50   Input ~ 0
Tx
Text GLabel 3245 1575 2    50   Input ~ 0
Rx
Wire Wire Line
	3245 1575 3170 1575
Wire Wire Line
	3245 1775 3170 1775
Wire Wire Line
	3245 1675 3170 1675
Wire Wire Line
	3245 1875 3170 1875
Text Notes 2125 3790 0    50   ~ 0
Input Only:\nPin4 - GPIO36\nPin5 - GPIO39\nPin6 - GPIO34\nPin7 - GPIO35\nPin8 - GPIO39\n
Text Notes 2100 2080 0    50   ~ 0
Strapping Pins:\n0, 2, 5, 12, 15
Text Notes 2445 2735 0    50   ~ 0
ADC1 Pins:\nGPIO36\nGPIO39\nGPIO34\nGPIO35\nGPIO32\nGPIO33
Wire Wire Line
	3245 2875 3170 2875
Wire Wire Line
	3245 2975 3170 2975
Text GLabel 8000 1270 2    50   Input ~ 0
SDA
Text GLabel 8000 1370 2    50   Input ~ 0
SCL
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 6234080E
P 7705 1470
AR Path="/6231FCB3/6234080E" Ref="J?"  Part="1" 
AR Path="/6234080E" Ref="J4"  Part="1" 
F 0 "J4" H 7677 1352 50  0000 R CNN
F 1 "OLED Screen" H 7865 1150 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7705 1470 50  0001 C CNN
F 3 "~" H 7705 1470 50  0001 C CNN
	1    7705 1470
	1    0    0    1   
$EndComp
Wire Wire Line
	7905 1470 7955 1470
Wire Wire Line
	7955 1470 7955 1155
Wire Wire Line
	7905 1570 7955 1570
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 62340818
P 7955 1155
AR Path="/6231FCB3/62340818" Ref="#PWR?"  Part="1" 
AR Path="/62340818" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 7955 1005 50  0001 C CNN
F 1 "+3.3V" H 7970 1328 50  0000 C CNN
F 2 "" H 7955 1155 50  0001 C CNN
F 3 "" H 7955 1155 50  0001 C CNN
	1    7955 1155
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6234081E
P 7955 1710
AR Path="/6231FCB3/6234081E" Ref="#PWR?"  Part="1" 
AR Path="/6234081E" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 7955 1460 50  0001 C CNN
F 1 "GND" H 7960 1537 50  0000 C CNN
F 2 "" H 7955 1710 50  0001 C CNN
F 3 "" H 7955 1710 50  0001 C CNN
	1    7955 1710
	1    0    0    -1  
$EndComp
Wire Wire Line
	7905 1370 8000 1370
Wire Wire Line
	7905 1270 8000 1270
$Comp
L Device:R_Small R?
U 1 1 62340826
P 7410 3020
AR Path="/6231FCB3/62340826" Ref="R?"  Part="1" 
AR Path="/62340826" Ref="R6"  Part="1" 
F 0 "R6" H 7469 3066 50  0000 L CNN
F 1 "2K" H 7469 2975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7410 3020 50  0001 C CNN
F 3 "~" H 7410 3020 50  0001 C CNN
	1    7410 3020
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6234082C
P 7410 3265
AR Path="/6231FCB3/6234082C" Ref="D?"  Part="1" 
AR Path="/6234082C" Ref="D2"  Part="1" 
F 0 "D2" V 7456 3197 50  0000 R CNN
F 1 "Green" V 7365 3197 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7410 3265 50  0001 C CNN
F 3 "~" V 7410 3265 50  0001 C CNN
	1    7410 3265
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62340832
P 9170 3605
AR Path="/6231FCB3/62340832" Ref="#PWR?"  Part="1" 
AR Path="/62340832" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 9170 3355 50  0001 C CNN
F 1 "GND" H 9175 3432 50  0000 C CNN
F 2 "" H 9170 3605 50  0001 C CNN
F 3 "" H 9170 3605 50  0001 C CNN
	1    9170 3605
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62340838
P 7410 3415
AR Path="/6231FCB3/62340838" Ref="#PWR?"  Part="1" 
AR Path="/62340838" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 7410 3165 50  0001 C CNN
F 1 "GND" H 7415 3242 50  0000 C CNN
F 2 "" H 7410 3415 50  0001 C CNN
F 3 "" H 7410 3415 50  0001 C CNN
	1    7410 3415
	1    0    0    -1  
$EndComp
Wire Wire Line
	7410 3365 7410 3415
Wire Wire Line
	7410 3120 7410 3165
Wire Wire Line
	7410 2920 7410 2870
Wire Wire Line
	7410 2870 7470 2870
Text GLabel 7470 2870 2    50   Input ~ 0
LED
Text GLabel 3245 3375 2    50   Input ~ 0
LED
$Comp
L LED:WS2812B D?
U 1 1 62340844
P 6485 3205
AR Path="/6231FCB3/62340844" Ref="D?"  Part="1" 
AR Path="/62340844" Ref="D1"  Part="1" 
F 0 "D1" H 6580 3460 50  0000 L CNN
F 1 "WS2812B" H 6540 2940 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6535 2905 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6585 2830 50  0001 L TNN
	1    6485 3205
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 6234084A
P 9590 1610
AR Path="/6231FCB3/6234084A" Ref="SW?"  Part="1" 
AR Path="/6234084A" Ref="SW1"  Part="1" 
F 0 "SW1" H 9580 1875 50  0000 C CNN
F 1 "Rotary_Encoder" H 9585 1370 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 9440 1770 50  0001 C CNN
F 3 "~" H 9590 1870 50  0001 C CNN
	1    9590 1610
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62340850
P 9165 1265
AR Path="/6231FCB3/62340850" Ref="R?"  Part="1" 
AR Path="/62340850" Ref="R1"  Part="1" 
F 0 "R1" H 8980 1305 50  0000 L CNN
F 1 "10K" H 8970 1225 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9165 1265 50  0001 C CNN
F 3 "~" H 9165 1265 50  0001 C CNN
	1    9165 1265
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62340856
P 9250 1265
AR Path="/6231FCB3/62340856" Ref="R?"  Part="1" 
AR Path="/62340856" Ref="R2"  Part="1" 
F 0 "R2" H 9309 1311 50  0000 L CNN
F 1 "10K" H 9309 1220 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9250 1265 50  0001 C CNN
F 3 "~" H 9250 1265 50  0001 C CNN
	1    9250 1265
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6234085C
P 9960 1325
AR Path="/6231FCB3/6234085C" Ref="R?"  Part="1" 
AR Path="/6234085C" Ref="R3"  Part="1" 
F 0 "R3" H 10019 1371 50  0000 L CNN
F 1 "10K" H 10019 1280 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9960 1325 50  0001 C CNN
F 3 "~" H 9960 1325 50  0001 C CNN
	1    9960 1325
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62340863
P 1665 2080
AR Path="/6231FCB3/62340863" Ref="C?"  Part="1" 
AR Path="/62340863" Ref="C4"  Part="1" 
F 0 "C4" H 1745 2000 50  0000 L CNN
F 1 "100nF" H 1695 2165 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1665 2080 50  0001 C CNN
F 3 "~" H 1665 2080 50  0001 C CNN
F 4 "16V Ceramic" H 1665 2080 50  0001 C CNN "Description"
	1    1665 2080
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6234086A
P 1820 2080
AR Path="/6231FCB3/6234086A" Ref="C?"  Part="1" 
AR Path="/6234086A" Ref="C5"  Part="1" 
F 0 "C5" H 1835 2145 50  0000 L CNN
F 1 "100nF" H 1830 2015 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1820 2080 50  0001 C CNN
F 3 "~" H 1820 2080 50  0001 C CNN
F 4 "16V Ceramic" H 1820 2080 50  0001 C CNN "Description"
	1    1820 2080
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62340871
P 3225 3935
AR Path="/6231FCB3/62340871" Ref="C?"  Part="1" 
AR Path="/62340871" Ref="C9"  Part="1" 
F 0 "C9" H 3317 3981 50  0000 L CNN
F 1 "100nF" H 3317 3890 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3225 3935 50  0001 C CNN
F 3 "~" H 3225 3935 50  0001 C CNN
F 4 "16V Ceramic" H 3225 3935 50  0001 C CNN "Description"
	1    3225 3935
	1    0    0    -1  
$EndComp
Text GLabel 9110 1510 0    50   Input ~ 0
RE_A
Text GLabel 9115 1710 0    50   Input ~ 0
RE_B
Text GLabel 10040 1510 2    50   Input ~ 0
RE_SW
Wire Wire Line
	9890 1510 9960 1510
Wire Wire Line
	9960 1425 9960 1510
Connection ~ 9960 1510
Wire Wire Line
	9960 1510 10040 1510
$Comp
L power:GND #PWR?
U 1 1 6234087E
P 9930 1755
AR Path="/6231FCB3/6234087E" Ref="#PWR?"  Part="1" 
AR Path="/6234087E" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 9930 1505 50  0001 C CNN
F 1 "GND" H 9935 1582 50  0000 C CNN
F 2 "" H 9930 1755 50  0001 C CNN
F 3 "" H 9930 1755 50  0001 C CNN
	1    9930 1755
	1    0    0    -1  
$EndComp
Wire Wire Line
	9890 1710 9930 1710
Wire Wire Line
	9930 1710 9930 1755
Wire Wire Line
	9290 1610 9215 1610
Wire Wire Line
	9215 1610 9215 1815
Wire Wire Line
	9290 1710 9165 1710
$Comp
L power:GND #PWR?
U 1 1 62340889
P 9215 1815
AR Path="/6231FCB3/62340889" Ref="#PWR?"  Part="1" 
AR Path="/62340889" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 9215 1565 50  0001 C CNN
F 1 "GND" H 9220 1642 50  0000 C CNN
F 2 "" H 9215 1815 50  0001 C CNN
F 3 "" H 9215 1815 50  0001 C CNN
	1    9215 1815
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6234088F
P 9165 1120
AR Path="/6231FCB3/6234088F" Ref="#PWR?"  Part="1" 
AR Path="/6234088F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 9165 970 50  0001 C CNN
F 1 "+3.3V" H 9180 1293 50  0000 C CNN
F 2 "" H 9165 1120 50  0001 C CNN
F 3 "" H 9165 1120 50  0001 C CNN
	1    9165 1120
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 62340895
P 9960 1185
AR Path="/6231FCB3/62340895" Ref="#PWR?"  Part="1" 
AR Path="/62340895" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 9960 1035 50  0001 C CNN
F 1 "+3.3V" H 9975 1358 50  0000 C CNN
F 2 "" H 9960 1185 50  0001 C CNN
F 3 "" H 9960 1185 50  0001 C CNN
	1    9960 1185
	1    0    0    -1  
$EndComp
Wire Wire Line
	9165 1165 9165 1140
Wire Wire Line
	9960 1225 9960 1185
Wire Wire Line
	9110 1510 9250 1510
Wire Wire Line
	9250 1365 9250 1510
Connection ~ 9250 1510
Wire Wire Line
	9250 1510 9290 1510
Wire Wire Line
	9165 1365 9165 1710
Connection ~ 9165 1710
Wire Wire Line
	9165 1710 9115 1710
Wire Wire Line
	9250 1165 9250 1140
Wire Wire Line
	9250 1140 9165 1140
Connection ~ 9165 1140
Wire Wire Line
	9165 1140 9165 1120
Text GLabel 3290 3775 2    50   Input ~ 0
RE_SW
Text GLabel 1820 1775 0    50   Input ~ 0
RE_B
Text GLabel 1815 1675 0    50   Input ~ 0
RE_A
Wire Wire Line
	1970 1675 1945 1675
Wire Wire Line
	1970 1775 1865 1775
$Comp
L power:GND #PWR?
U 1 1 623408AD
P 1820 2255
AR Path="/6231FCB3/623408AD" Ref="#PWR?"  Part="1" 
AR Path="/623408AD" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 1820 2005 50  0001 C CNN
F 1 "GND" H 1825 2082 50  0000 C CNN
F 2 "" H 1820 2255 50  0001 C CNN
F 3 "" H 1820 2255 50  0001 C CNN
	1    1820 2255
	1    0    0    -1  
$EndComp
Wire Wire Line
	1820 2180 1820 2215
Wire Wire Line
	1820 2215 1665 2215
Wire Wire Line
	1665 2215 1665 2180
Connection ~ 1820 2215
Wire Wire Line
	1820 2215 1820 2255
Wire Wire Line
	1820 1980 1820 1940
Wire Wire Line
	1820 1940 1945 1940
Wire Wire Line
	1945 1940 1945 1675
Connection ~ 1945 1675
Wire Wire Line
	1945 1675 1815 1675
Wire Wire Line
	1665 1980 1665 1865
Wire Wire Line
	1665 1865 1865 1865
Wire Wire Line
	1865 1865 1865 1775
Connection ~ 1865 1775
Wire Wire Line
	1865 1775 1820 1775
Wire Wire Line
	3170 3775 3225 3775
Wire Wire Line
	3225 3835 3225 3775
Connection ~ 3225 3775
Wire Wire Line
	3225 3775 3290 3775
Wire Wire Line
	3225 4035 3225 4065
$Comp
L power:GND #PWR?
U 1 1 623408C7
P 3225 4065
AR Path="/6231FCB3/623408C7" Ref="#PWR?"  Part="1" 
AR Path="/623408C7" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3225 3815 50  0001 C CNN
F 1 "GND" H 3230 3892 50  0000 C CNN
F 2 "" H 3225 4065 50  0001 C CNN
F 3 "" H 3225 4065 50  0001 C CNN
	1    3225 4065
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 623408CD
P 6485 3545
AR Path="/6231FCB3/623408CD" Ref="#PWR?"  Part="1" 
AR Path="/623408CD" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6485 3295 50  0001 C CNN
F 1 "GND" H 6605 3440 50  0000 C CNN
F 2 "" H 6485 3545 50  0001 C CNN
F 3 "" H 6485 3545 50  0001 C CNN
	1    6485 3545
	1    0    0    -1  
$EndComp
Wire Wire Line
	6485 3505 6485 3545
Wire Wire Line
	6485 2905 6485 2870
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 623408D5
P 6485 2870
AR Path="/6231FCB3/623408D5" Ref="#PWR?"  Part="1" 
AR Path="/623408D5" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 6485 2720 50  0001 C CNN
F 1 "+3.3V" H 6500 3043 50  0000 C CNN
F 2 "" H 6485 2870 50  0001 C CNN
F 3 "" H 6485 2870 50  0001 C CNN
	1    6485 2870
	1    0    0    -1  
$EndComp
NoConn ~ 6785 3205
Wire Wire Line
	6185 3205 6115 3205
Text GLabel 6115 3205 0    50   Input ~ 0
RGB
Text GLabel 3245 3475 2    50   Input ~ 0
RGB
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 623408DF
P 6410 1450
AR Path="/6231FCB3/623408DF" Ref="J?"  Part="1" 
AR Path="/623408DF" Ref="J1"  Part="1" 
F 0 "J1" H 6382 1382 50  0000 R CNN
F 1 "Serial Prog" H 6780 1190 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x03_P1.27mm_Vertical" H 6410 1450 50  0001 C CNN
F 3 "~" H 6410 1450 50  0001 C CNN
	1    6410 1450
	1    0    0    1   
$EndComp
Text GLabel 6675 1350 2    50   Input ~ 0
Rx
Text GLabel 6675 1450 2    50   Input ~ 0
Tx
$Comp
L power:GND #PWR?
U 1 1 623408E7
P 6695 1595
AR Path="/6231FCB3/623408E7" Ref="#PWR?"  Part="1" 
AR Path="/623408E7" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 6695 1345 50  0001 C CNN
F 1 "GND" H 6700 1422 50  0000 C CNN
F 2 "" H 6695 1595 50  0001 C CNN
F 3 "" H 6695 1595 50  0001 C CNN
	1    6695 1595
	1    0    0    -1  
$EndComp
Wire Wire Line
	6610 1550 6695 1550
Wire Wire Line
	6695 1550 6695 1595
Wire Wire Line
	6610 1450 6675 1450
Wire Wire Line
	6610 1350 6675 1350
Text Notes 6380 1080 0    50   ~ 0
Optional
Text Notes 7420 1075 0    50   ~ 0
Optional
Text Notes 9150 810  0    50   ~ 0
Optional Rotary Encoder
Wire Notes Line
	8665 580  10595 580 
Wire Notes Line
	10595 580  10595 2240
Wire Notes Line
	10595 2240 8665 2240
Wire Notes Line
	8665 2240 8665 590 
Wire Notes Line
	8410 580  8410 2245
Wire Notes Line
	8410 2245 7295 2245
Wire Notes Line
	7295 2245 7295 580 
Wire Notes Line
	7295 580  8405 580 
Wire Notes Line
	7045 585  7045 2255
Wire Notes Line
	7045 2255 5890 2255
Wire Notes Line
	5890 2255 5890 585 
Wire Notes Line
	5890 585  7040 585 
Wire Notes Line
	8670 3955 10590 3955
Wire Notes Line
	10590 3955 10590 2375
Text Notes 8625 2510 0    50   ~ 0
ESP32 Boot, Reset & User Switches
Text Notes 6915 2575 0    50   ~ 0
Power/Program Running
Text Notes 6115 2580 0    50   ~ 0
Status Bling
Wire Notes Line
	7940 2370 7940 3965
Wire Notes Line
	7940 3965 5760 3965
Wire Notes Line
	5760 3965 5760 2370
Wire Notes Line
	5760 2370 7935 2370
Text Notes 6125 3855 0    50   ~ 0
More can easily be\nadded if desired
Wire Wire Line
	3245 2175 3170 2175
Wire Wire Line
	3245 2275 3170 2275
Wire Wire Line
	3245 2475 3170 2475
Wire Wire Line
	3245 2575 3170 2575
Wire Wire Line
	3245 2675 3170 2675
Wire Wire Line
	3245 2775 3170 2775
Wire Wire Line
	3245 3075 3170 3075
Wire Wire Line
	3245 3375 3170 3375
Wire Wire Line
	3245 3475 3170 3475
Text Notes 970  4915 0    50   ~ 0
Design Philosophy:\n* over engineered to enable experimentation and exploration of a filament and nozzle limits\n* cost is not a big driver for this design, but it has been taken into account\n* not much thought on mounting issues, but this version will have to be mounted close to the printhead
Wire Wire Line
	3245 3175 3170 3175
$Comp
L Pauls_Symbol_Library:Buzzer_3pin BZ?
U 1 1 6234091D
P 9750 4915
AR Path="/6231FCB3/6234091D" Ref="BZ?"  Part="1" 
AR Path="/6234091D" Ref="BZ1"  Part="1" 
F 0 "BZ1" H 9815 4755 50  0000 L CNN
F 1 "Buzzer 1KHz - 8KHz" H 9640 5095 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MagneticBuzzer_5.2x5.2_4KHz" V 9735 4815 50  0001 C CNN
F 3 "" V 9725 5015 50  0001 C CNN
	1    9750 4915
	1    0    0    1   
$EndComp
$Comp
L Pauls_Symbol_Library:AO3400A Q?
U 1 1 62340923
P 9485 5325
AR Path="/6231FCB3/62340923" Ref="Q?"  Part="1" 
AR Path="/62340923" Ref="Q1"  Part="1" 
F 0 "Q1" H 9690 5371 50  0000 L CNN
F 1 "AO3400A" H 9690 5280 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9685 5250 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 9485 5325 50  0001 L CNN
	1    9485 5325
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62340929
P 9245 5470
AR Path="/6231FCB3/62340929" Ref="R?"  Part="1" 
AR Path="/62340929" Ref="R12"  Part="1" 
F 0 "R12" H 9304 5516 50  0000 L CNN
F 1 "10K" H 9304 5425 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9245 5470 50  0001 C CNN
F 3 "~" H 9245 5470 50  0001 C CNN
	1    9245 5470
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6234092F
P 9085 5325
AR Path="/6231FCB3/6234092F" Ref="R?"  Part="1" 
AR Path="/6234092F" Ref="R11"  Part="1" 
F 0 "R11" V 9160 5275 50  0000 L CNN
F 1 "47" V 9005 5280 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9085 5325 50  0001 C CNN
F 3 "~" H 9085 5325 50  0001 C CNN
	1    9085 5325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9285 5325 9245 5325
Wire Wire Line
	9245 5370 9245 5325
Connection ~ 9245 5325
Wire Wire Line
	9245 5325 9185 5325
$Comp
L Device:R_Small R?
U 1 1 62340939
P 9585 4655
AR Path="/6231FCB3/62340939" Ref="R?"  Part="1" 
AR Path="/62340939" Ref="R8"  Part="1" 
F 0 "R8" H 9430 4610 50  0000 L CNN
F 1 "10" H 9435 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9585 4655 50  0001 C CNN
F 3 "~" H 9585 4655 50  0001 C CNN
	1    9585 4655
	-1   0    0    1   
$EndComp
Wire Wire Line
	9585 5125 9585 5015
Wire Wire Line
	9585 5015 9650 5015
Wire Wire Line
	9650 4815 9585 4815
Wire Wire Line
	9585 4815 9585 4785
$Comp
L power:GND #PWR?
U 1 1 62340943
P 9585 5620
AR Path="/6231FCB3/62340943" Ref="#PWR?"  Part="1" 
AR Path="/62340943" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 9585 5370 50  0001 C CNN
F 1 "GND" H 9590 5447 50  0000 C CNN
F 2 "" H 9585 5620 50  0001 C CNN
F 3 "" H 9585 5620 50  0001 C CNN
	1    9585 5620
	1    0    0    -1  
$EndComp
Wire Wire Line
	9585 5525 9585 5595
Wire Wire Line
	9245 5570 9245 5595
Wire Wire Line
	9245 5595 9585 5595
Connection ~ 9585 5595
Wire Wire Line
	9585 5595 9585 5620
Wire Wire Line
	8985 5325 8935 5325
Text GLabel 8935 5325 0    50   Input ~ 0
BUZZER
Wire Wire Line
	9585 4555 9585 4530
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 62340951
P 9585 4530
AR Path="/6231FCB3/62340951" Ref="#PWR?"  Part="1" 
AR Path="/62340951" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 9585 4380 50  0001 C CNN
F 1 "+3.3V" H 9600 4703 50  0000 C CNN
F 2 "" H 9585 4530 50  0001 C CNN
F 3 "" H 9585 4530 50  0001 C CNN
	1    9585 4530
	1    0    0    -1  
$EndComp
Wire Notes Line
	10590 4145 10590 5950
Wire Notes Line
	10590 5950 8465 5950
Wire Notes Line
	8465 5950 8465 4140
Wire Notes Line
	8465 4140 10580 4140
Text Notes 8570 4485 0    50   ~ 0
Optional Audible Alerts
Text GLabel 3245 3175 2    50   Input ~ 0
BUZZER
$Comp
L Device:D_Small D?
U 1 1 6234095F
P 9350 4910
AR Path="/6231FCB3/6234095F" Ref="D?"  Part="1" 
AR Path="/6234095F" Ref="D3"  Part="1" 
F 0 "D3" V 9275 4765 50  0000 L CNN
F 1 "1N4148" V 9420 4575 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" V 9350 4910 50  0001 C CNN
F 3 "~" V 9350 4910 50  0001 C CNN
	1    9350 4910
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62340965
P 9350 5045
AR Path="/6231FCB3/62340965" Ref="#PWR?"  Part="1" 
AR Path="/62340965" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 9350 4795 50  0001 C CNN
F 1 "GND" H 9235 4945 50  0000 C CNN
F 2 "" H 9350 5045 50  0001 C CNN
F 3 "" H 9350 5045 50  0001 C CNN
	1    9350 5045
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5045 9350 5010
Wire Wire Line
	9350 4810 9350 4785
Wire Wire Line
	9350 4785 9585 4785
Connection ~ 9585 4785
Wire Wire Line
	9585 4785 9585 4755
Text Notes 1155 2200 0    50   ~ 0
encoder\ndebounce\ncaps
$Comp
L Mechanical:MountingHole H?
U 1 1 62340971
P 7560 4785
AR Path="/6231FCB3/62340971" Ref="H?"  Part="1" 
AR Path="/62340971" Ref="H1"  Part="1" 
F 0 "H1" H 7660 4831 50  0000 L CNN
F 1 "MH-M3" H 7660 4740 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7560 4785 50  0001 C CNN
F 3 "~" H 7560 4785 50  0001 C CNN
	1    7560 4785
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 62340977
P 7560 4960
AR Path="/6231FCB3/62340977" Ref="H?"  Part="1" 
AR Path="/62340977" Ref="H2"  Part="1" 
F 0 "H2" H 7660 5006 50  0000 L CNN
F 1 "MH-M3" H 7660 4915 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7560 4960 50  0001 C CNN
F 3 "~" H 7560 4960 50  0001 C CNN
	1    7560 4960
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 6234097D
P 7560 5135
AR Path="/6231FCB3/6234097D" Ref="H?"  Part="1" 
AR Path="/6234097D" Ref="H3"  Part="1" 
F 0 "H3" H 7660 5181 50  0000 L CNN
F 1 "MH-M3" H 7660 5090 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7560 5135 50  0001 C CNN
F 3 "~" H 7560 5135 50  0001 C CNN
	1    7560 5135
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 62340983
P 7560 5310
AR Path="/6231FCB3/62340983" Ref="H?"  Part="1" 
AR Path="/62340983" Ref="H4"  Part="1" 
F 0 "H4" H 7660 5356 50  0000 L CNN
F 1 "MH-M3" H 7660 5265 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7560 5310 50  0001 C CNN
F 3 "~" H 7560 5310 50  0001 C CNN
	1    7560 5310
	1    0    0    -1  
$EndComp
Text Notes 7185 4470 0    50   ~ 0
Board M3 Mounting holes
Wire Notes Line
	8265 4135 8265 5950
Wire Notes Line
	8265 5950 7105 5950
Wire Notes Line
	7105 5950 7105 4135
Wire Notes Line
	7105 4135 8255 4135
Text Notes 3615 4000 0    50   ~ 0
filtering cap\nif needed. Place \nclose to ADC
Text GLabel 5725 6405 2    50   Input ~ 0
PH1
Text GLabel 5725 6505 2    50   Input ~ 0
PH2
Text GLabel 5725 6605 2    50   Input ~ 0
PH3
Text GLabel 5725 6705 2    50   Input ~ 0
PH4
Text GLabel 5725 6805 2    50   Input ~ 0
PH5
Text GLabel 5725 6905 2    50   Input ~ 0
PH6
Text GLabel 5725 6305 2    50   Input ~ 0
PH0
Wire Wire Line
	5660 6305 5725 6305
Wire Wire Line
	5660 6405 5725 6405
Wire Wire Line
	5660 6505 5725 6505
Wire Wire Line
	5660 6605 5725 6605
Wire Wire Line
	5660 6705 5725 6705
Wire Wire Line
	5660 6805 5725 6805
Wire Wire Line
	5660 6905 5725 6905
Wire Wire Line
	5660 7005 5725 7005
Wire Wire Line
	5660 7105 5725 7105
Wire Wire Line
	5660 7205 5725 7205
Text GLabel 5725 7005 2    50   Input ~ 0
PH7
$Comp
L power:GND #PWR?
U 1 1 62389F3D
P 5100 7405
AR Path="/6231FCB3/62389F3D" Ref="#PWR?"  Part="1" 
AR Path="/62389F3D" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5100 7155 50  0001 C CNN
F 1 "GND" H 5220 7300 50  0000 C CNN
F 2 "" H 5100 7405 50  0001 C CNN
F 3 "" H 5100 7405 50  0001 C CNN
	1    5100 7405
	-1   0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6238F005
P 4180 6590
AR Path="/6231FCB3/6238F005" Ref="#PWR?"  Part="1" 
AR Path="/6238F005" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 4180 6440 50  0001 C CNN
F 1 "+3.3V" H 4240 6725 50  0000 C CNN
F 2 "" H 4180 6590 50  0001 C CNN
F 3 "" H 4180 6590 50  0001 C CNN
	1    4180 6590
	1    0    0    -1  
$EndComp
Wire Wire Line
	5160 7005 5100 7005
Wire Wire Line
	5100 7005 5100 7105
Wire Wire Line
	5160 7205 5100 7205
Connection ~ 5100 7205
Wire Wire Line
	5160 7105 5100 7105
Connection ~ 5100 7105
Wire Wire Line
	5100 7105 5100 7205
Wire Wire Line
	5160 6905 5025 6905
Wire Wire Line
	5025 6705 5160 6705
Wire Wire Line
	5025 6705 5025 6905
Wire Wire Line
	5025 6705 5025 6660
Connection ~ 5025 6705
Wire Wire Line
	5100 7005 5100 6805
Wire Wire Line
	5100 6805 5160 6805
Connection ~ 5100 7005
Wire Wire Line
	5100 6505 5160 6505
Wire Wire Line
	5160 6605 5100 6605
Connection ~ 5100 6605
Wire Wire Line
	5100 6605 5100 6505
Wire Wire Line
	5100 6305 5160 6305
Wire Wire Line
	5160 6405 5100 6405
Connection ~ 5100 6405
Wire Wire Line
	5100 6405 5100 6305
Wire Wire Line
	5100 6605 5100 6805
Connection ~ 5100 6805
Wire Wire Line
	5100 6405 5100 6505
Connection ~ 5100 6505
Text Notes 4865 6120 0    50   ~ 0
To Printhead-Driver Board
$Comp
L Device:C_Small C?
U 1 1 6242C2C8
P 2730 995
AR Path="/6231FCB3/6242C2C8" Ref="C?"  Part="1" 
AR Path="/6242C2C8" Ref="C1"  Part="1" 
F 0 "C1" V 2785 850 50  0000 L CNN
F 1 "10uF" V 2770 1025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2730 995 50  0001 C CNN
F 3 "~" H 2730 995 50  0001 C CNN
F 4 "16V Ceramic" H 2730 995 50  0001 C CNN "Description"
	1    2730 995 
	0    1    -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6242C2CF
P 2730 1150
AR Path="/6231FCB3/6242C2CF" Ref="C?"  Part="1" 
AR Path="/6242C2CF" Ref="C2"  Part="1" 
F 0 "C2" V 2790 1205 50  0000 L CNN
F 1 "100nF" V 2850 985 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2730 1150 50  0001 C CNN
F 3 "~" H 2730 1150 50  0001 C CNN
F 4 "16V Ceramic" H 2730 1150 50  0001 C CNN "Description"
	1    2730 1150
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6242C2D5
P 2990 1165
AR Path="/6231FCB3/6242C2D5" Ref="#PWR?"  Part="1" 
AR Path="/6242C2D5" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2990 915 50  0001 C CNN
F 1 "GND" H 2895 1045 50  0000 C CNN
F 2 "" H 2990 1165 50  0001 C CNN
F 3 "" H 2990 1165 50  0001 C CNN
	1    2990 1165
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2830 1150 2865 1150
Wire Wire Line
	2865 1150 2865 995 
Wire Wire Line
	2865 995  2830 995 
Connection ~ 2865 1150
Wire Wire Line
	2570 995  2630 995 
Wire Wire Line
	2570 995  2570 1150
Wire Wire Line
	2630 1150 2570 1150
Connection ~ 2570 1150
Wire Wire Line
	2570 1150 2570 1275
Wire Wire Line
	2570 995  2570 930 
Connection ~ 2570 995 
$Comp
L Device:R_Small R?
U 1 1 6246DE26
P 6490 5025
AR Path="/6231FCB3/6246DE26" Ref="R?"  Part="1" 
AR Path="/6246DE26" Ref="R10"  Part="1" 
F 0 "R10" H 6549 5071 50  0000 L CNN
F 1 "4.7K" H 6549 4980 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6490 5025 50  0001 C CNN
F 3 "~" H 6490 5025 50  0001 C CNN
	1    6490 5025
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6246E589
P 6490 4875
AR Path="/6231FCB3/6246E589" Ref="#PWR?"  Part="1" 
AR Path="/6246E589" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6490 4725 50  0001 C CNN
F 1 "+3.3V" H 6505 5048 50  0000 C CNN
F 2 "" H 6490 4875 50  0001 C CNN
F 3 "" H 6490 4875 50  0001 C CNN
	1    6490 4875
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 624700E7
P 6415 5025
AR Path="/6231FCB3/624700E7" Ref="R?"  Part="1" 
AR Path="/624700E7" Ref="R9"  Part="1" 
F 0 "R9" H 6495 4985 50  0000 L CNN
F 1 "4.7K" H 6465 5080 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6415 5025 50  0001 C CNN
F 3 "~" H 6415 5025 50  0001 C CNN
	1    6415 5025
	-1   0    0    1   
$EndComp
Wire Wire Line
	6415 4925 6415 4900
Wire Wire Line
	6415 4900 6490 4900
Wire Wire Line
	6490 4925 6490 4900
Wire Wire Line
	6490 4900 6485 4900
Wire Wire Line
	6490 4875 6490 4900
Connection ~ 6490 4900
Wire Wire Line
	6490 5125 6490 5225
Wire Wire Line
	6490 5225 6630 5225
Text GLabel 6630 5225 2    50   Input ~ 0
SDA
Text GLabel 6630 5325 2    50   Input ~ 0
SCL
Wire Wire Line
	6415 5325 6630 5325
Wire Wire Line
	6415 5125 6415 5325
Text Notes 6235 4490 0    50   ~ 0
i2C Pullups
Wire Notes Line
	6965 4135 6965 5950
Wire Notes Line
	6965 5950 6025 5950
Wire Notes Line
	6025 5950 6025 4135
Wire Notes Line
	6025 4135 6960 4135
$Comp
L Switch:SW_Push SW?
U 1 1 62ACF403
P 8470 3290
AR Path="/6231FCB3/62ACF403" Ref="SW?"  Part="1" 
AR Path="/62ACF403" Ref="SW2"  Part="1" 
F 0 "SW2" V 8395 3450 50  0000 C CNN
F 1 "USER1" V 8620 3490 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:SW_SMD_SPST_SKQG_WithStem_6x6.5" H 8470 3490 50  0001 C CNN
F 3 "~" H 8470 3490 50  0001 C CNN
	1    8470 3290
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62ACF409
P 8470 2925
AR Path="/6231FCB3/62ACF409" Ref="R?"  Part="1" 
AR Path="/62ACF409" Ref="R4"  Part="1" 
F 0 "R4" H 8529 2971 50  0000 L CNN
F 1 "10K" H 8529 2880 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8470 2925 50  0001 C CNN
F 3 "~" H 8470 2925 50  0001 C CNN
	1    8470 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62ACF410
P 8375 3295
AR Path="/6231FCB3/62ACF410" Ref="C?"  Part="1" 
AR Path="/62ACF410" Ref="C6"  Part="1" 
F 0 "C6" H 8455 3220 50  0000 L CNN
F 1 "100nF" H 8375 3370 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8375 3295 50  0001 C CNN
F 3 "~" H 8375 3295 50  0001 C CNN
F 4 "16V Ceramic" H 8375 3295 50  0001 C CNN "Description"
	1    8375 3295
	-1   0    0    1   
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 62ACF416
P 8470 2780
AR Path="/6231FCB3/62ACF416" Ref="#PWR?"  Part="1" 
AR Path="/62ACF416" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 8470 2630 50  0001 C CNN
F 1 "+3.3V" H 8485 2953 50  0000 C CNN
F 2 "" H 8470 2780 50  0001 C CNN
F 3 "" H 8470 2780 50  0001 C CNN
	1    8470 2780
	1    0    0    -1  
$EndComp
Wire Wire Line
	8470 3490 8470 3520
Wire Wire Line
	8375 3395 8375 3520
Wire Wire Line
	8375 3520 8470 3520
Connection ~ 8470 3520
Wire Wire Line
	8470 3520 8470 3555
Wire Wire Line
	8470 3090 8470 3055
Wire Wire Line
	8470 2825 8470 2780
Wire Wire Line
	8375 3195 8375 3055
Wire Wire Line
	8375 3055 8470 3055
Connection ~ 8470 3055
Wire Wire Line
	8470 3055 8470 3025
Wire Wire Line
	8470 3055 8595 3055
Text GLabel 8595 3055 2    50   Input ~ 0
USER1
$Comp
L power:GND #PWR?
U 1 1 62ACF429
P 8470 3555
AR Path="/6231FCB3/62ACF429" Ref="#PWR?"  Part="1" 
AR Path="/62ACF429" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 8470 3305 50  0001 C CNN
F 1 "GND" H 8475 3382 50  0000 C CNN
F 2 "" H 8470 3555 50  0001 C CNN
F 3 "" H 8470 3555 50  0001 C CNN
	1    8470 3555
	1    0    0    -1  
$EndComp
Wire Notes Line
	8660 3955 8090 3955
Wire Notes Line
	8090 3955 8090 2370
Wire Notes Line
	8090 2370 10590 2370
$Comp
L Device:C_Small C?
U 1 1 62B37C98
P 3435 6765
AR Path="/6231FCB3/62B37C98" Ref="C?"  Part="1" 
AR Path="/62B37C98" Ref="C12"  Part="1" 
F 0 "C12" H 3515 6690 50  0000 L CNN
F 1 "100nF" H 3435 6840 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3435 6765 50  0001 C CNN
F 3 "~" H 3435 6765 50  0001 C CNN
F 4 "16V Ceramic" H 3435 6765 50  0001 C CNN "Description"
	1    3435 6765
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C13
U 1 1 62B38D9C
P 3580 6765
F 0 "C13" H 3610 6840 50  0000 L CNN
F 1 "100uF/50V" H 3495 6565 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3580 6765 50  0001 C CNN
F 3 "~" H 3580 6765 50  0001 C CNN
	1    3580 6765
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 62B39B8D
P 3820 6590
F 0 "FB1" V 3910 6475 50  0000 C CNN
F 1 "1uH" V 3895 6690 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3750 6590 50  0001 C CNN
F 3 "~" H 3820 6590 50  0001 C CNN
	1    3820 6590
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62B3A434
P 4030 6755
AR Path="/6231FCB3/62B3A434" Ref="C?"  Part="1" 
AR Path="/62B3A434" Ref="C10"  Part="1" 
F 0 "C10" H 4110 6680 50  0000 L CNN
F 1 "100nF" H 4030 6830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4030 6755 50  0001 C CNN
F 3 "~" H 4030 6755 50  0001 C CNN
F 4 "16V Ceramic" H 4030 6755 50  0001 C CNN "Description"
	1    4030 6755
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62B3B948
P 4180 6755
AR Path="/6231FCB3/62B3B948" Ref="C?"  Part="1" 
AR Path="/62B3B948" Ref="C11"  Part="1" 
F 0 "C11" H 4215 6835 50  0000 L CNN
F 1 "22uF" H 4205 6690 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4180 6755 50  0001 C CNN
F 3 "~" H 4180 6755 50  0001 C CNN
F 4 "16V Ceramic" H 4180 6755 50  0001 C CNN "Description"
	1    4180 6755
	1    0    0    -1  
$EndComp
Wire Wire Line
	3920 6590 4030 6590
Wire Wire Line
	4180 6590 4180 6655
Wire Wire Line
	4030 6655 4030 6590
Connection ~ 4030 6590
Wire Wire Line
	4030 6590 4180 6590
Wire Wire Line
	3720 6590 3580 6590
Wire Wire Line
	3435 6590 3435 6665
Connection ~ 3580 6590
Wire Wire Line
	3580 6590 3435 6590
Wire Wire Line
	3580 6590 3580 6665
Connection ~ 4180 6590
$Comp
L power:+3.3VDAC #PWR028
U 1 1 62B75B5D
P 3435 6590
F 0 "#PWR028" H 3585 6540 50  0001 C CNN
F 1 "+3.3VDAC" H 3360 6750 50  0000 C CNN
F 2 "" H 3435 6590 50  0001 C CNN
F 3 "" H 3435 6590 50  0001 C CNN
	1    3435 6590
	1    0    0    -1  
$EndComp
Connection ~ 3435 6590
$Comp
L power:+3.3VDAC #PWR030
U 1 1 62B76D11
P 5025 6660
F 0 "#PWR030" H 5175 6610 50  0001 C CNN
F 1 "+3.3VDAC" H 5170 6810 50  0000 C CNN
F 2 "" H 5025 6660 50  0001 C CNN
F 3 "" H 5025 6660 50  0001 C CNN
	1    5025 6660
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B7765C
P 4030 6905
AR Path="/6231FCB3/62B7765C" Ref="#PWR?"  Part="1" 
AR Path="/62B7765C" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4030 6655 50  0001 C CNN
F 1 "GND" H 4150 6800 50  0000 C CNN
F 2 "" H 4030 6905 50  0001 C CNN
F 3 "" H 4030 6905 50  0001 C CNN
	1    4030 6905
	1    0    0    -1  
$EndComp
Wire Wire Line
	4180 6855 4180 6880
Wire Wire Line
	4180 6880 4030 6880
Wire Wire Line
	3435 6880 3435 6865
Wire Wire Line
	3580 6865 3580 6880
Connection ~ 3580 6880
Wire Wire Line
	3580 6880 3435 6880
Wire Wire Line
	4030 6855 4030 6880
Connection ~ 4030 6880
Wire Wire Line
	4030 6880 3580 6880
Wire Wire Line
	4030 6880 4030 6905
Text Notes 3330 6280 0    50   ~ 0
Local Power Filtering
$Comp
L Device:C_Small C?
U 1 1 62C14C68
P 8060 1590
AR Path="/6231FCB3/62C14C68" Ref="C?"  Part="1" 
AR Path="/62C14C68" Ref="C3"  Part="1" 
F 0 "C3" H 8140 1515 50  0000 L CNN
F 1 "100nF" H 8090 1670 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8060 1590 50  0001 C CNN
F 3 "~" H 8060 1590 50  0001 C CNN
F 4 "16V Ceramic" H 8060 1590 50  0001 C CNN "Description"
	1    8060 1590
	1    0    0    -1  
$EndComp
Wire Wire Line
	7955 1470 8060 1470
Wire Wire Line
	8060 1470 8060 1490
Connection ~ 7955 1470
Wire Wire Line
	8060 1690 8060 1710
Wire Wire Line
	8060 1710 7955 1710
Wire Wire Line
	7955 1570 7955 1710
Connection ~ 7955 1710
Text GLabel 3245 3575 2    50   Input ~ 0
USER1
$Comp
L Mechanical:MountingHole H?
U 1 1 62CE5555
P 7560 5590
AR Path="/6231FCB3/62CE5555" Ref="H?"  Part="1" 
AR Path="/62CE5555" Ref="H5"  Part="1" 
F 0 "H5" H 7660 5636 50  0000 L CNN
F 1 "MH-M3" H 7660 5545 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7560 5590 50  0001 C CNN
F 3 "~" H 7560 5590 50  0001 C CNN
	1    7560 5590
	1    0    0    -1  
$EndComp
Wire Wire Line
	3245 3575 3170 3575
Wire Wire Line
	3245 2075 3170 2075
Wire Wire Line
	2990 1150 2990 1165
Wire Wire Line
	2865 1150 2990 1150
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J5
U 1 1 63502656
P 5360 6805
F 0 "J5" H 5410 7522 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 5410 7431 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 5360 6805 50  0001 C CNN
F 3 "~" H 5360 6805 50  0001 C CNN
	1    5360 6805
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7405 5160 7405
Wire Wire Line
	5100 7205 5100 7305
Wire Wire Line
	5160 7305 5100 7305
Connection ~ 5100 7305
Wire Wire Line
	5100 7305 5100 7405
Connection ~ 5100 7405
Wire Wire Line
	5660 7305 5725 7305
Wire Wire Line
	5660 7405 5725 7405
Text GLabel 5725 7105 2    50   Input ~ 0
SCLK
Text GLabel 5725 7205 2    50   Input ~ 0
MISO
Text GLabel 5725 7305 2    50   Input ~ 0
MOSI
Text GLabel 5725 7405 2    50   Input ~ 0
CS
Text GLabel 3245 2075 2    50   Input ~ 0
SCLK
Text GLabel 3245 1675 2    50   Input ~ 0
MISO
Text GLabel 3245 2375 2    50   Input ~ 0
MOSI
Text GLabel 3245 1975 2    50   Input ~ 0
CS
$Comp
L Connector:TestPoint TP1
U 1 1 635790C6
P 3685 3645
F 0 "TP1" H 3743 3717 50  0000 L CNN
F 1 "TestPoint" H 3743 3672 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 3885 3645 50  0001 C CNN
F 3 "~" H 3885 3645 50  0001 C CNN
	1    3685 3645
	1    0    0    -1  
$EndComp
Wire Wire Line
	3170 3675 3685 3675
Wire Wire Line
	3685 3675 3685 3645
Text GLabel 3245 3275 2    50   Input ~ 0
DAC2
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 635AF839
P 5050 1465
AR Path="/6231FCB3/635AF839" Ref="J?"  Part="1" 
AR Path="/635AF839" Ref="J3"  Part="1" 
F 0 "J3" H 5175 1245 50  0000 R CNN
F 1 "Header" H 5245 1635 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5050 1465 50  0001 C CNN
F 3 "~" H 5050 1465 50  0001 C CNN
	1    5050 1465
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 635AFC85
P 5305 1610
AR Path="/6231FCB3/635AFC85" Ref="#PWR?"  Part="1" 
AR Path="/635AFC85" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5305 1360 50  0001 C CNN
F 1 "GND" H 5310 1437 50  0000 C CNN
F 2 "" H 5305 1610 50  0001 C CNN
F 3 "" H 5305 1610 50  0001 C CNN
	1    5305 1610
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1565 5305 1565
Wire Wire Line
	5305 1565 5305 1610
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 635BDCA7
P 5445 1335
AR Path="/6231FCB3/635BDCA7" Ref="#PWR?"  Part="1" 
AR Path="/635BDCA7" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5445 1185 50  0001 C CNN
F 1 "+3.3V" H 5460 1508 50  0000 C CNN
F 2 "" H 5445 1335 50  0001 C CNN
F 3 "" H 5445 1335 50  0001 C CNN
	1    5445 1335
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1365 5305 1365
Wire Wire Line
	5445 1365 5445 1335
Text GLabel 5325 1465 2    50   Input ~ 0
DAC2
Wire Wire Line
	5325 1465 5305 1465
Wire Notes Line
	5730 585  5730 2255
Wire Notes Line
	5730 2255 4540 2255
Wire Notes Line
	4540 2255 4540 585 
Wire Notes Line
	4540 585  5720 585 
Text Notes 4585 790  0    50   ~ 0
DAC2 or Spare GPIO Output
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 635E9EE3
P 4675 1465
AR Path="/6231FCB3/635E9EE3" Ref="J?"  Part="1" 
AR Path="/635E9EE3" Ref="J2"  Part="1" 
F 0 "J2" H 4790 1250 50  0000 R CNN
F 1 "Plug" H 4870 1635 50  0000 R CNN
F 2 "Connector_Hirose:Hirose_DF13C_CL535-0403-5-51_1x03-1MP_P1.25mm_Vertical" H 4675 1465 50  0001 C CNN
F 3 "~" H 4675 1465 50  0001 C CNN
	1    4675 1465
	1    0    0    1   
$EndComp
Wire Wire Line
	5305 1565 5305 1490
Wire Wire Line
	5305 1490 4980 1490
Wire Wire Line
	4980 1490 4980 1565
Wire Wire Line
	4980 1565 4875 1565
Connection ~ 5305 1565
Wire Wire Line
	5305 1465 5305 1390
Wire Wire Line
	5305 1390 4980 1390
Wire Wire Line
	4980 1390 4980 1465
Wire Wire Line
	4980 1465 4875 1465
Connection ~ 5305 1465
Wire Wire Line
	5305 1465 5250 1465
Wire Wire Line
	5305 1365 5305 1285
Wire Wire Line
	5305 1285 4980 1285
Wire Wire Line
	4980 1285 4980 1365
Wire Wire Line
	4980 1365 4875 1365
Connection ~ 5305 1365
Wire Wire Line
	5305 1365 5445 1365
Text GLabel 3245 2875 2    50   Input ~ 0
SDA
Text GLabel 3245 2975 2    50   Input ~ 0
SCL
Wire Wire Line
	3245 2375 3170 2375
Wire Wire Line
	3245 1975 3170 1975
Wire Wire Line
	3245 3275 3170 3275
$Comp
L Mechanical:MountingHole H?
U 1 1 62AC310F
P 7560 5760
AR Path="/6231FCB3/62AC310F" Ref="H?"  Part="1" 
AR Path="/62AC310F" Ref="H6"  Part="1" 
F 0 "H6" H 7660 5806 50  0000 L CNN
F 1 "MH-M2" H 7660 5715 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7560 5760 50  0001 C CNN
F 3 "~" H 7560 5760 50  0001 C CNN
	1    7560 5760
	1    0    0    -1  
$EndComp
$EndSCHEMATC
