EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Open PyroJet - Power"
Date "2022-03-18"
Rev "0.5c1"
Comp "PRL"
Comment1 "Open Hardware"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Pauls_Symbol_Library:MCA1101-5-3 U?
U 1 1 623C3988
P 7015 1945
AR Path="/623C3988" Ref="U?"  Part="1" 
AR Path="/6229DCDC/623C3988" Ref="U?"  Part="1" 
AR Path="/630E7112/623C3988" Ref="U9"  Part="1" 
F 0 "U9" V 6915 1470 60  0000 C CNN
F 1 "MCA1101-5-3" V 7075 1185 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 7015 1495 60  0001 C CNN
F 3 "" H 8065 4145 60  0000 C CNN
	1    7015 1945
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 623D882A
P 7615 2485
AR Path="/623D882A" Ref="C?"  Part="1" 
AR Path="/6229DCDC/623D882A" Ref="C?"  Part="1" 
AR Path="/630E7112/623D882A" Ref="C32"  Part="1" 
F 0 "C32" H 7690 2420 50  0000 L CNN
F 1 "22uF" H 7625 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7615 2485 50  0001 C CNN
F 3 "~" H 7615 2485 50  0001 C CNN
F 4 "16V Ceramic" H 7615 2485 50  0001 C CNN "Description"
	1    7615 2485
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 624240EB
P 6895 2650
F 0 "TP4" H 6965 2850 50  0000 R CNN
F 1 "TestPoint" H 6953 2677 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 7095 2650 50  0001 C CNN
F 3 "~" H 7095 2650 50  0001 C CNN
	1    6895 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR051
U 1 1 624348E4
P 7495 1490
F 0 "#PWR051" H 7495 1340 50  0001 C CNN
F 1 "+VSW" H 7510 1663 50  0000 C CNN
F 2 "" H 7495 1490 50  0001 C CNN
F 3 "" H 7495 1490 50  0001 C CNN
	1    7495 1490
	1    0    0    -1  
$EndComp
Wire Wire Line
	7495 1490 7495 1565
Wire Wire Line
	7495 1565 7365 1565
Wire Wire Line
	7065 1565 7065 1645
Wire Wire Line
	7365 1645 7365 1565
Connection ~ 7365 1565
Wire Wire Line
	7365 1565 7265 1565
Connection ~ 7265 1565
Wire Wire Line
	7265 1565 7165 1565
Wire Wire Line
	7165 1645 7165 1565
Connection ~ 7165 1565
Wire Wire Line
	7165 1565 7065 1565
Wire Wire Line
	7265 1565 7265 1645
Wire Wire Line
	6965 1645 6965 1565
Wire Wire Line
	6965 1565 6865 1565
Wire Wire Line
	6665 1645 6665 1565
Connection ~ 6665 1565
Wire Wire Line
	6765 1645 6765 1565
Connection ~ 6765 1565
Wire Wire Line
	6765 1565 6665 1565
Wire Wire Line
	6865 1645 6865 1565
Connection ~ 6865 1565
Wire Wire Line
	6865 1565 6765 1565
$Comp
L Device:C_Small C?
U 1 1 624A049D
P 7475 2485
AR Path="/624A049D" Ref="C?"  Part="1" 
AR Path="/6229DCDC/624A049D" Ref="C?"  Part="1" 
AR Path="/630E7112/624A049D" Ref="C31"  Part="1" 
F 0 "C31" H 7495 2550 50  0000 L CNN
F 1 "100nF" H 7495 2420 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7475 2485 50  0001 C CNN
F 3 "~" H 7475 2485 50  0001 C CNN
F 4 "16V Ceramic" H 7475 2485 50  0001 C CNN "Description"
	1    7475 2485
	-1   0    0    -1  
$EndComp
NoConn ~ 7365 2295
$Comp
L Device:R_Small R?
U 1 1 624C183A
P 6485 2215
AR Path="/624C183A" Ref="R?"  Part="1" 
AR Path="/6229DCDC/624C183A" Ref="R?"  Part="1" 
AR Path="/630E7112/624C183A" Ref="R11"  Part="1" 
F 0 "R11" H 6544 2261 50  0000 L CNN
F 1 "10K" H 6544 2170 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6485 2215 50  0001 C CNN
F 3 "~" H 6485 2215 50  0001 C CNN
	1    6485 2215
	-1   0    0    1   
$EndComp
$Comp
L Pauls_Symbol_Library:+3.3V #PWR053
U 1 1 624C2BB3
P 6485 2080
F 0 "#PWR053" H 6485 1930 50  0001 C CNN
F 1 "+3.3V" H 6500 2253 50  0000 C CNN
F 2 "" H 6485 2080 50  0001 C CNN
F 3 "" H 6485 2080 50  0001 C CNN
	1    6485 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	6485 2350 6665 2350
Wire Wire Line
	6665 2350 6665 2295
Wire Wire Line
	6865 2295 6865 2360
Wire Wire Line
	6865 2360 6765 2360
Wire Wire Line
	6765 2295 6765 2360
Connection ~ 6765 2360
Wire Wire Line
	6765 2360 6765 2415
$Comp
L power:GND #PWR056
U 1 1 624FF4D4
P 6765 2415
F 0 "#PWR056" H 6765 2165 50  0001 C CNN
F 1 "GND" H 6675 2300 50  0000 C CNN
F 2 "" H 6765 2415 50  0001 C CNN
F 3 "" H 6765 2415 50  0001 C CNN
	1    6765 2415
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 624FFE1E
P 7475 2640
F 0 "#PWR057" H 7475 2390 50  0001 C CNN
F 1 "GND" H 7490 2490 50  0000 C CNN
F 2 "" H 7475 2640 50  0001 C CNN
F 3 "" H 7475 2640 50  0001 C CNN
	1    7475 2640
	1    0    0    -1  
$EndComp
Wire Wire Line
	7065 2295 7065 2790
