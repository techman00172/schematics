v {xschem version=3.4.8RC file_version=1.3
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
F {}
E {}
B 2 620 -750 1500 -360 {flags=graph
y1=-5.1
y2=3.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00032195059
x2=0.00047294554
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
hilight_wave=-1}
B 2 820 -725 964 -641 {flags=image,unscaled
alpha=0.8
image_data=iVBORw0KGgoAAAANSUhEUgAAAJAAAABUCAIAAADiXSlNAAAABmJLR0QA/wD/AP+gvaeTAAAAVElEQVR4nO3aMQEAMAzDsDIsfzajkazSbwaeAQAAAPjS7sobcwAAAAAAAAAAclSPKJdzAAAAAAAAAAByVI8ol3MAAAAAAAAAAHJUjyiXcwAAAIBKD887Ge0n8rxEAAAAAElFTkSuQmCC}
T {LM324 CROSSOVER DISTORTION} 25 -465 0 0 0.4 0.4 {}
N 190 -305 230 -305 {lab=sigin}
N 310 -365 310 -335 {lab=VCC}
N 310 -195 310 -165 {lab=VSS}
N 540 -265 540 -245 {lab=sigout}
N 490 -265 490 -245 {lab=sigout}
N 440 -265 440 -115 {lab=sigout}
N 230 -115 440 -115 {lab=sigout}
N 230 -225 230 -115 {lab=sigout}
N 540 -285 540 -265 {lab=sigout}
N 80 -305 80 -275 {lab=0}
N 440 -265 560 -265 {lab=sigout}
C {lab_pin.sym} 310 -165 0 0 {name=p10 lab=VSS}
C {lab_pin.sym} 310 -365 0 0 {name=p1 lab=VCC}
C {lab_pin.sym} 560 -265 2 0 {name=p2 lab=sigout}
C {lab_pin.sym} 200 -305 0 0 {name=p3 lab=sigin}
C {res.sym} 540 -215 0 0 {name=r1 m=1 value=1k}
C {capa.sym} 490 -215 0 0 {name=c1 m=1 value=1n}
C {lab_pin.sym} 490 -185 0 0 {name=p5 lab=VSS}
C {lab_pin.sym} 540 -185 0 0 {name=p6 lab=VSS}
C {noconn.sym} 190 -305 1 0 {name=l2}
C {noconn.sym} 310 -335 2 0 {name=l3}
C {res.sym} 540 -315 0 0 {name=r2 m=1 value=1k}
C {vsource.sym} 80 -335 0 0 {name=V1 value=10 savecurrent=false}
C {vsource.sym} 80 -245 0 0 {name=V2 value=10 savecurrent=false}
C {lab_pin.sym} 80 -215 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 80 -365 0 0 {name=p11 lab=VCC}
C {lab_pin.sym} 80 -285 0 0 {name=p7 lab=0}
C {title.sym} 190 -60 0 0 {name=l1 author="T.Porter"}
C {lab_pin.sym} 540 -345 2 0 {name=p4 lab=VCC}
C {code_shown.sym} 20 -825 0 0 {name=s2 only_toplevel=false value="

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
C {lm324.sym} 310 -265 0 0 {name=x1}
