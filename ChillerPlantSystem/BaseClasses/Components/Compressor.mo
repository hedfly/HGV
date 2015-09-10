within ChillerPlantSystem.BaseClasses.Components;
model Compressor "Compressor"
  replaceable package MediumCHW =
     Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium in the chilled water side";
  replaceable package MediumCW =
     Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium in the condenser water side";
  parameter Modelica.SIunits.Power P_nominal
    "Nominal compressor power (at y=1)";
  parameter Modelica.SIunits.TemperatureDifference dTCHW_nominal
    "Temperature difference at the chilled water side";
  parameter Modelica.SIunits.TemperatureDifference dTCW_nominal
    "Temperature difference at the condenser water wide";
  parameter Modelica.SIunits.Pressure dPCHW_nominal
    "Pressure difference at the chilled water side";
  parameter Modelica.SIunits.Pressure dPCW_nominal
    "Pressure difference at the condenser water wide";
  parameter Modelica.SIunits.Temperature TCHW_nominal
    "Temperature at the chilled water side";
  parameter Modelica.SIunits.Temperature TCW_nominal
    "Temperature at the condenser water wide";
  parameter Real COP_nominal "Chiller COP";
  parameter Modelica.SIunits.MassFlowRate mCHW_flow_nominal
    "Nominal mass flow rate at the chilled water side";
  parameter Modelica.SIunits.MassFlowRate mCW_flow_nominal
    "Nominal mass flow rate at the condenser water wide";
  parameter Real ChillerCurve[:] = {1}
    "Chiller operation Curve(need p(a=ChillerCurve, y=1)=1)";
  parameter Real GaiPi "Gain of the PI controller";
  parameter Real tIntPi "Integration time of the PI controller";
  Buildings.Fluid.Chillers.Carnot chi(
    redeclare package Medium1 = MediumCW,
    redeclare package Medium2 = MediumCHW,
    m1_flow_nominal=mCW_flow_nominal,
    m2_flow_nominal=mCHW_flow_nominal,
    P_nominal=P_nominal,
    dTEva_nominal=dTCHW_nominal,
    dTCon_nominal=dTCW_nominal,
    COP_nominal=COP_nominal,
    TCon_nominal=TCW_nominal,
    TEva_nominal=TCHW_nominal,
    a=ChillerCurve,
    dp1_nominal=0,
    dp2_nominal=0,
    use_eta_Carnot=false,
    allowFlowReversal1=true,
    allowFlowReversal2=true,
    T1_start(displayUnit="K"),
    T2_start(displayUnit="K"),
    effInpEva=ChillerPlantSystem.Buildings.Fluid.Types.EfficiencyInput.port_b,
    effInpCon=ChillerPlantSystem.Buildings.Fluid.Types.EfficiencyInput.port_a,
    tau1=30,
    tau2=30)       annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-40})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_CW(redeclare package Medium =
        MediumCW)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,-90},{-90,-70}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_CW(redeclare package Medium =
        MediumCW)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,70},{-90,90}}),
        iconTransformation(extent={{-110,70},{-90,90}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_CHW(redeclare package Medium =
        MediumCHW)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{90,-90},{110,-70}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_CHW(redeclare package Medium =
        MediumCHW)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{90,70},{110,90}}),
        iconTransformation(extent={{90,70},{110,90}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TCHWleachi(redeclare package
      Medium = MediumCHW, m_flow_nominal=mCHW_flow_nominal,
    T_start(displayUnit="K"),
    initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{30,-90},{50,-70}})));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear valCW(
    redeclare package Medium = MediumCW,
    m_flow_nominal=mCW_flow_nominal,
    dpValve_nominal=dPCW_nominal,
    filteredOpening=true,
    allowFlowReversal=true)
    annotation (Placement(transformation(extent={{-60,10},{-80,-10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear valCHW(
    redeclare package Medium = MediumCHW,
    m_flow_nominal=mCHW_flow_nominal,
    dpValve_nominal=dPCHW_nominal,
    filteredOpening=true)
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  Modelica.Blocks.Interfaces.RealInput On(min=0,max=1)
    "True to enable compressor to operate, or false to disable the operation of the compressor"
    annotation (Placement(transformation(extent={{-118,-50},{-100,-30}}),
        iconTransformation(extent={{-140,-70},{-100,-30}})));
  Modelica.Blocks.Interfaces.RealInput TCHWSet
    "Temperature setpoint of chilled water"
    annotation (Placement(transformation(extent={{-118,30},{-100,50}}),
        iconTransformation(extent={{-140,10},{-100,50}})));
  Control.LimPID                       conPI(
    k=GaiPi,
    Ti=tIntPi,
    reverseAction=true,
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    initType=Modelica.Blocks.Types.InitPID.NoInit)
    annotation (Placement(transformation(extent={{-46,70},{-26,90}})));
  Modelica.Blocks.Interfaces.RealOutput P
    "Electric power consumed by compressor"
    annotation (Placement(transformation(extent={{100,30},{120,50}}),
        iconTransformation(extent={{100,30},{120,50}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=if On > 0.1 then 1
         else 0)
    annotation (Placement(transformation(extent={{-94,-50},{-74,-30}})));

  Modelica.Blocks.Interfaces.RealOutput yMot "Compressor Motor Speed ratio"
    annotation (Placement(transformation(extent={{100,-50},{120,-30}}),
        iconTransformation(extent={{100,10},{120,30}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=if On > 0.1 then
        TCHWleachi.T else TCHWSet)
    annotation (Placement(transformation(extent={{16,-34},{36,-14}})));
equation
  connect(chi.port_b2, TCHWleachi.port_a) annotation (Line(
      points={{6,-50},{6,-80},{30,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(TCHWSet, conPI.u_s) annotation (Line(
      points={{-109,40},{-80,40},{-80,80},{-48,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chi.P, P) annotation (Line(
      points={{-9,-29},{-9,40},{110,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TCHWleachi.port_b, valCHW.port_a) annotation (Line(
      points={{50,-80},{60,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(valCHW.port_b, port_b_CHW) annotation (Line(
      points={{80,-80},{100,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(port_a_CHW, chi.port_a2) annotation (Line(
      points={{100,80},{54,80},{54,26},{6,26},{6,-30}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_b1, valCW.port_a) annotation (Line(
      points={{-6,-30},{-6,0},{-60,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(valCW.port_b, port_b_CW) annotation (Line(
      points={{-80,0},{-90,0},{-90,80},{-100,80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(port_a_CW, chi.port_a1) annotation (Line(
      points={{-100,-80},{-6,-80},{-6,-50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(realExpression2.y, valCW.y) annotation (Line(
      points={{-73,-40},{-70,-40},{-70,-12}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(valCHW.y, realExpression2.y) annotation (Line(
      points={{70,-68},{70,-56},{-36,-56},{-36,-40},{-73,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPI.On, realExpression2.y) annotation (Line(
      points={{-48,88},{-54,88},{-54,-40},{-73,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(yMot, chi.y) annotation (Line(
      points={{110,-40},{20,-40},{20,-68},{-9,-68},{-9,-52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPI.y, chi.y) annotation (Line(
      points={{-25,80},{-20,80},{-20,-68},{-9,-68},{-9,-52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPI.u_m, realExpression1.y) annotation (Line(
      points={{-36,68},{-36,12},{40,12},{40,-24},{37,-24}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Text(
          extent={{-44,-144},{50,-112}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(
          extent={{-80,74},{80,-86}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-101,82},{100,72}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-95,-76},{106,-86}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-54,50},{60,32}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-52,-50},{62,-68}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-101,82},{100,72}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{0,72},{100,82}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-95,-76},{106,-86}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-102,-86},{-2,-76}},
          lineColor={0,0,127},
          pattern=LinePattern.None,
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-32,-10},{-42,-22},{-22,-22},{-32,-10}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-32,-10},{-42,0},{-22,0},{-32,-10}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-34,32},{-30,0}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-34,-22},{-30,-50}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{34,32},{38,-50}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{14,10},{58,-32}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{36,10},{18,-22},{54,-22},{36,10}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),
    Documentation(revisions="<html>
<ul>
<li>
March 19, 2014 by Sen Huang:<br/>
First implementation.
</li>
</ul>
</html>"));
end Compressor;