Wire Wire Line
	6965 2650 6895 2650
Wire Wire Line
	6965 2295 6965 2650
Wire Wire Line
	7265 2295 7265 2345
Wire Wire Line
	7265 2345 7475 2345
Wire Wire Line
	7615 2345 7615 2385
Wire Wire Line
	7475 2385 7475 2345
Connection ~ 7475 2345
Wire Wire Line
	7475 2345 7615 2345
Wire Wire Line
	7165 2640 7475 2640
Wire Wire Line
	7615 2640 7615 2585
Wire Wire Line
	7165 2295 7165 2640
Wire Wire Line
	7475 2585 7475 2640
Connection ~ 7475 2640
Wire Wire Line
	7475 2640 7615 2640
Wire Wire Line
	2950 1790 2890 1790
$Comp
L power:+24V #PWR052
U 1 1 625AE7EE
P 2485 1755
F 0 "#PWR052" H 2485 1605 50  0001 C CNN
F 1 "+24V" H 2500 1928 50  0000 C CNN
F 2 "" H 2485 1755 50  0001 C CNN
F 3 "" H 2485 1755 50  0001 C CNN
	1    2485 1755
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1990 2890 1990
Wire Wire Line
	2890 1990 2890 1790
Connection ~ 2890 1790
$Comp
L Device:D_Schottky_Small D1
U 1 1 625B020F
P 4210 1565
F 0 "D1" H 4210 1358 50  0000 C CNN
F 1 "SS510" H 4210 1449 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" V 4210 1565 50  0001 C CNN
F 3 "~" V 4210 1565 50  0001 C CNN
	1    4210 1565
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 625B1542
P 2735 1990
AR Path="/625B1542" Ref="C?"  Part="1" 
AR Path="/6229DCDC/625B1542" Ref="C?"  Part="1" 
AR Path="/630E7112/625B1542" Ref="C27"  Part="1" 
F 0 "C27" H 2585 2070 50  0000 L CNN
F 1 "100nF/50V" H 2310 1925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2735 1990 50  0001 C CNN
F 3 "~" H 2735 1990 50  0001 C CNN
F 4 "16V Ceramic" H 2735 1990 50  0001 C CNN "Description"
	1    2735 1990
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2485 1790 2485 1880
Wire Wire Line
	2485 1790 2735 1790
Wire Wire Line
	2485 1790 2485 1755
Connection ~ 2485 1790
Wire Wire Line
	2735 1890 2735 1790
Connection ~ 2735 1790
Wire Wire Line
	2735 1790 2890 1790
Wire Wire Line
	2735 2090 2735 2205
Wire Wire Line
	2735 2205 2485 2205
Wire Wire Line
	2485 2205 2485 2080
$Comp
L Device:L_Small L1
U 1 1 625B88B1
P 3465 1565
F 0 "L1" V 3284 1565 50  0000 C CNN
F 1 "47uH/5A" V 3375 1565 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:L_47uH_4A_11mmx10mm_H4.8mm" H 3465 1565 50  0001 C CNN
F 3 "~" H 3465 1565 50  0001 C CNN
	1    3465 1565
	0    1    1    0   
$EndComp
Wire Wire Line
	2890 1790 2890 1565
Wire Wire Line
	2890 1565 3365 1565
Wire Wire Line
	3565 1565 4055 1565
Wire Wire Line
	4055 1565 4055 1790
Wire Wire Line
	4055 1790 3950 1790
Wire Wire Line
	4055 1565 4110 1565
Connection ~ 4055 1565
$Comp
L Device:CP_Small C29
U 1 1 625BE047
P 5470 2025
F 0 "C29" H 5470 2115 50  0000 L CNN
F 1 "1000uF/63V" H 5475 1715 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 5470 2025 50  0001 C CNN
F 3 "~" H 5470 2025 50  0001 C CNN
	1    5470 2025
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C30
U 1 1 625BECC4
P 5610 2025
F 0 "C30" H 5630 2110 50  0000 L CNN
F 1 "1000uF/63V" H 5640 1935 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 5610 2025 50  0001 C CNN
F 3 "~" H 5610 2025 50  0001 C CNN
	1    5610 2025
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 625C130E
P 4440 1785
AR Path="/625C130E" Ref="R?"  Part="1" 
AR Path="/6229DCDC/625C130E" Ref="R?"  Part="1" 
AR Path="/630E7112/625C130E" Ref="R9"  Part="1" 
F 0 "R9" H 4499 1831 50  0000 L CNN
F 1 "10K" H 4499 1740 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4440 1785 50  0001 C CNN
F 3 "~" H 4440 1785 50  0001 C CNN
	1    4440 1785
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 625C2227
P 4440 2160
AR Path="/625C2227" Ref="R?"  Part="1" 
AR Path="/6229DCDC/625C2227" Ref="R?"  Part="1" 
AR Path="/630E7112/625C2227" Ref="R10"  Part="1" 
F 0 "R10" H 4499 2206 50  0000 L CNN
F 1 "10K" H 4499 2115 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4440 2160 50  0001 C CNN
F 3 "~" H 4440 2160 50  0001 C CNN
	1    4440 2160
	-1   0    0    1   
$EndComp
Wire Wire Line
	4310 1565 4440 1565
Wire Wire Line
	4440 1565 4440 1685
Wire Wire Line
	4440 1885 4440 1990
Wire Wire Line
	3950 1990 4440 1990
Connection ~ 4440 1990
Wire Wire Line
	3950 2290 4440 2290
Wire Wire Line
	4440 2290 4440 2260
Wire Wire Line
	4440 1990 4440 2060
$Comp
L Device:R_POT RV1
U 1 1 625CB5A3
P 4685 1990
F 0 "RV1" H 4615 1944 50  0000 R CNN
F 1 "100K" H 4615 2035 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" H 4685 1990 50  0001 C CNN
F 3 "~" H 4685 1990 50  0001 C CNN
	1    4685 1990
	-1   0    0    1   
