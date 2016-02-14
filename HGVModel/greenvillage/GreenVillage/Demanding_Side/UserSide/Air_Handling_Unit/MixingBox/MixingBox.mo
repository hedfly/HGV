within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.MixingBox;
model MixingBox
   replaceable package Medium_Air =
      Modelica.Media.Interfaces.PartialMedium;
  parameter Modelica.SIunits.MassFlowRate mOut_flow_nominal
    "Mass flow rate of the outside air damper";
  parameter Modelica.SIunits.Pressure dpOut_nominal(min=0, displayUnit="Pa")
    "Pressure drop of the outside air damper (fully open)";
  parameter Modelica.SIunits.MassFlowRate mRec_flow_nominal
    "Mass flow rate of the recirculation air damper";
  parameter Modelica.SIunits.Pressure dpRec_nominal(min=0, displayUnit="Pa")
    "Pressure drop of the recirulation air damper (fully open)";
  parameter Modelica.SIunits.MassFlowRate mExh_flow_nominal
    "Mass flow rate of the exhaust air damper";
  parameter Modelica.SIunits.Pressure dpExh_nominal(min=0, displayUnit="Pa")
    "Pressure drop of the exhuast air damper (fully open)";

  Buildings.Fluid.Actuators.Dampers.MixingBox eco(
    redeclare package Medium = Medium_Air,
    use_v_nominal=false,
    dp_nominalIncludesDamper=true,
    mOut_flow_nominal=mOut_flow_nominal,
    dpOut_nominal=dpOut_nominal,
    mRec_flow_nominal=mRec_flow_nominal,
    dpRec_nominal=dpRec_nominal,
    mExh_flow_nominal=mExh_flow_nominal,
    dpExh_nominal=dpExh_nominal)
    annotation (Placement(transformation(extent={{-10,-8},{10,12}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_Ret(redeclare package Medium =
        Medium_Air)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_Exh(redeclare package Medium =
        Medium_Air)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_Sup(redeclare package Medium =
        Medium_Air)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,30},{110,50}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_Fre(redeclare package Medium =
        Medium_Air)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Blocks.Interfaces.RealInput y
    "Actuator position (0: closed, 1: open)"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTem(
      redeclare package Medium = Medium_Air, m_flow_nominal=mOut_flow_nominal +
        mRec_flow_nominal)
    annotation (Placement(transformation(extent={{20,-2},{40,18}})));
  Buildings.Fluid.Sensors.VolumeFlowRate senSup(redeclare package Medium =
                       Medium_Air, m_flow_nominal=mOut_flow_nominal +
        mRec_flow_nominal)
    annotation (Placement(transformation(extent={{60,50},{80,30}})));
  Modelica.Blocks.Interfaces.RealOutput V_flow
    "Volume flow rate from port_a to port_b"
    annotation (Placement(transformation(extent={{100,-70},{120,-50}})));
  Modelica.Blocks.Interfaces.RealOutput T_max
    "Temperature of the passing fluid"
    annotation (Placement(transformation(extent={{100,70},{120,90}})));
  Buildings.Fluid.Sensors.VolumeFlowRate senFre(redeclare package Medium =
                       Medium_Air, m_flow_nominal=mOut_flow_nominal +
        mRec_flow_nominal)
    annotation (Placement(transformation(extent={{-40,10},{-20,30}})));
equation
  connect(eco.port_Ret, port_Ret) annotation (Line(
      points={{10,-4},{10,-4},{20,-4},{20,-40},{100,-40}},
      color={0,127,255},
      thickness=1));
  connect(eco.port_Exh, port_Exh) annotation (Line(
      points={{-10,-4},{-60,-4},{-60,-40},{-100,-40}},
      color={0,127,255},
      thickness=1));
  connect(eco.y, y) annotation (Line(
      points={{0,14},{0,14},{0,80},{-120,80}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(eco.port_Sup, senTem.port_a) annotation (Line(
      points={{10,8},{20,8}},
      color={0,127,255},
      thickness=1));
  connect(senTem.port_b, senSup.port_a) annotation (Line(
      points={{40,8},{60,8},{60,40}},
      color={0,127,255},
      thickness=1));
  connect(senSup.port_b, port_Sup) annotation (Line(
      points={{80,40},{100,40}},
      color={0,127,255},
      thickness=1));
  connect(senSup.V_flow, V_flow) annotation (Line(
      points={{70,29},{70,-60},{110,-60}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(senTem.T, T_max) annotation (Line(
      points={{30,19},{30,80},{110,80}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(eco.port_Out, senFre.port_b) annotation (Line(
      points={{-10,8},{-16,8},{-16,20},{-20,20}},
      color={0,127,255},
      thickness=1));
  connect(senFre.port_a, port_Fre) annotation (Line(
      points={{-40,20},{-60,20},{-60,40},{-100,40}},
      color={0,127,255},
      thickness=1));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})), Icon(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{100,98},{-100,-102}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-12,14},{4,14}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-12,14},{4,-4}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-12,-4},{4,-4}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{4,14},{-12,-4}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-4,14},{-4,40}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-4,-4},{-4,-40}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-8,0},{8,0}},
          color={28,108,200},
          thickness=1,
          origin={-60,40},
          rotation=90),
        Line(
          points={{-8,0},{8,0}},
          color={28,108,200},
          thickness=1,
          origin={-40,40},
          rotation=90),
        Line(
          points={{-60,48},{-40,32}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-60,32},{-40,48}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-8,0},{8,0}},
          color={28,108,200},
          thickness=1,
          origin={-60,-40},
          rotation=90),
        Line(
          points={{-8,0},{8,0}},
          color={28,108,200},
          thickness=1,
          origin={-40,-40},
          rotation=90),
        Line(
          points={{-60,-32},{-40,-48}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-60,-48},{-40,-32}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-92,40},{-60,40}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-40,40},{92,40}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-40,-40},{92,-40}},
          color={28,108,200},
          thickness=1),
        Line(
          points={{-92,-40},{-60,-40}},
          color={28,108,200},
          thickness=1),
        Line(points={{78,-30},{30,-30},{40,-24}}, color={28,108,200}),
        Line(points={{-76,56},{-28,56},{-38,62}}, color={28,108,200}),
                                 Text(
          extent={{-155,147},{145,107}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}));
end MixingBox;
