v {xschem version=3.4.5 file_version=1.2
*
* This file is part of XSCHEM,
* a schematic capture and Spice/Vhdl/Verilog netlisting tool for circuit
* simulation.
* Copyright (C) 1998-2024 Stefan Frederik Schippers
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
}
G {}
K {}
V {}
S {}
E {}
B 2 240 -1280 1220 -890 {flags=graph
y1=-5.1
y2=3.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00036972309
x2=0.00045025373
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="sigin
sigout
"
color="7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
T {LM324 CROSSOVER DISTORTION} 450 -510 0 0 0.4 0.4 {}
N 520 -340 560 -340 {lab=sigin}
N 640 -400 640 -370 {lab=VCC}
N 640 -230 640 -200 {lab=VSS}
N 770 -300 960 -300 {lab=sigout}
N 900 -300 900 -280 {lab=sigout}
N 820 -300 820 -280 {lab=sigout}
N 770 -300 770 -150 {lab=sigout}
N 560 -150 770 -150 {lab=sigout}
N 560 -260 560 -150 {lab=sigout}
N 900 -320 900 -300 {lab=sigout}
N 340 -300 340 -270 {lab=0}
C {lab_pin.sym} 640 -200 0 0 {name=p10 lab=VSS}
C {lab_pin.sym} 640 -400 0 0 {name=p1 lab=VCC}
C {lab_pin.sym} 960 -300 2 0 {name=p2 lab=sigout}
C {lab_pin.sym} 530 -340 0 0 {name=p3 lab=sigin}
C {res.sym} 900 -250 0 0 {name=r1 m=1 value=1k}
C {capa.sym} 820 -250 0 0 {name=c1 m=1 value=1n}
C {lab_pin.sym} 820 -220 0 0 {name=p5 lab=VSS}
C {lab_pin.sym} 900 -220 0 0 {name=p6 lab=VSS}
C {noconn.sym} 520 -340 1 0 {name=l2}
C {noconn.sym} 640 -370 2 0 {name=l3}
C {res.sym} 900 -350 0 0 {name=r2 m=1 value=1k}
C {vsource.sym} 340 -330 0 0 {name=V1 value=10 savecurrent=false}
C {vsource.sym} 340 -240 0 0 {name=V2 value=10 savecurrent=false}
C {lab_pin.sym} 340 -210 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 340 -360 0 0 {name=p11 lab=VCC}
C {lab_pin.sym} 340 -280 0 0 {name=p7 lab=0}
C {title.sym} 190 -60 0 0 {name=l1 author="T.Porter"}
C {lab_pin.sym} 900 -380 2 0 {name=p4 lab=VCC}
C {code_shown.sym} 490 -850 0 0 {name=s2 only_toplevel=false value="

.option RUNLVL=5 post
.temp  25
.include lm324.mod
vp sigin 0 pwl 0 0 100n 2 200u 2 201u 3 400u 3 401u -5


.control
tran 0.1u 500u
run
plot sigin sigout
rusage all
write lm324-xover-distort.raw
** quit 0
.endc
"


}
C {lm324.sym} 640 -300 0 0 {name=x1}
