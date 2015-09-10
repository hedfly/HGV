within ChillerPlantSystem.NY.BaseClasses;
model MultiChillerSystem "The chiller system with three chillers"
  import ChillerPlantSystem;
  replaceable package MediumCHW =
      Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium in the chilled water side";
  replaceable package MediumCW =
      Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium in the condenser water side";
  parameter Modelica.SIunits.TemperatureDifference dTCHW_nominal
    "Temperature difference at the chilled water side";
  parameter Modelica.SIunits.TemperatureDifference dTCW_nominal
    "Temperature difference at the condenser water wide";
  parameter Modelica.SIunits.Pressure dPCHW_nominal
    "Pressure difference at the chilled water side";
  parameter Modelica.SIunits.Pressure dPCW_nominal
    "Pressure difference at the condenser water wide";
  parameter Modelica.SIunits.Temperature TCHWC_nominal
    "Temperature at the chilled water side";
  parameter Modelica.SIunits.Temperature TCWC_nominal
    "Temperature at the condenser water wide";
  parameter Modelica.SIunits.Temperature TCHWB_nominal
    "Temperature at the chilled water side";
  parameter Modelica.SIunits.Temperature TCWB_nominal
    "Temperature at the condenser water wide";
  parameter Modelica.SIunits.Temperature TCHWA_nominal
    "Temperature at the chilled water side";
  parameter Modelica.SIunits.Temperature TCWA_nominal
    "Temperature at the condenser water wide";
  parameter Real COP_nominal "Chiller COP";
  parameter Modelica.SIunits.MassFlowRate mCHW_flow_nominal
    "Nominal mass flow rate at the chilled water side";
  parameter Modelica.SIunits.MassFlowRate mCW_flow_nominal
    "Nominal mass flow rate at the condenser water wide";
  parameter Real ChillerCurveC[:] = {1}
    "Chiller operation Curve(need p(a=ChillerCurve, y=1)=1)";
  parameter Real ChillerCurveB[:] = {1}
    "Chiller operation Curve(need p(a=ChillerCurve, y=1)=1)";
  parameter Real ChillerCurveA[:] = {1}
    "Chiller operation Curve(need p(a=ChillerCurve, y=1)=1)";
  parameter Real GaiPi "Gain of the PI controller";
  parameter Real tIntPi "Integration time of the PI controller";
  parameter Modelica.SIunits.Temperature TCHWSet
    "The temperature setpoint of the chilled water leaving the chiller plant";
  parameter Modelica.SIunits.Power P_nominal
    "Nominal compressor power (at y=1)";
  ChillerPlantSystem.BaseClasses.Components.Compressor    chiC(
    redeclare package MediumCHW = MediumCHW,
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCHW_nominal=dTCHW_nominal,
    dTCW_nominal=dTCW_nominal,
    COP_nominal=COP_nominal,
    mCHW_flow_nominal=mCHW_flow_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    TCHW_nominal=TCHWC_nominal,
    TCW_nominal=TCWC_nominal,
    ChillerCurve=ChillerCurveC,
    dPCHW_nominal=dPCHW_nominal,
    dPCW_nominal=dPCW_nominal) "Single chiller C"
                                        annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={0,46})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_CW(redeclare package Medium = MediumCW)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,-90},{-90,-70}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_CW(redeclare package Medium = MediumCW)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,70},{-90,90}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_CHW(redeclare package Medium = MediumCHW)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{90,-90},{110,-70}}),
        iconTransformation(extent={{90,-90},{110,-70}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_CHW(redeclare package Medium = MediumCHW)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{90,70},{110,90}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCHWEntChi(
    redeclare package Medium = MediumCHW,
    allowFlowReversal=true,
    m_flow_nominal=3*mCHW_flow_nominal) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={70,80})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCWLeaChi(
    allowFlowReversal=true,
    redeclare package Medium = MediumCW,
    m_flow_nominal=3*mCW_flow_nominal) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-70,80})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCHWLeaChi(
    allowFlowReversal=true,
    redeclare package Medium = MediumCHW,
    m_flow_nominal=3*mCHW_flow_nominal) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={70,-80})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTCWEntChi(
    allowFlowReversal=true,
    redeclare package Medium = MediumCW,
    m_flow_nominal=3*mCW_flow_nominal) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-70,-80})));
  Modelica.Blocks.Interfaces.RealOutput P[3]
    "Electric power consumed by chillers"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=TCHWSet)
    annotation (Placement(transformation(extent={{-88,36},{-68,56}})));
  Modelica.Blocks.Interfaces.RealInput On[3] "On signal"
    annotation (Placement(transformation(extent={{-118,-9},{-100,9}})));

  ChillerPlantSystem.BaseClasses.Components.Compressor chiB(
    redeclare package MediumCHW = MediumCHW,
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCHW_nominal=dTCHW_nominal,
    dTCW_nominal=dTCW_nominal,
    COP_nominal=COP_nominal,
    mCHW_flow_nominal=mCHW_flow_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    dPCHW_nominal=dPCHW_nominal,
    dPCW_nominal=dPCW_nominal,
    TCHW_nominal=TCHWB_nominal,
    TCW_nominal=TCWB_nominal,
    ChillerCurve=ChillerCurveB) "Single chiller B" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-2,0})));
  ChillerPlantSystem.BaseClasses.Components.Compressor chiA(
    redeclare package MediumCHW = MediumCHW,
    redeclare package MediumCW = MediumCW,
    P_nominal=P_nominal,
    dTCHW_nominal=dTCHW_nominal,
    dTCW_nominal=dTCW_nominal,
    COP_nominal=COP_nominal,
    mCHW_flow_nominal=mCHW_flow_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    dPCHW_nominal=dPCHW_nominal,
    dPCW_nominal=dPCW_nominal,
    TCHW_nominal=TCHWA_nominal,
    TCW_nominal=TCWA_nominal,
    ChillerCurve=ChillerCurveA) "Single chiller A" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={0,-60})));
