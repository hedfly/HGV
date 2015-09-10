within ChillerPlantSystem.BaseClasses.Components;
model Building "Simple model to simulate the demind side of the loop"
    replaceable package Medium =
      Buildings.Media.Interfaces.PartialSimpleMedium "Medium water";
    parameter Modelica.SIunits.MassFlowRate m_flow_nominal
    "Nominal mass flow rate ";
    parameter Modelica.SIunits.Pressure dP_nominal "Nominal pressure drop";

  Buildings.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow
    annotation (Placement(transformation(extent={{-84,30},{-64,50}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Blocks.Interfaces.RealInput CooLoa "Cooling load"
    annotation (Placement(transformation(extent={{-118,31},{-100,49}})));
  Buildings.Fluid.MixingVolumes.MixingVolume vol(
    redeclare package Medium = Medium,
    energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
    m_flow_nominal=m_flow_nominal,
    nPorts=2,
    V=1)  annotation (Placement(transformation(extent={{-42,0},{-22,20}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCHWLeaPri(
      redeclare package Medium = Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{-80,10},{-60,-10}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCHWEntPri(
      redeclare package Medium = Medium, m_flow_nominal=m_flow_nominal)
    annotation (Placement(transformation(extent={{60,10},{80,-10}})));
  Buildings.Fluid.Sensors.MassFlowRate senMasFlo(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{0,-10},{20,10}})));
  Modelica.Blocks.Interfaces.RealOutput MeaCooLoa
    "Mass flow rate from port_a to port_b"
    annotation (Placement(transformation(extent={{100,30},{120,50}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=(senTCHWEntPri.T -
        senTCHWLeaPri.T)*4.2*senMasFlo.m_flow/3.517)
    annotation (Placement(transformation(extent={{0,30},{20,50}})));
  Modelica.Blocks.Math.Gain gain(k=3517)           annotation (Placement(transformation(extent={{-96,36},
            {-88,44}})));
equation
  connect(vol.ports[1], senTCHWLeaPri.port_b) annotation (Line(
      points={{-34,0},{-60,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTCHWLeaPri.port_a, port_a) annotation (Line(
      points={{-80,0},{-100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTCHWEntPri.port_b, port_b) annotation (Line(
      points={{80,0},{100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(prescribedHeatFlow.port, vol.heatPort) annotation (Line(
      points={{-64,40},{-42,40},{-42,10}},
      color={191,0,0},
      smooth=Smooth.None,
      thickness=1));
  connect(senMasFlo.port_a, vol.ports[2]) annotation (Line(
      points={{0,0},{-30,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senMasFlo.port_b, senTCHWEntPri.port_a) annotation (Line(
      points={{20,0},{60,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(realExpression.y, MeaCooLoa) annotation (Line(
      points={{21,40},{110,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(prescribedHeatFlow.Q_flow, gain.y) annotation (Line(
      points={{-84,40},{-87.6,40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(gain.u, CooLoa) annotation (Line(
      points={{-96.8,40},{-109,40}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),
                         graphics={
        Text(
          extent={{-32,-114},{40,-142}},
          lineColor={0,0,255},
          textString="%name"),
        Polygon(
          points={{0,80},{-80,40},{80,40},{0,80}},
          lineColor={0,0,127},
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-60,40},{60,-80}},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Polygon(
          points={{0,0},{0,0}},
          lineColor={0,0,127},
          pattern=LinePattern.Dash,
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-10,10},{0,0},{-10,-10},{-10,10}},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Polygon(
          points={{10,10},{0,0},{10,-10},{10,10}},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Line(
          points={{-100,0},{-10,0}},
          color={255,0,0},
          smooth=Smooth.None),
        Line(
          points={{10,0},{90,0}},
          smooth=Smooth.None,
          color={0,0,255}),
        Ellipse(
          extent={{-42,-24},{-20,-50}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineColor={0,0,0}),
        Text(
          extent={{-36,-30},{-26,-46}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="T"),
        Line(
          points={{-20,-36},{0,-36},{0,0}},
          color={0,0,0},
          smooth=Smooth.None,
          pattern=LinePattern.Dash)}),      Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics),
    Documentation(revisions="<html>
<ul>
<li>
March 19, 2014 by Sen Huang:<br/>
First implementation.
</li>
</ul>
</html>"));
end Building;
