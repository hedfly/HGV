within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Coil;
model Coil_2Way
   replaceable package Medium_Air =
      Modelica.Media.Interfaces.PartialMedium;
   replaceable package Medium_Water =
      Modelica.Media.Interfaces.PartialMedium;
   parameter Modelica.SIunits.MassFlowRate mAir_flow_nominal
    "The nominal mass flow rate of the air";
   parameter Modelica.SIunits.MassFlowRate mWater_flow_nominal
    "The nominal mass flow rate of the water";
   parameter Modelica.SIunits.Pressure dpAir_nominal
    "The pressure drop of the air";
   parameter Modelica.SIunits.Pressure dpWater_nominal
    "The pressure drop of the water";
   parameter Modelica.SIunits.Temperature TAir_a_nominal
    "The nominal temperature of the air entering the cooling water coil";
   parameter Modelica.SIunits.Temperature TAir_b_nominal
    "The nominal temperature of the air leaving the cooling water coil";
   parameter Modelica.SIunits.Temperature TWater_a_nominal
    "The nominal temperature of the water entering the cooling water coil";
   parameter Modelica.SIunits.Temperature TWater_b_nominal
    "The nominal temperature of the air entering the cooling water coil";
  Buildings.Fluid.HeatExchangers.WetCoilCounterFlow cooCoi(
    redeclare package Medium1 = Medium_Water,
    redeclare package Medium2 = Medium_Air,
    m1_flow_nominal=mWater_flow_nominal,
    m2_flow_nominal=mAir_flow_nominal,
    dp2_nominal=dpAir_nominal,
    UA_nominal=UA,
    dp1_nominal=0)
    annotation (Placement(transformation(extent={{10,12},{-10,-8}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_Water(redeclare package Medium
      = Medium_Water)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-30,-110},{-10,-90}}),
        iconTransformation(extent={{-30,-110},{-10,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_Water(redeclare package Medium
      = Medium_Water)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{10,-110},{30,-90}}),
        iconTransformation(extent={{10,-110},{30,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_Air(redeclare package Medium = Medium_Air)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_Air(redeclare package Medium = Medium_Air)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{92,30},{112,50}})));

 Buildings.Fluid.Actuators.Valves.TwoWayQuickOpening val(
    redeclare package Medium = Medium_Water,
    m_flow_nominal=mWater_flow_nominal,
    dpValve_nominal=dpWater_nominal) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-20,-34})));
  Modelica.Blocks.Interfaces.RealInput yVal
    "Actuator position (0: closed, 1: open)"                                         annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TSen(
      redeclare package Medium = Medium_Air, m_flow_nominal=mAir_flow_nominal)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(extent={{-12,12},{12,-12}}, origin={70,40})));
  Modelica.Blocks.Interfaces.RealOutput TAirLeaCoil
    "Temperature of the passing fluid"                                                 annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  parameter Real UA "W/K";
equation
  connect(cooCoi.port_a1, port_a_Water) annotation (Line(
      points={{10,-4},{20,-4},{20,-100}},
      color={0,127,255},
      thickness=1));
  connect(cooCoi.port_a2, port_a_Air) annotation (Line(
      points={{-10,8},{-40,8},{-40,40},{-100,40}},
      color={0,127,255},
      thickness=0.5));
  connect(cooCoi.port_b1, val.port_a) annotation (Line(
      points={{-10,-4},{-20,-4},{-20,-24}},
      color={0,127,255},
      thickness=1));
  connect(val.port_b, port_b_Water) annotation (Line(
      points={{-20,-44},{-20,-72},{-20,-100}},
      color={0,127,255},
      thickness=1));
  connect(val.y, yVal) annotation (Line(points={{-32,-34},{-76,-34},{-76,0},{
          -110,0}},                                                                    color={0,0,127},
      pattern=LinePattern.Dash));
  connect(cooCoi.port_b2, TSen.port_a) annotation (Line(
      points={{10,8},{40,8},{40,40},{58,40}},
      color={0,127,255},
      thickness=0.5));
  connect(TSen.port_b, port_b_Air) annotation (Line(
      points={{82,40},{88,40},{102,40}},
      color={0,127,255},
      thickness=0.5));
  connect(TSen.T, TAirLeaCoil) annotation (Line(
      points={{70,26.8},{70,26.8},{70,0},{110,0}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics={
        Rectangle(
          extent={{-40,60},{40,-60}},
          lineColor={28,108,200},
          lineThickness=1),
        Line(
          points={{-40,60},{40,-60}},
          color={28,108,200},
          thickness=1),
        Text(
          extent={{-4,58},{46,0}},
          lineColor={28,108,200},
          lineThickness=1,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="-"),
        Line(
          points={{-20,-60},{-20,-94}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{20,-60},{20,-94}},
          color={28,108,200},
          thickness=1),
        Polygon(
          points={{-24,-74},{-20,-80},{-16,-74},{-24,-74}},
          lineColor={28,108,200},
          lineThickness=1,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-24,-86},{-20,-80},{-16,-86},{-24,-86}},
          lineColor={28,108,200},
          lineThickness=1,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
                                 Text(
          extent={{-147,137},{153,97}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}),            Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}})));
end Coil_2Way;
