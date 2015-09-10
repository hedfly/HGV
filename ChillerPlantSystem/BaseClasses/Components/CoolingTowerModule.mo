within ChillerPlantSystem.BaseClasses.Components;
model CoolingTowerModule "Single module of the cooling tower"
  replaceable package MediumCW =
      Buildings.Media.Interfaces.PartialSimpleMedium
    "Medium in the condenser water side";
  parameter Modelica.SIunits.Power P_nominal
    "Nominal cooling tower component power (at y=1)";
  parameter Modelica.SIunits.TemperatureDifference dTCW_nominal
    "Temperature difference between the outlet and inlet of the module";
  parameter Modelica.SIunits.TemperatureDifference dTApp_nominal
    "Nominal approach temperature";
  parameter Modelica.SIunits.Temperature TWetBul_nominal
    "Nominal wet bulb temperature";
  parameter Modelica.SIunits.Pressure dP_nominal
    "Pressure difference between the outlet and inlet of the module ";
  parameter Modelica.SIunits.MassFlowRate mCW_flow_nominal
    "Nominal mass flow rate";
  parameter Real GaiPi "Gain of the component PI controller";
  parameter Real tIntPi "Integration time of the component PI controller";
  parameter Real v_flow_ratio[:] "Volume flow rate ratio";
  parameter Real eta[:] "Fan efficiency";
  Buildings.Fluid.HeatExchangers.CoolingTowers.YorkCalc yorkCalc(
    redeclare package Medium = MediumCW,
    m_flow_nominal=mCW_flow_nominal,
    dp_nominal=0,
    TRan_nominal=dTCW_nominal,
    TAirInWB_nominal=TWetBul_nominal,
    TApp_nominal=dTApp_nominal,
    fraPFan_nominal=P_nominal/mCW_flow_nominal,
    fanRelPow(r_V=v_flow_ratio, eta=eta))
    annotation (Placement(transformation(extent={{0,-10},{20,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_CW(redeclare package Medium =
        MediumCW)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_CW(redeclare package Medium =
        MediumCW)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val(
    redeclare package Medium = MediumCW,
    m_flow_nominal=mCW_flow_nominal,
    dpValve_nominal=dP_nominal,
    filteredOpening=true)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Control.LimPID                       conPI(
    reverseAction=true,
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=GaiPi,
    Ti=tIntPi,
    initType=Modelica.Blocks.Types.InitPID.NoInit)
    annotation (Placement(transformation(extent={{-80,70},{-60,90}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-30,36},{-10,56}})));
  Modelica.Blocks.Interfaces.RealInput On(min=0,max=1) "On signal"
    annotation (Placement(transformation(extent={{-140,20},{-100,60}})));
  Modelica.Blocks.Interfaces.RealInput TSet
    "Temperature setpoint of the condenser water"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}})));
  Modelica.Blocks.Interfaces.RealInput TWetBul
    "Entering air wet bulb temperature"
    annotation (Placement(transformation(extent={{-140,-60},{-100,-20}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=yorkCalc.PFan) annotation (Placement(transformation(extent={{0,-50},{20,-30}})));
  Modelica.Blocks.Interfaces.RealOutput P "Power of the cooling tower module"
    annotation (Placement(transformation(extent={{100,-50},{120,-30}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=if On > 0.1 then
        yorkCalc.TLvg else TSet)
    annotation (Placement(transformation(extent={{12,20},{32,40}})));
  Modelica.SIunits.Temperature TCT_V "Cooling tower temperature";

equation
  connect(TSet,conPI. u_s) annotation (Line(
      points={{-120,80},{-82,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPI.y,product. u1) annotation (Line(
      points={{-59,80},{-36,80},{-36,52},{-32,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(On,product. u2) annotation (Line(
      points={{-120,40},{-32,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(yorkCalc.port_a, val.port_b) annotation (Line(
      points={{0,0},{-40,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val.port_a, port_a_CW) annotation (Line(
      points={{-60,0},{-100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(yorkCalc.port_b, port_b_CW) annotation (Line(
      points={{20,0},{100,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val.y, product.u2) annotation (Line(
      points={{-50,12},{-50,40},{-32,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(product.y, yorkCalc.y) annotation (Line(
      points={{-9,46},{-6,46},{-6,8},{-2,8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(yorkCalc.TAir, TWetBul) annotation (Line(
      points={{-2,4},{-20,4},{-20,-40},{-120,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(realExpression.y, P) annotation (Line(
      points={{21,-40},{110,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPI.On, product.u2) annotation (Line(
      points={{-82,88},{-92,88},{-92,40},{-32,40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(conPI.u_m, realExpression1.y) annotation (Line(
      points={{-70,68},{-70,60},{40,60},{40,30},{33,30}},
      color={0,0,127},
      smooth=Smooth.None));
   TCT_V=yorkCalc.TCT_V;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-52,34},{58,-34}},
          lineColor={0,0,255},
          textString="CoolingTowerModule"),
        Text(
          extent={{-44,-146},{50,-114}},
          lineColor={0,0,255},
          textString="%name")}));
end CoolingTowerModule;
