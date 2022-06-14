EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Open-PyroJet-Driver"
Date "2022-06-12"
Rev "0.7"
Comp "PRL"
Comment1 "Open Hardware"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9955 5240 920  645 
U 630E7112
F0 "Power" 50
F1 "Power.sch" 50
$EndSheet
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313E956
P 2830 1435
AR Path="/629B5586/6313E956" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313E956" Ref="U?"  Part="1" 
AR Path="/630E7389/6313E956" Ref="U?"  Part="1" 
AR Path="/6313E956" Ref="U2"  Part="1" 
F 0 "U2" H 2785 1205 50  0000 C CNN
F 1 "TMI8870B" H 2815 1300 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 2580 985 50  0001 C CNN
F 3 "" H 2580 985 50  0001 C CNN
	1    2830 1435
	1    0    0    1   
$EndComp
Wire Wire Line
	3130 1685 3265 1685
Wire Wire Line
	3265 1685 3265 1630
Wire Wire Line
	3265 1630 3415 1630
Wire Wire Line
	3415 1530 3265 1530
Wire Wire Line
	3265 1530 3265 1485
Wire Wire Line
	3265 1485 3130 1485
Wire Wire Line
	3130 1585 3350 1585
Wire Wire Line
	3130 1385 3130 1265
$Comp
L power:+VSW #PWR?
U 1 1 6313E964
P 3130 1265
AR Path="/6229DCDC/6313E964" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E964" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313E964" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E964" Ref="#PWR?"  Part="1" 
AR Path="/6313E964" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 3130 1115 50  0001 C CNN
F 1 "+VSW" H 3235 1395 50  0000 C CNN
F 2 "" H 3130 1265 50  0001 C CNN
F 3 "" H 3130 1265 50  0001 C CNN
	1    3130 1265
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6313E972
P 2425 1755
AR Path="/6229DCDC/6313E972" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E972" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313E972" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E972" Ref="#PWR?"  Part="1" 
AR Path="/6313E972" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 2425 1505 50  0001 C CNN
F 1 "GND" H 2515 1635 50  0000 C CNN
F 2 "" H 2425 1755 50  0001 C CNN
F 3 "" H 2425 1755 50  0001 C CNN
	1    2425 1755
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2480 1685 2425 1685
Wire Wire Line
	2425 1685 2425 1755
Wire Wire Line
	2480 1385 2390 1385
Wire Wire Line
	2390 1385 2390 1310
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313E97C
P 2390 1265
AR Path="/629B5586/6313E97C" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E97C" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E97C" Ref="#PWR?"  Part="1" 
AR Path="/6313E97C" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2390 1115 50  0001 C CNN
F 1 "+3.3V" H 2405 1438 50  0000 C CNN
F 2 "" H 2390 1265 50  0001 C CNN
F 3 "" H 2390 1265 50  0001 C CNN
	1    2390 1265
	-1   0    0    -1  
$EndComp
Text GLabel 2360 1485 0    50   Input ~ 0
PH0
Wire Wire Line
	2480 1485 2360 1485
Wire Wire Line
	2480 1585 2425 1585
Wire Wire Line
	2425 1585 2425 1685
Connection ~ 2425 1685
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313E987
P 2915 3130
AR Path="/629B5586/6313E987" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313E987" Ref="U?"  Part="1" 
AR Path="/630E7389/6313E987" Ref="U?"  Part="1" 
AR Path="/6313E987" Ref="U6"  Part="1" 
F 0 "U6" H 2885 2900 50  0000 C CNN
F 1 "TMI8870B" H 2890 2995 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 2665 2680 50  0001 C CNN
F 3 "" H 2665 2680 50  0001 C CNN
	1    2915 3130
	1    0    0    1   
$EndComp
Wire Wire Line
	3215 3380 3350 3380
Wire Wire Line
	3350 3380 3350 3325
Wire Wire Line
	3350 3325 3500 3325
Wire Wire Line
	3500 3225 3350 3225
Wire Wire Line
	3350 3225 3350 3180
Wire Wire Line
	3350 3180 3215 3180
Wire Wire Line
	3215 3280 3435 3280
Wire Wire Line
	3215 3080 3215 2960
$Comp
L power:+VSW #PWR?
U 1 1 6313E995
P 3215 2960
AR Path="/6229DCDC/6313E995" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E995" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313E995" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E995" Ref="#PWR?"  Part="1" 
AR Path="/6313E995" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 3215 2810 50  0001 C CNN
F 1 "+VSW" H 3280 3100 50  0000 C CNN
F 2 "" H 3215 2960 50  0001 C CNN
F 3 "" H 3215 2960 50  0001 C CNN
	1    3215 2960
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3435 3280 3435 3395
$Comp
L power:GND #PWR?
U 1 1 6313E9A9
P 2510 3450
AR Path="/6229DCDC/6313E9A9" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E9A9" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313E9A9" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E9A9" Ref="#PWR?"  Part="1" 
AR Path="/6313E9A9" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2510 3200 50  0001 C CNN
F 1 "GND" H 2600 3330 50  0000 C CNN
F 2 "" H 2510 3450 50  0001 C CNN
F 3 "" H 2510 3450 50  0001 C CNN
	1    2510 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2565 3380 2510 3380
Wire Wire Line
	2510 3380 2510 3450
Wire Wire Line
	2565 3080 2475 3080
Wire Wire Line
	2475 3080 2475 3010
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313E9B3
P 2475 2960
AR Path="/629B5586/6313E9B3" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E9B3" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E9B3" Ref="#PWR?"  Part="1" 
AR Path="/6313E9B3" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2475 2810 50  0001 C CNN
F 1 "+3.3V" H 2490 3133 50  0000 C CNN
F 2 "" H 2475 2960 50  0001 C CNN
F 3 "" H 2475 2960 50  0001 C CNN
	1    2475 2960
	-1   0    0    -1  
$EndComp
Text GLabel 2445 3180 0    50   Input ~ 0
PH1
Wire Wire Line
	2565 3180 2445 3180
Wire Wire Line
	2565 3280 2510 3280
Wire Wire Line
	2510 3280 2510 3380
Connection ~ 2510 3380
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313E9BE
P 2820 4745
AR Path="/629B5586/6313E9BE" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313E9BE" Ref="U?"  Part="1" 
AR Path="/630E7389/6313E9BE" Ref="U?"  Part="1" 
AR Path="/6313E9BE" Ref="U10"  Part="1" 
F 0 "U10" H 2795 4535 50  0000 C CNN
F 1 "TMI8870B" H 2810 4610 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 2570 4295 50  0001 C CNN
F 3 "" H 2570 4295 50  0001 C CNN
	1    2820 4745
	1    0    0    1   
$EndComp
Wire Wire Line
	3120 4995 3255 4995
Wire Wire Line
	3255 4995 3255 4940
Wire Wire Line
	3255 4940 3405 4940
Wire Wire Line
	3405 4840 3255 4840
Wire Wire Line
	3255 4840 3255 4795
Wire Wire Line
	3255 4795 3120 4795
Wire Wire Line
	3120 4895 3340 4895
Wire Wire Line
	3340 4895 3340 5010
$Comp
L power:GND #PWR?
U 1 1 6313E9E0
P 2415 5065
AR Path="/6229DCDC/6313E9E0" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E9E0" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313E9E0" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E9E0" Ref="#PWR?"  Part="1" 
AR Path="/6313E9E0" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2415 4815 50  0001 C CNN
F 1 "GND" H 2505 4945 50  0000 C CNN
F 2 "" H 2415 5065 50  0001 C CNN
F 3 "" H 2415 5065 50  0001 C CNN
	1    2415 5065
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2470 4995 2415 4995
Wire Wire Line
	2415 4995 2415 5065
Wire Wire Line
	2470 4695 2380 4695
Wire Wire Line
	2380 4695 2380 4610
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313E9EA
P 2380 4575
AR Path="/629B5586/6313E9EA" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313E9EA" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313E9EA" Ref="#PWR?"  Part="1" 
AR Path="/6313E9EA" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 2380 4425 50  0001 C CNN
F 1 "+3.3V" H 2395 4748 50  0000 C CNN
F 2 "" H 2380 4575 50  0001 C CNN
F 3 "" H 2380 4575 50  0001 C CNN
	1    2380 4575
	-1   0    0    -1  
$EndComp
Text GLabel 2350 4795 0    50   Input ~ 0
PH2
Wire Wire Line
	2470 4795 2350 4795
Wire Wire Line
	2470 4895 2415 4895
Wire Wire Line
	2415 4895 2415 4995
Connection ~ 2415 4995
Text Notes 2930 1005 0    50   ~ 0
24V to 40V,\nup to 2A
Wire Wire Line
	3130 1385 3215 1385
Connection ~ 3130 1385
Wire Wire Line
	3325 1235 3215 1235
Wire Wire Line
	3215 1235 3215 1385
Wire Wire Line
	3830 1235 3830 1250
$Comp
L power:GND #PWR?
U 1 1 6313EA14
P 3830 1250
AR Path="/6229DCDC/6313EA14" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA14" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA14" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA14" Ref="#PWR?"  Part="1" 
AR Path="/6313EA14" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 3830 1000 50  0001 C CNN
F 1 "GND" H 3740 1135 50  0000 C CNN
F 2 "" H 3830 1250 50  0001 C CNN
F 3 "" H 3830 1250 50  0001 C CNN
	1    3830 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3215 3080 3300 3080
Wire Wire Line
	3410 2930 3300 2930
Wire Wire Line
	3300 2930 3300 3080
Wire Wire Line
	3915 2930 3915 2945
$Comp
L power:GND #PWR?
U 1 1 6313EA31
P 3915 2945
AR Path="/6229DCDC/6313EA31" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA31" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA31" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA31" Ref="#PWR?"  Part="1" 
AR Path="/6313EA31" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3915 2695 50  0001 C CNN
F 1 "GND" H 3825 2830 50  0000 C CNN
F 2 "" H 3915 2945 50  0001 C CNN
F 3 "" H 3915 2945 50  0001 C CNN
	1    3915 2945
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3315 4545 3205 4545
Wire Wire Line
	3205 4545 3205 4695
Wire Wire Line
	3820 4545 3820 4560
$Comp
L power:GND #PWR?
U 1 1 6313EA4E
P 3820 4560
AR Path="/6229DCDC/6313EA4E" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA4E" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA4E" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA4E" Ref="#PWR?"  Part="1" 
AR Path="/6313EA4E" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 3820 4310 50  0001 C CNN
F 1 "GND" H 3730 4445 50  0000 C CNN
F 2 "" H 3820 4560 50  0001 C CNN
F 3 "" H 3820 4560 50  0001 C CNN
	1    3820 4560
	-1   0    0    -1  
$EndComp
Connection ~ 3215 3080
$Comp
L Device:C_Small C?
U 1 1 6313EA56
P 2305 3010
AR Path="/629B5586/6313EA56" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EA56" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EA56" Ref="C?"  Part="1" 
AR Path="/6313EA56" Ref="C12"  Part="1" 
F 0 "C12" V 2260 3095 50  0000 C CNN
F 1 "100nF" V 2255 2870 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2305 3010 50  0001 C CNN
F 3 "~" H 2305 3010 50  0001 C CNN
	1    2305 3010
	0    1    1    0   
$EndComp
Wire Wire Line
	2405 3010 2475 3010
Connection ~ 2475 3010
Wire Wire Line
	2475 3010 2475 2960
Wire Wire Line
	2205 3010 2045 3010
Wire Wire Line
	2045 3010 2045 3090
$Comp
L power:GND #PWR?
U 1 1 6313EA61
P 2045 3090
AR Path="/6229DCDC/6313EA61" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA61" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA61" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA61" Ref="#PWR?"  Part="1" 
AR Path="/6313EA61" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 2045 2840 50  0001 C CNN
F 1 "GND" H 2135 2970 50  0000 C CNN
F 2 "" H 2045 3090 50  0001 C CNN
F 3 "" H 2045 3090 50  0001 C CNN
	1    2045 3090
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6313EA67
P 2220 1310
AR Path="/629B5586/6313EA67" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EA67" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EA67" Ref="C?"  Part="1" 
AR Path="/6313EA67" Ref="C4"  Part="1" 
F 0 "C4" V 2175 1395 50  0000 C CNN
F 1 "100nF" V 2170 1170 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2220 1310 50  0001 C CNN
F 3 "~" H 2220 1310 50  0001 C CNN
	1    2220 1310
	0    1    1    0   
$EndComp
Wire Wire Line
	2320 1310 2390 1310
Wire Wire Line
	2120 1310 1960 1310
Wire Wire Line
	1960 1310 1960 1390
$Comp
L power:GND #PWR?
U 1 1 6313EA70
P 1960 1390
AR Path="/6229DCDC/6313EA70" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA70" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA70" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA70" Ref="#PWR?"  Part="1" 
AR Path="/6313EA70" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1960 1140 50  0001 C CNN
F 1 "GND" H 2050 1270 50  0000 C CNN
F 2 "" H 1960 1390 50  0001 C CNN
F 3 "" H 1960 1390 50  0001 C CNN
	1    1960 1390
	-1   0    0    -1  
