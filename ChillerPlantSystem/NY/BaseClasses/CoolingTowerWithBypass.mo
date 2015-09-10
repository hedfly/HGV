within ChillerPlantSystem.NY.BaseClasses;
model CoolingTowerWithBypass
  "This model is designed to simulate the cooling tower system with three way bypass valve"
  import ChillerPlantSystem;
  replaceable package MediumCW =
      Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium condenser water side";
  parameter Modelica.SIunits.Temperature TCWSet
    "The temperatre setpoint of the condenser water entering the chiller plant";
  parameter Modelica.SIunits.Power P_nominal "Nominal tower power (at y=1)";
  parameter Modelica.SIunits.TemperatureDifference dTCW_nominal
    "Temperature difference between the outlet and inlet of the tower";
  parameter Modelica.SIunits.TemperatureDifference dTAppC_nominal
    "Nominal approach temperature";
  parameter Modelica.SIunits.Temperature TWetBulC_nominal
    "Nominal wet bulb temperature";
  parameter Modelica.SIunits.TemperatureDifference dTAppB_nominal
    "Nominal approach temperature";
  parameter Modelica.SIunits.Temperature TWetBulB_nominal
    "Nominal wet bulb temperature";
  parameter Modelica.SIunits.TemperatureDifference dTAppA_nominal
    "Nominal approach temperature";
  parameter Modelica.SIunits.Temperature TWetBulA_nominal
    "Nominal wet bulb temperature";
  parameter Modelica.SIunits.Pressure dP_nominal
    "Pressure difference between the outlet and inlet of the tower ";
  parameter Modelica.SIunits.MassFlowRate mCW_flow_nominal
    "Nominal mass flow rate at condenser water wide";
  parameter Real GaiPi "Gain of the tower PI controller";
  parameter Real tIntPi "Integration time of the tower PI controller";
  parameter Real v_flow_ratio[:] "Volume flow rate ratio";
  parameter Real eta[:] "Fan efficiency";
  parameter Modelica.SIunits.Pressure dPByp_nominal
    "Pressure difference between the outlet and inlet of the bypass valve ";
  parameter Modelica.SIunits.Temperature TLowLim
    "The lower temperatre limit of condenser water entering the chiller plant";
  ChillerPlantSystem.NY.BaseClasses.MultiCoolingTowerSystem mulCooTowSys(
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCW_nominal=dTCW_nominal,
    dP_nominal=dP_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    eta=eta,
    v_flow_ratio=v_flow_ratio,
    dTAppC_nominal=dTAppC_nominal,
    TWetBulC_nominal=TWetBulC_nominal,
    dTAppB_nominal=dTAppB_nominal,
    TWetBulB_nominal=TWetBulB_nominal,
    dTAppA_nominal=dTAppA_nominal,
    TWetBulA_nominal=TWetBulA_nominal)
    annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
  ChillerPlantSystem.BaseClasses.Components.Bypass byp(
    redeclare package MediumCW = MediumCW,
    m_flow_nominal=3*mCW_flow_nominal,
    dPByp_nominal=dPByp_nominal)
    annotation (Placement(transformation(extent={{0,-20},{20,0}})));
  Modelica.Blocks.Interfaces.RealInput On[3] "On signal"
    annotation (Placement(transformation(extent={{-118,51},{-100,69}})));
  ChillerPlantSystem.BaseClasses.Control.BypassControl bypCon(TSet=TLowLim)
    annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        MediumCW)
    annotation (Placement(transformation(extent={{90,50},{110,70}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        MediumCW)
    annotation (Placement(transformation(extent={{90,-90},{110,-70}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCWEntChi(
      redeclare package Medium = MediumCW, m_flow_nominal=3*mCW_flow_nominal)
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  Modelica.Blocks.Interfaces.RealInput TWetBul
    "Entering air wet bulb temperature"
    annotation (Placement(transformation(extent={{-118,-69},{-100,-51}})));
  Modelica.Blocks.Interfaces.RealOutput P[3] "Power of the cooling tower"
    annotation (Placement(transformation(extent={{100,-50},{120,-30}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=TCWSet)
    annotation (Placement(transformation(extent={{-80,-86},{-60,-66}})));
equation
  connect(mulCooTowSys.port_b_CW, byp.port_a2) annotation (Line(
      points={{-20,-30},{-8,-30},{-8,-14},{0,-14}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(byp.port_b1, mulCooTowSys.port_a_CW) annotation (Line(
      points={{0,-6},{-60,-6},{-60,-30},{-40,-30}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(mulCooTowSys.On, On) annotation (Line(
      points={{-40.9,-26},{-80,-26},{-80,60},{-109,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(bypCon.y, byp.yBypVal) annotation (Line(
      points={{-39,30},{-20,30},{-20,-2},{-2,-2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(byp.port_a1, port_a) annotation (Line(
      points={{20,-6},{40,-6},{40,60},{100,60}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(byp.port_b2, senTCWEntChi.port_a) annotation (Line(
      points={{20,-14},{40,-14},{40,-80},{60,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTCWEntChi.port_b, port_b) annotation (Line(
      points={{80,-80},{100,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTCWEntChi.T, bypCon.T) annotation (Line(
      points={{70,-69},{70,6},{20,6},{20,60},{-72,60},{-72,30},{-62,30}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(mulCooTowSys.TWetBul, TWetBul) annotation (Line(
      points={{-40.9,-36},{-80,-36},{-80,-60},{-109,-60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(mulCooTowSys.P, P) annotation (Line(
      points={{-19,-26},{20,-26},{20,-40},{110,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(realExpression.y, mulCooTowSys.TCWSet)
    annotation (Line(
      points={{-59,-76},{-52,-76},{-52,-23.1},{-40.9,-23.1}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                               graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Text(
          extent={{-42,-144},{52,-112}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(
          extent={{-40,68},{-12,40}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-36,76},{-16,68}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-36,72},{-28,70}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-24,72},{-16,70}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-34,60},{-36,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-34,60},{-32,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-26,60},{-28,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-26,60},{-24,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-18,60},{-20,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-18,60},{-16,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Rectangle(
          extent={{-40,8},{-12,-20}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-36,16},{-16,8}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-36,12},{-28,10}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-24,12},{-16,10}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-34,0},{-36,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-34,0},{-32,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-26,0},{-28,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-26,0},{-24,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-18,0},{-20,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-18,0},{-16,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Rectangle(
          extent={{-40,-52},{-12,-80}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-36,-44},{-16,-52}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-36,-48},{-28,-50}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-24,-48},{-16,-50}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-34,-60},{-36,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-34,-60},{-32,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-26,-60},{-28,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-26,-60},{-24,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-18,-60},{-20,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-18,-60},{-16,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{60,60},{60,-60}},
          color={0,0,255},
          smooth=Smooth.None),
        Polygon(
          points={{60,0},{50,10},{70,10},{60,0}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{60,0},{50,-12},{70,-12},{60,0}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{90,60},{100,60},{-34,60}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,60},{0,0},{-34,0}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,0},{0,-60},{-34,-60}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-12,40},{10,40},{10,-80},{60,-80},{60,-60}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{100,-80},{60,-80}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-12,-20},{10,-20}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-12,-80},{10,-80}},
          color={0,0,255},
          smooth=Smooth.None)}),
    Documentation(revisions="<html>
<ul>
<li>
March 30, 2014 by Sen Huang:<br/>
First implementation.
</li>
</ul>
</html>"));
end CoolingTowerWithBypass;
