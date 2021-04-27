SRAM array simulation

* Models
.include ./sram_array.txt
.include ./SA_array.txt


* Voltage Sources
Vpwr vdd gnd 1.8
Vwl wl0 gnd pwl 0 0 500N 0 501N 1.8 1U 1.8 1.001U 0 2U 0
*Vse SenseEnable gnd pwl 0 0 1.5U 0 1.501U 1.8 2U 1.8
Vse SenseEnable gnd 1.8V

* Initial Conditions
.ic b0 = 1.8
.ic b_bar0 = 1.8

* Main Circuit
X1 b255 b254 b253 b252 b251 b250 b249 b248 b247 b246 b245 b244 b243 b242 b241 b240 b239 b238 b237 b236 b235 b234 b233 b232 b231 b230 b229 b228 b227 b226 b225 b224 b223 b222 b221 b220 b219 b218 b217 b216 b215 b214 b213 b212 b211 b210 b209 b208 b207 b206 b205 b204 b203 b202 b201 b200 b199 b198 b197 b196 b195 b194 b193 b192 b191 b190 b189 b188 b187 b186 b185 b184 b183 b182 b181 b180 b179 b178 b177 b176 b175 b174 b173 b172 b171 b170 b169 b168 b167 b166 b165 b164 b163 b162 b161 b160 b159 b158 b157 b156 b155 b154 b153 b152 b151 b150 b149 b148 b147 b146 b145 b144 b143 b142 b141 b140 b139 b138 b137 b136 b135 b134 b133 b132 b131 b130 b129 b128 b127 b126 b125 b124 b123 b122 b121 b120 b119 b118 b117 b116 b115 b114 b113 b112 b111 b110 b109 b108 b107 b106 b105 b104 b103 b102 b101 b100 b99 b98 b97 b96 b95 b94 b93 b92 b91 b90 b89 b88 b87 b86 b85 b84 b83 b82 b81 b80 b79 b78 b77 b76 b75 b74 b73 b72 b71 b70 b69 b68 b67 b66 b65 b64 b63 b62 b61 b60 b59 b58 b57 b56 b55 b54 b53 b52 b51 b50 b49 b48 b47 b46 b45 b44 b43 b42 b41 b40 b39 b38 b37 b36 b35 b34 b33 b32 b31 b30 b29 b28 b27 b26 b25 b24 b23 b22 b21 b20 b19 b18 b17 b16 b15 b14 b13 b12 b11 b10 b9 b8 b7 b6 b5 b4 b3 b2 b1 b0 b_bar255 b_bar254 b_bar253 b_bar252 b_bar251 b_bar250 b_bar249 b_bar248 b_bar247 b_bar246 b_bar245 b_bar244 b_bar243 b_bar242 b_bar241 b_bar240 b_bar239 b_bar238 b_bar237 b_bar236 b_bar235 b_bar234 b_bar233 b_bar232 b_bar231 b_bar230 b_bar229 b_bar228 b_bar227 b_bar226 b_bar225 b_bar224 b_bar223 b_bar222 b_bar221 b_bar220 b_bar219 b_bar218 b_bar217 b_bar216 b_bar215 b_bar214 b_bar213 b_bar212 b_bar211 b_bar210 b_bar209 b_bar208 b_bar207 b_bar206 b_bar205 b_bar204 b_bar203 b_bar202 b_bar201 b_bar200 b_bar199 b_bar198 b_bar197 b_bar196 b_bar195 b_bar194 b_bar193 b_bar192 b_bar191 b_bar190 b_bar189 b_bar188 b_bar187 b_bar186 b_bar185 b_bar184 b_bar183 b_bar182 b_bar181 b_bar180 b_bar179 b_bar178 b_bar177 b_bar176 b_bar175 b_bar174 b_bar173 b_bar172 b_bar171 b_bar170 b_bar169 b_bar168 b_bar167 b_bar166 b_bar165 b_bar164 b_bar163 b_bar162 b_bar161 b_bar160 b_bar159 b_bar158 b_bar157 b_bar156 b_bar155 b_bar154 b_bar153 b_bar152 b_bar151 b_bar150 b_bar149 b_bar148 b_bar147 b_bar146 b_bar145 b_bar144 b_bar143 b_bar142 b_bar141 b_bar140 b_bar139 b_bar138 b_bar137 b_bar136 b_bar135 b_bar134 b_bar133 b_bar132 b_bar131 b_bar130 b_bar129 b_bar128 b_bar127 b_bar126 b_bar125 b_bar124 b_bar123 b_bar122 b_bar121 b_bar120 b_bar119 b_bar118 b_bar117 b_bar116 b_bar115 b_bar114 b_bar113 b_bar112 b_bar111 b_bar110 b_bar109 b_bar108 b_bar107 b_bar106 b_bar105 b_bar104 b_bar103 b_bar102 b_bar101 b_bar100 b_bar99 b_bar98 b_bar97 b_bar96 b_bar95 b_bar94 b_bar93 b_bar92 b_bar91 b_bar90 b_bar89 b_bar88 b_bar87 b_bar86 b_bar85 b_bar84 b_bar83 b_bar82 b_bar81 b_bar80 b_bar79 b_bar78 b_bar77 b_bar76 b_bar75 b_bar74 b_bar73 b_bar72 b_bar71 b_bar70 b_bar69 b_bar68 b_bar67 b_bar66 b_bar65 b_bar64 b_bar63 b_bar62 b_bar61 b_bar60 b_bar59 b_bar58 b_bar57 b_bar56 b_bar55 b_bar54 b_bar53 b_bar52 b_bar51 b_bar50 b_bar49 b_bar48 b_bar47 b_bar46 b_bar45 b_bar44 b_bar43 b_bar42 b_bar41 b_bar40 b_bar39 b_bar38 b_bar37 b_bar36 b_bar35 b_bar34 b_bar33 b_bar32 b_bar31 b_bar30 b_bar29 b_bar28 b_bar27 b_bar26 b_bar25 b_bar24 b_bar23 b_bar22 b_bar21 b_bar20 b_bar19 b_bar18 b_bar17 b_bar16 b_bar15 b_bar14 b_bar13 b_bar12 b_bar11 b_bar10 b_bar9 b_bar8 b_bar7 b_bar6 b_bar5 b_bar4 b_bar3 b_bar2 b_bar1 b_bar0 wl255 wl254 wl253 wl252 wl251 wl250 wl249 wl248 wl247 wl246 wl245 wl244 wl243 wl242 wl241 wl240 wl239 wl238 wl237 wl236 wl235 wl234 wl233 wl232 wl231 wl230 wl229 wl228 wl227 wl226 wl225 wl224 wl223 wl222 wl221 wl220 wl219 wl218 wl217 wl216 wl215 wl214 wl213 wl212 wl211 wl210 wl209 wl208 wl207 wl206 wl205 wl204 wl203 wl202 wl201 wl200 wl199 wl198 wl197 wl196 wl195 wl194 wl193 wl192 wl191 wl190 wl189 wl188 wl187 wl186 wl185 wl184 wl183 wl182 wl181 wl180 wl179 wl178 wl177 wl176 wl175 wl174 wl173 wl172 wl171 wl170 wl169 wl168 wl167 wl166 wl165 wl164 wl163 wl162 wl161 wl160 wl159 wl158 wl157 wl156 wl155 wl154 wl153 wl152 wl151 wl150 wl149 wl148 wl147 wl146 wl145 wl144 wl143 wl142 wl141 wl140 wl139 wl138 wl137 wl136 wl135 wl134 wl133 wl132 wl131 wl130 wl129 wl128 wl127 wl126 wl125 wl124 wl123 wl122 wl121 wl120 wl119 wl118 wl117 wl116 wl115 wl114 wl113 wl112 wl111 wl110 wl109 wl108 wl107 wl106 wl105 wl104 wl103 wl102 wl101 wl100 wl99 wl98 wl97 wl96 wl95 wl94 wl93 wl92 wl91 wl90 wl89 wl88 wl87 wl86 wl85 wl84 wl83 wl82 wl81 wl80 wl79 wl78 wl77 wl76 wl75 wl74 wl73 wl72 wl71 wl70 wl69 wl68 wl67 wl66 wl65 wl64 wl63 wl62 wl61 wl60 wl59 wl58 wl57 wl56 wl55 wl54 wl53 wl52 wl51 wl50 wl49 wl48 wl47 wl46 wl45 wl44 wl43 wl42 wl41 wl40 wl39 wl38 wl37 wl36 wl35 wl34 wl33 wl32 wl31 wl30 wl29 wl28 wl27 wl26 wl25 wl24 wl23 wl22 wl21 wl20 wl19 wl18 wl17 wl16 wl15 wl14 wl13 wl12 wl11 wl10 wl9 wl8 wl7 wl6 wl5 wl4 wl3 wl2 wl1 wl0 vdd gnd sram_array