$EndComp
Connection ~ 2390 1310
Wire Wire Line
	2390 1310 2390 1265
$Comp
L Device:C_Small C?
U 1 1 6313EA78
P 2210 4610
AR Path="/629B5586/6313EA78" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EA78" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EA78" Ref="C?"  Part="1" 
AR Path="/6313EA78" Ref="C20"  Part="1" 
F 0 "C20" V 2165 4695 50  0000 C CNN
F 1 "100nF" V 2160 4470 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2210 4610 50  0001 C CNN
F 3 "~" H 2210 4610 50  0001 C CNN
	1    2210 4610
	0    1    1    0   
$EndComp
Wire Wire Line
	2310 4610 2380 4610
Wire Wire Line
	2110 4610 1950 4610
Wire Wire Line
	1950 4610 1950 4690
$Comp
L power:GND #PWR?
U 1 1 6313EA81
P 1950 4690
AR Path="/6229DCDC/6313EA81" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA81" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA81" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA81" Ref="#PWR?"  Part="1" 
AR Path="/6313EA81" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 1950 4440 50  0001 C CNN
F 1 "GND" H 2040 4570 50  0000 C CNN
F 2 "" H 1950 4690 50  0001 C CNN
F 3 "" H 1950 4690 50  0001 C CNN
	1    1950 4690
	-1   0    0    -1  
$EndComp
Connection ~ 2380 4610
Wire Wire Line
	2380 4610 2380 4575
Text Notes 7535 6335 0    50   ~ 0
Motor Driver H-Bridge IC:\n------------------\nAT8870 - 38V 3.6A, 29K STK, A$1.25/30\nRZ7899 - 25V 6A 84K STK, A$0.51/30 (no sense resistor)\nHV8548 - 28V 1.2A-2.4A, 5K STK, A$0.78/30\nPT2470 - 36V 3.6A, 2.5K STK, A0.80/30\nTMI8870B - 45V 3.6A, 3.5K STK, A$0.90/30 (up to 100KHz PWM = 10uSec pules)
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313EA8A
P 2790 6360
AR Path="/629B5586/6313EA8A" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313EA8A" Ref="U?"  Part="1" 
AR Path="/630E7389/6313EA8A" Ref="U?"  Part="1" 
AR Path="/6313EA8A" Ref="U14"  Part="1" 
F 0 "U14" H 2755 6140 50  0000 C CNN
F 1 "TMI8870B" H 2770 6220 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 2540 5910 50  0001 C CNN
F 3 "" H 2540 5910 50  0001 C CNN
	1    2790 6360
	1    0    0    1   
$EndComp
Wire Wire Line
	3090 6610 3225 6610
Wire Wire Line
	3225 6610 3225 6555
Wire Wire Line
	3225 6555 3375 6555
Wire Wire Line
	3375 6455 3225 6455
Wire Wire Line
	3225 6455 3225 6410
Wire Wire Line
	3225 6410 3090 6410
Wire Wire Line
	3090 6510 3310 6510
Wire Wire Line
	3090 6310 3090 6190
$Comp
L power:+VSW #PWR?
U 1 1 6313EA98
P 3090 6190
AR Path="/6229DCDC/6313EA98" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EA98" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EA98" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EA98" Ref="#PWR?"  Part="1" 
AR Path="/6313EA98" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 3090 6040 50  0001 C CNN
F 1 "+VSW" H 3170 6330 50  0000 C CNN
F 2 "" H 3090 6190 50  0001 C CNN
F 3 "" H 3090 6190 50  0001 C CNN
	1    3090 6190
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3310 6510 3310 6625
$Comp
L power:GND #PWR?
U 1 1 6313EAAC
P 2385 6680
AR Path="/6229DCDC/6313EAAC" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EAAC" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EAAC" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EAAC" Ref="#PWR?"  Part="1" 
AR Path="/6313EAAC" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 2385 6430 50  0001 C CNN
F 1 "GND" H 2475 6560 50  0000 C CNN
F 2 "" H 2385 6680 50  0001 C CNN
F 3 "" H 2385 6680 50  0001 C CNN
	1    2385 6680
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2440 6610 2385 6610
Wire Wire Line
	2385 6610 2385 6680
Wire Wire Line
	2440 6310 2350 6310
Wire Wire Line
	2350 6310 2350 6225
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313EAB6
P 2350 6190
AR Path="/629B5586/6313EAB6" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EAB6" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EAB6" Ref="#PWR?"  Part="1" 
AR Path="/6313EAB6" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 2350 6040 50  0001 C CNN
F 1 "+3.3V" H 2365 6363 50  0000 C CNN
F 2 "" H 2350 6190 50  0001 C CNN
F 3 "" H 2350 6190 50  0001 C CNN
	1    2350 6190
	-1   0    0    -1  
$EndComp
Text GLabel 2320 6410 0    50   Input ~ 0
PH3
Wire Wire Line
	2440 6410 2320 6410
Wire Wire Line
	2440 6510 2385 6510
Wire Wire Line
	2385 6510 2385 6610
Connection ~ 2385 6610
Wire Wire Line
	3090 6310 3175 6310
Wire Wire Line
	3285 6160 3175 6160
Wire Wire Line
	3175 6160 3175 6310
Wire Wire Line
	3790 6160 3790 6175
$Comp
L power:GND #PWR?
U 1 1 6313EAD8
P 3790 6175
AR Path="/6229DCDC/6313EAD8" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EAD8" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EAD8" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EAD8" Ref="#PWR?"  Part="1" 
AR Path="/6313EAD8" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 3790 5925 50  0001 C CNN
F 1 "GND" H 3700 6060 50  0000 C CNN
F 2 "" H 3790 6175 50  0001 C CNN
F 3 "" H 3790 6175 50  0001 C CNN
	1    3790 6175
	-1   0    0    -1  
$EndComp
Connection ~ 3090 6310
$Comp
L Device:C_Small C?
U 1 1 6313EADF
P 2180 6225
AR Path="/629B5586/6313EADF" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EADF" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EADF" Ref="C?"  Part="1" 
AR Path="/6313EADF" Ref="C28"  Part="1" 
F 0 "C28" V 2135 6310 50  0000 C CNN
F 1 "100nF" V 2130 6085 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2180 6225 50  0001 C CNN
F 3 "~" H 2180 6225 50  0001 C CNN
	1    2180 6225
	0    1    1    0   
$EndComp
Wire Wire Line
	2280 6225 2350 6225
Wire Wire Line
	2080 6225 1920 6225
Wire Wire Line
	1920 6225 1920 6305
$Comp
L power:GND #PWR?
U 1 1 6313EAE8
P 1920 6305
AR Path="/6229DCDC/6313EAE8" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EAE8" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EAE8" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EAE8" Ref="#PWR?"  Part="1" 
AR Path="/6313EAE8" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 1920 6055 50  0001 C CNN
F 1 "GND" H 2010 6185 50  0000 C CNN
F 2 "" H 1920 6305 50  0001 C CNN
F 3 "" H 1920 6305 50  0001 C CNN
	1    1920 6305
	-1   0    0    -1  
$EndComp
Connection ~ 2350 6225
Wire Wire Line
	2350 6225 2350 6190
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313EAF0
P 5590 1420
AR Path="/629B5586/6313EAF0" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313EAF0" Ref="U?"  Part="1" 
AR Path="/630E7389/6313EAF0" Ref="U?"  Part="1" 
AR Path="/6313EAF0" Ref="U1"  Part="1" 
F 0 "U1" H 5540 1210 50  0000 C CNN
F 1 "TMI8870B" H 5580 1285 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 5340 970 50  0001 C CNN
F 3 "" H 5340 970 50  0001 C CNN
	1    5590 1420
	1    0    0    1   
$EndComp
Wire Wire Line
	5890 1670 6025 1670
Wire Wire Line
	6025 1670 6025 1615
Wire Wire Line
	6025 1615 6175 1615
Wire Wire Line
	6175 1515 6025 1515
Wire Wire Line
	6025 1515 6025 1470
Wire Wire Line
	6025 1470 5890 1470
Wire Wire Line
	5890 1570 6110 1570
Wire Wire Line
	5890 1370 5890 1250
$Comp
L power:+VSW #PWR?
U 1 1 6313EAFE
P 5890 1250
AR Path="/6229DCDC/6313EAFE" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EAFE" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EAFE" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EAFE" Ref="#PWR?"  Part="1" 
AR Path="/6313EAFE" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 5890 1100 50  0001 C CNN
F 1 "+VSW" H 5985 1385 50  0000 C CNN
F 2 "" H 5890 1250 50  0001 C CNN
F 3 "" H 5890 1250 50  0001 C CNN
	1    5890 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6110 1570 6110 1685
$Comp
L power:GND #PWR?
U 1 1 6313EB0C
P 5185 1740
AR Path="/6229DCDC/6313EB0C" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB0C" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EB0C" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB0C" Ref="#PWR?"  Part="1" 
AR Path="/6313EB0C" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5185 1490 50  0001 C CNN
F 1 "GND" H 5275 1620 50  0000 C CNN
F 2 "" H 5185 1740 50  0001 C CNN
F 3 "" H 5185 1740 50  0001 C CNN
	1    5185 1740
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5240 1670 5185 1670
Wire Wire Line
	5185 1670 5185 1740
Wire Wire Line
	5240 1370 5150 1370
Wire Wire Line
	5150 1370 5150 1295
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313EB16
P 5150 1250
AR Path="/629B5586/6313EB16" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB16" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB16" Ref="#PWR?"  Part="1" 
AR Path="/6313EB16" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 5150 1100 50  0001 C CNN
F 1 "+3.3V" H 5165 1423 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "" H 5150 1250 50  0001 C CNN
	1    5150 1250
	-1   0    0    -1  
$EndComp
Text GLabel 5120 1470 0    50   Input ~ 0
PH4
Wire Wire Line
	5240 1470 5120 1470
Wire Wire Line
	5240 1570 5185 1570
Wire Wire Line
	5185 1570 5185 1670
Connection ~ 5185 1670
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313EB21
P 5675 3115
AR Path="/629B5586/6313EB21" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313EB21" Ref="U?"  Part="1" 
AR Path="/630E7389/6313EB21" Ref="U?"  Part="1" 
AR Path="/6313EB21" Ref="U5"  Part="1" 
F 0 "U5" H 5610 2905 50  0000 C CNN
F 1 "TMI8870B" H 5645 2980 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 5425 2665 50  0001 C CNN
F 3 "" H 5425 2665 50  0001 C CNN
	1    5675 3115
	1    0    0    1   
$EndComp
Wire Wire Line
	5975 3365 6110 3365
Wire Wire Line
	6110 3365 6110 3310
Wire Wire Line
	6110 3310 6260 3310
Wire Wire Line
	6260 3210 6110 3210
Wire Wire Line
	6110 3210 6110 3165
Wire Wire Line
	6110 3165 5975 3165
Wire Wire Line
	5975 3265 6195 3265
Wire Wire Line
	5975 3065 5975 2945
$Comp
L power:+VSW #PWR?
U 1 1 6313EB2F
P 5975 2945
AR Path="/6229DCDC/6313EB2F" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB2F" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EB2F" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB2F" Ref="#PWR?"  Part="1" 
AR Path="/6313EB2F" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 5975 2795 50  0001 C CNN
F 1 "+VSW" H 6080 3075 50  0000 C CNN
F 2 "" H 5975 2945 50  0001 C CNN
F 3 "" H 5975 2945 50  0001 C CNN
	1    5975 2945
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6195 3265 6195 3380
$Comp
L power:GND #PWR?
U 1 1 6313EB43
P 5270 3435
AR Path="/6229DCDC/6313EB43" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB43" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EB43" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB43" Ref="#PWR?"  Part="1" 
AR Path="/6313EB43" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 5270 3185 50  0001 C CNN
F 1 "GND" H 5360 3315 50  0000 C CNN
F 2 "" H 5270 3435 50  0001 C CNN
F 3 "" H 5270 3435 50  0001 C CNN
	1    5270 3435
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5325 3365 5270 3365
Wire Wire Line
	5270 3365 5270 3435
Wire Wire Line
	5325 3065 5235 3065
Wire Wire Line
	5235 3065 5235 2995
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313EB4D
P 5235 2945
AR Path="/629B5586/6313EB4D" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB4D" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB4D" Ref="#PWR?"  Part="1" 
AR Path="/6313EB4D" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 5235 2795 50  0001 C CNN
F 1 "+3.3V" H 5250 3118 50  0000 C CNN
F 2 "" H 5235 2945 50  0001 C CNN
F 3 "" H 5235 2945 50  0001 C CNN
	1    5235 2945
	-1   0    0    -1  
$EndComp
Text GLabel 5205 3165 0    50   Input ~ 0
PH5
Wire Wire Line
	5325 3165 5205 3165
Wire Wire Line
	5325 3265 5270 3265
Wire Wire Line
	5270 3265 5270 3365
Connection ~ 5270 3365
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313EB58
P 5580 4730
AR Path="/629B5586/6313EB58" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313EB58" Ref="U?"  Part="1" 
AR Path="/630E7389/6313EB58" Ref="U?"  Part="1" 
AR Path="/6313EB58" Ref="U9"  Part="1" 
F 0 "U9" H 5545 4525 50  0000 C CNN
F 1 "TMI8870B" H 5540 4590 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 5330 4280 50  0001 C CNN
F 3 "" H 5330 4280 50  0001 C CNN
	1    5580 4730
	1    0    0    1   
