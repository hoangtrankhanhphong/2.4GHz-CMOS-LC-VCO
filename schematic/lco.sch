v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 220 -380 220 {lab=#net1}
N -260 400 -210 400 {lab=#net2}
N -350 400 -300 400 {lab=#net3}
N -300 400 -170 340 {lab=#net3}
N -390 340 -260 400 {lab=#net2}
N -390 310 -310 310 {lab=#net2}
N -250 310 -170 310 {lab=#net3}
N -390 430 -390 460 {lab=#net4}
N -390 460 -170 460 {lab=#net4}
N -170 430 -170 460 {lab=#net4}
N -280 460 -280 470 {lab=#net4}
N -310 220 -250 220 {lab=#net5}
N -190 220 -170 220 {lab=#net6}
N -380 220 -370 220 {lab=#net1}
N -280 170 -280 220 {lab=#net5}
N -170 310 -170 340 {lab=#net3}
N -170 340 -170 360 {lab=#net3}
N -170 360 -170 370 {lab=#net3}
N -170 220 -170 250 {lab=#net6}
N -390 220 -390 250 {lab=#net1}
N -390 310 -390 340 {lab=#net2}
N -390 340 -390 370 {lab=#net2}
N -280 500 -280 530 {lab=0}
N -470 400 -390 400 {lab=0}
N -470 400 -470 530 {lab=0}
N -470 530 -280 530 {lab=0}
N -170 400 -90 400 {lab=0}
N -90 400 -90 530 {lab=0}
N -280 530 -90 530 {lab=0}
N -450 120 -450 310 {lab=0}
N -450 110 -280 110 {lab=0}
N -450 110 -450 120 {lab=0}
N -280 110 -110 110 {lab=0}
N -110 110 -110 310 {lab=0}
C {ind.sym} -220 220 3 0 {name=L1
m=1
value=2.8n
footprint=1206
device=inductor}
C {sky130_fd_pr/cap_mim_m3_2.sym} -280 310 1 0 {name=C2 model=cap_mim_m3_2 W=19 L=18 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} -370 400 0 1 {name=M1
W=30
L=0.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -190 400 0 0 {name=M2
W=30
L=0.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} -280 140 2 0 {name=V1 value=1.5 savecurrent=false}
C {gnd.sym} -280 530 0 0 {name=l2 lab=0}
C {gnd.sym} -280 110 2 0 {name=l3 lab=0}
C {code_shown.sym} 390 100 0 0 {name=LCO only_toplevel=false value=".control
tran 3p 1.05u 50n 3p
linearize v(net3) - v(net2)
let v_out_diff = v(net3) - v(net2)
fft v_out_diff
let v_out_db = db(v_out_diff)
plot v_out_db xlimit 2.35G 2.55G
plot v_out_db xlimit 0 15G ylimit -150 0
.endc"}
C {code.sym} 440 330 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {ind.sym} -340 220 3 0 {name=L4
m=1
value=2.8n
footprint=1206
device=inductor}
C {res.sym} -170 280 0 0 {name=R1
value = 4
footprint=1206
device=resistor
m=1}
C {res.sym} -390 280 0 0 {name=R2
value=4
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} -300 500 0 0 {name=M3
W = 15
L=0.2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} -350 500 1 0 {name=V2 value=1 savecurrent=false}
C {gnd.sym} -380 500 1 0 {name=l5 lab=0}
C {capa.sym} -140 310 3 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -420 310 1 0 {name=C3
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
