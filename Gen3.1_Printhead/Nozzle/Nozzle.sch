EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Open PyroJet Printhead"
Date "2022-03-26"
Rev "Gen3.1"
Comp "PRL"
Comment1 "4 layer stack of PCBs.  Dimensions imported via DFX from CAD drawing"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 623780F5
P 1870 2280
F 0 "J1" H 1920 2725 50  0000 C CNN
F 1 "IDC Conn" H 1965 1755 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 1870 2280 50  0001 C CNN
F 3 "~" H 1870 2280 50  0001 C CNN
	1    1870 2280
	1    0    0    -1  
$EndComp
Wire Wire Line
	1670 1980 1670 1585
Wire Wire Line
	1670 1585 3435 1585
Wire Wire Line
	3435 1585 3435 1980
Wire Wire Line
	2170 2080 2800 2080
Wire Wire Line
	3300 2080 3480 2080
Wire Wire Line
	3480 2080 3480 1515
Wire Wire Line
	3480 1515 1610 1515
Wire Wire Line
	1610 1515 1610 2080
Wire Wire Line
	1610 2080 1670 2080
Wire Wire Line
	1670 2180 1555 2180
Wire Wire Line
	1555 2180 1555 1440
Wire Wire Line
	1555 1440 3545 1440
Wire Wire Line
	3545 1440 3545 2180
Wire Wire Line
	2170 2180 2800 2180
Wire Wire Line
	3300 2180 3545 2180
Wire Wire Line
	2170 2280 2800 2280
Wire Wire Line
	2800 2380 2170 2380
Wire Wire Line
	2170 2480 2800 2480
Wire Wire Line
	2800 2580 2170 2580
Wire Wire Line
	2170 2680 2800 2680
Wire Wire Line
	1670 2280 1475 2280
Wire Wire Line
	1475 2280 1475 1350
Wire Wire Line
	1475 1350 3610 1350
Wire Wire Line
	3610 1350 3610 2280
Wire Wire Line
	3610 2280 3300 2280
Wire Wire Line
	3300 2680 3330 2680
Wire Wire Line
	3330 2680 3330 2865
Wire Wire Line
	3330 2865 1640 2865
Wire Wire Line
	1640 2865 1640 2680
Wire Wire Line
	1640 2680 1670 2680
Wire Wire Line
	1670 2580 1595 2580
Wire Wire Line
	1595 2580 1595 2925
Wire Wire Line
	1595 2925 3375 2925
Wire Wire Line
	3375 2925 3375 2580
Wire Wire Line
	3375 2580 3300 2580
Wire Wire Line
	3300 2480 3425 2480
Wire Wire Line
	3425 2480 3425 2975
Wire Wire Line
	3425 2975 1545 2975
Wire Wire Line
	1545 2975 1545 2480
Wire Wire Line
	1545 2480 1670 2480
Wire Wire Line
	1670 2380 1495 2380
Wire Wire Line
	1495 2380 1495 3025
Wire Wire Line
	1495 3025 3465 3025
Wire Wire Line
	3465 3025 3465 2380
Wire Wire Line
	3465 2380 3300 2380
Text Notes 2780 1835 0    50   ~ 0
8 x 1.27mm\ndia. Nozzles
Wire Wire Line
	2170 1980 2800 1980
