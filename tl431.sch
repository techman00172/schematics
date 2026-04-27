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
</Symbol>
<Components>
  <VProbe Pr1 1 -140 10 28 -31 0 0>
  <VProbe Pr2 1 340 10 28 -31 0 0>
  <GND * 1 -130 30 0 0 0 0>
  <GND * 1 350 30 0 0 0 0>
  <GND * 1 -200 160 0 0 0 0>
  <Vdc V1 1 -200 130 18 -26 0 1 "1 2V" 1>
  <.DC DC1 1 -80 270 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <IProbe Pr3 1 20 100 -26 16 0 0>
  <R R2 1 120 140 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 120 200 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 -40 100 -26 15 0 0 "150 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 250 250 0 0 0 0>
  <Lib TL431 1 170 120 120 24 0 0 "VoltageReferences" 0 "TL431" 0>
</Components>
<Wires>
  <-150 30 -150 100 "" 0 0 0 "">
  <330 30 330 100 "" 0 0 0 "">
  <330 100 380 100 "" 0 0 0 "">
  <-70 100 -150 100 "" 0 0 0 "">
  <-150 100 -200 100 "" 0 0 0 "">
  <50 100 120 100 "" 0 0 0 "">
  <120 110 120 100 "" 0 0 0 "">
  <120 230 250 230 "" 0 0 0 "">
  <250 100 330 100 "" 0 0 0 "">
  <210 170 120 170 "" 0 0 0 "">
  <250 210 250 230 "" 0 0 0 "">
  <250 120 250 100 "" 0 0 0 "">
  <250 230 250 250 "" 0 0 0 "">
  <120 100 250 100 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 30 371 302 51 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/i(pr3)" #0000ff 0 3 1 0 0>
	<"ngspice/v(pr1)" #0000ff 0 3 1 0 0>
	<"ngspice/v(pr2)" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
