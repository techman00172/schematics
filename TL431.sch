<Qucs Schematic 25.2.0>
<Properties>
  <View=-359,-348,894,578,1,0,0>
  <Grid=10,10,1>
  <DataSet=tl431.dat>
  <DataDisplay=tl431.dpl>
  <OpenDisplay=0>
  <Script=tl431.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym 40 20 1 0 OUTPUT>
</Symbol>
<Components>
  <VProbe Pr1 1 -190 10 28 -31 0 0>
  <VProbe Pr2 1 310 10 28 -31 0 0>
  <GND * 1 -180 30 0 0 0 0>
  <GND * 1 320 30 0 0 0 0>
  <GND * 1 -200 160 0 0 0 0>
  <Vdc V1 1 -200 130 18 -26 0 1 "1 2V" 1>
  <.DC DC1 1 -130 210 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <IProbe Pr3 1 -80 70 -26 16 0 0>
  <R R1 1 20 100 -26 15 0 0 "150 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 300 250 0 0 0 0>
  <Lib TL431 1 220 120 120 24 0 0 "VoltageReferences" 0 "TL431" 0>
  <Port OUTPUT 1 380 100 4 -56 0 2 "1" 0 "analog" 0>
  <R R2 1 130 140 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 130 200 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <-200 30 -200 100 "" 0 0 0 "">
  <300 30 300 100 "" 0 0 0 "">
  <130 110 130 100 "" 0 0 0 "">
  <260 170 130 170 "" 0 0 0 "">
  <300 210 300 230 "" 0 0 0 "">
  <300 120 300 100 "" 0 0 0 "">
  <300 230 300 250 "" 0 0 0 "">
  <-110 100 -200 100 "" 0 0 0 "">
  <50 100 130 100 "" 0 0 0 "">
  <-10 100 -50 100 "" 0 0 0 "">
  <-110 70 -110 100 "" 0 0 0 "">
  <-50 70 -50 100 "" 0 0 0 "">
  <300 100 380 100 "" 0 0 0 "">
  <300 230 130 230 "" 0 0 0 "">
  <130 100 300 100 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 90 352 304 52 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(pr1)" #0000ff 0 3 1 0 0>
	<"ngspice/i(pr3)" #0000ff 0 3 1 0 0>
	<"ngspice/v(pr2)" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
