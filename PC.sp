* 180nm write driver

.INCLUDE ./gates.txt

* voltage sources definitions
Vvdd  vdd  0 dc 1.8
Vgnd  gnd  0 dc 0
Vpc   pc   0 dc 0

* define PC subcircuit - pc b bbar vdd gnd
.subckt PC pc_local b_local bbar_local vdd_local gnd_local
Mn7 b_local    pc_local vdd_local vdd_local PMOS W='width_nmos*24' L='length'
Mn8 bbar_local pc_local vdd_local vdd_local PMOS W='width_nmos*24' L='length'
.ends

* Initial Conditions
.ic b=1.8
.ic bbar=0

* Main Circuit
Xpc pc b bbar vdd gnd PC
C1 b    gnd 336f
C2 bbar gnd 336f

* control options
.options post probe

* Analysis
.tran 1P 1N UIC

.probe tran v(b) v(bbar) i(Xpc.Mn7) i(Xpc.Mn8)

.end