$EndComp
Wire Wire Line
	4535 1990 4440 1990
Wire Wire Line
	4440 1565 4685 1565
Wire Wire Line
	4685 1565 4685 1840
Connection ~ 4440 1565
Wire Wire Line
	4685 2140 4685 2290
Wire Wire Line
	4685 2290 4440 2290
Connection ~ 4440 2290
$Comp
L power:GND #PWR055
U 1 1 625D098A
P 4440 2290
F 0 "#PWR055" H 4440 2040 50  0001 C CNN
F 1 "GND" H 4350 2175 50  0000 C CNN
F 2 "" H 4440 2290 50  0001 C CNN
F 3 "" H 4440 2290 50  0001 C CNN
	1    4440 2290
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 625D1069
P 1700 3035
F 0 "#PWR059" H 1700 2785 50  0001 C CNN
F 1 "GND" H 1710 2890 50  0000 C CNN
F 2 "" H 1700 3035 50  0001 C CNN
F 3 "" H 1700 3035 50  0001 C CNN
	1    1700 3035
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 625D1B66
P 5315 2025
AR Path="/625D1B66" Ref="C?"  Part="1" 
AR Path="/6229DCDC/625D1B66" Ref="C?"  Part="1" 
AR Path="/630E7112/625D1B66" Ref="C28"  Part="1" 
F 0 "C28" H 5335 2090 50  0000 L CNN
F 1 "100nF/100V" H 5320 1890 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5315 2025 50  0001 C CNN
F 3 "~" H 5315 2025 50  0001 C CNN
F 4 "16V Ceramic" H 5315 2025 50  0001 C CNN "Description"
	1    5315 2025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5315 1925 5315 1790
Wire Wire Line
	5315 1790 5470 1790
Wire Wire Line
	4685 1565 5315 1565
Wire Wire Line
	5315 1565 5315 1790
Connection ~ 4685 1565
Connection ~ 5315 1790
Wire Wire Line
	5315 2125 5315 2190
Wire Wire Line
	5315 2190 5470 2190
Wire Wire Line
	5610 2125 5610 2190
Wire Wire Line
	5470 2125 5470 2190
Connection ~ 5470 2190
Wire Wire Line
	5470 2190 5610 2190
$Comp
L power:GND #PWR054
U 1 1 625DCB51
P 5470 2190
F 0 "#PWR054" H 5470 1940 50  0001 C CNN
F 1 "GND" H 5350 2110 50  0000 C CNN
F 2 "" H 5470 2190 50  0001 C CNN
F 3 "" H 5470 2190 50  0001 C CNN
	1    5470 2190
	1    0    0    -1  
$EndComp
Wire Wire Line
	5470 1925 5470 1790
Connection ~ 5470 1790
Wire Wire Line
	5470 1790 5610 1790
Wire Wire Line
	5610 1925 5610 1790
Connection ~ 5315 1565
Wire Wire Line
	5315 1565 6665 1565
Text Notes 7690 1580 0    50   ~ 0
30V to 60V To \nPH MOSFET triggers
Text Notes 1675 1475 0    50   ~ 0
24V @ 5A? (needs measuring)\nWhat is the total current  drawn?
Text Notes 6885 2990 0    50   ~ 0
Printhead Current Measurement\nup to 1.5MHz
$Comp
L Regulator_Switching:MC34063AD U10
U 1 1 62693D8A
P 3480 4315
F 0 "U10" H 3585 3865 50  0000 C CNN
F 1 "MC34063AD" H 3195 3865 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3530 3865 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 3980 4215 50  0001 C CNN
	1    3480 4315
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C36
U 1 1 62693D90
P 2485 4270
F 0 "C36" H 2325 4375 50  0000 L CNN
F 1 "100uF/63V" H 2045 4195 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2485 4270 50  0001 C CNN
F 3 "~" H 2485 4270 50  0001 C CNN
	1    2485 4270
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62693D96
P 3475 3895
AR Path="/62693D96" Ref="R?"  Part="1" 
AR Path="/6229DCDC/62693D96" Ref="R?"  Part="1" 
AR Path="/630E7112/62693D96" Ref="R12"  Part="1" 
F 0 "R12" V 3550 3845 50  0000 L CNN
F 1 "R0.33" V 3395 3780 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" H 3475 3895 50  0001 C CNN
F 3 "~" H 3475 3895 50  0001 C CNN
	1    3475 3895
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3375 3895 2975 3895
Wire Wire Line
	2975 3895 2975 4115
Wire Wire Line
	2975 4115 3080 4115
Wire Wire Line
	3575 3895 3940 3895
Wire Wire Line
	3940 3895 3940 4115
Wire Wire Line
	3940 4115 3880 4115
Wire Wire Line
	3940 4115 3940 4215
Wire Wire Line
	3940 4215 3880 4215
Connection ~ 3940 4115
Wire Wire Line
	3940 4215 3940 4315
Wire Wire Line
	3940 4315 3880 4315
Connection ~ 3940 4215
$Comp
L Device:D_Schottky_Small D3
U 1 1 62693DA8
P 4080 4655
F 0 "D3" V 4045 4705 50  0000 L CNN
F 1 "SS34" V 4160 4675 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" V 4080 4655 50  0001 C CNN
F 3 "~" V 4080 4655 50  0001 C CNN
	1    4080 4655
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62693DAF
P 2930 4680
AR Path="/62693DAF" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62693DAF" Ref="C?"  Part="1" 
AR Path="/630E7112/62693DAF" Ref="C40"  Part="1" 
F 0 "C40" H 2950 4745 50  0000 L CNN
F 1 "470pF" H 2950 4615 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2930 4680 50  0001 C CNN
F 3 "~" H 2930 4680 50  0001 C CNN
F 4 "16V Ceramic" H 2930 4680 50  0001 C CNN "Description"
	1    2930 4680
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2930 4580 2930 4515
Wire Wire Line
	2930 4515 3080 4515
