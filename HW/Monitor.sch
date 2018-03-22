EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Peters
LIBS:Monitor-cache
EELAYER 25 0
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
L INA219AIDCNR U1
U 1 1 5AB398E0
P 3250 2450
F 0 "U1" H 3000 2800 60  0000 C CNN
F 1 "INA219AIDCNR" V 3450 2450 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-8" H 3450 2650 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3450 2750 60  0001 L CNN
F 4 "296-23770-1-ND" H 3450 2850 60  0001 L CNN "Digi-Key_PN"
F 5 "INA219AIDCNR" H 3450 2950 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3450 3050 60  0001 L CNN "Category"
F 7 "PMIC - Current Regulation/Management" H 3450 3150 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3450 3250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/INA219AIDCNR/296-23770-1-ND/1952550" H 3450 3350 60  0001 L CNN "DK_Detail_Page"
F 10 "IC CURRENT MONITOR 1% SOT23-8" H 3450 3450 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3450 3550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3450 3650 60  0001 L CNN "Status"
	1    3250 2450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AB399D9
P 2350 2250
F 0 "R1" V 2430 2250 50  0000 C CNN
F 1 "R" V 2350 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 2280 2250 50  0001 C CNN
F 3 "" H 2350 2250 50  0001 C CNN
	1    2350 2250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AB39B9F
P 3600 2050
F 0 "C1" H 3625 2150 50  0000 L CNN
F 1 "C" H 3625 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 1900 50  0001 C CNN
F 3 "" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
$Comp
L BluePill_STM32F103C U2
U 1 1 5AB39CFF
P 6750 2700
F 0 "U2" H 6300 1350 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 6800 3550 50  0000 C CNN
F 2 "Libs:BluePill_STM32F103C" H 6800 1100 50  0001 C CNN
F 3 "www.rogerclark.net" H 6750 1200 50  0001 C CNN
	1    6750 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5AB39DB2
P 3250 1850
F 0 "#PWR01" H 3250 1700 50  0001 C CNN
F 1 "VCC" H 3250 2000 50  0000 C CNN
F 2 "" H 3250 1850 50  0001 C CNN
F 3 "" H 3250 1850 50  0001 C CNN
	1    3250 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AB39DE0
P 5850 4050
F 0 "#PWR02" H 5850 3800 50  0001 C CNN
F 1 "GND" H 5850 3900 50  0000 C CNN
F 2 "" H 5850 4050 50  0001 C CNN
F 3 "" H 5850 4050 50  0001 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3800 5850 3800
Wire Wire Line
	5850 3800 5850 4050
Wire Wire Line
	5900 3900 5850 3900
Connection ~ 5850 3900
$Comp
L VCC #PWR03
U 1 1 5AB39EB0
P 5900 3700
F 0 "#PWR03" H 5900 3550 50  0001 C CNN
F 1 "VCC" H 5900 3850 50  0000 C CNN
F 2 "" H 5900 3700 50  0001 C CNN
F 3 "" H 5900 3700 50  0001 C CNN
	1    5900 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 2350 2450 2350
Wire Wire Line
	2450 2350 2450 2400
Wire Wire Line
	2450 2400 2200 2400
Wire Wire Line
	2750 2250 2500 2250
Wire Wire Line
	2500 2250 2500 2100
Wire Wire Line
	2500 2100 2250 2100
Text GLabel 2750 2550 0    60   Input ~ 0
SDA
Text GLabel 2750 2450 0    60   Input ~ 0
SCL
$Comp
L GND #PWR04
U 1 1 5AB3A0F4
P 3250 3050
F 0 "#PWR04" H 3250 2800 50  0001 C CNN
F 1 "GND" H 3250 2900 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 3250 1900
Wire Wire Line
	3250 1850 3250 1950
Connection ~ 3250 1900
$Comp
L GND #PWR05
U 1 1 5AB3A1BA
P 3600 2200
F 0 "#PWR05" H 3600 1950 50  0001 C CNN
F 1 "GND" H 3600 2050 50  0000 C CNN
F 2 "" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2200 2250 2200
Wire Wire Line
	2250 2200 2250 2100
Connection ~ 2350 2100
Wire Wire Line
	2200 2400 2200 2300