Wire Wire Line
	3300 1980 3435 1980
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H1
U 1 1 6282D091
P 3050 1980
F 0 "H1" H 2770 2030 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 1985 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 1830 50  0001 C CNN
F 3 "" H 3050 1630 50  0001 C CNN
	1    3050 1980
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H2
U 1 1 6282DF82
P 3050 2080
F 0 "H2" H 2770 2130 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2085 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 1930 50  0001 C CNN
F 3 "" H 3050 1730 50  0001 C CNN
	1    3050 2080
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H3
U 1 1 6282E383
P 3050 2180
F 0 "H3" H 2770 2230 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2185 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 2030 50  0001 C CNN
F 3 "" H 3050 1830 50  0001 C CNN
	1    3050 2180
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H4
U 1 1 6282E8AE
P 3050 2280
F 0 "H4" H 2770 2330 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2285 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 2130 50  0001 C CNN
F 3 "" H 3050 1930 50  0001 C CNN
	1    3050 2280
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H5
U 1 1 6282EBAF
P 3050 2380
F 0 "H5" H 2770 2430 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2385 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 2230 50  0001 C CNN
F 3 "" H 3050 2030 50  0001 C CNN
	1    3050 2380
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H6
U 1 1 6282F046
P 3050 2480
F 0 "H6" H 2770 2530 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2485 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 2330 50  0001 C CNN
F 3 "" H 3050 2130 50  0001 C CNN
	1    3050 2480
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H7
U 1 1 6282F41B
P 3050 2580
F 0 "H7" H 2770 2630 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2585 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 2430 50  0001 C CNN
F 3 "" H 3050 2230 50  0001 C CNN
	1    3050 2580
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:OPJ_1.27 H8
U 1 1 6282FCD3
P 3050 2680
F 0 "H8" H 2770 2730 50  0000 C CNN
F 1 "OPJ_1.27" H 3795 2685 50  0000 C CNN
F 2 "Pauls_KiCAD_Libraries:OPJ_1.27" H 3150 2530 50  0001 C CNN
F 3 "" H 3050 2330 50  0001 C CNN
	1    3050 2680
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:3mmx12mmRivetMount R1
U 1 1 623F6603
P 10145 2935
F 0 "R1" H 10223 2981 50  0000 L CNN
F 1 "3mmx12mmRivetMount" H 9720 2815 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:3mmx12mmHollowRivet" H 10145 2835 50  0001 C CNN
F 3 "" H 10145 2835 50  0001 C CNN
	1    10145 2935
	1    0    0    -1  
$EndComp
$Comp
L Pauls_Symbol_Library:3mmx12mmRivetMount R2
U 1 1 623F6908
P 10150 3210
F 0 "R2" H 10228 3256 50  0000 L CNN
F 1 "3mmx12mmRivetMount" H 9725 3090 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:3mmx12mmHollowRivet" H 10150 3110 50  0001 C CNN
F 3 "" H 10150 3110 50  0001 C CNN
	1    10150 3210
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H9
U 1 1 623F805D
P 7080 1500
F 0 "H9" H 7180 1546 50  0000 L CNN
F 1 "M2" H 7180 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7080 1500 50  0001 C CNN
F 3 "~" H 7080 1500 50  0001 C CNN
	1    7080 1500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 623F8577
P 7080 1675
F 0 "H10" H 7180 1721 50  0000 L CNN
F 1 "M2" H 7180 1630 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7080 1675 50  0001 C CNN
F 3 "~" H 7080 1675 50  0001 C CNN
	1    7080 1675
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H11
U 1 1 623FB56D
P 7095 1920
F 0 "H11" H 7195 1966 50  0000 L CNN
F 1 "M2" H 7195 1875 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7095 1920 50  0001 C CNN
F 3 "~" H 7095 1920 50  0001 C CNN
	1    7095 1920
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H12
U 1 1 623FBBD4
P 7100 2090
F 0 "H12" H 7200 2136 50  0000 L CNN
F 1 "M2" H 7200 2045 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7100 2090 50  0001 C CNN
F 3 "~" H 7100 2090 50  0001 C CNN
	1    7100 2090
	1    0    0    -1  
$EndComp
Wire Notes Line
	9495 2595 9485 2595
Wire Notes Line
	9485 2595 9485 3465
Wire Notes Line
	9485 3465 10790 3465
Wire Notes Line
	10790 3465 10790 2595
Wire Notes Line
	10790 2595 9510 2595
Text Notes 9750 2770 0    50   ~ 0
Optional Fuel Mount
Text Notes 6645 1300 0    50   ~ 0
M2 Mounting Holes
Text Notes 1375 1195 0    50   ~ 0
Connector Plate Wiring
Wire Notes Line
	1185 980  1185 3310
Wire Notes Line
	1185 3310 4265 3310
Wire Notes Line
	4265 3310 4265 965 
Wire Notes Line
	4265 965  1190 965 