Wire Wire Line
	2930 4780 2930 4840
$Comp
L power:GND #PWR067
U 1 1 62693DB8
P 2930 4840
F 0 "#PWR067" H 2930 4590 50  0001 C CNN
F 1 "GND" H 2940 4695 50  0000 C CNN
F 2 "" H 2930 4840 50  0001 C CNN
F 3 "" H 2930 4840 50  0001 C CNN
	1    2930 4840
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 4115 2845 4115
Connection ~ 2975 4115
$Comp
L power:GND #PWR064
U 1 1 62693DC1
P 2845 4395
F 0 "#PWR064" H 2845 4145 50  0001 C CNN
F 1 "GND" H 2750 4280 50  0000 C CNN
F 2 "" H 2845 4395 50  0001 C CNN
F 3 "" H 2845 4395 50  0001 C CNN
	1    2845 4395
	1    0    0    -1  
$EndComp
Wire Wire Line
	2845 4370 2845 4385
$Comp
L power:GND #PWR068
U 1 1 62693DC8
P 3480 4855
F 0 "#PWR068" H 3480 4605 50  0001 C CNN
F 1 "GND" H 3490 4710 50  0000 C CNN
F 2 "" H 3480 4855 50  0001 C CNN
F 3 "" H 3480 4855 50  0001 C CNN
	1    3480 4855
	1    0    0    -1  
$EndComp
Wire Wire Line
	3480 4815 3480 4855
$Comp
L Device:L_Small L2
U 1 1 62693DCF
P 4255 4515
F 0 "L2" V 4074 4515 50  0000 C CNN
F 1 "220uH/2.1A" V 4165 4515 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:L_220uH_2A_15x15mm_H8mm" H 4255 4515 50  0001 C CNN
F 3 "~" H 4255 4515 50  0001 C CNN
	1    4255 4515
	0    1    1    0   
$EndComp
Wire Wire Line
	3880 4515 4080 4515
$Comp
L Device:R_Small R?
U 1 1 62693DD6
P 4505 4720
AR Path="/62693DD6" Ref="R?"  Part="1" 
AR Path="/6229DCDC/62693DD6" Ref="R?"  Part="1" 
AR Path="/630E7112/62693DD6" Ref="R13"  Part="1" 
F 0 "R13" H 4340 4825 50  0000 L CNN
F 1 "3K" H 4345 4710 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4505 4720 50  0001 C CNN
F 3 "~" H 4505 4720 50  0001 C CNN
	1    4505 4720
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62693DDC
P 4505 4965
AR Path="/62693DDC" Ref="R?"  Part="1" 
AR Path="/6229DCDC/62693DDC" Ref="R?"  Part="1" 
AR Path="/630E7112/62693DDC" Ref="R14"  Part="1" 
F 0 "R14" H 4325 5010 50  0000 L CNN
F 1 "1.8K" H 4290 4895 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4505 4965 50  0001 C CNN
F 3 "~" H 4505 4965 50  0001 C CNN
	1    4505 4965
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR075
U 1 1 62693DE2
P 3080 6190
F 0 "#PWR075" H 3080 5940 50  0001 C CNN
F 1 "GND" H 3090 6045 50  0000 C CNN
F 2 "" H 3080 6190 50  0001 C CNN
F 3 "" H 3080 6190 50  0001 C CNN
	1    3080 6190
	1    0    0    -1  
$EndComp
Wire Wire Line
	4355 4515 4505 4515
Wire Wire Line
	4505 4515 4505 4620
Wire Wire Line
	4505 4515 4805 4515
Connection ~ 4505 4515
Wire Wire Line
	4505 4820 4505 4845
Wire Wire Line
	4505 5065 4505 5085
$Comp
L power:GND #PWR066
U 1 1 62693DEE
P 4080 4785
F 0 "#PWR066" H 4080 4535 50  0001 C CNN
F 1 "GND" H 4090 4640 50  0000 C CNN
F 2 "" H 4080 4785 50  0001 C CNN
F 3 "" H 4080 4785 50  0001 C CNN
	1    4080 4785
	1    0    0    -1  
$EndComp
Wire Wire Line
	4080 4555 4080 4515
Connection ~ 4080 4515
Wire Wire Line
	4080 4515 4155 4515
Wire Wire Line
	4080 4785 4080 4755
Wire Wire Line
	4505 4845 4275 4845
Wire Wire Line
	4275 4845 4275 5010
Wire Wire Line
	4275 5010 3940 5010
Wire Wire Line
	3940 5010 3940 4615
Wire Wire Line
	3940 4615 3880 4615
Connection ~ 4505 4845
Wire Wire Line
	4505 4845 4505 4865
Wire Wire Line
	4950 4515 4950 4640
Wire Wire Line
	4505 5085 4950 5085
Wire Wire Line
	4950 5085 4950 4890
Connection ~ 4505 5085
Wire Wire Line
	4505 5085 4505 5105
$Comp
L Device:C_Small C?
U 1 1 62693E13
P 4805 4740
AR Path="/62693E13" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62693E13" Ref="C?"  Part="1" 
AR Path="/630E7112/62693E13" Ref="C41"  Part="1" 
F 0 "C41" H 4825 4805 50  0000 L CNN
F 1 "100nF" H 4825 4670 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4805 4740 50  0001 C CNN
F 3 "~" H 4805 4740 50  0001 C CNN
F 4 "16V Ceramic" H 4805 4740 50  0001 C CNN "Description"
	1    4805 4740
	-1   0    0    -1  
$EndComp
Connection ~ 4805 4515
Wire Wire Line
	4805 4515 4950 4515
Wire Wire Line
	4805 4890 4950 4890
Connection ~ 4950 4890
Wire Wire Line
	4950 4890 4950 4840
Wire Wire Line
	4950 4515 5105 4515
