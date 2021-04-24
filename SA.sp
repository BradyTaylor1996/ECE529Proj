Project Sense amplifier

.INCLUDE ./180nm-PTM-BSIM3-Bulk-CMOS-V0-L49-2001.txt

.subckt SA Sense Sense_b SenseEnable

M3 2 3 1 gnd NMOS W=600n L=200n
M4 3 2 1 gnd NMOS W=600n L=200n
M5 1 SenseEnable gnd gnd NMOS W=400n L=200n
M1 2 3 VDD VDD PMOS W=1.2u L=200n
M2 3 2 VDD VDD PMOS W=1.2u L=200n

M6 Sense 2 VDD VDD PMOS W=800n L=200n
M7 Sense 2 gnd gnd NMOS W=400n L=200n
M8 Sense_b 3 VDD VDD PMOS W=800n L=200n
M9 Sense_b 3 gnd gnd NMOS W=400n L=200n

.end 