$EndComp
Wire Wire Line
	5880 4980 6015 4980
Wire Wire Line
	6015 4980 6015 4925
Wire Wire Line
	6015 4925 6165 4925
Wire Wire Line
	6165 4825 6015 4825
Wire Wire Line
	6015 4825 6015 4780
Wire Wire Line
	6015 4780 5880 4780
Wire Wire Line
	5880 4880 6100 4880
Wire Wire Line
	5880 4680 5880 4560
$Comp
L power:+VSW #PWR?
U 1 1 6313EB66
P 5880 4560
AR Path="/6229DCDC/6313EB66" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB66" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EB66" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB66" Ref="#PWR?"  Part="1" 
AR Path="/6313EB66" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 5880 4410 50  0001 C CNN
F 1 "+VSW" H 5960 4695 50  0000 C CNN
F 2 "" H 5880 4560 50  0001 C CNN
F 3 "" H 5880 4560 50  0001 C CNN
	1    5880 4560
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 4880 6100 4995
$Comp
L power:GND #PWR?
U 1 1 6313EB7A
P 5175 5050
AR Path="/6229DCDC/6313EB7A" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB7A" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EB7A" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB7A" Ref="#PWR?"  Part="1" 
AR Path="/6313EB7A" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 5175 4800 50  0001 C CNN
F 1 "GND" H 5265 4930 50  0000 C CNN
F 2 "" H 5175 5050 50  0001 C CNN
F 3 "" H 5175 5050 50  0001 C CNN
	1    5175 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5230 4980 5175 4980
Wire Wire Line
	5175 4980 5175 5050
Wire Wire Line
	5230 4680 5140 4680
Wire Wire Line
	5140 4680 5140 4595
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313EB84
P 5140 4560
AR Path="/629B5586/6313EB84" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EB84" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EB84" Ref="#PWR?"  Part="1" 
AR Path="/6313EB84" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 5140 4410 50  0001 C CNN
F 1 "+3.3V" H 5155 4733 50  0000 C CNN
F 2 "" H 5140 4560 50  0001 C CNN
F 3 "" H 5140 4560 50  0001 C CNN
	1    5140 4560
	-1   0    0    -1  
$EndComp
Text GLabel 5110 4780 0    50   Input ~ 0
PH6
Wire Wire Line
	5230 4780 5110 4780
Wire Wire Line
	5230 4880 5175 4880
Wire Wire Line
	5175 4880 5175 4980
Connection ~ 5175 4980
Text Notes 5615 1005 0    50   ~ 0
24V to 40V,\nup to 2A
Wire Wire Line
	5890 1370 5975 1370
Connection ~ 5890 1370
Wire Wire Line
	6085 1220 5975 1220
Wire Wire Line
	5975 1220 5975 1370
Wire Wire Line
	6590 1220 6590 1235
$Comp
L power:GND #PWR?
U 1 1 6313EBAE
P 6590 1235
AR Path="/6229DCDC/6313EBAE" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EBAE" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EBAE" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EBAE" Ref="#PWR?"  Part="1" 
AR Path="/6313EBAE" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 6590 985 50  0001 C CNN
F 1 "GND" H 6500 1120 50  0000 C CNN
F 2 "" H 6590 1235 50  0001 C CNN
F 3 "" H 6590 1235 50  0001 C CNN
	1    6590 1235
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5975 3065 6060 3065
Wire Wire Line
	6170 2915 6060 2915
Wire Wire Line
	6060 2915 6060 3065
Wire Wire Line
	6675 2915 6675 2930
$Comp
L power:GND #PWR?
U 1 1 6313EBCB
P 6675 2930
AR Path="/6229DCDC/6313EBCB" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EBCB" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EBCB" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EBCB" Ref="#PWR?"  Part="1" 
AR Path="/6313EBCB" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 6675 2680 50  0001 C CNN
F 1 "GND" H 6585 2815 50  0000 C CNN
F 2 "" H 6675 2930 50  0001 C CNN
F 3 "" H 6675 2930 50  0001 C CNN
	1    6675 2930
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5880 4680 5965 4680
Wire Wire Line
	6075 4530 5965 4530
Wire Wire Line
	5965 4530 5965 4680
Wire Wire Line
	6580 4530 6580 4545
$Comp
L power:GND #PWR?
U 1 1 6313EBE8
P 6580 4545
AR Path="/6229DCDC/6313EBE8" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EBE8" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EBE8" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EBE8" Ref="#PWR?"  Part="1" 
AR Path="/6313EBE8" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 6580 4295 50  0001 C CNN
F 1 "GND" H 6490 4430 50  0000 C CNN
F 2 "" H 6580 4545 50  0001 C CNN
F 3 "" H 6580 4545 50  0001 C CNN
	1    6580 4545
	-1   0    0    -1  
$EndComp
Connection ~ 5880 4680
Connection ~ 5975 3065
$Comp
L Device:C_Small C?
U 1 1 6313EBF0
P 5065 2995
AR Path="/629B5586/6313EBF0" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EBF0" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EBF0" Ref="C?"  Part="1" 
AR Path="/6313EBF0" Ref="C11"  Part="1" 
F 0 "C11" V 5020 3080 50  0000 C CNN
F 1 "100nF" V 5015 2855 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5065 2995 50  0001 C CNN
F 3 "~" H 5065 2995 50  0001 C CNN
	1    5065 2995
	0    1    1    0   
$EndComp
Wire Wire Line
	5165 2995 5235 2995
Connection ~ 5235 2995
Wire Wire Line
	5235 2995 5235 2945
Wire Wire Line
	4965 2995 4805 2995
Wire Wire Line
	4805 2995 4805 3075
$Comp
L power:GND #PWR?
U 1 1 6313EBFB
P 4805 3075
AR Path="/6229DCDC/6313EBFB" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EBFB" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EBFB" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EBFB" Ref="#PWR?"  Part="1" 
AR Path="/6313EBFB" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 4805 2825 50  0001 C CNN
F 1 "GND" H 4895 2955 50  0000 C CNN
F 2 "" H 4805 3075 50  0001 C CNN
F 3 "" H 4805 3075 50  0001 C CNN
	1    4805 3075
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6313EC01
P 4980 1295
AR Path="/629B5586/6313EC01" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EC01" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EC01" Ref="C?"  Part="1" 
AR Path="/6313EC01" Ref="C3"  Part="1" 
F 0 "C3" V 4935 1380 50  0000 C CNN
F 1 "100nF" V 4930 1155 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4980 1295 50  0001 C CNN
F 3 "~" H 4980 1295 50  0001 C CNN
	1    4980 1295
	0    1    1    0   
$EndComp
Wire Wire Line
	5080 1295 5150 1295
Wire Wire Line
	4880 1295 4720 1295
Wire Wire Line
	4720 1295 4720 1375
$Comp
L power:GND #PWR?
U 1 1 6313EC0A
P 4720 1375
AR Path="/6229DCDC/6313EC0A" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC0A" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EC0A" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC0A" Ref="#PWR?"  Part="1" 
AR Path="/6313EC0A" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4720 1125 50  0001 C CNN
F 1 "GND" H 4810 1255 50  0000 C CNN
F 2 "" H 4720 1375 50  0001 C CNN
F 3 "" H 4720 1375 50  0001 C CNN
	1    4720 1375
	-1   0    0    -1  
$EndComp
Connection ~ 5150 1295
Wire Wire Line
	5150 1295 5150 1250
$Comp
L Device:C_Small C?
U 1 1 6313EC12
P 4970 4595
AR Path="/629B5586/6313EC12" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EC12" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EC12" Ref="C?"  Part="1" 
AR Path="/6313EC12" Ref="C19"  Part="1" 
F 0 "C19" V 4925 4680 50  0000 C CNN
F 1 "100nF" V 4920 4455 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4970 4595 50  0001 C CNN
F 3 "~" H 4970 4595 50  0001 C CNN
	1    4970 4595
	0    1    1    0   
$EndComp
Wire Wire Line
	5070 4595 5140 4595
Wire Wire Line
	4870 4595 4710 4595
Wire Wire Line
	4710 4595 4710 4675
$Comp
L power:GND #PWR?
U 1 1 6313EC1B
P 4710 4675
AR Path="/6229DCDC/6313EC1B" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC1B" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EC1B" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC1B" Ref="#PWR?"  Part="1" 
AR Path="/6313EC1B" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 4710 4425 50  0001 C CNN
F 1 "GND" H 4800 4555 50  0000 C CNN
F 2 "" H 4710 4675 50  0001 C CNN
F 3 "" H 4710 4675 50  0001 C CNN
	1    4710 4675
	-1   0    0    -1  
$EndComp
Connection ~ 5140 4595
Wire Wire Line
	5140 4595 5140 4560
$Comp
L Pauls_Symbol_Library:TMI8870B U?
U 1 1 6313EC23
P 5550 6345
AR Path="/629B5586/6313EC23" Ref="U?"  Part="1" 
AR Path="/62560F5D/6313EC23" Ref="U?"  Part="1" 
AR Path="/630E7389/6313EC23" Ref="U?"  Part="1" 
AR Path="/6313EC23" Ref="U13"  Part="1" 
F 0 "U13" H 5520 6115 50  0000 C CNN
F 1 "TMI8870B" H 5540 6205 50  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 5300 5895 50  0001 C CNN
F 3 "" H 5300 5895 50  0001 C CNN
	1    5550 6345
	1    0    0    1   
$EndComp
Wire Wire Line
	5850 6595 5985 6595
Wire Wire Line
	5985 6595 5985 6540
Wire Wire Line
	5985 6540 6135 6540
Wire Wire Line
	6135 6440 5985 6440
Wire Wire Line
	5985 6440 5985 6395
Wire Wire Line
	5985 6395 5850 6395
Wire Wire Line
	5850 6495 6070 6495
$Comp
L Device:R_Small R7
U 1 1 6313EC37
P 6070 6725
AR Path="/6313EC37" Ref="R7"  Part="1" 
AR Path="/6229DCDC/6313EC37" Ref="R?"  Part="1" 
AR Path="/62560F5D/6313EC37" Ref="R?"  Part="1" 
AR Path="/629B5586/6313EC37" Ref="R?"  Part="1" 
AR Path="/630E7389/6313EC37" Ref="R?"  Part="1" 
F 0 "R7" H 6110 6685 50  0000 L CNN
F 1 "0.03R**" H 6120 6780 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6070 6725 50  0001 C CNN
F 3 "~" H 6070 6725 50  0001 C CNN
	1    6070 6725
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6313EC3D
P 6070 6865
AR Path="/6229DCDC/6313EC3D" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC3D" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EC3D" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC3D" Ref="#PWR?"  Part="1" 
AR Path="/6313EC3D" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 6070 6615 50  0001 C CNN
F 1 "GND" H 5940 6805 50  0000 C CNN
F 2 "" H 6070 6865 50  0001 C CNN
F 3 "" H 6070 6865 50  0001 C CNN
	1    6070 6865
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6070 6825 6070 6845
$Comp
L power:GND #PWR?
U 1 1 6313EC45
P 5145 6665
AR Path="/6229DCDC/6313EC45" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC45" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EC45" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC45" Ref="#PWR?"  Part="1" 
AR Path="/6313EC45" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 5145 6415 50  0001 C CNN
F 1 "GND" H 5235 6545 50  0000 C CNN
F 2 "" H 5145 6665 50  0001 C CNN
F 3 "" H 5145 6665 50  0001 C CNN
	1    5145 6665
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 6595 5145 6595
Wire Wire Line
	5145 6595 5145 6665
Wire Wire Line
	5200 6295 5110 6295
Wire Wire Line
	5110 6295 5110 6210
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6313EC4F
P 5110 6175
AR Path="/629B5586/6313EC4F" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC4F" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC4F" Ref="#PWR?"  Part="1" 
AR Path="/6313EC4F" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 5110 6025 50  0001 C CNN
F 1 "+3.3V" H 5125 6348 50  0000 C CNN
F 2 "" H 5110 6175 50  0001 C CNN
F 3 "" H 5110 6175 50  0001 C CNN
	1    5110 6175
	-1   0    0    -1  
$EndComp
Text GLabel 5080 6395 0    50   Input ~ 0
PH7
Wire Wire Line
	5200 6395 5080 6395
Wire Wire Line
	5200 6495 5145 6495
Wire Wire Line
	5145 6495 5145 6595
Connection ~ 5145 6595
Wire Wire Line
	5850 6295 5865 6295
Wire Wire Line
	5935 6145 5935 6295
Wire Wire Line
	6550 6145 6550 6160