Wire Wire Line
	5105 4515 5105 4450
Connection ~ 4950 4515
Text Notes 2720 3580 0    50   ~ 0
24V to 3.3V Buck converter
Wire Wire Line
	4805 4890 4805 4840
Wire Wire Line
	4805 4515 4805 4640
Text Notes 2700 3690 0    50   ~ 0
Drives the ESP32 + Sensors
Wire Wire Line
	2845 4170 2845 4115
Connection ~ 2845 4115
Wire Wire Line
	2845 4115 2845 4070
$Comp
L Pauls_Symbol_Library:+3.3V #PWR065
U 1 1 626A88B2
P 5105 4450
F 0 "#PWR065" H 5105 4300 50  0001 C CNN
F 1 "+3.3V" H 5120 4623 50  0000 C CNN
F 2 "" H 5105 4450 50  0001 C CNN
F 3 "" H 5105 4450 50  0001 C CNN
	1    5105 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 626CEA46
P 5315 1565
F 0 "TP3" H 5265 1770 50  0000 L CNN
F 1 "TestPoint" H 5373 1592 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 5515 1565 50  0001 C CNN
F 3 "~" H 5515 1565 50  0001 C CNN
	1    5315 1565
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 626CF6BB
P 4805 4515
F 0 "TP6" H 4750 4725 50  0000 L CNN
F 1 "TestPoint" H 4863 4542 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 5005 4515 50  0001 C CNN
F 3 "~" H 5005 4515 50  0001 C CNN
	1    4805 4515
	1    0    0    -1  
$EndComp
Wire Wire Line
	6485 2115 6485 2080
Wire Wire Line
	6485 2315 6485 2350
Text Notes 4160 2740 0    50   ~ 0
Start with the Pot,\nbut later can add in \nfixed voltage resistors
$Comp
L power:+24V #PWR062
U 1 1 62D54240
P 2845 4070
F 0 "#PWR062" H 2845 3920 50  0001 C CNN
F 1 "+24V" H 2775 4215 50  0000 C CNN
F 2 "" H 2845 4070 50  0001 C CNN
F 3 "" H 2845 4070 50  0001 C CNN
	1    2845 4070
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62D55E6F
P 2845 4270
AR Path="/62D55E6F" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62D55E6F" Ref="C?"  Part="1" 
AR Path="/630E7112/62D55E6F" Ref="C38"  Part="1" 
F 0 "C38" H 2685 4345 50  0000 L CNN
F 1 "100nF/50V" H 2410 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2845 4270 50  0001 C CNN
F 3 "~" H 2845 4270 50  0001 C CNN
F 4 "16V Ceramic" H 2845 4270 50  0001 C CNN "Description"
	1    2845 4270
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62D56809
P 2690 4270
AR Path="/62D56809" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62D56809" Ref="C?"  Part="1" 
AR Path="/630E7112/62D56809" Ref="C37"  Part="1" 
F 0 "C37" H 2685 4345 50  0000 L CNN
F 1 "22uF/50V" H 2535 4485 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2690 4270 50  0001 C CNN
F 3 "~" H 2690 4270 50  0001 C CNN
F 4 "16V Ceramic" H 2690 4270 50  0001 C CNN "Description"
	1    2690 4270
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2845 4115 2690 4115
Wire Wire Line
	2485 4115 2485 4170
Wire Wire Line
	2690 4170 2690 4115
Connection ~ 2690 4115
Wire Wire Line
	2690 4115 2485 4115
Wire Wire Line
	2845 4385 2690 4385
Wire Wire Line
	2485 4385 2485 4370
Connection ~ 2845 4385
Wire Wire Line
	2845 4385 2845 4395
Wire Wire Line
	2690 4370 2690 4385
Connection ~ 2690 4385
Wire Wire Line
	2690 4385 2485 4385
$Comp
L Device:C_Small C?
U 1 1 62D6D8E8
P 4950 4740
AR Path="/62D6D8E8" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62D6D8E8" Ref="C?"  Part="1" 
AR Path="/630E7112/62D6D8E8" Ref="C42"  Part="1" 
F 0 "C42" H 4785 4810 50  0000 L CNN
F 1 "22uF" H 4750 4675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4950 4740 50  0001 C CNN
F 3 "~" H 4950 4740 50  0001 C CNN
F 4 "16V Ceramic" H 4950 4740 50  0001 C CNN "Description"
	1    4950 4740
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 62D6E992
P 6760 2790
F 0 "TP5" H 6955 2925 50  0000 R CNN
F 1 "TestPoint" H 6818 2817 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 6960 2790 50  0001 C CNN
F 3 "~" H 6960 2790 50  0001 C CNN
	1    6760 2790
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6760 2790 7065 2790
$Comp
L Analog_ADC:ADC121C021CIMM U11
U 1 1 62DFF194
P 7325 4750
F 0 "U11" H 7060 5010 50  0000 C CNN
F 1 "ADC121C021CIMM" H 7680 4490 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8125 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/adc121c021.pdf" H 7325 4850 50  0001 C CNN
	1    7325 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 4750 6835 4750
Wire Wire Line
	6835 4750 6835 4850
Wire Wire Line
	6835 5105 7325 5105
Wire Wire Line
	7325 5105 7325 5050
$Comp
L power:GND #PWR070
U 1 1 62E06BDE
P 7325 5105
F 0 "#PWR070" H 7325 4855 50  0001 C CNN
F 1 "GND" H 7335 4960 50  0000 C CNN
F 2 "" H 7325 5105 50  0001 C CNN
F 3 "" H 7325 5105 50  0001 C CNN
	1    7325 5105
	1    0    0    -1  
$EndComp
Connection ~ 7325 5105
Wire Wire Line
	6925 4850 6835 4850
Connection ~ 6835 4850
Wire Wire Line
	6835 4850 6835 5105