Connection ~ 2350 2400
$Comp
L INA219AIDCNR U3
U 1 1 5AB3A2C6
P 3250 4250
F 0 "U3" H 3000 4600 60  0000 C CNN
F 1 "INA219AIDCNR" V 3450 4250 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-8" H 3450 4450 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3450 4550 60  0001 L CNN
F 4 "296-23770-1-ND" H 3450 4650 60  0001 L CNN "Digi-Key_PN"
F 5 "INA219AIDCNR" H 3450 4750 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3450 4850 60  0001 L CNN "Category"
F 7 "PMIC - Current Regulation/Management" H 3450 4950 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3450 5050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/INA219AIDCNR/296-23770-1-ND/1952550" H 3450 5150 60  0001 L CNN "DK_Detail_Page"
F 10 "IC CURRENT MONITOR 1% SOT23-8" H 3450 5250 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3450 5350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3450 5450 60  0001 L CNN "Status"
	1    3250 4250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AB3A2CC
P 2350 4050
F 0 "R2" V 2430 4050 50  0000 C CNN
F 1 "R" V 2350 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 2280 4050 50  0001 C CNN
F 3 "" H 2350 4050 50  0001 C CNN
	1    2350 4050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AB3A2D2
P 3600 3850
F 0 "C2" H 3625 3950 50  0000 L CNN
F 1 "C" H 3625 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 3700 50  0001 C CNN
F 3 "" H 3600 3850 50  0001 C CNN
	1    3600 3850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 5AB3A2DE
P 3250 3650
F 0 "#PWR06" H 3250 3500 50  0001 C CNN
F 1 "VCC" H 3250 3800 50  0000 C CNN
F 2 "" H 3250 3650 50  0001 C CNN
F 3 "" H 3250 3650 50  0001 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4150 2450 4150
Wire Wire Line
	2450 4150 2450 4200
Wire Wire Line
	2450 4200 2200 4200
Wire Wire Line
	2750 4050 2500 4050
Wire Wire Line
	2500 4050 2500 3900
Wire Wire Line
	2500 3900 1850 3900
Text GLabel 2750 4350 0    60   Input ~ 0
SDA
Text GLabel 2750 4250 0    60   Input ~ 0
SCL
$Comp
L GND #PWR07
U 1 1 5AB3A2EC
P 3250 4850
F 0 "#PWR07" H 3250 4600 50  0001 C CNN
F 1 "GND" H 3250 4700 50  0000 C CNN
F 2 "" H 3250 4850 50  0001 C CNN
F 3 "" H 3250 4850 50  0001 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3700 3250 3700
Wire Wire Line
	3250 3650 3250 3750
Connection ~ 3250 3700
$Comp
L GND #PWR08
U 1 1 5AB3A2F5
P 3600 4000
F 0 "#PWR08" H 3600 3750 50  0001 C CNN
F 1 "GND" H 3600 3850 50  0000 C CNN
F 2 "" H 3600 4000 50  0001 C CNN
F 3 "" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Connection ~ 2350 3900
Connection ~ 2350 4200
$Comp
L INA219AIDCNR U4
U 1 1 5AB3A373
P 3250 6000
F 0 "U4" H 3000 6350 60  0000 C CNN
F 1 "INA219AIDCNR" V 3450 6000 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-8" H 3450 6200 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3450 6300 60  0001 L CNN
F 4 "296-23770-1-ND" H 3450 6400 60  0001 L CNN "Digi-Key_PN"
F 5 "INA219AIDCNR" H 3450 6500 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3450 6600 60  0001 L CNN "Category"
F 7 "PMIC - Current Regulation/Management" H 3450 6700 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 3450 6800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/INA219AIDCNR/296-23770-1-ND/1952550" H 3450 6900 60  0001 L CNN "DK_Detail_Page"
F 10 "IC CURRENT MONITOR 1% SOT23-8" H 3450 7000 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3450 7100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3450 7200 60  0001 L CNN "Status"
	1    3250 6000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AB3A379
P 2350 5800
F 0 "R3" V 2430 5800 50  0000 C CNN
F 1 "R" V 2350 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 2280 5800 50  0001 C CNN
F 3 "" H 2350 5800 50  0001 C CNN
	1    2350 5800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AB3A37F