$Comp
L power:GND #PWR?
U 1 1 6313EC71
P 6550 6160
AR Path="/6229DCDC/6313EC71" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC71" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EC71" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC71" Ref="#PWR?"  Part="1" 
AR Path="/6313EC71" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 6550 5910 50  0001 C CNN
F 1 "GND" H 6460 6045 50  0000 C CNN
F 2 "" H 6550 6160 50  0001 C CNN
F 3 "" H 6550 6160 50  0001 C CNN
	1    6550 6160
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6313EC78
P 4940 6210
AR Path="/629B5586/6313EC78" Ref="C?"  Part="1" 
AR Path="/62560F5D/6313EC78" Ref="C?"  Part="1" 
AR Path="/630E7389/6313EC78" Ref="C?"  Part="1" 
AR Path="/6313EC78" Ref="C27"  Part="1" 
F 0 "C27" V 4895 6305 50  0000 C CNN
F 1 "100nF" V 4890 6070 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4940 6210 50  0001 C CNN
F 3 "~" H 4940 6210 50  0001 C CNN
	1    4940 6210
	0    1    1    0   
$EndComp
Wire Wire Line
	5040 6210 5110 6210
Wire Wire Line
	4840 6210 4680 6210
Wire Wire Line
	4680 6210 4680 6290
$Comp
L power:GND #PWR?
U 1 1 6313EC81
P 4680 6290
AR Path="/6229DCDC/6313EC81" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6313EC81" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6313EC81" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6313EC81" Ref="#PWR?"  Part="1" 
AR Path="/6313EC81" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 4680 6040 50  0001 C CNN
F 1 "GND" H 4770 6170 50  0000 C CNN
F 2 "" H 4680 6290 50  0001 C CNN
F 3 "" H 4680 6290 50  0001 C CNN
	1    4680 6290
	-1   0    0    -1  
$EndComp
Connection ~ 5110 6210
Wire Wire Line
	5110 6210 5110 6175
Text Notes 7375 5605 0    50   ~ 0
** this part value will need testing\nMight need to be:  0.02, 0.03, 0.04 or 0.05 Ohms\nDepends on final Filament Resistance
Text GLabel 3415 1530 2    50   Input ~ 0
N0+
Text GLabel 3415 1630 2    50   Input ~ 0
N0-
Text GLabel 3500 3225 2    50   Input ~ 0
N1+
Text GLabel 3500 3325 2    50   Input ~ 0
N1-
Text GLabel 3405 4840 2    50   Input ~ 0
N2+
Text GLabel 3405 4940 2    50   Input ~ 0
N2-
Text GLabel 3375 6455 2    50   Input ~ 0
N3+
Text GLabel 3375 6555 2    50   Input ~ 0
N3-
Text GLabel 6135 6440 2    50   Input ~ 0
N7+
Text GLabel 6135 6540 2    50   Input ~ 0
N7-
Text GLabel 6165 4825 2    50   Input ~ 0
N6+
Text GLabel 6165 4925 2    50   Input ~ 0
N6-
Text GLabel 6260 3210 2    50   Input ~ 0
N5+
Text GLabel 6260 3310 2    50   Input ~ 0
N5-
Text GLabel 6175 1515 2    50   Input ~ 0
N4+
Text GLabel 6175 1615 2    50   Input ~ 0
N4-
Text GLabel 8510 1220 0    50   Input ~ 0
N0+
Text GLabel 9190 1220 2    50   Input ~ 0
N0-
Wire Wire Line
	8600 1220 8555 1220
Wire Wire Line
	8600 1320 8510 1320
Wire Wire Line
	8600 1420 8510 1420
Wire Wire Line
	8600 1520 8510 1520
Wire Wire Line
	8600 1620 8510 1620
Wire Wire Line
	8600 1720 8510 1720
Wire Wire Line
	8600 1820 8510 1820
Wire Wire Line
	8600 1920 8540 1920
Wire Wire Line
	9190 1220 9145 1220
Wire Wire Line
	9190 1320 9100 1320
Wire Wire Line
	9190 1420 9100 1420
Wire Wire Line
	9190 1520 9100 1520
Wire Wire Line
	9190 1620 9100 1620
Wire Wire Line
	9190 1720 9100 1720
Wire Wire Line
	9190 1820 9100 1820
Wire Wire Line
	9190 1920 9170 1920
Text GLabel 8510 1320 0    50   Input ~ 0
N1+
Text GLabel 9190 1320 2    50   Input ~ 0
N1-
Text GLabel 8510 1420 0    50   Input ~ 0
N2+
Text GLabel 9190 1420 2    50   Input ~ 0
N2-
Text GLabel 8510 1520 0    50   Input ~ 0
N3+
Text GLabel 9190 1520 2    50   Input ~ 0
N3-
Text GLabel 9190 1920 2    50   Input ~ 0
N7+
Text GLabel 8510 1920 0    50   Input ~ 0
N7-
Text GLabel 9190 1820 2    50   Input ~ 0
N6+
Text GLabel 8510 1820 0    50   Input ~ 0
N6-
Text GLabel 9190 1720 2    50   Input ~ 0
N5+
Text GLabel 8510 1720 0    50   Input ~ 0
N5-
Text GLabel 8510 1620 0    50   Input ~ 0
N4+
Text GLabel 9190 1620 2    50   Input ~ 0
N4-
Text Notes 8510 1020 0    50   ~ 0
Cable to Printhead
Text Notes 1905 1135 0    50   ~ 0
Nozzle0
Text Notes 2005 2825 0    50   ~ 0
Nozzle1
Text Notes 1905 4440 0    50   ~ 0
Nozzle2
Text Notes 1865 6065 0    50   ~ 0
Nozzle3
Text Notes 4590 6010 0    50   ~ 0
Nozzle7
Text Notes 4645 4445 0    50   ~ 0
Nozzle6
Text Notes 4755 2835 0    50   ~ 0
Nozzle5
Text Notes 4665 1110 0    50   ~ 0
Nozzle4
$Comp
L Connector:TestPoint TP?
U 1 1 6313ECCD
P 8555 1220
AR Path="/630E7389/6313ECCD" Ref="TP?"  Part="1" 
AR Path="/6313ECCD" Ref="TP1"  Part="1" 
F 0 "TP1" H 8380 1350 50  0000 L CNN
F 1 "TestPoint" H 8145 1325 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 8755 1220 50  0001 C CNN
F 3 "~" H 8755 1220 50  0001 C CNN
	1    8555 1220
	1    0    0    -1  
$EndComp
Connection ~ 8555 1220
Wire Wire Line
	8555 1220 8510 1220
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 6313ECD5
P 8900 1620
AR Path="/630E7389/6313ECD5" Ref="J?"  Part="1" 
AR Path="/6313ECD5" Ref="J1"  Part="1" 
F 0 "J1" H 8945 2030 50  0000 C CNN
F 1 "IDC_Connector" H 8955 1100 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Horizontal" H 8900 1620 50  0001 C CNN
F 3 "~" H 8900 1620 50  0001 C CNN
	1    8900 1620
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 6313ECDB
P 9145 1220
AR Path="/630E7389/6313ECDB" Ref="TP?"  Part="1" 
AR Path="/6313ECDB" Ref="TP2"  Part="1" 
F 0 "TP2" H 9200 1370 50  0000 L CNN
F 1 "TestPoint" H 8735 1325 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 9345 1220 50  0001 C CNN
F 3 "~" H 9345 1220 50  0001 C CNN
	1    9145 1220
	1    0    0    -1  
$EndComp
Connection ~ 9145 1220
Wire Wire Line
	9145 1220 9100 1220
Text Notes 8340 2655 0    50   ~ 0
To ESP32 Controller Board
$Comp
L Device:CP_Small C?
U 1 1 62620B84
P 3385 6160
AR Path="/630E7112/62620B84" Ref="C?"  Part="1" 
AR Path="/62620B84" Ref="C26"  Part="1" 
F 0 "C26" V 3430 6200 50  0000 L CNN
F 1 "100uF/63V" V 3440 5685 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3385 6160 50  0001 C CNN
F 3 "~" H 3385 6160 50  0001 C CNN
	1    3385 6160
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 62635BDD
P 6145 6145
AR Path="/630E7112/62635BDD" Ref="C?"  Part="1" 
AR Path="/62635BDD" Ref="C25"  Part="1" 
F 0 "C25" V 6195 6200 50  0000 L CNN
F 1 "100uF/63V" V 6210 5675 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6145 6145 50  0001 C CNN
F 3 "~" H 6145 6145 50  0001 C CNN
	1    6145 6145
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 626363F8
P 6175 4530
AR Path="/630E7112/626363F8" Ref="C?"  Part="1" 
AR Path="/626363F8" Ref="C17"  Part="1" 
F 0 "C17" V 6215 4575 50  0000 L CNN
F 1 "100uF/63V" V 6225 4065 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6175 4530 50  0001 C CNN
F 3 "~" H 6175 4530 50  0001 C CNN
	1    6175 4530
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 626370C1
P 3415 4545
AR Path="/630E7112/626370C1" Ref="C?"  Part="1" 
AR Path="/626370C1" Ref="C18"  Part="1" 
F 0 "C18" V 3460 4595 50  0000 L CNN
F 1 "100uF/63V" V 3470 4075 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3415 4545 50  0001 C CNN
F 3 "~" H 3415 4545 50  0001 C CNN
	1    3415 4545
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 62638B8E
P 3510 2930
AR Path="/630E7112/62638B8E" Ref="C?"  Part="1" 
AR Path="/62638B8E" Ref="C10"  Part="1" 
F 0 "C10" V 3555 2980 50  0000 L CNN
F 1 "100uF/63V" V 3565 2460 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3510 2930 50  0001 C CNN
F 3 "~" H 3510 2930 50  0001 C CNN
	1    3510 2930
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 6263983A
P 6270 2915
AR Path="/630E7112/6263983A" Ref="C?"  Part="1" 
AR Path="/6263983A" Ref="C9"  Part="1" 
F 0 "C9" V 6315 2970 50  0000 L CNN
F 1 "100uF/63V" V 6315 2450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6270 2915 50  0001 C CNN
F 3 "~" H 6270 2915 50  0001 C CNN
	1    6270 2915
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 6263A3E8
P 6185 1220
AR Path="/630E7112/6263A3E8" Ref="C?"  Part="1" 
AR Path="/6263A3E8" Ref="C1"  Part="1" 
F 0 "C1" V 6230 1305 50  0000 L CNN
F 1 "100uF/63V" V 6240 745 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6185 1220 50  0001 C CNN
F 3 "~" H 6185 1220 50  0001 C CNN
	1    6185 1220
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 6263C023
P 3425 1235
AR Path="/630E7112/6263C023" Ref="C?"  Part="1" 
AR Path="/6263C023" Ref="C2"  Part="1" 
F 0 "C2" V 3470 1320 50  0000 L CNN
F 1 "100uF/63V" V 3485 770 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3425 1235 50  0001 C CNN
F 3 "~" H 3425 1235 50  0001 C CNN
	1    3425 1235
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 1585 3350 1700
$Comp
L Mechanical:MountingHole H1
U 1 1 6273D044
P 8835 4330
F 0 "H1" H 8935 4376 50  0000 L CNN
F 1 "M3" H 8935 4285 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8835 4330 50  0001 C CNN
F 3 "~" H 8835 4330 50  0001 C CNN
	1    8835 4330
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6273D765
P 8835 4490
F 0 "H2" H 8935 4536 50  0000 L CNN
F 1 "M3" H 8935 4445 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8835 4490 50  0001 C CNN
F 3 "~" H 8835 4490 50  0001 C CNN
	1    8835 4490
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6273DA3E
P 8835 4650
F 0 "H3" H 8935 4696 50  0000 L CNN
F 1 "M3" H 8935 4605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8835 4650 50  0001 C CNN
F 3 "~" H 8835 4650 50  0001 C CNN
	1    8835 4650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6273DCC1
P 8835 4810
F 0 "H4" H 8935 4856 50  0000 L CNN
F 1 "M3" H 8935 4765 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8835 4810 50  0001 C CNN
F 3 "~" H 8835 4810 50  0001 C CNN
	1    8835 4810
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 627DA0CC
P 9170 1920
AR Path="/630E7389/627DA0CC" Ref="TP?"  Part="1" 
AR Path="/627DA0CC" Ref="TP4"  Part="1" 
F 0 "TP4" H 9065 2125 50  0000 L CNN
F 1 "TestPoint" H 8760 2025 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 9370 1920 50  0001 C CNN
F 3 "~" H 9370 1920 50  0001 C CNN
	1    9170 1920
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 627DA521
P 8540 1920
AR Path="/630E7389/627DA521" Ref="TP?"  Part="1" 
AR Path="/627DA521" Ref="TP3"  Part="1" 
F 0 "TP3" H 8510 2130 50  0000 L CNN
F 1 "TestPoint" H 8130 2025 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 8740 1920 50  0001 C CNN
F 3 "~" H 8740 1920 50  0001 C CNN
	1    8540 1920
	-1   0    0    1   
$EndComp
Connection ~ 8540 1920
Wire Wire Line
	8540 1920 8510 1920
Connection ~ 9170 1920
Wire Wire Line
	9170 1920 9100 1920
$Comp
L Pauls_Symbol_Library:+3.3V #PWR?
U 1 1 6328CB95
P 8530 3220
AR Path="/629B5586/6328CB95" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6328CB95" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6328CB95" Ref="#PWR?"  Part="1" 
AR Path="/6328CB95" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 8530 3070 50  0001 C CNN
F 1 "+3.3V" H 8430 3355 50  0000 C CNN
F 2 "" H 8530 3220 50  0001 C CNN
F 3 "" H 8530 3220 50  0001 C CNN
	1    8530 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	8610 3150 8610 3050
