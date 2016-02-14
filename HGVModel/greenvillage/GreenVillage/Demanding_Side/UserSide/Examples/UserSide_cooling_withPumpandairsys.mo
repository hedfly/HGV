within GreenVillage.Demanding_Side.UserSide.Examples;
model UserSide_cooling_withPumpandairsys
  extends Modelica.Icons.Example;
 package Medium = Buildings.Media.Water "Medium model";
 package MediumAir = Buildings.Media.Air;
 parameter Real P[:]={0,50^2,100^2} "Hydraulic efficiecny";
  UserSide_withOnePump_air
           heatPump_with_load_input(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 1000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    ti_SF=60,
    k_SF=1,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    k_air=0.01,
    ti_air=120,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
    annotation (Placement(transformation(extent={{-26,-20},{18,32}})));
  Modelica.Blocks.Sources.Constant CoolOn(k=1)
    annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
  Modelica.Blocks.Sources.Constant Speed(k=273.15 + 5)
    annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
  Buildings.Fluid.Sources.FixedBoundary sinDem(redeclare package Medium =
        Medium, nPorts=1) annotation (Placement(transformation(extent={{10,-10},
            {-10,10}}, origin={50,-70})));
  Modelica.Blocks.Sources.Ramp ramp(duration=3600*2, height=1000*3)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
  Modelica.Blocks.Sources.Constant On(k=1)
    annotation (Placement(transformation(extent={{80,20},{60,40}})));
  Modelica.Blocks.Sources.Constant TSet(k=273.15 + 15)
    annotation (Placement(transformation(extent={{-80,10},{-60,30}})));
  Modelica.Blocks.Sources.Constant TOut(k=273.15 + 25)
    annotation (Placement(transformation(extent={{-80,78},{-60,98}})));
  Buildings.Fluid.Sources.FixedBoundary souDem(
    redeclare package Medium = Medium,
    nPorts=1,
    T=302.59) annotation (Placement(transformation(extent={{-10,-10},{10,10}},
          origin={-68,-70})));
equation

  connect(CoolOn.y, heatPump_with_load_input.CoolOn) annotation (Line(
      points={{-59,-10},{-40,-10},{-40,-4.4},{-30.4,-4.4}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Speed.y, heatPump_with_load_input.TSetPoi) annotation (Line(
      points={{-59,-40},{-40,-40},{-40,-14.8},{-30.4,-14.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(ramp.y, heatPump_with_load_input.Q) annotation (Line(
      points={{-59,50},{-40,50},{-40,16.4},{-30.4,16.4}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(sinDem.ports[1], heatPump_with_load_input.port_b) annotation (Line(
      points={{40,-70},{4.8,-70},{4.8,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(On.y, heatPump_with_load_input.On) annotation (Line(
      points={{59,30},{40,30},{40,21.6},{21.96,21.6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TSet.y, heatPump_with_load_input.SetPoi) annotation (Line(
      points={{-59,20},{-46,20},{-46,6},{-30.4,6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TOut.y, heatPump_with_load_input.T_in) annotation (Line(
      points={{-59,88},{-36,88},{-36,26.8},{-30.4,26.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(souDem.ports[1], heatPump_with_load_input.port_a) annotation (Line(
      points={{-58,-70},{-12.8,-70},{-12.8,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}), graphics),
    experiment(StopTime=1e+006),
    __Dymola_experimentSetupOutput);
end UserSide_cooling_withPumpandairsys;