P 3600 5600
F 0 "C3" H 3625 5700 50  0000 L CNN
F 1 "C" H 3625 5500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 5450 50  0001 C CNN
F 3 "" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 5AB3A38B
P 3250 5400
F 0 "#PWR09" H 3250 5250 50  0001 C CNN
F 1 "VCC" H 3250 5550 50  0000 C CNN
F 2 "" H 3250 5400 50  0001 C CNN
F 3 "" H 3250 5400 50  0001 C CNN
	1    3250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5900 2450 5900
Wire Wire Line
	2450 5900 2450 5950
Wire Wire Line
	2450 5950 2200 5950
Wire Wire Line
	2750 5800 2500 5800
Wire Wire Line
	2500 5800 2500 5650
Wire Wire Line
	2500 5650 2250 5650
Text GLabel 2750 6100 0    60   Input ~ 0
SDA
Text GLabel 2750 6000 0    60   Input ~ 0
SCL
$Comp
L GND #PWR010
U 1 1 5AB3A399
P 3250 6600
F 0 "#PWR010" H 3250 6350 50  0001 C CNN
F 1 "GND" H 3250 6450 50  0000 C CNN
F 2 "" H 3250 6600 50  0001 C CNN
F 3 "" H 3250 6600 50  0001 C CNN
	1    3250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5450 3250 5450
Wire Wire Line
	3250 5400 3250 5500
Connection ~ 3250 5450
$Comp
L GND #PWR011
U 1 1 5AB3A3A2
P 3600 5750
F 0 "#PWR011" H 3600 5500 50  0001 C CNN
F 1 "GND" H 3600 5600 50  0000 C CNN
F 2 "" H 3600 5750 50  0001 C CNN
F 3 "" H 3600 5750 50  0001 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
Connection ~ 2350 5650
Wire Wire Line
	2200 5950 2200 5200
Connection ~ 2350 5950
$Comp
L GND #PWR012
U 1 1 5AB3A55B
P 2650 2900
F 0 "#PWR012" H 2650 2650 50  0001 C CNN
F 1 "GND" H 2650 2750 50  0000 C CNN
F 2 "" H 2650 2900 50  0001 C CNN
F 3 "" H 2650 2900 50  0001 C CNN
	1    2650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2750 2650 2750
Wire Wire Line
	2650 2650 2650 2900
Wire Wire Line
	2750 2650 2650 2650
Connection ~ 2650 2750
Text GLabel 2750 4450 0    60   Input ~ 0
SDA
$Comp
L GND #PWR013
U 1 1 5AB3A694
P 2750 4550
F 0 "#PWR013" H 2750 4300 50  0001 C CNN
F 1 "GND" H 2750 4400 50  0000 C CNN
F 2 "" H 2750 4550 50  0001 C CNN
F 3 "" H 2750 4550 50  0001 C CNN
	1    2750 4550
	1    0    0    -1  
$EndComp
Text GLabel 2750 6200 0    60   Input ~ 0
SDA
Text GLabel 2750 6300 0    60   Input ~ 0
SDA
Text GLabel 7650 2500 2    60   Input ~ 0
SDA
Text GLabel 7650 2600 2    60   Input ~ 0
SCL
Text GLabel 2000 2100 2    60   Input ~ 0
TRIG
$Comp
L GND #PWR014
U 1 1 5AB3A9A3
P 2000 2000
F 0 "#PWR014" H 2000 1750 50  0001 C CNN
F 1 "GND" H 2000 1850 50  0000 C CNN
F 2 "" H 2000 2000 50  0001 C CNN
F 3 "" H 2000 2000 50  0001 C CNN
	1    2000 2000
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x07_Female J3
U 1 1 5AB3AC2F
P 9200 2400
F 0 "J3" H 9200 2800 50  0000 C CNN
F 1 "SD card header" H 9200 2000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x07_Pitch2.54mm" H 9200 2400 50  0001 C CNN
F 3 "" H 9200 2400 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2100 8700 2100
Wire Wire Line
	9000 2200 8700 2200
Wire Wire Line
	9000 2300 8700 2300
Wire Wire Line
	9000 2400 8700 2400
Wire Wire Line
	9000 2500 8700 2500
Wire Wire Line
	9000 2600 8700 2600
