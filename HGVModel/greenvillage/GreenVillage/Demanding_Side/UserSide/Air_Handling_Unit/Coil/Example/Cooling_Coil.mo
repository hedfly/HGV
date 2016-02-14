within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Coil.Example;
model Cooling_Coil
    extends Modelica.Icons.Example;
  package MediumWat = Buildings.Media.Water;
  package MediumAir = Buildings.Media.Air;

  Coil_2Way Coil(
    redeclare package Medium_Air = MediumAir,
    redeclare package Medium_Water = MediumWat,
    dpAir_nominal(displayUnit="Pa") = 100,
    dpWater_nominal(displayUnit="Pa") = 1000,
    mWater_flow_nominal=0.1,
    mAir_flow_nominal=0.1*4.2*7/10,
    UA=-0.1*4200*7/Buildings.Fluid.HeatExchangers.BaseClasses.lmtd(
        273.15 + 5,
        273.15 + 12,
        273.15 + 30,
        273.15 + 20),
    TAir_a_nominal=303.15,
    TAir_b_nominal=293.15,
    TWater_a_nominal=278.15,
    TWater_b_nominal=285.15)
    annotation (Placement(transformation(extent={{-28,-26},{24,30}})));
  Buildings.Fluid.Sources.Boundary_pT sinkAir(nPorts=1,
      redeclare package Medium = MediumAir)
    annotation (Placement(transformation(extent={{80,30},{60,50}})));
  Buildings.Fluid.Sources.MassFlowSource_T souAir(
    nPorts=1,
    redeclare package Medium = MediumAir,
    T=273.15 + 30,
    m_flow=0.1*4.2*7/10) "Source for water flow rate"
    annotation (Placement(transformation(extent={{-80,30},{-60,50}})));
  Buildings.Fluid.Sources.Boundary_pT sinkWat(
    nPorts=1,
    use_T_in=false,
    redeclare package Medium = MediumWat,
    p(displayUnit="Pa") = 1000)
    annotation (Placement(transformation(extent={{-82,-70},{-62,-50}})));
  Buildings.Fluid.Sources.Boundary_pT souWat(
    nPorts=1,
    use_T_in=false,
    redeclare package Medium = MediumWat,
    p(displayUnit="Pa") = 2000,
    T=273.15 + 5)
    annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
  Modelica.Blocks.Sources.Constant const(k=1)
                                         annotation (Placement(transformation(extent={{-80,-8},{-60,12}})));
equation

  connect(souAir.ports[1], Coil.port_a_Air) annotation (Line(
      points={{-60,40},{-60,40},{-40,40},{-40,13.2},{-28,13.2}},
      color={0,127,255},
      thickness=0.5));
  connect(Coil.port_b_Air, sinkAir.ports[1]) annotation (Line(
      points={{24.52,13.2},{40,13.2},{40,40},{60,40}},
      color={0,127,255},
      thickness=0.5));
  connect(souWat.ports[1], Coil.port_a_Water) annotation (Line(
      points={{60,-60},{40,-60},{40,-26},{3.2,-26}},
      color={0,127,255},
      thickness=1));
  connect(sinkWat.ports[1], Coil.port_b_Water) annotation (Line(
      points={{-62,-60},{-40,-60},{-40,-26},{-7.2,-26}},
      color={0,127,255},
      thickness=1));
  connect(const.y, Coil.yVal) annotation (Line(
      points={{-59,2},{-30.6,2}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})),
    experiment(StopTime=1000),
__Dymola_Commands(file="modelica://PNNL_building_system/Resources/Scripts/Air_side_system/Air_Handling_Unit/Coil/Examples/Cooling_Coil/Cooling_Coil.mos"
        "Simulate and plot"),
    __Dymola_experimentSetupOutput);
end Cooling_Coil;
