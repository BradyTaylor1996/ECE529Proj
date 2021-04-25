* 180nm write driver

.INCLUDE ./gates.txt

* voltage sources definitions
Vvdd vdd 0 dc 1.8
Vgnd gnd 0 dc 0
*Va a gnd dc
*Vb b gnd dc

* define WD subcircuit - col w d dbar b bbar vdd gnd
.subckt WD col_local w_local d_local dbar_local b_local bbar_local vdd_local gnd_local
Xand13 w_local    dbar_local 13 vdd_local gnd_local AND2
Xand14 w_local    d_local    14 vdd_local gnd_local AND2
Mn13   b_local    13         1         gnd_local NMOS W='width_nmos' L='length'
Mn14   bbar_local 14         1         gnd_local NMOS W='width_nmos' L='length'
Mn15   1          col_local  gnd_local gnd_local NMOS W='width_nmos' L='length'
.ends

Xwd col w d dbar b bbar vdd gnd WD

* control options
.options post probe
*.dc Va 0 1.8 0.01 SWEEP Vb 0 1.8 0.2

.PROBE DC v(b) (bbar)

.end