Connection ~ 8610 3150
Wire Wire Line
	8675 3150 8610 3150
Wire Wire Line
	8610 3050 8610 2950
Connection ~ 8610 3050
Wire Wire Line
	8675 3050 8610 3050
Wire Wire Line
	8610 2950 8610 2850
Connection ~ 8610 2950
Wire Wire Line
	8675 2950 8610 2950
Connection ~ 8610 3350
Wire Wire Line
	8610 2850 8675 2850
Wire Wire Line
	8610 3350 8610 3150
Connection ~ 8610 3550
Wire Wire Line
	8610 3350 8610 3550
Wire Wire Line
	8675 3350 8610 3350
Wire Wire Line
	8530 3250 8530 3220
Connection ~ 8530 3250
Wire Wire Line
	8675 3250 8530 3250
Wire Wire Line
	8530 3450 8530 3250
Wire Wire Line
	8675 3450 8530 3450
Connection ~ 8610 3650
Wire Wire Line
	8610 3550 8610 3650
Wire Wire Line
	8675 3550 8610 3550
Connection ~ 8610 3750
Wire Wire Line
	8675 3750 8610 3750
Wire Wire Line
	8610 3650 8610 3750
Wire Wire Line
	8675 3650 8610 3650
$Comp
L power:GND #PWR?
U 1 1 631CCFE4
P 8610 3950
AR Path="/6229DCDC/631CCFE4" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/631CCFE4" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/631CCFE4" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/631CCFE4" Ref="#PWR?"  Part="1" 
AR Path="/631CCFE4" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 8610 3700 50  0001 C CNN
F 1 "GND" H 8520 3835 50  0000 C CNN
F 2 "" H 8610 3950 50  0001 C CNN
F 3 "" H 8610 3950 50  0001 C CNN
	1    8610 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 3750 9255 3750
Wire Wire Line
	9175 3650 9255 3650
Wire Wire Line
	9175 3550 9255 3550
Wire Wire Line
	9175 3450 9255 3450
Wire Wire Line
	9175 3350 9255 3350
Wire Wire Line
	9175 3250 9255 3250
Wire Wire Line
	9175 3150 9255 3150
Wire Wire Line
	9175 3050 9255 3050
Wire Wire Line
	9175 2950 9255 2950
Wire Wire Line
	9175 2850 9255 2850
Text GLabel 9255 3550 2    50   Input ~ 0
PH7
Text GLabel 9255 3450 2    50   Input ~ 0
PH6
Text GLabel 9255 3350 2    50   Input ~ 0
PH5
Text GLabel 9255 3250 2    50   Input ~ 0
PH4
Text GLabel 9255 3150 2    50   Input ~ 0
PH3
Text GLabel 9255 3050 2    50   Input ~ 0
PH2
Text GLabel 9255 2950 2    50   Input ~ 0
PH1
Text GLabel 9255 2850 2    50   Input ~ 0
PH0
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 62D842F8
P 10425 6900
F 0 "#LOGO1" H 10425 7175 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10425 6675 50  0001 C CNN
F 2 "Symbol:OSHW-Logo2_7.3x6mm_SilkScreen" H 10425 6900 50  0001 C CNN
F 3 "~" H 10425 6900 50  0001 C CNN
	1    10425 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5865 6295 5865 6175
$Comp
L power:+VSW #PWR?
U 1 1 6271D937
P 5865 6175
AR Path="/6229DCDC/6271D937" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6271D937" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6271D937" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6271D937" Ref="#PWR?"  Part="1" 
AR Path="/6271D937" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 5865 6025 50  0001 C CNN
F 1 "+VSW" H 5945 6310 50  0000 C CNN
F 2 "" H 5865 6175 50  0001 C CNN
F 3 "" H 5865 6175 50  0001 C CNN
	1    5865 6175
	-1   0    0    -1  
$EndComp
Connection ~ 5865 6295
Wire Wire Line
	5865 6295 5935 6295
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J2
U 1 1 629F03AE
P 8875 3350
F 0 "J2" H 8915 2625 50  0000 C CNN
F 1 "Controller" H 8925 3976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 8875 3350 50  0001 C CNN
F 3 "~" H 8875 3350 50  0001 C CNN
	1    8875 3350
	1    0    0    -1  
$EndComp
Text GLabel 9255 3650 2    50   Input ~ 0
SLCK
Text GLabel 9255 3750 2    50   Input ~ 0
MISO
Text GLabel 9255 3850 2    50   Input ~ 0
MOSI
Text GLabel 9255 3950 2    50   Input ~ 0
CS
Wire Wire Line
	9255 3950 9175 3950
Wire Wire Line
	9255 3850 9175 3850
Wire Wire Line
	8675 3950 8610 3950
Wire Wire Line
	8610 3750 8610 3850
Wire Wire Line
	8675 3850 8610 3850
Connection ~ 8610 3850
Wire Wire Line
	8610 3850 8610 3950
Connection ~ 8610 3950
Text GLabel 3365 3820 2    50   Input ~ 0
NR1
Text GLabel 3270 5435 2    50   Input ~ 0
NR2
Text GLabel 3240 7050 2    50   Input ~ 0
NR3
Text GLabel 6040 2110 2    50   Input ~ 0
NR4
Text GLabel 6125 3805 2    50   Input ~ 0
NR5
Text GLabel 6030 5420 2    50   Input ~ 0
NR6
Text GLabel 6000 7035 2    50   Input ~ 0
NR7
$Comp
L Pauls_Symbol_Library:INA180 U15
U 1 1 62BF6B1B
P 5640 7035
F 0 "U15" H 5635 6790 50  0000 C CNN
F 1 "INA180" H 5630 7285 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5640 6785 50  0001 C CNN
F 3 "" H 5640 6785 50  0001 C CNN
	1    5640 7035
	1    0    0    -1  
$EndComp
Wire Wire Line
	6070 6495 6070 6610
Wire Wire Line
	6070 6610 6015 6610
Wire Wire Line
	6015 6610 6015 6715
Wire Wire Line
	6015 6715 5290 6715
Wire Wire Line
	5290 6715 5290 6885
Wire Wire Line
	5290 6885 5340 6885
Connection ~ 6070 6610
Wire Wire Line
	6070 6610 6070 6625
Wire Wire Line
	5940 6885 5975 6885
Wire Wire Line
	5975 6885 5975 6845
Wire Wire Line
	5975 6845 6070 6845
Connection ~ 6070 6845
Wire Wire Line
	6070 6845 6070 6865
$Comp
L power:GND #PWR?
U 1 1 62D16904
P 5990 7220
AR Path="/6229DCDC/62D16904" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62D16904" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62D16904" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62D16904" Ref="#PWR?"  Part="1" 
AR Path="/62D16904" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 5990 6970 50  0001 C CNN
F 1 "GND" H 6080 7100 50  0000 C CNN
F 2 "" H 5990 7220 50  0001 C CNN
F 3 "" H 5990 7220 50  0001 C CNN
	1    5990 7220
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5940 7185 5990 7185
Wire Wire Line
	5990 7185 5990 7220
$Comp
L power:+5V #PWR077
U 1 1 62D2F469
P 5260 7155
F 0 "#PWR077" H 5260 7005 50  0001 C CNN
F 1 "+5V" H 5335 7290 50  0000 C CNN
F 2 "" H 5260 7155 50  0001 C CNN
F 3 "" H 5260 7155 50  0001 C CNN
	1    5260 7155
	1    0    0    -1  
$EndComp
Wire Wire Line
	5340 7185 5260 7185
Wire Wire Line
	5260 7185 5260 7155
$Comp
L Device:C_Small C?
U 1 1 62D47C23
P 5160 7185
AR Path="/629B5586/62D47C23" Ref="C?"  Part="1" 
AR Path="/62560F5D/62D47C23" Ref="C?"  Part="1" 
AR Path="/630E7389/62D47C23" Ref="C?"  Part="1" 
AR Path="/62D47C23" Ref="C31"  Part="1" 
F 0 "C31" V 5105 7040 50  0000 C CNN
F 1 "100nF" V 5260 7250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5160 7185 50  0001 C CNN
F 3 "~" H 5160 7185 50  0001 C CNN
	1    5160 7185
	0    1    1    0   
$EndComp
Connection ~ 5260 7185
$Comp
L power:GND #PWR?
U 1 1 62D486AB
P 5025 7230
AR Path="/6229DCDC/62D486AB" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62D486AB" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62D486AB" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62D486AB" Ref="#PWR?"  Part="1" 
AR Path="/62D486AB" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 5025 6980 50  0001 C CNN
F 1 "GND" H 5115 7110 50  0000 C CNN
F 2 "" H 5025 7230 50  0001 C CNN
F 3 "" H 5025 7230 50  0001 C CNN
	1    5025 7230
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5060 7185 5025 7185
Wire Wire Line
	5025 7185 5025 7230
Wire Wire Line
	6000 7035 5940 7035
Wire Wire Line
	3120 4695 3145 4695
Wire Wire Line
	3145 4695 3145 4575
$Comp
L power:+VSW #PWR?
U 1 1 62E06C8D
P 3145 4575
AR Path="/6229DCDC/62E06C8D" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62E06C8D" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62E06C8D" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62E06C8D" Ref="#PWR?"  Part="1" 
AR Path="/62E06C8D" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 3145 4425 50  0001 C CNN
F 1 "+VSW" H 3210 4715 50  0000 C CNN
F 2 "" H 3145 4575 50  0001 C CNN
F 3 "" H 3145 4575 50  0001 C CNN
	1    3145 4575
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 62EDD632
P 3310 6740
AR Path="/62EDD632" Ref="R8"  Part="1" 
AR Path="/6229DCDC/62EDD632" Ref="R?"  Part="1" 
AR Path="/62560F5D/62EDD632" Ref="R?"  Part="1" 
AR Path="/629B5586/62EDD632" Ref="R?"  Part="1" 
AR Path="/630E7389/62EDD632" Ref="R?"  Part="1" 
F 0 "R8" H 3350 6700 50  0000 L CNN
F 1 "0.03R**" H 3360 6795 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3310 6740 50  0001 C CNN
F 3 "~" H 3310 6740 50  0001 C CNN
	1    3310 6740
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62EDD638
P 3310 6880
AR Path="/6229DCDC/62EDD638" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62EDD638" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62EDD638" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62EDD638" Ref="#PWR?"  Part="1" 
AR Path="/62EDD638" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 3310 6630 50  0001 C CNN
F 1 "GND" H 3180 6820 50  0000 C CNN
F 2 "" H 3310 6880 50  0001 C CNN
F 3 "" H 3310 6880 50  0001 C CNN
	1    3310 6880
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3310 6840 3310 6860
$Comp
L Pauls_Symbol_Library:INA180 U16
U 1 1 62EDD640
P 2880 7050
F 0 "U16" H 2875 6805 50  0000 C CNN
F 1 "INA180" H 2870 7300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2880 6800 50  0001 C CNN
F 3 "" H 2880 6800 50  0001 C CNN
	1    2880 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3255 6625 3255 6730
Wire Wire Line
	3255 6730 2530 6730
Wire Wire Line
	2530 6730 2530 6900
Wire Wire Line
	2530 6900 2580 6900
Wire Wire Line
	3180 6900 3215 6900
Wire Wire Line
	3215 6900 3215 6860
Wire Wire Line
	3215 6860 3310 6860
Connection ~ 3310 6860
Wire Wire Line
	3310 6860 3310 6880
$Comp
L power:GND #PWR?
U 1 1 62EDD64F
P 3230 7235
AR Path="/6229DCDC/62EDD64F" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62EDD64F" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62EDD64F" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62EDD64F" Ref="#PWR?"  Part="1" 
AR Path="/62EDD64F" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 3230 6985 50  0001 C CNN
F 1 "GND" H 3320 7115 50  0000 C CNN
F 2 "" H 3230 7235 50  0001 C CNN
F 3 "" H 3230 7235 50  0001 C CNN
	1    3230 7235
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3180 7200 3230 7200
Wire Wire Line
	3230 7200 3230 7235
$Comp
L power:+5V #PWR078
U 1 1 62EDD657
P 2500 7170
F 0 "#PWR078" H 2500 7020 50  0001 C CNN
F 1 "+5V" H 2575 7305 50  0000 C CNN
F 2 "" H 2500 7170 50  0001 C CNN
F 3 "" H 2500 7170 50  0001 C CNN
	1    2500 7170
	1    0    0    -1  
$EndComp
Wire Wire Line
	2580 7200 2500 7200
Wire Wire Line
	2500 7200 2500 7170
$Comp
L Device:C_Small C?
U 1 1 62EDD65F
P 2400 7200
AR Path="/629B5586/62EDD65F" Ref="C?"  Part="1" 
AR Path="/62560F5D/62EDD65F" Ref="C?"  Part="1" 
AR Path="/630E7389/62EDD65F" Ref="C?"  Part="1" 
AR Path="/62EDD65F" Ref="C32"  Part="1" 
F 0 "C32" V 2345 7055 50  0000 C CNN
F 1 "100nF" V 2500 7265 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2400 7200 50  0001 C CNN
F 3 "~" H 2400 7200 50  0001 C CNN
	1    2400 7200
	0    1    1    0   