equation
  connect(senTCHWEntChi.port_a, port_a_CHW) annotation (Line(
      points={{80,80},{100,80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTCHWLeaChi.port_b, port_b_CHW) annotation (Line(
      points={{80,-80},{100,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(port_a_CW, senTCWEntChi.port_a) annotation (Line(
      points={{-100,-80},{-80,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(port_b_CW, senTCWLeaChi.port_b) annotation (Line(
      points={{-100,80},{-80,80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiC.P, P[3]) annotation (Line(
      points={{11,50},{64,50},{64,6.66667},{110,6.66667}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(realExpression.y, chiC.TCHWSet) annotation (Line(
      points={{-67,46},{-40,46},{-40,49},{-12,49}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chiB.TCHWSet, chiC.TCHWSet) annotation (Line(
      points={{-14,3},{-40,3},{-40,49},{-12,49}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chiA.TCHWSet, chiC.TCHWSet) annotation (Line(
      points={{-12,-57},{-40,-57},{-40,49},{-12,49}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chiC.On, On[3]) annotation (Line(
      points={{-12,41},{-20,41},{-20,6},{-109,6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chiB.On, On[2]) annotation (Line(
      points={{-14,-5},{-57,-5},{-57,0},{-109,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chiA.On, On[1]) annotation (Line(
      points={{-12,-65},{-60,-65},{-60,-6},{-109,-6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(P[2], chiB.P) annotation (Line(
      points={{110,0},{60,0},{60,4},{9,4}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(P[1], chiA.P) annotation (Line(
      points={{110,-6.66667},{20,-6.66667},{20,-56},{11,-56}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(senTCWLeaChi.port_a, chiC.port_b_CW) annotation (Line(
      points={{-60,80},{-26,80},{-26,54},{-10,54}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiB.port_b_CW, chiC.port_b_CW) annotation (Line(
      points={{-12,8},{-26,8},{-26,54},{-10,54}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiA.port_b_CW, chiC.port_b_CW) annotation (Line(
      points={{-10,-52},{-26,-52},{-26,54},{-10,54}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTCWEntChi.port_b, chiA.port_a_CW) annotation (Line(
      points={{-60,-80},{-32,-80},{-32,-68},{-10,-68}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiB.port_a_CW, chiA.port_a_CW) annotation (Line(
      points={{-12,-8},{-32,-8},{-32,-68},{-10,-68}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiC.port_a_CW, chiA.port_a_CW) annotation (Line(
      points={{-10,38},{-32,38},{-32,-68},{-10,-68}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiC.port_a_CHW, senTCHWEntChi.port_b) annotation (Line(
      points={{10,54},{40,54},{40,80},{60,80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiB.port_a_CHW, senTCHWEntChi.port_b) annotation (Line(
      points={{8,8},{40,8},{40,80},{60,80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiA.port_a_CHW, senTCHWEntChi.port_b) annotation (Line(
      points={{10,-52},{40,-52},{40,80},{60,80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiC.port_b_CHW, senTCHWLeaChi.port_a) annotation (Line(
      points={{10,38},{26,38},{26,-80},{60,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiA.port_b_CHW, senTCHWLeaChi.port_a) annotation (Line(
      points={{10,-68},{26,-68},{26,-80},{60,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chiB.port_b_CHW, senTCHWLeaChi.port_a) annotation (Line(
      points={{8,-8},{26,-8},{26,-80},{60,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  annotation (Documentation(info="<html>
<p>This model is to simulate the chiller system which consists of three chillers and associated local controllers.</p>
</html>", revisions="<html>
<ul>
<li>
March 19, 2014 by Sen Huang:<br/>
First implementation.
</li>
</ul>
</html>"), Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}),                                                                        graphics),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),                                                                   graphics={
        Text(
          extent={{-44,-142},{50,-110}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(
          extent={{-28,80},{26,40}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-28,20},{26,-20}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-28,-40},{26,-80}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-60,12},{-28,12}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-28,-50},{-60,-50},{-60,80}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-90,-80},{-40,-80},{-40,50},{-34,50},{-28,50}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-28,-10},{-40,-10}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-28,-70},{-40,-70}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{40,-80},{102,-80}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{40,-80},{40,50},{26,50}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{26,-12},{40,-12}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{26,-70},{40,-70}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{26,12},{60,12}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{26,-48},{60,-48},{60,80}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-100,80},{-60,80}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{-28,70},{-60,70}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{100,80},{60,80}},
          color={0,0,255},
          smooth=Smooth.None),
        Line(
          points={{26,72},{60,72}},
          color={0,0,255},
          smooth=Smooth.None),
        Ellipse(
          extent={{-32,76},{-22,64}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-30,74},{-24,66}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-32,18},{-22,6}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-30,16},{-24,8}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-32,-44},{-22,-56}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-30,-46},{-24,-54}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,56},{30,44}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{22,54},{28,46}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,-6},{30,-18}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{22,-8},{28,-16}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,-64},{30,-76}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{22,-66},{28,-74}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,78},{30,66}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,18},{30,6}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,-44},{30,-56}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-32,56},{-22,44}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-32,-4},{-22,-16}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-32,-64},{-22,-76}},
          lineColor={0,0,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Solid)}));
end MultiChillerSystem;