Text Notes 1220 4285 0    50   ~ 0
Note: Four PCB layers are imported into KiACD via DFX files.  \nThese are used to generate their corrosponding edge outlines.\nWith a bit of tweaking here and there.
$Comp
L Mechanical:MountingHole H13
U 1 1 623F89D4
P 6885 2595
F 0 "H13" H 6985 2641 50  0000 L CNN
F 1 "M2" H 6985 2550 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6885 2595 50  0001 C CNN
F 3 "~" H 6885 2595 50  0001 C CNN
	1    6885 2595
	1    0    0    -1  
$EndComp
Text Notes 6550 2450 0    50   ~ 0
M2 PCB Stack Bolt Holes
$Comp
L Mechanical:MountingHole H15
U 1 1 623F954B
P 6885 2770
F 0 "H15" H 6985 2816 50  0000 L CNN
F 1 "M2" H 6985 2725 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6885 2770 50  0001 C CNN
F 3 "~" H 6885 2770 50  0001 C CNN
	1    6885 2770
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H17
U 1 1 623F9763
P 6885 2945
F 0 "H17" H 6985 2991 50  0000 L CNN
F 1 "M2" H 6985 2900 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6885 2945 50  0001 C CNN
F 3 "~" H 6885 2945 50  0001 C CNN
	1    6885 2945
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H19
U 1 1 623F9953
P 6885 3120
F 0 "H19" H 6985 3166 50  0000 L CNN
F 1 "M2" H 6985 3075 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6885 3120 50  0001 C CNN
F 3 "~" H 6885 3120 50  0001 C CNN
	1    6885 3120
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H14
U 1 1 623FFBF8
P 7290 2595
F 0 "H14" H 7390 2641 50  0000 L CNN
F 1 "M2" H 7390 2550 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7290 2595 50  0001 C CNN
F 3 "~" H 7290 2595 50  0001 C CNN
	1    7290 2595
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H16
U 1 1 623FFBFE
P 7290 2770
F 0 "H16" H 7390 2816 50  0000 L CNN
F 1 "M2" H 7390 2725 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7290 2770 50  0001 C CNN
F 3 "~" H 7290 2770 50  0001 C CNN
	1    7290 2770
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H18
U 1 1 623FFC04
P 7290 2945
F 0 "H18" H 7390 2991 50  0000 L CNN
F 1 "M2" H 7390 2900 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7290 2945 50  0001 C CNN
F 3 "~" H 7290 2945 50  0001 C CNN
	1    7290 2945
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H20
U 1 1 623FFC0A
P 7290 3120
F 0 "H20" H 7390 3166 50  0000 L CNN
F 1 "M2" H 7390 3075 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7290 3120 50  0001 C CNN
F 3 "~" H 7290 3120 50  0001 C CNN
	1    7290 3120
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H32
U 1 1 624036A2
P 6870 4415
F 0 "H32" H 6970 4461 50  0000 L CNN
F 1 "M1.2" H 6970 4370 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6870 4415 50  0001 C CNN
F 3 "~" H 6870 4415 50  0001 C CNN
	1    6870 4415
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H34
U 1 1 624039BA
P 6870 4580
F 0 "H34" H 6970 4626 50  0000 L CNN
F 1 "M1.2" H 6970 4535 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6870 4580 50  0001 C CNN
F 3 "~" H 6870 4580 50  0001 C CNN
	1    6870 4580
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H30
U 1 1 62403EB1
P 6870 4250
F 0 "H30" H 6970 4296 50  0000 L CNN
F 1 "M1.2" H 6970 4205 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6870 4250 50  0001 C CNN
F 3 "~" H 6870 4250 50  0001 C CNN
	1    6870 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H28