$EndComp
Connection ~ 2500 7200
$Comp
L power:GND #PWR?
U 1 1 62EDD666
P 2265 7245
AR Path="/6229DCDC/62EDD666" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62EDD666" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62EDD666" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62EDD666" Ref="#PWR?"  Part="1" 
AR Path="/62EDD666" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 2265 6995 50  0001 C CNN
F 1 "GND" H 2355 7125 50  0000 C CNN
F 2 "" H 2265 7245 50  0001 C CNN
F 3 "" H 2265 7245 50  0001 C CNN
	1    2265 7245
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 7200 2265 7200
Wire Wire Line
	2265 7200 2265 7245
Wire Wire Line
	3240 7050 3180 7050
$Comp
L Device:R_Small R6
U 1 1 62EFE416
P 3340 5125
AR Path="/62EFE416" Ref="R6"  Part="1" 
AR Path="/6229DCDC/62EFE416" Ref="R?"  Part="1" 
AR Path="/62560F5D/62EFE416" Ref="R?"  Part="1" 
AR Path="/629B5586/62EFE416" Ref="R?"  Part="1" 
AR Path="/630E7389/62EFE416" Ref="R?"  Part="1" 
F 0 "R6" H 3380 5085 50  0000 L CNN
F 1 "0.03R**" H 3390 5180 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3340 5125 50  0001 C CNN
F 3 "~" H 3340 5125 50  0001 C CNN
	1    3340 5125
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62EFE41C
P 3340 5265
AR Path="/6229DCDC/62EFE41C" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62EFE41C" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62EFE41C" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62EFE41C" Ref="#PWR?"  Part="1" 
AR Path="/62EFE41C" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 3340 5015 50  0001 C CNN
F 1 "GND" H 3210 5205 50  0000 C CNN
F 2 "" H 3340 5265 50  0001 C CNN
F 3 "" H 3340 5265 50  0001 C CNN
	1    3340 5265
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3340 5225 3340 5245
$Comp
L Pauls_Symbol_Library:INA180 U12
U 1 1 62EFE424
P 2910 5435
F 0 "U12" H 2905 5190 50  0000 C CNN
F 1 "INA180" H 2900 5685 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2910 5185 50  0001 C CNN
F 3 "" H 2910 5185 50  0001 C CNN
	1    2910 5435
	1    0    0    -1  
$EndComp
Wire Wire Line
	3285 5010 3285 5115
Wire Wire Line
	3285 5115 2560 5115
Wire Wire Line
	2560 5115 2560 5285
Wire Wire Line
	2560 5285 2610 5285
Wire Wire Line
	3210 5285 3245 5285
Wire Wire Line
	3245 5285 3245 5245
Wire Wire Line
	3245 5245 3340 5245
Connection ~ 3340 5245
Wire Wire Line
	3340 5245 3340 5265
$Comp
L power:GND #PWR?
U 1 1 62EFE433
P 3260 5620
AR Path="/6229DCDC/62EFE433" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62EFE433" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62EFE433" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62EFE433" Ref="#PWR?"  Part="1" 
AR Path="/62EFE433" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 3260 5370 50  0001 C CNN
F 1 "GND" H 3350 5500 50  0000 C CNN
F 2 "" H 3260 5620 50  0001 C CNN
F 3 "" H 3260 5620 50  0001 C CNN
	1    3260 5620
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3210 5585 3260 5585
Wire Wire Line
	3260 5585 3260 5620
$Comp
L power:+5V #PWR058
U 1 1 62EFE43B
P 2530 5555
F 0 "#PWR058" H 2530 5405 50  0001 C CNN
F 1 "+5V" H 2605 5690 50  0000 C CNN
F 2 "" H 2530 5555 50  0001 C CNN
F 3 "" H 2530 5555 50  0001 C CNN
	1    2530 5555
	1    0    0    -1  
$EndComp
Wire Wire Line
	2610 5585 2530 5585
Wire Wire Line
	2530 5585 2530 5555
$Comp
L Device:C_Small C?
U 1 1 62EFE443
P 2430 5585
AR Path="/629B5586/62EFE443" Ref="C?"  Part="1" 
AR Path="/62560F5D/62EFE443" Ref="C?"  Part="1" 
AR Path="/630E7389/62EFE443" Ref="C?"  Part="1" 
AR Path="/62EFE443" Ref="C24"  Part="1" 
F 0 "C24" V 2375 5440 50  0000 C CNN
F 1 "100nF" V 2530 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2430 5585 50  0001 C CNN
F 3 "~" H 2430 5585 50  0001 C CNN
	1    2430 5585
	0    1    1    0   
$EndComp
Connection ~ 2530 5585
$Comp
L power:GND #PWR?
U 1 1 62EFE44A
P 2295 5630
AR Path="/6229DCDC/62EFE44A" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62EFE44A" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62EFE44A" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62EFE44A" Ref="#PWR?"  Part="1" 
AR Path="/62EFE44A" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 2295 5380 50  0001 C CNN
F 1 "GND" H 2385 5510 50  0000 C CNN
F 2 "" H 2295 5630 50  0001 C CNN
F 3 "" H 2295 5630 50  0001 C CNN
	1    2295 5630
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2330 5585 2295 5585
Wire Wire Line
	2295 5585 2295 5630
Wire Wire Line
	3270 5435 3210 5435
Connection ~ 3145 4695
Wire Wire Line
	3145 4695 3205 4695
$Comp
L Device:R_Small R4
U 1 1 62FE2581
P 3435 3510
AR Path="/62FE2581" Ref="R4"  Part="1" 
AR Path="/6229DCDC/62FE2581" Ref="R?"  Part="1" 
AR Path="/62560F5D/62FE2581" Ref="R?"  Part="1" 
AR Path="/629B5586/62FE2581" Ref="R?"  Part="1" 
AR Path="/630E7389/62FE2581" Ref="R?"  Part="1" 
F 0 "R4" H 3475 3470 50  0000 L CNN
F 1 "0.03R**" H 3485 3565 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3435 3510 50  0001 C CNN
F 3 "~" H 3435 3510 50  0001 C CNN
	1    3435 3510
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62FE2587
P 3435 3650
AR Path="/6229DCDC/62FE2587" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62FE2587" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62FE2587" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62FE2587" Ref="#PWR?"  Part="1" 
AR Path="/62FE2587" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 3435 3400 50  0001 C CNN
F 1 "GND" H 3305 3590 50  0000 C CNN
F 2 "" H 3435 3650 50  0001 C CNN
F 3 "" H 3435 3650 50  0001 C CNN
	1    3435 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3435 3610 3435 3630
$Comp
L Pauls_Symbol_Library:INA180 U8
U 1 1 62FE258F
P 3005 3820
F 0 "U8" H 3000 3575 50  0000 C CNN
F 1 "INA180" H 2995 4070 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3005 3570 50  0001 C CNN
F 3 "" H 3005 3570 50  0001 C CNN
	1    3005 3820
	1    0    0    -1  
$EndComp
Wire Wire Line
	3380 3395 3380 3500
Wire Wire Line
	3380 3500 2655 3500
Wire Wire Line
	2655 3500 2655 3670
Wire Wire Line
	2655 3670 2705 3670
Wire Wire Line
	3305 3670 3340 3670
Wire Wire Line
	3340 3670 3340 3630
Wire Wire Line
	3340 3630 3435 3630
Connection ~ 3435 3630
Wire Wire Line
	3435 3630 3435 3650
$Comp
L power:GND #PWR?
U 1 1 62FE259E
P 3355 4005
AR Path="/6229DCDC/62FE259E" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62FE259E" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62FE259E" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62FE259E" Ref="#PWR?"  Part="1" 
AR Path="/62FE259E" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 3355 3755 50  0001 C CNN
F 1 "GND" H 3445 3885 50  0000 C CNN
F 2 "" H 3355 4005 50  0001 C CNN
F 3 "" H 3355 4005 50  0001 C CNN
	1    3355 4005
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3305 3970 3355 3970
Wire Wire Line
	3355 3970 3355 4005
$Comp
L power:+5V #PWR037
U 1 1 62FE25A6
P 2625 3940
F 0 "#PWR037" H 2625 3790 50  0001 C CNN
F 1 "+5V" H 2700 4075 50  0000 C CNN
F 2 "" H 2625 3940 50  0001 C CNN
F 3 "" H 2625 3940 50  0001 C CNN
	1    2625 3940
	1    0    0    -1  
$EndComp
Wire Wire Line
	2705 3970 2625 3970
Wire Wire Line
	2625 3970 2625 3940
$Comp
L Device:C_Small C?
U 1 1 62FE25AE
P 2525 3970
AR Path="/629B5586/62FE25AE" Ref="C?"  Part="1" 
AR Path="/62560F5D/62FE25AE" Ref="C?"  Part="1" 
AR Path="/630E7389/62FE25AE" Ref="C?"  Part="1" 
AR Path="/62FE25AE" Ref="C16"  Part="1" 
F 0 "C16" V 2470 3825 50  0000 C CNN
F 1 "100nF" V 2625 4035 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2525 3970 50  0001 C CNN
F 3 "~" H 2525 3970 50  0001 C CNN
	1    2525 3970
	0    1    1    0   
$EndComp
Connection ~ 2625 3970
$Comp
L power:GND #PWR?
U 1 1 62FE25B5
P 2390 4015
AR Path="/6229DCDC/62FE25B5" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/62FE25B5" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/62FE25B5" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/62FE25B5" Ref="#PWR?"  Part="1" 
AR Path="/62FE25B5" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 2390 3765 50  0001 C CNN
F 1 "GND" H 2480 3895 50  0000 C CNN
F 2 "" H 2390 4015 50  0001 C CNN
F 3 "" H 2390 4015 50  0001 C CNN
	1    2390 4015
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2425 3970 2390 3970
Wire Wire Line
	2390 3970 2390 4015
Wire Wire Line
	3365 3820 3305 3820
$Comp
L Device:R_Small R2
U 1 1 63009A37
P 3350 1815
AR Path="/63009A37" Ref="R2"  Part="1" 
AR Path="/6229DCDC/63009A37" Ref="R?"  Part="1" 
AR Path="/62560F5D/63009A37" Ref="R?"  Part="1" 
AR Path="/629B5586/63009A37" Ref="R?"  Part="1" 
AR Path="/630E7389/63009A37" Ref="R?"  Part="1" 
F 0 "R2" H 3390 1775 50  0000 L CNN
F 1 "0.03R**" H 3400 1870 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3350 1815 50  0001 C CNN
F 3 "~" H 3350 1815 50  0001 C CNN
	1    3350 1815
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63009A3D
P 3350 1955
AR Path="/6229DCDC/63009A3D" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63009A3D" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63009A3D" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63009A3D" Ref="#PWR?"  Part="1" 
AR Path="/63009A3D" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3350 1705 50  0001 C CNN
F 1 "GND" H 3220 1895 50  0000 C CNN
F 2 "" H 3350 1955 50  0001 C CNN
F 3 "" H 3350 1955 50  0001 C CNN
	1    3350 1955
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 1915 3350 1935
$Comp
L Pauls_Symbol_Library:INA180 U4
U 1 1 63009A45
P 2920 2125
F 0 "U4" H 2915 1880 50  0000 C CNN
F 1 "INA180-DNF" H 2910 2375 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2920 1875 50  0001 C CNN
F 3 "" H 2920 1875 50  0001 C CNN
	1    2920 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3295 1700 3295 1805
Wire Wire Line
	3295 1805 2570 1805
Wire Wire Line
	2570 1805 2570 1975
Wire Wire Line
	2570 1975 2620 1975
Wire Wire Line
	3220 1975 3255 1975
Wire Wire Line
	3255 1975 3255 1935
Wire Wire Line
	3255 1935 3350 1935
Connection ~ 3350 1935
Wire Wire Line
	3350 1935 3350 1955
$Comp
L power:GND #PWR?
U 1 1 63009A54
P 3270 2310
AR Path="/6229DCDC/63009A54" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63009A54" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63009A54" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63009A54" Ref="#PWR?"  Part="1" 
AR Path="/63009A54" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 3270 2060 50  0001 C CNN
F 1 "GND" H 3360 2190 50  0000 C CNN
F 2 "" H 3270 2310 50  0001 C CNN
F 3 "" H 3270 2310 50  0001 C CNN
	1    3270 2310
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3220 2275 3270 2275
Wire Wire Line
	3270 2275 3270 2310
$Comp
L power:+5V #PWR016
U 1 1 63009A5C
P 2540 2245
F 0 "#PWR016" H 2540 2095 50  0001 C CNN
F 1 "+5V" H 2615 2380 50  0000 C CNN
F 2 "" H 2540 2245 50  0001 C CNN
F 3 "" H 2540 2245 50  0001 C CNN
	1    2540 2245
	1    0    0    -1  
$EndComp
Wire Wire Line
	2620 2275 2540 2275
Wire Wire Line
	2540 2275 2540 2245