Wire Wire Line
	9000 2700 8700 2700
$Comp
L GND #PWR015
U 1 1 5AB3B3BB
P 8700 2200
F 0 "#PWR015" H 8700 1950 50  0001 C CNN
F 1 "GND" H 8700 2050 50  0000 C CNN
F 2 "" H 8700 2200 50  0001 C CNN
F 3 "" H 8700 2200 50  0001 C CNN
	1    8700 2200
	0    1    1    0   
$EndComp
Text Label 8850 2100 0    60   ~ 0
NC
Text GLabel 8700 2400 0    60   Input ~ 0
MISO
Text GLabel 8700 2500 0    60   Input ~ 0
MOSI
Text GLabel 8700 2600 0    60   Input ~ 0
SCK
Text GLabel 8700 2700 0    60   Input ~ 0
CS
Text Notes 8500 1850 0    60   ~ 0
PA4 - SS (you could use this as /CS if you'd like)\nPA5 - SCK1\nPA6 - MISO1\nPA7 - MOSI1
Text GLabel 5900 3000 0    60   Input ~ 0
MISO
Text GLabel 5900 3100 0    60   Input ~ 0
MOSI
Text GLabel 5900 2900 0    60   Input ~ 0
SCK
Text GLabel 5900 2800 0    60   Input ~ 0
CS
Text Notes 8450 1350 0    60   ~ 0
http://www.stm32duino.com/viewtopic.php?t=3234
Text GLabel 8600 3850 2    60   Input ~ 0
TRIG
Text Notes 8700 4800 0    60   ~ 0
TODO:\n\nDisplay?\nButton for menu?\n\nLDO 12-5\nreg 5-3V
$Comp
L Barrel_Jack J6
U 1 1 5AB3BC77
P 7300 5800
F 0 "J6" H 7300 6010 50  0000 C CNN
F 1 "Barrel_Jack" H 7300 5625 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 7350 5760 50  0001 C CNN
F 3 "" H 7350 5760 50  0001 C CNN
	1    7300 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5AB3BDF4
P 7750 5950
F 0 "#PWR016" H 7750 5700 50  0001 C CNN
F 1 "GND" H 7750 5800 50  0000 C CNN
F 2 "" H 7750 5950 50  0001 C CNN
F 3 "" H 7750 5950 50  0001 C CNN
	1    7750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5900 7750 5900
Wire Wire Line
	7750 5800 7750 5950
Wire Wire Line
	7600 5800 7750 5800
Connection ~ 7750 5900
$Comp
L +12V #PWR017
U 1 1 5AB3BF8A
P 7750 5600
F 0 "#PWR017" H 7750 5450 50  0001 C CNN
F 1 "+12V" H 7750 5740 50  0000 C CNN
F 2 "" H 7750 5600 50  0001 C CNN
F 3 "" H 7750 5600 50  0001 C CNN
	1    7750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5700 7750 5700
Wire Wire Line
	7750 5700 7750 5600
$Comp
L GND #PWR018
U 1 1 5AB3C20B
P 8800 6200
F 0 "#PWR018" H 8800 5950 50  0001 C CNN
F 1 "GND" H 8800 6050 50  0000 C CNN
F 2 "" H 8800 6200 50  0001 C CNN
F 3 "" H 8800 6200 50  0001 C CNN
	1    8800 6200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 5AB3C278
P 9800 5700
F 0 "#PWR019" H 9800 5550 50  0001 C CNN
F 1 "+5V" H 9800 5840 50  0000 C CNN
F 2 "" H 9800 5700 50  0001 C CNN
F 3 "" H 9800 5700 50  0001 C CNN
	1    9800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5750 9250 5750
Wire Wire Line
	9350 5600 9350 5750
$Comp
L AMS117-3.3 U6
U 1 1 5AB3C344
P 10250 6000
F 0 "U6" H 10100 6400 60  0000 C CNN
F 1 "AMS117-3.3" H 10250 6500 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 10550 6350 60  0001 C CNN
F 3 "http://www.hobbytronics.co.uk/datasheets/voltage_regs/ap1117.pdf" H 10650 6450 60  0001 C CNN
	1    10250 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5AB3C3E7
P 10250 6250
F 0 "#PWR020" H 10250 6000 50  0001 C CNN
F 1 "GND" H 10250 6100 50  0000 C CNN
F 2 "" H 10250 6250 50  0001 C CNN
F 3 "" H 10250 6250 50  0001 C CNN
	1    10250 6250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 5AB3C418
P 10700 5750
F 0 "#PWR021" H 10700 5600 50  0001 C CNN
F 1 "VCC" H 10700 5900 50  0000 C CNN
F 2 "" H 10700 5750 50  0001 C CNN
F 3 "" H 10700 5750 50  0001 C CNN
	1    10700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5800 10700 5800
Wire Wire Line
	10700 5750 10700 5850
$Comp
L C C4
U 1 1 5AB3C6E1
P 8250 5900
F 0 "C4" H 8275 6000 50  0000 L CNN
F 1 "C" H 8275 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8288 5750 50  0001 C CNN
F 3 "" H 8250 5900 50  0001 C CNN
	1    8250 5900
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5AB3C745
P 9350 5900
F 0 "C5" H 9375 6000 50  0000 L CNN
F 1 "C" H 9375 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9388 5750 50  0001 C CNN
F 3 "" H 9350 5900 50  0001 C CNN
	1    9350 5900
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5AB3C7B7
P 9800 6050
F 0 "C6" H 9825 6150 50  0000 L CNN
F 1 "C" H 9825 5950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9838 5900 50  0001 C CNN
F 3 "" H 9800 6050 50  0001 C CNN
	1    9800 6050
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5AB3C80E
P 10650 6050
F 0 "C7" H 10675 6150 50  0000 L CNN
F 1 "C" H 10675 5950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10688 5900 50  0001 C CNN
F 3 "" H 10650 6050 50  0001 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5AB3C94C
P 9800 6300
F 0 "#PWR022" H 9800 6050 50  0001 C CNN
F 1 "GND" H 9800 6150 50  0000 C CNN
F 2 "" H 9800 6300 50  0001 C CNN
F 3 "" H 9800 6300 50  0001 C CNN
	1    9800 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5AB3C999
P 10650 6300
F 0 "#PWR023" H 10650 6050 50  0001 C CNN
F 1 "GND" H 10650 6150 50  0000 C CNN
F 2 "" H 10650 6300 50  0001 C CNN
F 3 "" H 10650 6300 50  0001 C CNN
	1    10650 6300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5AB3C9E6
P 9350 5600
F 0 "#PWR024" H 9350 5450 50  0001 C CNN
F 1 "+5V" H 9350 5740 50  0000 C CNN
F 2 "" H 9350 5600 50  0001 C CNN
F 3 "" H 9350 5600 50  0001 C CNN
	1    9350 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5AB3CB42
P 9350 6100
F 0 "#PWR025" H 9350 5850 50  0001 C CNN
F 1 "GND" H 9350 5950 50  0000 C CNN
F 2 "" H 9350 6100 50  0001 C CNN
F 3 "" H 9350 6100 50  0001 C CNN
	1    9350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 6050 9350 6100
$Comp
L GND #PWR026
U 1 1 5AB3CC40
P 8250 6100
F 0 "#PWR026" H 8250 5850 50  0001 C CNN
F 1 "GND" H 8250 5950 50  0000 C CNN
F 2 "" H 8250 6100 50  0001 C CNN
F 3 "" H 8250 6100 50  0001 C CNN
	1    8250 6100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR027
U 1 1 5AB3CC8D
P 8250 5700
F 0 "#PWR027" H 8250 5550 50  0001 C CNN
F 1 "+12V" H 8250 5840 50  0000 C CNN
F 2 "" H 8250 5700 50  0001 C CNN
F 3 "" H 8250 5700 50  0001 C CNN
	1    8250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5700 8250 5750
Wire Wire Line
	8250 6100 8250 6050
Wire Wire Line
	9800 5700 9800 5900
Connection ~ 9800 5800
Wire Wire Line
	9800 6200 9800 6300
Wire Wire Line
	10650 6300 10650 6200
Wire Wire Line
	10650 5900 10650 5850
Wire Wire Line
	10650 5850 10700 5850
Connection ~ 10700 5800
$Comp
L LM2937 U7
U 1 1 5AB3F949
P 8900 5650
F 0 "U7" H 8750 5750 60  0000 C CNN
F 1 "LM2937" H 8800 5650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 8650 5650 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2937.pdf" H 8750 5750 60  0001 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5750 8400 5750
$Comp
L OLED_128x32_i2c U5
U 1 1 5AB4015E
P 5500 7000
F 0 "U5" H 5500 7000 60  0000 C CNN
F 1 "OLED_128x32_i2c" H 6000 6400 60  0000 C CNN
F 2 "Libs:OLED_128x32_I2C" H 5500 7000 60  0001 C CNN
F 3 "" H 5500 7000 60  0001 C CNN
	1    5500 7000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 5AB40287
P 5300 7150
F 0 "#PWR028" H 5300 7000 50  0001 C CNN
F 1 "+5V" H 5300 7290 50  0000 C CNN
F 2 "" H 5300 7150 50  0001 C CNN
F 3 "" H 5300 7150 50  0001 C CNN
	1    5300 7150
	1    0    0    -1  
$EndComp
Text GLabel 5300 7250 0    60   Input ~ 0
SDA
Text GLabel 5300 7350 0    60   Input ~ 0
SCL
$Comp
L GND #PWR029
U 1 1 5AB40479
P 5300 7450
F 0 "#PWR029" H 5300 7200 50  0001 C CNN
F 1 "GND" H 5300 7300 50  0000 C CNN
F 2 "" H 5300 7450 50  0001 C CNN
F 3 "" H 5300 7450 50  0001 C CNN
	1    5300 7450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 5AB40ADC
P 8700 2300
F 0 "#PWR030" H 8700 2150 50  0001 C CNN
F 1 "+5V" H 8700 2440 50  0000 C CNN
F 2 "" H 8700 2300 50  0001 C CNN
F 3 "" H 8700 2300 50  0001 C CNN
	1    8700 2300
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x04 J2
U 1 1 5AB41121
P 1800 2200
F 0 "J2" H 1800 2400 50  0000 C CNN
F 1 "Trig and shunt1" H 1800 1900 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_4pol" H 1800 2200 50  0001 C CNN
F 3 "" H 1800 2200 50  0001 C CNN
	1    1800 2200
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x04 J1
U 1 1 5AB41198
P 1650 5100
F 0 "J1" H 1650 5300 50  0000 C CNN
F 1 "shunt 1 + 2" H 1650 4800 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_4pol" H 1650 5100 50  0001 C CNN
F 3 "" H 1650 5100 50  0001 C CNN
	1    1650 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 2300 2000 2300
$Comp
L R R4
U 1 1 5AB41A9F
P 8600 3700
F 0 "R4" V 8680 3700 50  0000 C CNN
F 1 "R" V 8600 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 3700 50  0001 C CNN
F 3 "" H 8600 3700 50  0001 C CNN
	1    8600 3700
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5AB41B24
P 8600 3350
F 0 "R5" V 8680 3350 50  0000 C CNN
F 1 "R" V 8600 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 3350 50  0001 C CNN
F 3 "" H 8600 3350 50  0001 C CNN
	1    8600 3350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR031
U 1 1 5AB41B87
P 8600 3200
F 0 "#PWR031" H 8600 2950 50  0001 C CNN
F 1 "GND" H 8600 3050 50  0000 C CNN
F 2 "" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 3550 8600 3500
Wire Wire Line
	8600 3500 7650 3500
Wire Wire Line
	1850 3900 1850 4900
Wire Wire Line
	2200 4200 2200 5000
Wire Wire Line
	2200 5000 1850 5000
Wire Wire Line
	2250 5650 2250 5100
Wire Wire Line
	2250 5100 1850 5100
Wire Wire Line
	2200 5200 1850 5200
$Comp
L VCC #PWR032
U 1 1 5AB42AE4
P 7650 2000
F 0 "#PWR032" H 7650 1850 50  0001 C CNN
F 1 "VCC" H 7650 2150 50  0000 C CNN
F 2 "" H 7650 2000 50  0001 C CNN
F 3 "" H 7650 2000 50  0001 C CNN
	1    7650 2000
	1    0    0    -1  
$EndComp
Text GLabel 5900 3200 0    60   Input ~ 0
MISO
$EndSCHEMATC
