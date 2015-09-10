within ChillerPlantSystem.NY.BaseClasses;
model MultiCoolingTowerSystem
  "This model is designed to simulate the cooling tower systwm with three towers"
  import ChillerPlantSystem;
  replaceable package MediumCW =
      Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium in the  condenser water side";
  parameter Modelica.SIunits.Power P_nominal
    "Nominal cooling tower power (at y=1)";
  parameter Modelica.SIunits.TemperatureDifference dTCW_nominal
    "Temperature difference between the outlet and inlet of the tower ";
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
  parameter Real v_flow_ratio[:] "Air volume flow rate ratio";
  parameter Real eta[:] "Fan efficiency";
  ChillerPlantSystem.BaseClasses.Components.CoolingTowerModule
                                                         cooTowC(
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCW_nominal=dTCW_nominal,
    dP_nominal=dP_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    eta=eta,
    v_flow_ratio=v_flow_ratio,
    dTApp_nominal=dTAppC_nominal,
    TWetBul_nominal=TWetBulC_nominal)
             annotation (Placement(transformation(extent={{-10,30},{10,50}})));
  ChillerPlantSystem.BaseClasses.Components.CoolingTowerModule
                                                         cooTowB(
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCW_nominal=dTCW_nominal,
    dP_nominal=dP_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    eta=eta,
    v_flow_ratio=v_flow_ratio,
    dTApp_nominal=dTAppB_nominal,
    TWetBul_nominal=TWetBulB_nominal)
             annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  ChillerPlantSystem.BaseClasses.Components.CoolingTowerModule
                                                         cooTowA(
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCW_nominal=dTCW_nominal,
    dP_nominal=dP_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    eta=eta,
    v_flow_ratio=v_flow_ratio,
    dTApp_nominal=dTAppA_nominal,
    TWetBul_nominal=TWetBulA_nominal)
             annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_CW(redeclare package Medium = MediumCW)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_CW(redeclare package Medium = MediumCW)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Blocks.Interfaces.RealInput TWetBul
    "Entering air wet bulb temperature"
    annotation (Placement(transformation(extent={{-118,-69},{-100,-51}})));
  Modelica.Blocks.Interfaces.RealInput TCWSet
    "Temperature set point of the condenser water"
    annotation (Placement(transformation(extent={{-118,60},{-100,78}})));
  Modelica.Blocks.Interfaces.RealInput On[3] "On signal"
    annotation (Placement(transformation(extent={{-118,31},{-100,49}})));
  Modelica.Blocks.Interfaces.RealOutput P[3] "Power of the cooling tower"
    annotation (Placement(transformation(extent={{100,30},{120,50}})));
equation
  connect(cooTowC.port_a_CW, cooTowA.port_a_CW) annotation (Line(
      points={{-10,40},{-40,40},{-40,-40},{-10,-40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowB.port_a_CW, cooTowA.port_a_CW) annotation (Line(
      points={{-10,0},{-40,0},{-40,-40},{-10,-40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowC.port_b_CW, cooTowA.port_b_CW) annotation (Line(
      points={{10,40},{40,40},{40,-40},{10,-40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowB.port_b_CW, cooTowA.port_b_CW) annotation (Line(
      points={{10,0},{40,0},{40,-40},{10,-40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowB.port_a_CW, port_a_CW) annotation (Line(
      points={{-10,0},{-100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowB.port_b_CW, port_b_CW) annotation (Line(
      points={{10,0},{100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowC.TWetBul, TWetBul) annotation (Line(
      points={{-12,36},{-44,36},{-44,-60},{-109,-60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowB.TWetBul, TWetBul) annotation (Line(
      points={{-12,-4},{-44,-4},{-44,-60},{-109,-60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowA.TWetBul, TWetBul) annotation (Line(
      points={{-12,-44},{-44,-44},{-44,-60},{-109,-60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowC.On, On[3]) annotation (Line(
      points={{-12,44},{-52,44},{-52,46},{-109,46}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowB.On, On[2]) annotation (Line(
      points={{-12,4},{-54,4},{-54,40},{-109,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowA.On, On[1]) annotation (Line(
      points={{-12,-36},{-58,-36},{-58,34},{-109,34}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowC.TSet, TCWSet)
    annotation (Line(
      points={{-12,48},{-48,48},{-48,69},{-109,69}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowB.TSet, TCWSet)
    annotation (Line(
      points={{-12,8},{-48,8},{-48,69},{-109,69}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowC.P, P[3])
    annotation (Line(
      points={{11,36},{56,36},{56,46.6667},{110,46.6667}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowB.P, P[2]) annotation (Line(
      points={{11,-4},{60,-4},{60,40},{110,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowA.P, P[1])
    annotation (Line(
      points={{11,-44},{64,-44},{64,33.3333},{110,33.3333}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooTowA.TSet, TCWSet) annotation (Line(
      points={{-12,-32},{-48,-32},{-48,69},{-109,69}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Text(
          extent={{-44,-144},{50,-112}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(
          extent={{-14,68},{14,40}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-10,76},{10,68}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-10,72},{-2,70}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{2,72},{10,70}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-8,60},{-10,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-8,60},{-6,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,60},{-2,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,60},{2,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{8,60},{6,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{8,60},{10,54}},
          color={255,0,0},
          smooth=Smooth.None),
        Rectangle(
          extent={{-14,8},{14,-20}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-10,16},{10,8}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-10,12},{-2,10}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{2,12},{10,10}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-8,0},{-10,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-8,0},{-6,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,0},{-2,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,0},{2,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{8,0},{6,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{8,0},{10,-6}},
          color={255,0,0},
          smooth=Smooth.None),
        Rectangle(
          extent={{-14,-52},{14,-80}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-10,-44},{10,-52}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-10,-48},{-2,-50}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{2,-48},{10,-50}},
          lineColor={255,255,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-8,-60},{-10,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-8,-60},{-6,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,-60},{-2,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{0,-60},{2,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{8,-60},{6,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{8,-60},{10,-66}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-100,0},{-40,0},{-40,60},{8,60}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-40,0},{8,0}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{-40,0},{-40,-60},{8,-60}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{14,40},{40,40},{40,0},{90,0}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{14,-20},{40,-20},{40,0}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{14,-80},{40,-80},{40,-20}},
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
end MultiCoolingTowerSystem;