$Comp
L Device:C_Small C?
U 1 1 63009A64
P 2440 2275
AR Path="/629B5586/63009A64" Ref="C?"  Part="1" 
AR Path="/62560F5D/63009A64" Ref="C?"  Part="1" 
AR Path="/630E7389/63009A64" Ref="C?"  Part="1" 
AR Path="/63009A64" Ref="C8"  Part="1" 
F 0 "C8" V 2385 2130 50  0000 C CNN
F 1 "100nF-DNF" V 2545 2420 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2440 2275 50  0001 C CNN
F 3 "~" H 2440 2275 50  0001 C CNN
	1    2440 2275
	0    1    1    0   
$EndComp
Connection ~ 2540 2275
$Comp
L power:GND #PWR?
U 1 1 63009A6B
P 2305 2320
AR Path="/6229DCDC/63009A6B" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63009A6B" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63009A6B" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63009A6B" Ref="#PWR?"  Part="1" 
AR Path="/63009A6B" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 2305 2070 50  0001 C CNN
F 1 "GND" H 2395 2200 50  0000 C CNN
F 2 "" H 2305 2320 50  0001 C CNN
F 3 "" H 2305 2320 50  0001 C CNN
	1    2305 2320
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2340 2275 2305 2275
Wire Wire Line
	2305 2275 2305 2320
Wire Wire Line
	3280 2125 3220 2125
$Comp
L Device:R_Small R1
U 1 1 63034E99
P 6110 1800
AR Path="/63034E99" Ref="R1"  Part="1" 
AR Path="/6229DCDC/63034E99" Ref="R?"  Part="1" 
AR Path="/62560F5D/63034E99" Ref="R?"  Part="1" 
AR Path="/629B5586/63034E99" Ref="R?"  Part="1" 
AR Path="/630E7389/63034E99" Ref="R?"  Part="1" 
F 0 "R1" H 6150 1760 50  0000 L CNN
F 1 "0.03R**" H 6160 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6110 1800 50  0001 C CNN
F 3 "~" H 6110 1800 50  0001 C CNN
	1    6110 1800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63034E9F
P 6110 1940
AR Path="/6229DCDC/63034E9F" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63034E9F" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63034E9F" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63034E9F" Ref="#PWR?"  Part="1" 
AR Path="/63034E9F" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 6110 1690 50  0001 C CNN
F 1 "GND" H 5980 1880 50  0000 C CNN
F 2 "" H 6110 1940 50  0001 C CNN
F 3 "" H 6110 1940 50  0001 C CNN
	1    6110 1940
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6110 1900 6110 1920
$Comp
L Pauls_Symbol_Library:INA180 U3
U 1 1 63034EA7
P 5680 2110
F 0 "U3" H 5675 1865 50  0000 C CNN
F 1 "INA180" H 5670 2360 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5680 1860 50  0001 C CNN
F 3 "" H 5680 1860 50  0001 C CNN
	1    5680 2110
	1    0    0    -1  
$EndComp
Wire Wire Line
	6055 1685 6055 1790
Wire Wire Line
	6055 1790 5330 1790
Wire Wire Line
	5330 1790 5330 1960
Wire Wire Line
	5330 1960 5380 1960
Wire Wire Line
	5980 1960 6015 1960
Wire Wire Line
	6015 1960 6015 1920
Wire Wire Line
	6015 1920 6110 1920
Connection ~ 6110 1920
Wire Wire Line
	6110 1920 6110 1940
$Comp
L power:GND #PWR?
U 1 1 63034EB6
P 6030 2295
AR Path="/6229DCDC/63034EB6" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63034EB6" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63034EB6" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63034EB6" Ref="#PWR?"  Part="1" 
AR Path="/63034EB6" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 6030 2045 50  0001 C CNN
F 1 "GND" H 6120 2175 50  0000 C CNN
F 2 "" H 6030 2295 50  0001 C CNN
F 3 "" H 6030 2295 50  0001 C CNN
	1    6030 2295
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5980 2260 6030 2260
Wire Wire Line
	6030 2260 6030 2295
$Comp
L power:+5V #PWR015
U 1 1 63034EBE
P 5300 2230
F 0 "#PWR015" H 5300 2080 50  0001 C CNN
F 1 "+5V" H 5375 2365 50  0000 C CNN
F 2 "" H 5300 2230 50  0001 C CNN
F 3 "" H 5300 2230 50  0001 C CNN
	1    5300 2230
	1    0    0    -1  
$EndComp
Wire Wire Line
	5380 2260 5300 2260
Wire Wire Line
	5300 2260 5300 2230
$Comp
L Device:C_Small C?
U 1 1 63034EC6
P 5200 2260
AR Path="/629B5586/63034EC6" Ref="C?"  Part="1" 
AR Path="/62560F5D/63034EC6" Ref="C?"  Part="1" 
AR Path="/630E7389/63034EC6" Ref="C?"  Part="1" 
AR Path="/63034EC6" Ref="C7"  Part="1" 
F 0 "C7" V 5145 2115 50  0000 C CNN
F 1 "100nF" V 5300 2325 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5200 2260 50  0001 C CNN
F 3 "~" H 5200 2260 50  0001 C CNN
	1    5200 2260
	0    1    1    0   
$EndComp
Connection ~ 5300 2260
$Comp
L power:GND #PWR?
U 1 1 63034ECD
P 5065 2305
AR Path="/6229DCDC/63034ECD" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63034ECD" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63034ECD" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63034ECD" Ref="#PWR?"  Part="1" 
AR Path="/63034ECD" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5065 2055 50  0001 C CNN
F 1 "GND" H 5155 2185 50  0000 C CNN
F 2 "" H 5065 2305 50  0001 C CNN
F 3 "" H 5065 2305 50  0001 C CNN
	1    5065 2305
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 2260 5065 2260
Wire Wire Line
	5065 2260 5065 2305
Wire Wire Line
	6040 2110 5980 2110
$Comp
L Device:R_Small R3
U 1 1 63067739
P 6195 3495
AR Path="/63067739" Ref="R3"  Part="1" 
AR Path="/6229DCDC/63067739" Ref="R?"  Part="1" 
AR Path="/62560F5D/63067739" Ref="R?"  Part="1" 
AR Path="/629B5586/63067739" Ref="R?"  Part="1" 
AR Path="/630E7389/63067739" Ref="R?"  Part="1" 
F 0 "R3" H 6235 3455 50  0000 L CNN
F 1 "0.03R**" H 6245 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6195 3495 50  0001 C CNN
F 3 "~" H 6195 3495 50  0001 C CNN
	1    6195 3495
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6306773F
P 6195 3635
AR Path="/6229DCDC/6306773F" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6306773F" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6306773F" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6306773F" Ref="#PWR?"  Part="1" 
AR Path="/6306773F" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6195 3385 50  0001 C CNN
F 1 "GND" H 6065 3575 50  0000 C CNN
F 2 "" H 6195 3635 50  0001 C CNN
F 3 "" H 6195 3635 50  0001 C CNN
	1    6195 3635
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6195 3595 6195 3615
$Comp
L Pauls_Symbol_Library:INA180 U7
U 1 1 63067747
P 5765 3805
F 0 "U7" H 5760 3560 50  0000 C CNN
F 1 "INA180" H 5755 4055 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5765 3555 50  0001 C CNN
F 3 "" H 5765 3555 50  0001 C CNN
	1    5765 3805
	1    0    0    -1  
$EndComp
Wire Wire Line
	6140 3380 6140 3485
Wire Wire Line
	6140 3485 5415 3485
Wire Wire Line
	5415 3485 5415 3655
Wire Wire Line
	5415 3655 5465 3655
Wire Wire Line
	6065 3655 6100 3655
Wire Wire Line
	6100 3655 6100 3615
Wire Wire Line
	6100 3615 6195 3615
Connection ~ 6195 3615
Wire Wire Line
	6195 3615 6195 3635
$Comp
L power:GND #PWR?
U 1 1 63067756
P 6115 3990
AR Path="/6229DCDC/63067756" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63067756" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63067756" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63067756" Ref="#PWR?"  Part="1" 
AR Path="/63067756" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 6115 3740 50  0001 C CNN
F 1 "GND" H 6205 3870 50  0000 C CNN
F 2 "" H 6115 3990 50  0001 C CNN
F 3 "" H 6115 3990 50  0001 C CNN
	1    6115 3990
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6065 3955 6115 3955
Wire Wire Line
	6115 3955 6115 3990
$Comp
L power:+5V #PWR036
U 1 1 6306775E
P 5385 3925
F 0 "#PWR036" H 5385 3775 50  0001 C CNN
F 1 "+5V" H 5460 4060 50  0000 C CNN
F 2 "" H 5385 3925 50  0001 C CNN
F 3 "" H 5385 3925 50  0001 C CNN
	1    5385 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5465 3955 5385 3955
Wire Wire Line
	5385 3955 5385 3925
$Comp
L Device:C_Small C?
U 1 1 63067766
P 5285 3955
AR Path="/629B5586/63067766" Ref="C?"  Part="1" 
AR Path="/62560F5D/63067766" Ref="C?"  Part="1" 
AR Path="/630E7389/63067766" Ref="C?"  Part="1" 
AR Path="/63067766" Ref="C15"  Part="1" 
F 0 "C15" V 5230 3810 50  0000 C CNN
F 1 "100nF" V 5385 4020 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5285 3955 50  0001 C CNN
F 3 "~" H 5285 3955 50  0001 C CNN
	1    5285 3955
	0    1    1    0   
$EndComp
Connection ~ 5385 3955
$Comp
L power:GND #PWR?
U 1 1 6306776D
P 5150 4000
AR Path="/6229DCDC/6306776D" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/6306776D" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/6306776D" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/6306776D" Ref="#PWR?"  Part="1" 
AR Path="/6306776D" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 5150 3750 50  0001 C CNN
F 1 "GND" H 5240 3880 50  0000 C CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5185 3955 5150 3955
Wire Wire Line
	5150 3955 5150 4000
Wire Wire Line
	6125 3805 6065 3805
$Comp
L Device:R_Small R5
U 1 1 630980B2
P 6100 5110
AR Path="/630980B2" Ref="R5"  Part="1" 
AR Path="/6229DCDC/630980B2" Ref="R?"  Part="1" 
AR Path="/62560F5D/630980B2" Ref="R?"  Part="1" 
AR Path="/629B5586/630980B2" Ref="R?"  Part="1" 
AR Path="/630E7389/630980B2" Ref="R?"  Part="1" 
F 0 "R5" H 6140 5070 50  0000 L CNN
F 1 "0.03R**" H 6150 5165 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6100 5110 50  0001 C CNN
F 3 "~" H 6100 5110 50  0001 C CNN
	1    6100 5110
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 630980B8
P 6100 5250
AR Path="/6229DCDC/630980B8" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/630980B8" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/630980B8" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/630980B8" Ref="#PWR?"  Part="1" 
AR Path="/630980B8" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 6100 5000 50  0001 C CNN
F 1 "GND" H 5970 5190 50  0000 C CNN
F 2 "" H 6100 5250 50  0001 C CNN
F 3 "" H 6100 5250 50  0001 C CNN
	1    6100 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 5210 6100 5230
$Comp
L Pauls_Symbol_Library:INA180 U11
U 1 1 630980C0
P 5670 5420
F 0 "U11" H 5665 5175 50  0000 C CNN
F 1 "INA180" H 5660 5670 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5670 5170 50  0001 C CNN
F 3 "" H 5670 5170 50  0001 C CNN
	1    5670 5420
	1    0    0    -1  
$EndComp
Wire Wire Line
	6045 4995 6045 5100
Wire Wire Line
	6045 5100 5320 5100
Wire Wire Line
	5320 5100 5320 5270
Wire Wire Line
	5320 5270 5370 5270
Wire Wire Line
	5970 5270 6005 5270
Wire Wire Line
	6005 5270 6005 5230
Wire Wire Line
	6005 5230 6100 5230
Connection ~ 6100 5230
Wire Wire Line
	6100 5230 6100 5250
$Comp
L power:GND #PWR?
U 1 1 630980CF
P 6020 5605
AR Path="/6229DCDC/630980CF" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/630980CF" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/630980CF" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/630980CF" Ref="#PWR?"  Part="1" 
AR Path="/630980CF" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 6020 5355 50  0001 C CNN
F 1 "GND" H 6110 5485 50  0000 C CNN
F 2 "" H 6020 5605 50  0001 C CNN
F 3 "" H 6020 5605 50  0001 C CNN
	1    6020 5605
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5970 5570 6020 5570
Wire Wire Line
	6020 5570 6020 5605
$Comp
L power:+5V #PWR057
U 1 1 630980D7
P 5290 5540
F 0 "#PWR057" H 5290 5390 50  0001 C CNN
F 1 "+5V" H 5365 5675 50  0000 C CNN
F 2 "" H 5290 5540 50  0001 C CNN
F 3 "" H 5290 5540 50  0001 C CNN
	1    5290 5540
	1    0    0    -1  
$EndComp
Wire Wire Line
	5370 5570 5290 5570
Wire Wire Line
	5290 5570 5290 5540
