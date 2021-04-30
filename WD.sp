* 180nm write driver

.INCLUDE ./gates.txt

* voltage sources definitions
Vvdd  vdd  0 dc 1.8
Vgnd  gnd  0 dc 0
Vw    w    0 dc 1.8
Vd    d    0 dc 1.8
Vdbar dbar 0 dc 0
Vcol  col  0 dc 1.8

* define WD subcircuit - col w d dbar b bbar vdd gnd
.subckt WD col_local w_local d_local dbar_local b_local bbar_local vdd_local gnd_local
Xand13 w_local    dbar_local 13 vdd_local gnd_local AND2
Xand14 w_local    d_local    14 vdd_local gnd_local AND2
Mn13   b_local    13         1         gnd_local NMOS W='width_nmos*6' L='length'
Mn14   bbar_local 14         1         gnd_local NMOS W='width_nmos*6' L='length'
Mn15   1          col_local  gnd_local gnd_local NMOS W='width_nmos*6' L='length'
.ends

* Initial Conditions
.ic b=1.8
.ic bbar=1.8

* Main Circuit
Xwd col w d dbar b bbar vdd gnd WD
C1 b    gnd 336f
C2 bbar gnd 336f

* control options
.options post probe

* Analysis
.tran 1P 1.2N UIC

.probe tran v(b) v(bbar) i(Xwd.Mn13) i(Xwd.Mn14) i(Xwd.Mn15)

.end