$Comp
L Pauls_Symbol_Library:+3.3V #PWR060
U 1 1 62E0D5BC
P 7325 3875
F 0 "#PWR060" H 7325 3725 50  0001 C CNN
F 1 "+3.3V" H 7210 4020 50  0000 C CNN
F 2 "" H 7325 3875 50  0001 C CNN
F 3 "" H 7325 3875 50  0001 C CNN
	1    7325 3875
	1    0    0    -1  
$EndComp
NoConn ~ 7725 4850
Text GLabel 7785 4750 2    50   Input ~ 0
SDA
Text GLabel 7785 4650 2    50   Input ~ 0
SCL
Wire Wire Line
	7725 4750 7785 4750
Wire Wire Line
	7725 4650 7785 4650
Text Notes 6590 5480 0    50   ~ 0
i2C based i2C ADC\n188ksps, 12b sampling
Wire Notes Line
	8230 5570 6510 5570
Text Notes 6610 3600 0    50   ~ 0
Analogue to Digital Conversion
Text Notes 6520 5790 0    50   ~ 0
Note: SPI based ADC IC's are in short supply, \nor very expensive due to silicon shortages
$Comp
L Pauls_Symbol_Library:XL6019 VR1
U 1 1 62F09A94
P 3450 1990
F 0 "VR1" H 3675 2340 50  0000 C CNN
F 1 "XL6019" H 3375 1830 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:DPAK170P1435X465-6N" H 3450 1990 50  0001 L BNN
F 3 "" H 3450 1990 50  0001 L BNN
	1    3450 1990
	1    0    0    -1  
$EndComp
Text Notes 2905 1255 0    50   ~ 0
24V Boost to 30V-50V @ 1.5A Converter
Wire Wire Line
	7325 4370 7325 4310
Wire Wire Line
	7325 4450 7325 4370
Connection ~ 7325 4370
Wire Wire Line
	7540 4370 7455 4370
Wire Wire Line
	7455 4370 7325 4370
Connection ~ 7455 4370
Wire Wire Line
	7455 4230 7455 4370
Wire Wire Line
	7540 4230 7455 4230
Connection ~ 7925 4370
$Comp
L power:GND #PWR063
U 1 1 62E5C1E1
P 7925 4370
F 0 "#PWR063" H 7925 4120 50  0001 C CNN
F 1 "GND" H 7935 4225 50  0000 C CNN
F 2 "" H 7925 4370 50  0001 C CNN
F 3 "" H 7925 4370 50  0001 C CNN
	1    7925 4370
	1    0    0    -1  
$EndComp
Wire Wire Line
	7925 4230 7740 4230
Wire Wire Line
	7925 4370 7925 4230
Wire Wire Line
	7740 4370 7925 4370
$Comp
L Device:C_Small C?
U 1 1 62E3FB85
P 7640 4370
AR Path="/62E3FB85" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62E3FB85" Ref="C?"  Part="1" 
AR Path="/630E7112/62E3FB85" Ref="C39"  Part="1" 
F 0 "C39" V 7695 4195 50  0000 L CNN
F 1 "100nF" V 7690 4410 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7640 4370 50  0001 C CNN
F 3 "~" H 7640 4370 50  0001 C CNN
F 4 "16V Ceramic" H 7640 4370 50  0001 C CNN "Description"
	1    7640 4370
	0    1    -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62E3E885
P 7640 4230
AR Path="/62E3E885" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62E3E885" Ref="C?"  Part="1" 
AR Path="/630E7112/62E3E885" Ref="C35"  Part="1" 
F 0 "C35" V 7695 4055 50  0000 L CNN
F 1 "4.7uF" V 7690 4270 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7640 4230 50  0001 C CNN
F 3 "~" H 7640 4230 50  0001 C CNN
F 4 "16V Ceramic" H 7640 4230 50  0001 C CNN "Description"
	1    7640 4230
	0    1    -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 62F393D1
P 7325 4210
F 0 "FB1" H 7610 4195 50  0000 R CNN
F 1 "120uH" H 7600 4315 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7255 4210 50  0001 C CNN
F 3 "~" H 7325 4210 50  0001 C CNN
	1    7325 4210
	-1   0    0    1   
$EndComp
Connection ~ 6800 4015
$Comp
L power:GND #PWR061
U 1 1 62F3D096
P 6800 4015
F 0 "#PWR061" H 6800 3765 50  0001 C CNN
F 1 "GND" H 6715 3885 50  0000 C CNN
F 2 "" H 6800 4015 50  0001 C CNN
F 3 "" H 6800 4015 50  0001 C CNN
	1    6800 4015
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 3875 6985 3875
Wire Wire Line
	6800 4015 6800 3875
Wire Wire Line
	6985 4015 6800 4015
$Comp
L Device:C_Small C?
U 1 1 62F3D0A0
P 7085 4015
AR Path="/62F3D0A0" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62F3D0A0" Ref="C?"  Part="1" 
AR Path="/630E7112/62F3D0A0" Ref="C34"  Part="1" 
F 0 "C34" V 7140 3840 50  0000 L CNN
F 1 "100nF" V 7135 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7085 4015 50  0001 C CNN
F 3 "~" H 7085 4015 50  0001 C CNN
F 4 "16V Ceramic" H 7085 4015 50  0001 C CNN "Description"
	1    7085 4015
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 62F3D0A7
P 7085 3875
AR Path="/62F3D0A7" Ref="C?"  Part="1" 
AR Path="/6229DCDC/62F3D0A7" Ref="C?"  Part="1" 
AR Path="/630E7112/62F3D0A7" Ref="C33"  Part="1" 
F 0 "C33" V 7140 3700 50  0000 L CNN
F 1 "10uF" V 7135 3915 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7085 3875 50  0001 C CNN
F 3 "~" H 7085 3875 50  0001 C CNN
F 4 "16V Ceramic" H 7085 3875 50  0001 C CNN "Description"
	1    7085 3875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7325 4110 7325 4015
Wire Wire Line
	7325 3875 7185 3875
