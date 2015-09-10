within ChillerPlantSystem.NY.BaseClasses;
model PumpSystem
  import ChillerPlantSystem;
  replaceable package Medium =
      Buildings.Media.Interfaces.PartialSimpleMedium "Medium water";
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal
    "Nominal mass flow rate ";
  parameter Real Motor_eta[:] "Motor efficiency";
  parameter Real Hydra_eta[:] "Hydraulic efficiency";
  ChillerPlantSystem.BaseClasses.Components.PumpConstantSpeed pumC(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    Motor_eta=Motor_eta,
    Hydra_eta=Hydra_eta)
    annotation (Placement(transformation(extent={{-10,10},{10,30}})));
  ChillerPlantSystem.BaseClasses.Components.PumpConstantSpeed pumB(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    Motor_eta=Motor_eta,
    Hydra_eta=Hydra_eta)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  ChillerPlantSystem.BaseClasses.Components.PumpConstantSpeed pumA(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    Motor_eta=Motor_eta,
    Hydra_eta=Hydra_eta)
    annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Medium)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Medium)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Blocks.Interfaces.RealInput On[3] "On signal"
    annotation (Placement(transformation(extent={{-118,51},
            {-100,69}})));
  Modelica.Blocks.Interfaces.RealOutput P[3]
    "Electrical power consumed by pump"
    annotation (Placement(transformation(extent={{100,50},{120,70}})));
equation
  connect(pumC.port_b, pumA.port_b) annotation (Line(
      points={{10,20},{40,20},{40,-20},{10,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumB.port_b, pumA.port_b) annotation (Line(
      points={{10,0},{40,0},{40,-20},{10,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumC.port_b, port_b) annotation (Line(
      points={{10,20},{40,20},{40,0},{100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumC.port_a, port_a) annotation (Line(
      points={{-10,20},{-40,20},{-40,0},{-100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumB.port_a, port_a) annotation (Line(
      points={{-10,0},{-100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumA.port_a, port_a) annotation (Line(
      points={{-10,-20},{-40,-20},{-40,0},{-100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumC.On, On[3]) annotation (Line(
      points={{-10.9,26},{-38,26},{-38,66},{-109,66}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumB.On, On[2]) annotation (Line(
      points={{-10.9,6},{-60,6},{-60,60},{-109,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumA.On, On[1]) annotation (Line(
      points={{-10.9,-14},{-80,-14},{-80,54},{-109,54}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumC.P, P[3]) annotation (Line(
      points={{11,26},{40,26},{40,66.6667},{110,66.6667}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumB.P, P[2]) annotation (Line(
      points={{11,6},{60,6},{60,60},{110,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumA.P, P[1]) annotation (Line(
      points={{11,-14},{80,-14},{80,53.3333},{110,53.3333}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                               graphics), Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Ellipse(
          extent={{-20,80},{20,40}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{16,60},{-8,48},{-8,70},{16,60}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-20,20},{20,-20}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{16,0},{-8,-12},{-8,10},{16,0}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-20,-40},{20,-80}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{16,-60},{-8,-72},{-8,-50},{16,-60}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-90,0},{-40,0},{-40,60},{-20,60}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-40,0},{-20,0}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-40,0},{-40,-60},{-20,-60}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{20,60},{40,60},{40,0},{90,0}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{40,0},{20,0}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{40,0},{40,-60},{20,-60}},
          color={0,0,255},
          smooth=Smooth.None)}));
end PumpSystem;