U 1 1 62403FF1
P 6865 4085
F 0 "H28" H 6965 4131 50  0000 L CNN
F 1 "M1.2" H 6965 4040 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6865 4085 50  0001 C CNN
F 3 "~" H 6865 4085 50  0001 C CNN
	1    6865 4085
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H26
U 1 1 624040D0
P 6865 3920
F 0 "H26" H 6965 3966 50  0000 L CNN
F 1 "M1.2" H 6965 3875 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6865 3920 50  0001 C CNN
F 3 "~" H 6865 3920 50  0001 C CNN
	1    6865 3920
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H24
U 1 1 62404215
P 6865 3755
F 0 "H24" H 6965 3801 50  0000 L CNN
F 1 "M1.2" H 6965 3710 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6865 3755 50  0001 C CNN
F 3 "~" H 6865 3755 50  0001 C CNN
	1    6865 3755
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H22
U 1 1 624042CD
P 6865 3590
F 0 "H22" H 6965 3636 50  0000 L CNN
F 1 "M1.2" H 6965 3545 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6865 3590 50  0001 C CNN
F 3 "~" H 6865 3590 50  0001 C CNN
	1    6865 3590
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H36
U 1 1 62404379
P 6870 4745
F 0 "H36" H 6970 4791 50  0000 L CNN
F 1 "M1.2" H 6970 4700 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6870 4745 50  0001 C CNN
F 3 "~" H 6870 4745 50  0001 C CNN
	1    6870 4745
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H33
U 1 1 6240984A
P 7290 4570
F 0 "H33" H 7390 4616 50  0000 L CNN
F 1 "M1.2" H 7390 4525 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7290 4570 50  0001 C CNN
F 3 "~" H 7290 4570 50  0001 C CNN
	1    7290 4570
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H29
U 1 1 62409850
P 7290 4240
F 0 "H29" H 7390 4286 50  0000 L CNN
F 1 "M1.2" H 7390 4195 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7290 4240 50  0001 C CNN
F 3 "~" H 7290 4240 50  0001 C CNN
	1    7290 4240
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H27
U 1 1 62409856
P 7285 4075
F 0 "H27" H 7385 4121 50  0000 L CNN
F 1 "M1.2" H 7385 4030 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7285 4075 50  0001 C CNN
F 3 "~" H 7285 4075 50  0001 C CNN
	1    7285 4075
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H25
U 1 1 6240985C
P 7285 3910
F 0 "H25" H 7385 3956 50  0000 L CNN
F 1 "M1.2" H 7385 3865 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7285 3910 50  0001 C CNN
F 3 "~" H 7285 3910 50  0001 C CNN
	1    7285 3910
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H23
U 1 1 62409862
P 7285 3745
F 0 "H23" H 7385 3791 50  0000 L CNN
F 1 "M1.2" H 7385 3700 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7285 3745 50  0001 C CNN
F 3 "~" H 7285 3745 50  0001 C CNN
	1    7285 3745
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H21
U 1 1 62409868
P 7285 3580
F 0 "H21" H 7385 3626 50  0000 L CNN
F 1 "M1.2" H 7385 3535 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7285 3580 50  0001 C CNN
F 3 "~" H 7285 3580 50  0001 C CNN
	1    7285 3580
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H35
U 1 1 6240986E
P 7290 4735
F 0 "H35" H 7390 4781 50  0000 L CNN
F 1 "M1.2" H 7390 4690 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7290 4735 50  0001 C CNN
F 3 "~" H 7290 4735 50  0001 C CNN
	1    7290 4735
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H31
U 1 1 62409844
P 7290 4405
F 0 "H31" H 7390 4451 50  0000 L CNN
F 1 "M1.2" H 7390 4360 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7290 4405 50  0001 C CNN
F 3 "~" H 7290 4405 50  0001 C CNN
	1    7290 4405
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H38
U 1 1 6242FAD0
P 6870 4910
F 0 "H38" H 6970 4956 50  0000 L CNN
F 1 "M1.2" H 6970 4865 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 6870 4910 50  0001 C CNN
F 3 "~" H 6870 4910 50  0001 C CNN
	1    6870 4910
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H37
U 1 1 6242FAD6
P 7290 4900
F 0 "H37" H 7390 4946 50  0000 L CNN
F 1 "M1.2" H 7390 4855 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 7290 4900 50  0001 C CNN
F 3 "~" H 7290 4900 50  0001 C CNN
	1    7290 4900
	1    0    0    -1  
