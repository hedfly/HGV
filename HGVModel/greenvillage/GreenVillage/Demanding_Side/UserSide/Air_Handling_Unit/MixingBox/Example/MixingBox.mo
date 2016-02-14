within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.MixingBox.Example;
model MixingBox

    extends Modelica.Icons.Example;
  package Medium = Buildings.Media.Air;
  Air_Handling_Unit.MixingBox.MixingBox mixingBox(
    redeclare package Medium_Air = Medium,
    mOut_flow_nominal=10,
    dpOut_nominal=1000,
    mRec_flow_nominal=20,
    mExh_flow_nominal=10,
    dpExh_nominal=1000,
    dpRec_nominal=2000,
    senTem(T_start=299.82),
    eco(y_start=0.5))                                             annotation (Placement(transformation(extent={{-28,-20},{26,24}})));
  Buildings.Fluid.Sources.Boundary_pT Ret(
    redeclare package Medium = Medium,
    use_p_in=false,
    nPorts=1,
    p(displayUnit="Pa") = 3000,
    T=293.15) annotation (Placement(transformation(extent={{82,-40},{62,-20}})));
  Buildings.Fluid.Sources.Boundary_pT Fresh(
    redeclare package Medium = Medium,
    nPorts=2,
    use_p_in=false,
    p(displayUnit="Pa") = 2000,
    T=303.15)
    annotation (Placement(transformation(extent={{-100,-2},{-80,18}})));
    Modelica.Blocks.Sources.Ramp yRam(
    startTime=0,
    height=-0.5,
    offset=0.5,
    duration=100)
                 annotation (Placement(transformation(extent={{-100,40},{-80,60}})));
  Buildings.Fluid.Sources.Boundary_pT Sup(
    redeclare package Medium = Medium,
    use_p_in=false,
    nPorts=1,
    p(displayUnit="Pa") = 1000,
    T=293.15) annotation (Placement(transformation(extent={{80,24},{60,44}})));
equation

  connect(Fresh.ports[1], mixingBox.port_Fre) annotation (Line(
      points={{-80,10},{-28,10},{-28,10.8}},
      color={0,127,255},
      thickness=1));
  connect(yRam.y, mixingBox.y) annotation (Line(
      points={{-79,50},{-60,50},{-60,19.6},{-33.4,19.6}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(mixingBox.port_Sup, Sup.ports[1]) annotation (Line(
      points={{26,10.8},{40,10.8},{40,34},{60,34}},
      color={0,127,255},
      thickness=1));
  connect(mixingBox.port_Ret, Ret.ports[1]) annotation (Line(
      points={{26,-6.8},{40,-6.8},{40,-30},{62,-30}},
      color={0,127,255},
      thickness=1));
  connect(mixingBox.port_Exh, Fresh.ports[2]) annotation (Line(
      points={{-28,-6.8},{-74,-6.8},{-74,6},{-80,6}},
      color={0,127,255},
      thickness=1));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})),
    experiment(StopTime=200),
__Dymola_Commands(file="modelica://PNNL_building_system/Resources/Scripts/Air_side_system/Air_Handling_Unit/MixingBox/Examples/MixingBox.mos"
        "Simulate and plot"),
    __Dymola_experimentSetupOutput);
end MixingBox;
