within GreenVillage.Demanding_Side.HeatPump.Examples;
model HeatPump_heatingwithoutcontrol
  extends Modelica.Icons.Example;
 package Medium = Buildings.Media.Water "Medium model";
  HeatPump_withoutControl heatPump_with_load_input(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-14,-10},{14,10}})));
  Buildings.Fluid.Sources.MassFlowSource_T souSup(
    nPorts=1,
    redeclare package Medium = Medium,
    use_T_in=false,
    m_flow=heatPump_with_load_input.m2_flow_nominal,
    T=302.59) annotation (Placement(transformation(extent={{60,40},{40,60}})));
  Buildings.Fluid.Sources.FixedBoundary sinSup(nPorts=1, redeclare package
      Medium = Medium) annotation (Placement(transformation(extent={{-10,-10},{
            10,10}}, origin={-70,50})));
  Modelica.Blocks.Sources.Constant CoolOn(k=0)
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  Modelica.Blocks.Sources.Constant Speed(k=1)
    annotation (Placement(transformation(extent={{-80,-30},{-60,-10}})));
  Buildings.Fluid.Sources.FixedBoundary sinDem(nPorts=1, redeclare package
      Medium = Medium) annotation (Placement(transformation(extent={{-10,-10},{
            10,10}}, origin={-70,-50})));
  Buildings.Fluid.Sources.MassFlowSource_T souDem(
    nPorts=1,
    redeclare package Medium = Medium,
    use_T_in=false,
    m_flow=heatPump_with_load_input.m1_flow_nominal,
    T=285.15) annotation (Placement(transformation(extent={{62,-60},{42,-40}})));
equation

  connect(souSup.ports[1], heatPump_with_load_input.port_a2) annotation (Line(
      points={{40,50},{6,50},{6,10}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(sinSup.ports[1], heatPump_with_load_input.port_b2) annotation (Line(
      points={{-60,50},{-6,50},{-6,10}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(CoolOn.y, heatPump_with_load_input.CoolOn) annotation (Line(
      points={{-59,10},{-40,10},{-40,8},{-16,8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Speed.y, heatPump_with_load_input.y) annotation (Line(
      points={{-59,-20},{-40,-20},{-40,-8},{-16,-8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(souDem.ports[1], heatPump_with_load_input.port_a1) annotation (Line(
      points={{42,-50},{6,-50},{6,-10}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input.port_b1, sinDem.ports[1]) annotation (Line(
      points={{-6,-10},{-6,-50},{-60,-50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}), graphics),
    experiment(StopTime=1000),
    __Dymola_experimentSetupOutput);
end HeatPump_heatingwithoutcontrol;
