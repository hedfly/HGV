within GreenVillage.Demanding_Side.HeatPump;
model HeatPump
  import GreenVillage;
  package Medium = Buildings.Media.Water "Medium model";

  parameter Modelica.SIunits.Power P_nominal
    "Nominal compressor power (at y=1)";
  parameter Modelica.SIunits.TemperatureDifference dTEva_nominal
    "Temperature difference evaporator inlet-outlet";
  parameter Modelica.SIunits.TemperatureDifference dTCon_nominal
    "Temperature difference condenser outlet-inlet";
  parameter Real COPc_nominal "Chiller COP";

  parameter Modelica.SIunits.MassFlowRate m2_flow_nominal=
     P_nominal*COPc_nominal/dTEva_nominal/4200
    "Nominal mass flow rate at chilled water side";
  parameter Modelica.SIunits.MassFlowRate m1_flow_nominal=
    m2_flow_nominal*(COPc_nominal+1)/COPc_nominal
    "Nominal mass flow rate at condenser water wide";

  parameter Modelica.SIunits.Temperature TCon_nominal "Condenser temperature";

  parameter Modelica.SIunits.Temperature TEva_nominal "Evaporator temperature";

  parameter Real a[:] = {1}
    "Coefficients for efficiency curve (need p(a=a, y=1)=1)";

  parameter Modelica.SIunits.Pressure dp_nominal "Nominal pressure difference";

  parameter Real k;

  parameter Real ti;
  Buildings.Fluid.Chillers.Carnot chi(redeclare package Medium1 = Medium,
      redeclare package Medium2 = Medium,
    P_nominal=P_nominal,
    dTEva_nominal=dTEva_nominal,
    dTCon_nominal=dTCon_nominal,
    use_eta_Carnot=false,
    COP_nominal=COPc_nominal,
    m1_flow_nominal=m1_flow_nominal,
    m2_flow_nominal=m2_flow_nominal,
    TCon_nominal=TCon_nominal,
    TEva_nominal=TEva_nominal,
    a=a,
    dp1_nominal=0,
    dp2_nominal=0)
    annotation (Placement(transformation(extent={{-10,-4},{8,14}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a1(redeclare package Medium =
        Medium)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{50,-110},{70,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b1(redeclare package Medium =
        Medium)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{-70,-110},{-50,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a2(redeclare package Medium =
        Medium)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{50,90},{70,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b2(redeclare package Medium =
        Medium)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val(
    redeclare package Medium = Medium,
    m_flow_nominal=m1_flow_nominal,
    dpValve_nominal=dp_nominal/3)                            annotation (
      Placement(transformation(
        extent={{8,8},{-8,-8}},
        rotation=-90,
        origin={60,-20})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val1(
    redeclare package Medium = Medium,
    m_flow_nominal=m2_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{8,8},{-8,-8}},
        rotation=-90,
        origin={-60,40})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val2(
    redeclare package Medium = Medium,
    m_flow_nominal=m1_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{-8,8},{8,-8}},
        rotation=-90,
        origin={-60,-22})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val3(
    redeclare package Medium = Medium,
    m_flow_nominal=m2_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{-8,8},{8,-8}},
        rotation=-90,
        origin={60,40})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val4(
    redeclare package Medium = Medium,
    m_flow_nominal=m2_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{-8,8},{8,-8}},
        rotation=-90,
        origin={-28,40})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val5(
    redeclare package Medium = Medium,
    m_flow_nominal=m1_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{8,8},{-8,-8}},
        rotation=-90,
        origin={-28,-40})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val6(
    redeclare package Medium = Medium,
    m_flow_nominal=m2_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{8,8},{-8,-8}},
        rotation=-90,
        origin={30,40})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val7(
    redeclare package Medium = Medium,
    m_flow_nominal=m1_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{-8,8},{8,-8}},
        rotation=-90,
        origin={30,-20})));
  Modelica.Blocks.Interfaces.RealInput CoolOn
    "Actuator position (0: closed, 1: open)"
    annotation (Placement(transformation(extent={{-180,60},{-140,100}})));
  Modelica.Blocks.Math.Add add(k2=-1)
    annotation (Placement(transformation(extent={{-102,14},{-90,26}})));
  Modelica.Blocks.Sources.Constant const(k=1)
    annotation (Placement(transformation(extent={{-126,0},{-114,12}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TSupIn(
                                                  redeclare package Medium =
        Medium, m_flow_nominal=m1_flow_nominal)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(
        extent={{7,-8},{-7,8}},
        origin={60,81},
        rotation=90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort TSupOut(
                                                  redeclare package Medium =
        Medium, m_flow_nominal=m1_flow_nominal)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(
        extent={{-7,-8},{7,8}},
        origin={-60,79},
        rotation=90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort TDemOut(
                                                  redeclare package Medium =
        Medium, m_flow_nominal=m1_flow_nominal)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(
        extent={{7,-8},{-7,8}},
        origin={-60,-79},
        rotation=90)));
  Buildings.Fluid.Sensors.TemperatureTwoPort TDemIn(
                                                  redeclare package Medium =
        Medium, m_flow_nominal=m1_flow_nominal)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(
        extent={{-7,-8},{7,8}},
        origin={60,-81},
        rotation=90)));
  GreenVillage.Demanding_Side.Controller.HP_PI hP_PI(k=k, ti=ti)
                                                     annotation (Placement(transformation(extent={{-120,-30},{-100,-10}})));
  Modelica.Blocks.Interfaces.RealInput TSetPoi
    "Connector of setpoint input signal"                                            annotation (Placement(transformation(extent={{-180,-100},{-140,-60}})));
  Modelica.Blocks.Interfaces.RealOutput P
    "Electric power consumed by compressor"                                       annotation (Placement(transformation(extent={{140,-10},{160,10}})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val8(
    redeclare package Medium = Medium,
    m_flow_nominal=m2_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=-90,
        origin={-60,64})));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val9(
    redeclare package Medium = Medium,
    m_flow_nominal=m1_flow_nominal,
    dpValve_nominal=dp_nominal/3)                             annotation (
      Placement(transformation(
        extent={{-6,6},{6,-6}},
        rotation=-90,
        origin={-60,-62})));
  Modelica.Blocks.Interfaces.RealInput On
    "Actuator position (0: closed, 1: open)"
    annotation (Placement(transformation(extent={{-180,-20},{-140,20}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-88,-16},{-76,-4}})));
equation
  connect(chi.port_a2, val.port_b) annotation (Line(
      points={{8,-0.4},{40,-0.4},{40,0},{60,0},{60,-12}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_b2, val1.port_a) annotation (Line(
      points={{-10,-0.4},{-60,-0.4},{-60,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_b2, val2.port_a) annotation (Line(
      points={{-10,-0.4},{-60,-0.4},{-60,-14}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_a2, val3.port_b) annotation (Line(
      points={{8,-0.4},{48,-0.4},{48,0},{60,0},{60,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_a1, val4.port_b) annotation (Line(
      points={{-10,10.4},{-18,10.4},{-18,10},{-28,10},{-28,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val5.port_b, val4.port_b) annotation (Line(
      points={{-28,-32},{-28,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_b1, val6.port_a) annotation (Line(
      points={{8,10.4},{20,10.4},{20,10},{30,10},{30,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val7.port_a, val6.port_a) annotation (Line(
      points={{30,-12},{30,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val1.y, CoolOn) annotation (Line(
      points={{-69.6,40},{-80,40},{-80,80},{-160,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val3.y, CoolOn) annotation (Line(
      points={{50.4,40},{44,40},{44,20},{-80,20},{-80,80},{-160,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val5.y, CoolOn) annotation (Line(
      points={{-37.6,-40},{-48,-40},{-48,20},{-80,20},{-80,80},{-160,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val7.y, CoolOn) annotation (Line(
      points={{20.4,-20},{-48,-20},{-48,20},{-80,20},{-80,80},{-160,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(add.u1, CoolOn) annotation (Line(
      points={{-103.2,23.6},{-120,23.6},{-120,80},{-160,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(const.y, add.u2) annotation (Line(
      points={{-113.4,6},{-108,6},{-108,16.4},{-103.2,16.4}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(add.y, val4.y) annotation (Line(
      points={{-89.4,20},{-86,20},{-86,28},{-42,28},{-42,40},{-37.6,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val6.y, val4.y) annotation (Line(
      points={{20.4,40},{8,40},{8,28},{-42,28},{-42,40},{-37.6,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val2.y, val4.y) annotation (Line(
      points={{-69.6,-22},{-86,-22},{-86,28},{-42,28},{-42,40},{-37.6,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val.y, val4.y) annotation (Line(
      points={{50.4,-20},{44,-20},{44,-32},{-86,-32},{-86,28},{-42,28},{-42,40},
          {-37.6,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(port_a2, TSupIn.port_a) annotation (Line(
      points={{60,100},{60,88}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(TSupIn.port_b, val3.port_a) annotation (Line(
      points={{60,74},{60,48}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val4.port_a, val3.port_a) annotation (Line(
      points={{-28,48},{-28,68},{60,68},{60,48}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(TSupOut.port_b, port_b2) annotation (Line(
      points={{-60,86},{-60,100}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(TDemOut.port_b, port_b1) annotation (Line(
      points={{-60,-86},{-60,-100}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val.port_a, TDemIn.port_b) annotation (Line(
      points={{60,-28},{60,-74}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(TDemIn.port_a, port_a1) annotation (Line(
      points={{60,-88},{60,-100}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val5.port_a, TDemIn.port_b) annotation (Line(
      points={{-28,-48},{-28,-60},{60,-60},{60,-74}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(hP_PI.CoolOn, CoolOn) annotation (Line(
      points={{-122,-14},{-132,-14},{-132,80},{-160,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TSupOut.T, hP_PI.MeaT) annotation (Line(
      points={{-68.8,79},{-74,79},{-74,60},{-136,60},{-136,-26},{-122,-26}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hP_PI.SetPoi, TSetPoi) annotation (Line(
      points={{-122,-20},{-134,-20},{-134,-80},{-160,-80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chi.P, P) annotation (Line(
      points={{8.9,13.1},{100,13.1},{100,0},{150,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(val1.port_b, val8.port_a) annotation (Line(
      points={{-60,48},{-60,58}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val8.port_b, TSupOut.port_a) annotation (Line(
      points={{-60,70},{-60,72}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(val6.port_b, val8.port_a) annotation (Line(
      points={{30,48},{30,54},{-60,54},{-60,58}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val2.port_b, val9.port_a) annotation (Line(
      points={{-60,-30},{-60,-56}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val9.port_b, TDemOut.port_a) annotation (Line(
      points={{-60,-68},{-60,-72}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(val7.port_b, val9.port_a) annotation (Line(
      points={{30,-28},{30,-52},{-60,-52},{-60,-56}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(val9.y, val8.y) annotation (Line(
      points={{-67.2,-62},{-106,-62},{-106,52},{-70,52},{-70,64},{-67.2,64}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(On, val8.y) annotation (Line(
      points={{-160,0},{-106,0},{-106,52},{-70,52},{-70,64},{-67.2,64}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hP_PI.y1, product.u2) annotation (Line(
      points={{-99,-20},{-94,-20},{-94,-13.6},{-89.2,-13.6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(product.y, chi.y) annotation (Line(
      points={{-75.4,-10},{-56,-10},{-56,13.1},{-11.8,13.1}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(product.u1, val8.y) annotation (Line(
      points={{-89.2,-6.4},{-106,-6.4},{-106,52},{-70,52},{-70,64},{-67.2,64}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-140,
            -100},{140,100}}), graphics), Icon(coordinateSystem(extent={{-140,-100},{140,100}}, preserveAspectRatio=false), graphics={Bitmap(
          extent={{-122,90},{120,-88}},
          imageSource="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",
          fileName="modelica://GreenVillage/../../../Desktop/heatpump.png")}));
end HeatPump;
