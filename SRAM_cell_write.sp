SRAM Cell Subcircuit

* Models
.include 180nm-PTM-BSIM3-Bulk-CMOS-V0-L49-2001.txt

* Inverter Chain
.subckt sram_cell b b_bar q q_bar wl vdd gnd
M1 q q_bar gnd gnd NMOS L=200N W=0.8U
M2 q_bar q gnd gnd NMOS L=200N W=0.8U
M3 b wl q gnd NMOS L=200N W=0.8U
M4 b_bar wl q_bar gnd NMOS L=200N W=0.8U
M5 q q_bar vdd vdd PMOS L=200N W=1.8U
M6 q_bar q vdd vdd PMOS L=200N W=1.8U
.ends sram_cell

* Voltage Sources
Vpwr vdd gnd 1.8
Vwl wl gnd pwl 0 0 500N 0 501N 1.8 1U 1.8 1.001U 0 2U 0
Vb b gnd 1.8
Vb_bar b_bar gnd 0

* Initial Conditions
.ic q = 0
.ic q_bar = 1.8

* Main Circuit
X1 b b_bar q q_bar wl vdd gnd sram_cell
C1 b gnd 5P
C2 b_bar gnd 5P

* Control Options
.options post probe

* Analysis
.tran 1P 2U

* Output
.probe tran i(q) v(wl) v(b) v(b_bar) v(q) v(q_bar)

.end
