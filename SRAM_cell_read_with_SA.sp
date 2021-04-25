SRAM Cell Subcircuit

* Models
.include ./180nm-PTM-BSIM3-Bulk-CMOS-V0-L49-2001.txt

* Inverter Chain
.subckt sram_cell b b_bar q q_bar wl vdd gnd
M1 q q_bar gnd gnd NMOS L=200N W=0.8U
M2 q_bar q gnd gnd NMOS L=200N W=0.8U
M3 b wl q gnd NMOS L=200N W=0.8U
M4 b_bar wl q_bar gnd NMOS L=200N W=0.8U
M5 q q_bar vdd vdd PMOS L=200N W=1.8U
M6 q_bar q vdd vdd PMOS L=200N W=1.8U
.ends sram_cell

*SA in Fig 8_20
.subckt SA b b_bar Out SenseEnable vdd gnd
M3 1 1 vdd vdd PMOS W=1.2u L=200n
M4 out 1 vdd vdd PMOS W=1.2u L=200n
M1 1 b 2 gnd NMOS W=600n L=200n
M2 out b_bar 2 gnd NMOS W=600n L=200n
M5 2 SenseEnable gnd gnd NMOS W=2u L=200n
Cout out gnd 50fF
.ends SA

*Latched based SA in Fig 8_22
.subckt SA_l b b_bar Sense Sense_bar SenseEnable vdd gnd
M3 b b_bar 1 gnd NMOS W=600n L=200n
M4 b_bar b 1 gnd NMOS W=600n L=200n
M5 1 SenseEnable gnd gnd NMOS W=600n L=200n
M1 b b_bar vdd vdd PMOS W=1.2u L=200n
M2 b_bar b vdd vdd PMOS W=1.2u L=200n

M6 2 b vdd vdd PMOS W=800n L=200n
M7 2 b gnd gnd NMOS W=400n L=200n
M8 Sense 2 vdd vdd PMOS W=800n L=200n
M9 Sense 2 gnd gnd NMOS W=400n L=200n
M10 3 b_bar vdd vdd PMOS W=800n L=200n
M11 3 b_bar gnd gnd NMOS W=400n L=200n
M12 Sense_bar 3 vdd vdd PMOS W=800n L=200n
M13 Sense_bar 3 gnd gnd NMOS W=400n L=200n
.ends SA_l

* Voltage Sources
Vpwr vdd gnd 1.8
Vwl wl gnd pwl 0 0 500N 0 501N 1.8 1U 1.8 1.001U 0 2U 0
Vse SenseEnable gnd pwl 0 0 1.5U 0 1.501U 1.8 2U 1.8

* Initial Conditions
.ic b = 1.8
.ic b_bar = 1.8
.ic q = 1.8
.ic q_bar = 0

* Main Circuit
X1 b b_bar q q_bar wl vdd gnd sram_cell
*X2 b b_bar Sense Sense_bar SenseEnable vdd gnd SA_l
X2 b b_bar out SenseEnable vdd gnd SA
C1 b gnd 5P
C2 b_bar gnd 5P

* Control Options
.options post=2

* Analysis
.tran 1P 2U UIC

* Output
.probe tran i(q) v(wl) v(b) v(b_bar) v(q) v(q_bar) v(Sense) v(Sense_bar) i(X2.M5)

.end