$EndComp
Text Notes 6860 3420 0    50   ~ 0
M1.27 Drill holes
Text Notes 6515 1025 0    50   ~ 0
Connector Plate Drill Holes
Text Notes 5035 1005 0    50   ~ 0
Nozzle Drill Holes
Text Notes 8275 985  0    50   ~ 0
Chamber Drill Holes
Text Notes 9695 970  0    50   ~ 0
Top Plate Drill Holes
$Comp
L Mechanical:MountingHole H41
U 1 1 6244E023
P 8455 1495
F 0 "H41" H 8555 1541 50  0000 L CNN
F 1 "M2" H 8555 1450 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8455 1495 50  0001 C CNN
F 3 "~" H 8455 1495 50  0001 C CNN
	1    8455 1495
	1    0    0    -1  
$EndComp
Text Notes 8185 1340 0    50   ~ 0
M2 PCB Stack Bolt Holes
$Comp
L Mechanical:MountingHole H47
U 1 1 6244E02A
P 8455 1670
F 0 "H47" H 8555 1716 50  0000 L CNN
F 1 "M2" H 8555 1625 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8455 1670 50  0001 C CNN
F 3 "~" H 8455 1670 50  0001 C CNN
	1    8455 1670
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H53
U 1 1 6244E030
P 8455 1845
F 0 "H53" H 8555 1891 50  0000 L CNN
F 1 "M2" H 8555 1800 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8455 1845 50  0001 C CNN
F 3 "~" H 8455 1845 50  0001 C CNN
	1    8455 1845
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H59
U 1 1 6244E036
P 8455 2020
F 0 "H59" H 8555 2066 50  0000 L CNN
F 1 "M2" H 8555 1975 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8455 2020 50  0001 C CNN
F 3 "~" H 8455 2020 50  0001 C CNN
	1    8455 2020
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H42
U 1 1 6244E03C
P 8860 1495
F 0 "H42" H 8960 1541 50  0000 L CNN
F 1 "M2" H 8960 1450 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8860 1495 50  0001 C CNN
F 3 "~" H 8860 1495 50  0001 C CNN
	1    8860 1495
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H48
U 1 1 6244E042
P 8860 1670
F 0 "H48" H 8960 1716 50  0000 L CNN
F 1 "M2" H 8960 1625 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8860 1670 50  0001 C CNN
F 3 "~" H 8860 1670 50  0001 C CNN
	1    8860 1670
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H54
U 1 1 6244E048
P 8860 1845
F 0 "H54" H 8960 1891 50  0000 L CNN
F 1 "M2" H 8960 1800 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8860 1845 50  0001 C CNN
F 3 "~" H 8860 1845 50  0001 C CNN
	1    8860 1845
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H60
U 1 1 6244E04E
P 8860 2020
F 0 "H60" H 8960 2066 50  0000 L CNN
F 1 "M2" H 8960 1975 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8860 2020 50  0001 C CNN
F 3 "~" H 8860 2020 50  0001 C CNN
	1    8860 2020
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H43
U 1 1 6244FD10
P 9890 1495
F 0 "H43" H 9990 1541 50  0000 L CNN
F 1 "M2" H 9990 1450 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9890 1495 50  0001 C CNN
F 3 "~" H 9890 1495 50  0001 C CNN
	1    9890 1495
	1    0    0    -1  