$Comp
L Device:C_Small C?
U 1 1 630980DF
P 5190 5570
AR Path="/629B5586/630980DF" Ref="C?"  Part="1" 
AR Path="/62560F5D/630980DF" Ref="C?"  Part="1" 
AR Path="/630E7389/630980DF" Ref="C?"  Part="1" 
AR Path="/630980DF" Ref="C23"  Part="1" 
F 0 "C23" V 5135 5425 50  0000 C CNN
F 1 "100nF" V 5290 5635 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5190 5570 50  0001 C CNN
F 3 "~" H 5190 5570 50  0001 C CNN
	1    5190 5570
	0    1    1    0   
$EndComp
Connection ~ 5290 5570
$Comp
L power:GND #PWR?
U 1 1 630980E6
P 5055 5615
AR Path="/6229DCDC/630980E6" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/630980E6" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/630980E6" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/630980E6" Ref="#PWR?"  Part="1" 
AR Path="/630980E6" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 5055 5365 50  0001 C CNN
F 1 "GND" H 5145 5495 50  0000 C CNN
F 2 "" H 5055 5615 50  0001 C CNN
F 3 "" H 5055 5615 50  0001 C CNN
	1    5055 5615
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5090 5570 5055 5570
Wire Wire Line
	5055 5570 5055 5615
Wire Wire Line
	6030 5420 5970 5420
Wire Wire Line
	6045 4995 6100 4995
Connection ~ 6100 4995
Wire Wire Line
	6100 4995 6100 5010
Wire Wire Line
	3255 6625 3310 6625
Connection ~ 3310 6625
Wire Wire Line
	3310 6625 3310 6640
Wire Wire Line
	3285 5010 3340 5010
Connection ~ 3340 5010
Wire Wire Line
	3340 5010 3340 5025
Wire Wire Line
	3380 3395 3435 3395
Connection ~ 3435 3395
Wire Wire Line
	3435 3395 3435 3410
Wire Wire Line
	3295 1700 3350 1700
Connection ~ 3350 1700
Wire Wire Line
	3350 1700 3350 1715
Wire Wire Line
	6055 1685 6110 1685
Connection ~ 6110 1685
Wire Wire Line
	6110 1685 6110 1700
Wire Wire Line
	6140 3380 6195 3380
Connection ~ 6195 3380
Wire Wire Line
	6195 3380 6195 3395
NoConn ~ 3280 2125
Text Notes 855  2330 0    50   ~ 0
Note: Nozzle 0 isn't monitored as \nthe ADC pin is being used to \nmeasure the Motor Drive voltage. \nFootprints are being placed just in \ncase though
Wire Wire Line
	6370 2915 6675 2915
Wire Wire Line
	6275 4530 6580 4530
Wire Wire Line
	5935 6145 6045 6145
Wire Wire Line
	6245 6145 6550 6145
Wire Wire Line
	3485 6160 3790 6160
Wire Wire Line
	3515 4545 3820 4545
Wire Wire Line
	3610 2930 3915 2930
Wire Wire Line
	3525 1235 3830 1235
Wire Wire Line
	6285 1220 6590 1220
$Comp
L Device:C_Small C?
U 1 1 63D8BCCE
P 6475 6760
AR Path="/629B5586/63D8BCCE" Ref="C?"  Part="1" 
AR Path="/62560F5D/63D8BCCE" Ref="C?"  Part="1" 
AR Path="/630E7389/63D8BCCE" Ref="C?"  Part="1" 
AR Path="/63D8BCCE" Ref="C29"  Part="1" 
F 0 "C29" H 6385 6680 50  0000 C CNN
F 1 "1nF**" H 6350 6840 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6475 6760 50  0001 C CNN
F 3 "~" H 6475 6760 50  0001 C CNN
	1    6475 6760
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63D8DA23
P 6475 6900
AR Path="/6229DCDC/63D8DA23" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63D8DA23" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63D8DA23" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63D8DA23" Ref="#PWR?"  Part="1" 
AR Path="/63D8DA23" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 6475 6650 50  0001 C CNN
F 1 "GND" H 6345 6840 50  0000 C CNN
F 2 "" H 6475 6900 50  0001 C CNN
F 3 "" H 6475 6900 50  0001 C CNN
	1    6475 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6475 6860 6475 6900
Wire Wire Line
	6070 6610 6475 6610
Wire Wire Line
	6475 6610 6475 6660
$Comp
L Device:C_Small C?
U 1 1 63DE50B7
P 3715 6775
AR Path="/629B5586/63DE50B7" Ref="C?"  Part="1" 
AR Path="/62560F5D/63DE50B7" Ref="C?"  Part="1" 
AR Path="/630E7389/63DE50B7" Ref="C?"  Part="1" 
AR Path="/63DE50B7" Ref="C30"  Part="1" 
F 0 "C30" H 3620 6700 50  0000 C CNN
F 1 "1nF**" H 3590 6855 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3715 6775 50  0001 C CNN
F 3 "~" H 3715 6775 50  0001 C CNN
	1    3715 6775
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63DE50BD
P 3715 6915
AR Path="/6229DCDC/63DE50BD" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63DE50BD" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63DE50BD" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63DE50BD" Ref="#PWR?"  Part="1" 
AR Path="/63DE50BD" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 3715 6665 50  0001 C CNN
F 1 "GND" H 3585 6855 50  0000 C CNN
F 2 "" H 3715 6915 50  0001 C CNN
F 3 "" H 3715 6915 50  0001 C CNN
	1    3715 6915
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3715 6875 3715 6915
Wire Wire Line
	3310 6625 3715 6625
Wire Wire Line
	3715 6625 3715 6675
$Comp
L Device:C_Small C?
U 1 1 63E117FF
P 3745 5160
AR Path="/629B5586/63E117FF" Ref="C?"  Part="1" 
AR Path="/62560F5D/63E117FF" Ref="C?"  Part="1" 
AR Path="/630E7389/63E117FF" Ref="C?"  Part="1" 
AR Path="/63E117FF" Ref="C22"  Part="1" 
F 0 "C22" H 3650 5085 50  0000 C CNN
F 1 "1nF**" H 3620 5240 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3745 5160 50  0001 C CNN
F 3 "~" H 3745 5160 50  0001 C CNN
	1    3745 5160
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63E11805
P 3745 5300
AR Path="/6229DCDC/63E11805" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63E11805" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63E11805" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63E11805" Ref="#PWR?"  Part="1" 
AR Path="/63E11805" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3745 5050 50  0001 C CNN
F 1 "GND" H 3615 5240 50  0000 C CNN
F 2 "" H 3745 5300 50  0001 C CNN
F 3 "" H 3745 5300 50  0001 C CNN
	1    3745 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3745 5260 3745 5300
Wire Wire Line
	3340 5010 3745 5010
Wire Wire Line
	3745 5010 3745 5060
$Comp
L Device:C_Small C?
U 1 1 63E3F8D8
P 3840 3545
AR Path="/629B5586/63E3F8D8" Ref="C?"  Part="1" 
AR Path="/62560F5D/63E3F8D8" Ref="C?"  Part="1" 
AR Path="/630E7389/63E3F8D8" Ref="C?"  Part="1" 
AR Path="/63E3F8D8" Ref="C14"  Part="1" 
F 0 "C14" H 3750 3465 50  0000 C CNN
F 1 "1nF**" H 3715 3625 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3840 3545 50  0001 C CNN
F 3 "~" H 3840 3545 50  0001 C CNN
	1    3840 3545
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63E3F8DE
P 3840 3685
AR Path="/6229DCDC/63E3F8DE" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63E3F8DE" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63E3F8DE" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63E3F8DE" Ref="#PWR?"  Part="1" 
AR Path="/63E3F8DE" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 3840 3435 50  0001 C CNN
F 1 "GND" H 3710 3625 50  0000 C CNN
F 2 "" H 3840 3685 50  0001 C CNN
F 3 "" H 3840 3685 50  0001 C CNN
	1    3840 3685
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3840 3645 3840 3685
Wire Wire Line
	3435 3395 3840 3395
Wire Wire Line
	3840 3395 3840 3445
$Comp
L Device:C_Small C?
U 1 1 63E6D8C1
P 3755 1850
AR Path="/629B5586/63E6D8C1" Ref="C?"  Part="1" 
AR Path="/62560F5D/63E6D8C1" Ref="C?"  Part="1" 
AR Path="/630E7389/63E6D8C1" Ref="C?"  Part="1" 
AR Path="/63E6D8C1" Ref="C6"  Part="1" 
F 0 "C6" H 3680 1775 50  0000 C CNN
F 1 "1nF**DNF" H 3550 1930 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3755 1850 50  0001 C CNN
F 3 "~" H 3755 1850 50  0001 C CNN
	1    3755 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63E6D8C7
P 3755 1990
AR Path="/6229DCDC/63E6D8C7" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63E6D8C7" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63E6D8C7" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63E6D8C7" Ref="#PWR?"  Part="1" 
AR Path="/63E6D8C7" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3755 1740 50  0001 C CNN
F 1 "GND" H 3625 1930 50  0000 C CNN
F 2 "" H 3755 1990 50  0001 C CNN
F 3 "" H 3755 1990 50  0001 C CNN
	1    3755 1990
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3755 1950 3755 1990
Wire Wire Line
	3350 1700 3755 1700
Wire Wire Line
	3755 1700 3755 1750
$Comp
L Device:C_Small C?
U 1 1 63E9C2EB
P 6515 1835
AR Path="/629B5586/63E9C2EB" Ref="C?"  Part="1" 
AR Path="/62560F5D/63E9C2EB" Ref="C?"  Part="1" 
AR Path="/630E7389/63E9C2EB" Ref="C?"  Part="1" 
AR Path="/63E9C2EB" Ref="C5"  Part="1" 
F 0 "C5" H 6440 1760 50  0000 C CNN
F 1 "1nF**" H 6390 1915 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6515 1835 50  0001 C CNN
F 3 "~" H 6515 1835 50  0001 C CNN
	1    6515 1835
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63E9C2F1
P 6515 1975
AR Path="/6229DCDC/63E9C2F1" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63E9C2F1" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63E9C2F1" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63E9C2F1" Ref="#PWR?"  Part="1" 
AR Path="/63E9C2F1" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6515 1725 50  0001 C CNN
F 1 "GND" H 6385 1915 50  0000 C CNN
F 2 "" H 6515 1975 50  0001 C CNN
F 3 "" H 6515 1975 50  0001 C CNN
	1    6515 1975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6515 1935 6515 1975
Wire Wire Line
	6110 1685 6515 1685
Wire Wire Line
	6515 1685 6515 1735
$Comp
L Device:C_Small C?
U 1 1 63ECBD00
P 6600 3530
AR Path="/629B5586/63ECBD00" Ref="C?"  Part="1" 
AR Path="/62560F5D/63ECBD00" Ref="C?"  Part="1" 
AR Path="/630E7389/63ECBD00" Ref="C?"  Part="1" 
AR Path="/63ECBD00" Ref="C13"  Part="1" 
F 0 "C13" H 6500 3445 50  0000 C CNN
F 1 "1nF**" H 6475 3610 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 3530 50  0001 C CNN
F 3 "~" H 6600 3530 50  0001 C CNN
	1    6600 3530
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63ECBD06
P 6600 3670
AR Path="/6229DCDC/63ECBD06" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63ECBD06" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63ECBD06" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63ECBD06" Ref="#PWR?"  Part="1" 
AR Path="/63ECBD06" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6600 3420 50  0001 C CNN
F 1 "GND" H 6470 3610 50  0000 C CNN
F 2 "" H 6600 3670 50  0001 C CNN
F 3 "" H 6600 3670 50  0001 C CNN
	1    6600 3670
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 3630 6600 3670
Wire Wire Line
	6195 3380 6600 3380
Wire Wire Line
	6600 3380 6600 3430
$Comp
L Device:C_Small C?
U 1 1 63EFAE17
P 6505 5145
AR Path="/629B5586/63EFAE17" Ref="C?"  Part="1" 
AR Path="/62560F5D/63EFAE17" Ref="C?"  Part="1" 
AR Path="/630E7389/63EFAE17" Ref="C?"  Part="1" 
AR Path="/63EFAE17" Ref="C21"  Part="1" 
F 0 "C21" H 6415 5065 50  0000 C CNN
F 1 "1nF**" H 6380 5225 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6505 5145 50  0001 C CNN
F 3 "~" H 6505 5145 50  0001 C CNN
	1    6505 5145
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63EFAE1D
P 6505 5285
AR Path="/6229DCDC/63EFAE1D" Ref="#PWR?"  Part="1" 
AR Path="/62560F5D/63EFAE1D" Ref="#PWR?"  Part="1" 
AR Path="/629B5586/63EFAE1D" Ref="#PWR?"  Part="1" 
AR Path="/630E7389/63EFAE1D" Ref="#PWR?"  Part="1" 
AR Path="/63EFAE1D" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 6505 5035 50  0001 C CNN
F 1 "GND" H 6375 5225 50  0000 C CNN
F 2 "" H 6505 5285 50  0001 C CNN
F 3 "" H 6505 5285 50  0001 C CNN
	1    6505 5285
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6505 5245 6505 5285
Wire Wire Line
	6100 4995 6505 4995
Wire Wire Line
	6505 4995 6505 5045
$EndSCHEMATC