Wire Wire Line
	7185 4015 7325 4015
Connection ~ 7325 4015
Wire Wire Line
	7325 4015 7325 3875
Connection ~ 7325 3875
Wire Notes Line
	6510 3370 8250 3370
Wire Notes Line
	8250 3370 8250 5570
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 62FABA05
P 1425 2905
F 0 "J3" H 1410 2695 50  0000 C CNN
F 1 "24V Power In" H 1500 3025 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1425 2905 50  0001 C CNN
F 3 "~" H 1425 2905 50  0001 C CNN
	1    1425 2905
	-1   0    0    1   
$EndComp
$Comp
L power:+24V #PWR058
U 1 1 62FAC953
P 1700 2690
F 0 "#PWR058" H 1700 2540 50  0001 C CNN
F 1 "+24V" H 1715 2863 50  0000 C CNN
F 2 "" H 1700 2690 50  0001 C CNN
F 3 "" H 1700 2690 50  0001 C CNN
	1    1700 2690
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 2805 1700 2805
Wire Wire Line
	1625 2905 1700 2905
$Comp
L Device:C_Small C44
U 1 1 62FEEA8D
P 6715 4835
F 0 "C44" H 6515 4905 50  0000 L CNN
F 1 "100nF-DNF" H 6270 4690 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6715 4835 50  0001 C CNN
F 3 "~" H 6715 4835 50  0001 C CNN
	1    6715 4835
	1    0    0    -1  
$EndComp
Text Notes 5945 4945 0    50   ~ 0
filtering cap\nif needed. Place \nclose to ADC
$Comp
L power:GND #PWR069
U 1 1 62FF80A7
P 6715 4975
F 0 "#PWR069" H 6715 4725 50  0001 C CNN
F 1 "GND" H 6730 4825 50  0000 C CNN
F 2 "" H 6715 4975 50  0001 C CNN
F 3 "" H 6715 4975 50  0001 C CNN
	1    6715 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6715 4935 6715 4975
Wire Wire Line
	6690 3290 6405 3290
Wire Wire Line
	6405 3290 6405 3795
Wire Wire Line
	6715 4735 6715 4650
Wire Wire Line
	6715 4650 6925 4650
Wire Notes Line
	6500 5570 5890 5570
Wire Notes Line
	5890 5570 5890 3370
Wire Notes Line
	5890 3370 6355 3370
Wire Notes Line
	6505 3370 6445 3370
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 630B6050
P 6205 3895
F 0 "J4" H 6320 3735 50  0000 R CNN
F 1 "ADC Select1" H 6395 4110 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6205 3895 50  0001 C CNN
F 3 "~" H 6205 3895 50  0001 C CNN
	1    6205 3895
	1    0    0    -1  
$EndComp
Wire Wire Line
	6405 3895 6715 3895
Wire Wire Line
	6715 3895 6715 4650
Connection ~ 6715 4650
Text GLabel 6400 4270 0    50   Input ~ 0
NOZ7SR
Wire Wire Line
	6400 4270 6465 4270
Wire Wire Line
	6465 4270 6465 3995
Wire Wire Line
	6465 3995 6405 3995
Wire Wire Line
	6760 2790 6690 2790
Wire Wire Line
	6690 2790 6690 3290
Connection ~ 6760 2790
$Comp
L Device:R_Small R?
U 1 1 62568AA5
P 3080 5800
AR Path="/62568AA5" Ref="R?"  Part="1" 
AR Path="/630E7112/62568AA5" Ref="R16"  Part="1" 
F 0 "R16" H 3139 5846 50  0000 L CNN
F 1 "60K" H 3139 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3080 5800 50  0001 C CNN
F 3 "~" H 3080 5800 50  0001 C CNN
	1    3080 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 62568AAB
P 3080 6045
AR Path="/62568AAB" Ref="D?"  Part="1" 
AR Path="/630E7112/62568AAB" Ref="D5"  Part="1" 
F 0 "D5" V 3126 5977 50  0000 R CNN
F 1 "Green" V 3035 5977 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3080 6045 50  0001 C CNN
F 3 "~" V 3080 6045 50  0001 C CNN
	1    3080 6045
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3080 6190 3080 6145
Wire Wire Line
	3080 5945 3080 5900
Wire Wire Line
	3080 5700 3080 5655
$Comp
L power:+24V #PWR071
U 1 1 6258DB73
P 3535 5645
F 0 "#PWR071" H 3535 5495 50  0001 C CNN
F 1 "+24V" H 3465 5790 50  0000 C CNN
F 2 "" H 3535 5645 50  0001 C CNN
F 3 "" H 3535 5645 50  0001 C CNN
	1    3535 5645
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR074
U 1 1 6258FF2B
P 3535 6180
F 0 "#PWR074" H 3535 5930 50  0001 C CNN
F 1 "GND" H 3545 6035 50  0000 C CNN
F 2 "" H 3535 6180 50  0001 C CNN
F 3 "" H 3535 6180 50  0001 C CNN
	1    3535 6180
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6258FF31
P 3535 5790
AR Path="/6258FF31" Ref="R?"  Part="1" 
AR Path="/630E7112/6258FF31" Ref="R15"  Part="1" 
F 0 "R15" H 3594 5836 50  0000 L CNN
F 1 "25K" H 3594 5745 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3535 5790 50  0001 C CNN
F 3 "~" H 3535 5790 50  0001 C CNN
	1    3535 5790
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6258FF37
P 3535 6035
AR Path="/6258FF37" Ref="D?"  Part="1" 
AR Path="/630E7112/6258FF37" Ref="D4"  Part="1" 
F 0 "D4" V 3581 5967 50  0000 R CNN
F 1 "Green" V 3490 5967 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3535 6035 50  0001 C CNN
F 3 "~" V 3535 6035 50  0001 C CNN
	1    3535 6035
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3535 6180 3535 6135
Wire Wire Line
	3535 5935 3535 5890