$EndComp
Text Notes 9620 1340 0    50   ~ 0
M2 PCB Stack Bolt Holes
$Comp
L Mechanical:MountingHole H49
U 1 1 6244FD17
P 9890 1670
F 0 "H49" H 9990 1716 50  0000 L CNN
F 1 "M2" H 9990 1625 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9890 1670 50  0001 C CNN
F 3 "~" H 9890 1670 50  0001 C CNN
	1    9890 1670
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H55
U 1 1 6244FD1D
P 9890 1845
F 0 "H55" H 9990 1891 50  0000 L CNN
F 1 "M2" H 9990 1800 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9890 1845 50  0001 C CNN
F 3 "~" H 9890 1845 50  0001 C CNN
	1    9890 1845
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H61
U 1 1 6244FD23
P 9890 2020
F 0 "H61" H 9990 2066 50  0000 L CNN
F 1 "M2" H 9990 1975 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9890 2020 50  0001 C CNN
F 3 "~" H 9890 2020 50  0001 C CNN
	1    9890 2020
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H44
U 1 1 6244FD29
P 10295 1495
F 0 "H44" H 10395 1541 50  0000 L CNN
F 1 "M2" H 10395 1450 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10295 1495 50  0001 C CNN
F 3 "~" H 10295 1495 50  0001 C CNN
	1    10295 1495
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H50
U 1 1 6244FD2F
P 10295 1670
F 0 "H50" H 10395 1716 50  0000 L CNN
F 1 "M2" H 10395 1625 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10295 1670 50  0001 C CNN
F 3 "~" H 10295 1670 50  0001 C CNN
	1    10295 1670
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H56
U 1 1 6244FD35
P 10295 1845
F 0 "H56" H 10395 1891 50  0000 L CNN
F 1 "M2" H 10395 1800 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10295 1845 50  0001 C CNN
F 3 "~" H 10295 1845 50  0001 C CNN
	1    10295 1845
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H62
U 1 1 6244FD3B
P 10295 2020
F 0 "H62" H 10395 2066 50  0000 L CNN
F 1 "M2" H 10395 1975 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10295 2020 50  0001 C CNN
F 3 "~" H 10295 2020 50  0001 C CNN
	1    10295 2020
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H46
U 1 1 62452DBB
P 5120 1590
F 0 "H46" H 5220 1636 50  0000 L CNN
F 1 "M1.2" H 5220 1545 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5120 1590 50  0001 C CNN
F 3 "~" H 5120 1590 50  0001 C CNN
	1    5120 1590
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H52
U 1 1 62452DC1
P 5120 1755
F 0 "H52" H 5220 1801 50  0000 L CNN
F 1 "M1.2" H 5220 1710 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5120 1755 50  0001 C CNN
F 3 "~" H 5120 1755 50  0001 C CNN
	1    5120 1755
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H40
U 1 1 62452DC7
P 5120 1425
F 0 "H40" H 5220 1471 50  0000 L CNN
F 1 "M1.2" H 5220 1380 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5120 1425 50  0001 C CNN
F 3 "~" H 5120 1425 50  0001 C CNN
	1    5120 1425
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H58
U 1 1 62452DCD
P 5120 1920
F 0 "H58" H 5220 1966 50  0000 L CNN
F 1 "M1.2" H 5220 1875 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5120 1920 50  0001 C CNN
F 3 "~" H 5120 1920 50  0001 C CNN
	1    5120 1920
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H51
U 1 1 62452DD3
P 5540 1745
F 0 "H51" H 5640 1791 50  0000 L CNN
F 1 "M1.2" H 5640 1700 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5540 1745 50  0001 C CNN
F 3 "~" H 5540 1745 50  0001 C CNN
	1    5540 1745
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H39
U 1 1 62452DD9
P 5540 1415
F 0 "H39" H 5640 1461 50  0000 L CNN
F 1 "M1.2" H 5640 1370 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5540 1415 50  0001 C CNN
F 3 "~" H 5540 1415 50  0001 C CNN
	1    5540 1415
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H57
U 1 1 62452DDF
P 5540 1910
F 0 "H57" H 5640 1956 50  0000 L CNN
F 1 "M1.2" H 5640 1865 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5540 1910 50  0001 C CNN
F 3 "~" H 5540 1910 50  0001 C CNN
	1    5540 1910
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H45
U 1 1 62452DE5
P 5540 1580
F 0 "H45" H 5640 1626 50  0000 L CNN
F 1 "M1.2" H 5640 1535 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5540 1580 50  0001 C CNN
F 3 "~" H 5540 1580 50  0001 C CNN
	1    5540 1580
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H63
U 1 1 62452DEB
P 5345 2135
F 0 "H63" H 5445 2181 50  0000 L CNN
F 1 "M1.2" H 5445 2090 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:MountingHole_1.2mm" H 5345 2135 50  0001 C CNN
F 3 "~" H 5345 2135 50  0001 C CNN
	1    5345 2135
	1    0    0    -1  
