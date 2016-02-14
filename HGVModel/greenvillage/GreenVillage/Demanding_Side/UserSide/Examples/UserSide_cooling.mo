within GreenVillage.Demanding_Side.UserSide.Examples;
model UserSide_cooling
  extends Modelica.Icons.Example;
 package Medium = Buildings.Media.Water "Medium model";
  UserSide heatPump_with_load_input(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-26,-20},{18,32}})));
  Modelica.Blocks.Sources.Constant CoolOn(k=1)
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  Modelica.Blocks.Sources.Constant Speed(k=273.15 + 5)
    annotation (Placement(transformation(extent={{-80,-30},{-60,-10}})));
  Buildings.Fluid.Sources.FixedBoundary sinDem(redeclare package Medium =
        Medium, nPorts=1) annotation (Placement(transformation(extent={{10,-10},
            {-10,10}}, origin={50,-72})));
  Buildings.Fluid.Sources.MassFlowSource_T souDem(
    nPorts=1,
    redeclare package Medium = Medium,
    use_T_in=false,
    m_flow=heatPump_with_load_input.m1_flow_nominal,
    T=302.59)
    annotation (Placement(transformation(extent={{-80,-82},{-60,-62}})));
  Modelica.Blocks.Sources.Ramp ramp(duration=3600*2, height=1000*3)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
  Modelica.Blocks.Sources.Constant On(k=1)
    annotation (Placement(transformation(extent={{80,20},{60,40}})));
equation

  connect(CoolOn.y, heatPump_with_load_input.CoolOn) annotation (Line(
      points={{-59,10},{-40,10},{-40,6},{-30.4,6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Speed.y, heatPump_with_load_input.TSetPoi) annotation (Line(
      points={{-59,-20},{-40,-20},{-40,-9.6},{-30.4,-9.6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input.port_a, souDem.ports[1]) annotation (Line(
      points={{-12.8,-20},{-12.8,-72},{-60,-72}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(ramp.y, heatPump_with_load_input.Q) annotation (Line(
      points={{-59,50},{-40,50},{-40,21.6},{-30.4,21.6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(sinDem.ports[1], heatPump_with_load_input.port_b) annotation (Line(
      points={{40,-72},{4.8,-72},{4.8,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(On.y, heatPump_with_load_input.On) annotation (Line(
      points={{59,30},{40,30},{40,21.6},{21.96,21.6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}), graphics),
    experiment(StopTime=1e+006),
    __Dymola_experimentSetupOutput);
end UserSide_cooling;