Wire Wire Line
	3535 5690 3535 5645
$Comp
L power:GND #PWR076
U 1 1 6259A8FD
P 4035 6200
F 0 "#PWR076" H 4035 5950 50  0001 C CNN
F 1 "GND" H 4045 6055 50  0000 C CNN
F 2 "" H 4035 6200 50  0001 C CNN
F 3 "" H 4035 6200 50  0001 C CNN
	1    4035 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6259A903
P 4035 5810
AR Path="/6259A903" Ref="R?"  Part="1" 
AR Path="/630E7112/6259A903" Ref="R17"  Part="1" 
F 0 "R17" H 4094 5856 50  0000 L CNN
F 1 "2.7K" H 4094 5765 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4035 5810 50  0001 C CNN
F 3 "~" H 4035 5810 50  0001 C CNN
	1    4035 5810
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6259A909
P 4035 6055
AR Path="/6259A909" Ref="D?"  Part="1" 
AR Path="/630E7112/6259A909" Ref="D6"  Part="1" 
F 0 "D6" V 4081 5987 50  0000 R CNN
F 1 "Green" V 3990 5987 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4035 6055 50  0001 C CNN
F 3 "~" V 4035 6055 50  0001 C CNN
	1    4035 6055
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4035 6200 4035 6155
Wire Wire Line
	4035 5955 4035 5910
Wire Wire Line
	4035 5710 4035 5665
$Comp
L Pauls_Symbol_Library:+3.3V #PWR073
U 1 1 625A4552
P 4035 5665
F 0 "#PWR073" H 4035 5515 50  0001 C CNN
F 1 "+3.3V" H 4050 5838 50  0000 C CNN
F 2 "" H 4035 5665 50  0001 C CNN
F 3 "" H 4035 5665 50  0001 C CNN
	1    4035 5665
	1    0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR072
U 1 1 625A5B29
P 3080 5655
F 0 "#PWR072" H 3080 5505 50  0001 C CNN
F 1 "+VSW" H 3095 5828 50  0000 C CNN
F 2 "" H 3080 5655 50  0001 C CNN
F 3 "" H 3080 5655 50  0001 C CNN
	1    3080 5655
	1    0    0    -1  
$EndComp
Wire Wire Line
	2320 2080 2320 2205
Wire Wire Line
	2320 2205 2485 2205
Connection ~ 2485 2205
Wire Wire Line
	2320 1880 2320 1790
Wire Wire Line
	2320 1790 2485 1790
$Comp
L Device:CP_Small C26
U 1 1 6263DCD5
P 2485 1980
F 0 "C26" H 2490 2065 50  0000 L CNN
F 1 "100uF/63V" H 2540 1695 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2485 1980 50  0001 C CNN
F 3 "~" H 2485 1980 50  0001 C CNN
	1    2485 1980
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C25
U 1 1 6263F37D
P 2320 1980
F 0 "C25" H 2175 2080 50  0000 L CNN
F 1 "100uF/63V" H 1885 1885 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2320 1980 50  0001 C CNN
F 3 "~" H 2320 1980 50  0001 C CNN
	1    2320 1980
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D2
U 1 1 6269AC03
P 1800 2860
F 0 "D2" V 1754 2930 50  0000 L CNN
F 1 "1N4007" V 1845 2930 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" V 1800 2860 50  0001 C CNN
F 3 "~" V 1800 2860 50  0001 C CNN
	1    1800 2860
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2905 1700 2990
Wire Wire Line
	1800 2960 1800 2990
Wire Wire Line
	1800 2990 1700 2990
Connection ~ 1700 2990
Wire Wire Line
	1700 2990 1700 3035
Wire Wire Line
	1700 2690 1700 2730
Wire Wire Line
	1800 2760 1800 2730
Wire Wire Line
	1800 2730 1700 2730
Connection ~ 1700 2730
Wire Wire Line
	1700 2730 1700 2805
Text Notes 1280 2830 0    50   ~ 0
+
Text Notes 1280 2945 0    50   ~ 0
-
$Comp
L Device:CP_Small C43
U 1 1 6270A883
P 5200 4740
F 0 "C43" H 5270 4830 50  0000 L CNN
F 1 "100uF/63V" H 5225 4660 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5200 4740 50  0001 C CNN
F 3 "~" H 5200 4740 50  0001 C CNN
	1    5200 4740
	1    0    0    -1  
$EndComp
Wire Wire Line
	5105 4515 5200 4515
Wire Wire Line
	5200 4515 5200 4640
Connection ~ 5105 4515
Wire Wire Line
	5200 4840 5200 4890
Wire Wire Line
	5200 4890 4950 4890
Text Notes 3555 3865 0    50   ~ 0
Might get away with a 1206?
$Comp
L power:GND #PWR0101
U 1 1 6280C724
P 2485 2275
F 0 "#PWR0101" H 2485 2025 50  0001 C CNN
F 1 "GND" H 2495 2130 50  0000 C CNN
F 2 "" H 2485 2275 50  0001 C CNN
F 3 "" H 2485 2275 50  0001 C CNN
	1    2485 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2485 2205 2485 2275
$Comp
L power:GND #PWR0102
U 1 1 62829DE2
P 4505 5105
F 0 "#PWR0102" H 4505 4855 50  0001 C CNN
F 1 "GND" H 4515 4960 50  0000 C CNN
F 2 "" H 4505 5105 50  0001 C CNN
F 3 "" H 4505 5105 50  0001 C CNN
	1    4505 5105
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 62D665FF
P 1625 2805
F 0 "TP9" H 1490 2995 50  0000 L CNN
F 1 "TestPoint" H 1683 2832 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 1825 2805 50  0001 C CNN
F 3 "~" H 1825 2805 50  0001 C CNN
	1    1625 2805
	1    0    0    -1  
$EndComp
Connection ~ 1625 2805
$EndSCHEMATC