$EndComp
Text Notes 5070 1235 0    50   ~ 0
M1.27 Drill holes
Text Notes 5010 2540 0    50   ~ 0
Nozzle Drill Holes
$Comp
L Mechanical:MountingHole H66
U 1 1 62454C20
P 5130 3350
F 0 "H66" H 5230 3396 50  0000 L CNN
F 1 "Nozzle_.5" H 5230 3305 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.5" H 5130 3350 50  0001 C CNN
F 3 "~" H 5130 3350 50  0001 C CNN
	1    5130 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H67
U 1 1 62456EDE
P 5130 3510
F 0 "H67" H 5230 3556 50  0000 L CNN
F 1 "Nozzle_.4" H 5230 3465 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.4" H 5130 3510 50  0001 C CNN
F 3 "~" H 5130 3510 50  0001 C CNN
	1    5130 3510
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H68
U 1 1 6245716A
P 5130 3670
F 0 "H68" H 5230 3716 50  0000 L CNN
F 1 "Nozzle_.3" H 5230 3625 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.3" H 5130 3670 50  0001 C CNN
F 3 "~" H 5130 3670 50  0001 C CNN
	1    5130 3670
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H69
U 1 1 62457585
P 5130 3830
F 0 "H69" H 5230 3876 50  0000 L CNN
F 1 "Nozzle_.25" H 5230 3785 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.25" H 5130 3830 50  0001 C CNN
F 3 "~" H 5130 3830 50  0001 C CNN
	1    5130 3830
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H64
U 1 1 62457B10
P 5125 2705
F 0 "H64" H 5225 2751 50  0000 L CNN
F 1 "Nozzle_.635-Plated" H 5225 2660 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.635-Plated" H 5125 2705 50  0001 C CNN
F 3 "~" H 5125 2705 50  0001 C CNN
	1    5125 2705
	1    0    0    -1  
$EndComp
Wire Notes Line
	4880 810  6130 810 
Wire Notes Line
	6130 810  6130 3795
Wire Notes Line
	4860 3795 4860 810 
Wire Notes Line
	6295 800  7870 800 
Wire Notes Line
	7870 800  7870 5145
Wire Notes Line
	7870 5145 6280 5145
Wire Notes Line
	6280 5145 6280 810 
Wire Notes Line
	8010 795  9360 795 
Wire Notes Line
	9360 795  9360 2420
Wire Notes Line
	9360 2420 8000 2420
Wire Notes Line
	8000 2420 8000 800 
Wire Notes Line
	9515 790  10735 790 
Wire Notes Line
	10735 790  10735 2420
Wire Notes Line
	10735 2420 9505 2420
Wire Notes Line
	9505 2420 9505 795 
$Comp
L Mechanical:MountingHole H70
U 1 1 624B625D
P 5125 2865
F 0 "H70" H 5225 2911 50  0000 L CNN
F 1 "Nozzle_.635-Plated" H 5225 2820 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.635-Plated" H 5125 2865 50  0001 C CNN
F 3 "~" H 5125 2865 50  0001 C CNN
	1    5125 2865
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H71
U 1 1 624B7966
P 5125 3025
F 0 "H71" H 5225 3071 50  0000 L CNN
F 1 "Nozzle_.635-Plated" H 5225 2980 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.635-Plated" H 5125 3025 50  0001 C CNN
F 3 "~" H 5125 3025 50  0001 C CNN
	1    5125 3025
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H72
U 1 1 624B9C7C
P 5125 3185
F 0 "H72" H 5225 3231 50  0000 L CNN
F 1 "Nozzle_.635-Plated" H 5225 3140 50  0000 L CNN
F 2 "Pauls_KiCAD_Libraries:Nozzle_0.635-Plated" H 5125 3185 50  0001 C CNN
F 3 "~" H 5125 3185 50  0001 C CNN
	1    5125 3185
	1    0    0    -1  
$EndComp
Wire Notes Line
	4860 3810 4860 4215
Wire Notes Line
	4860 4215 6130 4215
Wire Notes Line
	6130 4215 6130 3810
$EndSCHEMATC