*X2 b b_bar Sense Sense_bar SenseEnable vdd gnd SA_l

X2 b255 b254 b253 b252 b251 b250 b249 b248 b247 b246 b245 b244 b243 b242 b241 b240 b239 b238 b237 b236 b235 b234 b233 b232 b231 b230 b229 b228 b227 b226 b225 b224 b223 b222 b221 b220 b219 b218 b217 b216 b215 b214 b213 b212 b211 b210 b209 b208 b207 b206 b205 b204 b203 b202 b201 b200 b199 b198 b197 b196 b195 b194 b193 b192 b191 b190 b189 b188 b187 b186 b185 b184 b183 b182 b181 b180 b179 b178 b177 b176 b175 b174 b173 b172 b171 b170 b169 b168 b167 b166 b165 b164 b163 b162 b161 b160 b159 b158 b157 b156 b155 b154 b153 b152 b151 b150 b149 b148 b147 b146 b145 b144 b143 b142 b141 b140 b139 b138 b137 b136 b135 b134 b133 b132 b131 b130 b129 b128 b127 b126 b125 b124 b123 b122 b121 b120 b119 b118 b117 b116 b115 b114 b113 b112 b111 b110 b109 b108 b107 b106 b105 b104 b103 b102 b101 b100 b99 b98 b97 b96 b95 b94 b93 b92 b91 b90 b89 b88 b87 b86 b85 b84 b83 b82 b81 b80 b79 b78 b77 b76 b75 b74 b73 b72 b71 b70 b69 b68 b67 b66 b65 b64 b63 b62 b61 b60 b59 b58 b57 b56 b55 b54 b53 b52 b51 b50 b49 b48 b47 b46 b45 b44 b43 b42 b41 b40 b39 b38 b37 b36 b35 b34 b33 b32 b31 b30 b29 b28 b27 b26 b25 b24 b23 b22 b21 b20 b19 b18 b17 b16 b15 b14 b13 b12 b11 b10 b9 b8 b7 b6 b5 b4 b3 b2 b1 b0 b_bar255 b_bar254 b_bar253 b_bar252 b_bar251 b_bar250 b_bar249 b_bar248 b_bar247 b_bar246 b_bar245 b_bar244 b_bar243 b_bar242 b_bar241 b_bar240 b_bar239 b_bar238 b_bar237 b_bar236 b_bar235 b_bar234 b_bar233 b_bar232 b_bar231 b_bar230 b_bar229 b_bar228 b_bar227 b_bar226 b_bar225 b_bar224 b_bar223 b_bar222 b_bar221 b_bar220 b_bar219 b_bar218 b_bar217 b_bar216 b_bar215 b_bar214 b_bar213 b_bar212 b_bar211 b_bar210 b_bar209 b_bar208 b_bar207 b_bar206 b_bar205 b_bar204 b_bar203 b_bar202 b_bar201 b_bar200 b_bar199 b_bar198 b_bar197 b_bar196 b_bar195 b_bar194 b_bar193 b_bar192 b_bar191 b_bar190 b_bar189 b_bar188 b_bar187 b_bar186 b_bar185 b_bar184 b_bar183 b_bar182 b_bar181 b_bar180 b_bar179 b_bar178 b_bar177 b_bar176 b_bar175 b_bar174 b_bar173 b_bar172 b_bar171 b_bar170 b_bar169 b_bar168 b_bar167 b_bar166 b_bar165 b_bar164 b_bar163 b_bar162 b_bar161 b_bar160 b_bar159 b_bar158 b_bar157 b_bar156 b_bar155 b_bar154 b_bar153 b_bar152 b_bar151 b_bar150 b_bar149 b_bar148 b_bar147 b_bar146 b_bar145 b_bar144 b_bar143 b_bar142 b_bar141 b_bar140 b_bar139 b_bar138 b_bar137 b_bar136 b_bar135 b_bar134 b_bar133 b_bar132 b_bar131 b_bar130 b_bar129 b_bar128 b_bar127 b_bar126 b_bar125 b_bar124 b_bar123 b_bar122 b_bar121 b_bar120 b_bar119 b_bar118 b_bar117 b_bar116 b_bar115 b_bar114 b_bar113 b_bar112 b_bar111 b_bar110 b_bar109 b_bar108 b_bar107 b_bar106 b_bar105 b_bar104 b_bar103 b_bar102 b_bar101 b_bar100 b_bar99 b_bar98 b_bar97 b_bar96 b_bar95 b_bar94 b_bar93 b_bar92 b_bar91 b_bar90 b_bar89 b_bar88 b_bar87 b_bar86 b_bar85 b_bar84 b_bar83 b_bar82 b_bar81 b_bar80 b_bar79 b_bar78 b_bar77 b_bar76 b_bar75 b_bar74 b_bar73 b_bar72 b_bar71 b_bar70 b_bar69 b_bar68 b_bar67 b_bar66 b_bar65 b_bar64 b_bar63 b_bar62 b_bar61 b_bar60 b_bar59 b_bar58 b_bar57 b_bar56 b_bar55 b_bar54 b_bar53 b_bar52 b_bar51 b_bar50 b_bar49 b_bar48 b_bar47 b_bar46 b_bar45 b_bar44 b_bar43 b_bar42 b_bar41 b_bar40 b_bar39 b_bar38 b_bar37 b_bar36 b_bar35 b_bar34 b_bar33 b_bar32 b_bar31 b_bar30 b_bar29 b_bar28 b_bar27 b_bar26 b_bar25 b_bar24 b_bar23 b_bar22 b_bar21 b_bar20 b_bar19 b_bar18 b_bar17 b_bar16 b_bar15 b_bar14 b_bar13 b_bar12 b_bar11 b_bar10 b_bar9 b_bar8 b_bar7 b_bar6 b_bar5 b_bar4 b_bar3 b_bar2 b_bar1 b_bar0 out255 out254 out253 out252 out251 out250 out249 out248 out247 out246 out245 out244 out243 out242 out241 out240 out239 out238 out237 out236 out235 out234 out233 out232 out231 out230 out229 out228 out227 out226 out225 out224 out223 out222 out221 out220 out219 out218 out217 out216 out215 out214 out213 out212 out211 out210 out209 out208 out207 out206 out205 out204 out203 out202 out201 out200 out199 out198 out197 out196 out195 out194 out193 out192 out191 out190 out189 out188 out187 out186 out185 out184 out183 out182 out181 out180 out179 out178 out177 out176 out175 out174 out173 out172 out171 out170 out169 out168 out167 out166 out165 out164 out163 out162 out161 out160 out159 out158 out157 out156 out155 out154 out153 out152 out151 out150 out149 out148 out147 out146 out145 out144 out143 out142 out141 out140 out139 out138 out137 out136 out135 out134 out133 out132 out131 out130 out129 out128 out127 out126 out125 out124 out123 out122 out121 out120 out119 out118 out117 out116 out115 out114 out113 out112 out111 out110 out109 out108 out107 out106 out105 out104 out103 out102 out101 out100 out99 out98 out97 out96 out95 out94 out93 out92 out91 out90 out89 out88 out87 out86 out85 out84 out83 out82 out81 out80 out79 out78 out77 out76 out75 out74 out73 out72 out71 out70 out69 out68 out67 out66 out65 out64 out63 out62 out61 out60 out59 out58 out57 out56 out55 out54 out53 out52 out51 out50 out49 out48 out47 out46 out45 out44 out43 out42 out41 out40 out39 out38 out37 out36 out35 out34 out33 out32 out31 out30 out29 out28 out27 out26 out25 out24 out23 out22 out21 out20 out19 out18 out17 out16 out15 out14 out13 out12 out11 out10 out9 out8 out7 out6 out5 out4 out3 out2 out1 out0 SenseEnable vdd gnd SA_array

* Control Options
.options post=2

* Analysis
.tran 1P 2U UIC

* Output
.probe tran v(wl0) v(b0) v(b_bar0) v(out0)
.end
