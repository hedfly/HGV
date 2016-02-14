within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.AHU.Example;
model AHU
  extends Modelica.Icons.Example;
  package MediumAir = Buildings.Media.Air;
  package MediumColWat = Buildings.Media.Water;
  parameter Real P[:]={0,50^2,100^2} "Hydraulic efficiecny";
  parameter Real v_flow[:]={0,0.1*4.2/1.2,0.2*4.2/1.2} "Volume flow rate curve";
  parameter Real p_flow[:]={600,300,0} "Pressure curve";
  Air_Handling_Unit                   AHU(
    redeclare package Medium_Air = MediumAir,
    redeclare package Medium_ColdWater = MediumColWat,
    dpAir_CC_nominal(displayUnit="Pa") = 100,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    mAir_CC_flow_nominal=0.1*4.2,
    mOut_flow_nominal=0.1*4.2*0.5,
    mExh_flow_nominal=0.1*4.2*0.5,
    P_SF=P,
    v_flow_SF=v_flow,
    p_flow_SF=p_flow,
    dpOut_nominal=50,
    dpRec_nominal=100,
    dpExh_nominal=50,
    mRec_flow_nominal=0.1*4.2*0.5,
    mWater_CC_flow_nominal=0.1*10/7,
    ti_SF=60,
    k_SF=1,
    S_min_SF=0,
    ti=120,
    k=0.01,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15) annotation (Placement(transformation(extent={{-38,2},
            {30,52}})));
  Buildings.Fluid.Sources.Boundary_pT sinkColWat(
    nPorts=1,
    use_T_in=false,
    p(displayUnit="Pa") = 1000,
    redeclare package Medium = MediumColWat)
    annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
  Buildings.Fluid.Sources.Boundary_pT souColWat(
    nPorts=1,
    use_T_in=false,
    p(displayUnit="Pa") = 2000,
    T=273.15 + 5,
    redeclare package Medium = MediumColWat)
    annotation (Placement(transformation(extent={{40,-50},{20,-30}})));
  Buildings.Fluid.Actuators.Valves.TwoWayQuickOpening val(
    redeclare package Medium = MediumAir,
    dpValve_nominal=200,
    m_flow_nominal=0.1*4.2)
    annotation (Placement(transformation(extent={{94,16},{116,38}})));
  Buildings.Fluid.MixingVolumes.MixingVolume rooVol(
    nPorts=3,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    redeclare each package Medium = MediumAir,
    m_flow_nominal=0.1*4.2,
    V=1,
    final T_start=293.15) "Volume of air in the room"
    annotation (Placement(transformation(extent={{109,-40},{129,-60}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res1(
    redeclare package Medium = MediumAir,
    m_flow_nominal=0.1*4.2,
    dp_nominal=50) annotation (Placement(transformation(
        extent={{12,-11},{-12,11}},
        rotation=180,
        origin={58,27})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res2(
    redeclare package Medium = MediumAir,
    m_flow_nominal=0.1*4.2,
    dp_nominal=50) annotation (Placement(transformation(
        extent={{-13,-12},{13,12}},
        rotation=180,
        origin={59,-80})));
  Modelica.Blocks.Sources.Constant const1(k=273.15 + 15)
                                         annotation (Placement(transformation(extent={{-146,30},
            {-126,50}})));
  Modelica.Blocks.Sources.Constant const2(k=1)
                                         annotation (Placement(transformation(extent={{-140,60},
            {-120,80}})));
  Modelica.Blocks.Sources.Constant const3(k=0.5)
                                         annotation (Placement(transformation(extent={{-140,90},
            {-120,110}})));
  Buildings.Fluid.Sources.Boundary_pT OutDoor(
    nPorts=2,
    redeclare package Medium = MediumAir,
    p(displayUnit="Pa") = 101325 + 250,
    T=273.15 + 25,
    X={0,1},
    use_T_in=true) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-20,90})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow QSou
    "Heat source of the room"
    annotation (Placement(transformation(extent={{72,-60},{92,-40}})));
  Modelica.Blocks.Sources.Ramp ramp(
    startTime=0,
    height=-800,
    offset=2200,
    duration=2*36000)
    annotation (Placement(transformation(extent={{52,-54},{64,-42}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TSen(
      redeclare package Medium = MediumAir, m_flow_nominal=0.1*4.2)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(extent={{10,10},{-10,-10}}, origin={10,-80})));
  Buildings.Fluid.Sensors.RelativePressure dp(redeclare package Medium =
                       MediumAir) "Pressure difference over return fan"
    annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={80,60})));
  Buildings.Fluid.Sources.Boundary_pT PressureReference(
    use_T_in=false,
    redeclare package Medium = MediumAir,
    p(displayUnit="Pa") = 101325,
    nPorts=1,
    X={0,1}) annotation (Placement(transformation(extent={{108,72},{88,92}})));
  Modelica.Blocks.Sources.Constant const4(k=250)
                                         annotation (Placement(transformation(extent={{64,46},
            {54,56}})));
  Buildings.Fluid.Sensors.VolumeFlowRate senSFFlo(
      redeclare package Medium = MediumAir, m_flow_nominal=0.1*4.2)
    "Sensor for return fan flow rate" annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=-90,
        origin={120,-4})));
  Buildings.Fluid.Sensors.VolumeFlowRate senRFFlo(
      redeclare package Medium = MediumAir, m_flow_nominal=0.1*4.2)
    "Sensor for return fan flow rate" annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-48,-80})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res3(
    redeclare package Medium = MediumAir,
    dp_nominal=50,
    m_flow_nominal=0.1*4.2*0.1) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={134,-24})));
  Buildings.Controls.Continuous.LimPID conPID(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    yMin=0,
    reverseAction=true,
    k=0.5,
    Ti=120) annotation (Placement(transformation(extent={{158,50},{138,70}})));
  Modelica.Blocks.Sources.Constant const5(k=273.15 + 20)
                                         annotation (Placement(transformation(extent={{180,94},
            {168,106}})));
  Buildings.Fluid.Sources.Boundary_pT PressureReference1(
    use_T_in=false,
    redeclare package Medium = MediumAir,
    p(displayUnit="Pa") = 101325,
    nPorts=1,
    X={0,1})
    annotation (Placement(transformation(extent={{182,-34},{162,-14}})));
  Modelica.Blocks.Sources.Ramp ramp1(
    startTime=0,
    duration=2*36000,
    height=5,
    offset=273.15 + 25)
    annotation (Placement(transformation(extent={{32,106},{20,118}})));
equation

  connect(sinkColWat.ports[1],AHU. port_b_Cold_Water) annotation (Line(
      points={{-30,-40},{-6.72,-40},{-6.72,2}},
      color={0,127,255},
      thickness=1));
  connect(souColWat.ports[1],AHU. port_a_Cold_Water) annotation (Line(
      points={{20,-40},{2.8,-40},{2.8,2}},
      color={0,127,255},
      thickness=1));
  connect(AHU.port_b, res1.port_a) annotation (Line(
      points={{30,27},{38,27},{46,27}},
      color={0,127,255},
      thickness=1));
  connect(res1.port_b, val.port_a) annotation (Line(
      points={{70,27},{82,27},{94,27}},
      color={0,127,255},
      thickness=1));
  connect(rooVol.ports[1], res2.port_a) annotation (Line(
      points={{116.333,-40},{116.333,-40},{100,-40},{100,-80},{72,-80}},
      color={0,127,255},
      thickness=1));
  connect(OutDoor.ports[1], AHU.port_Exh) annotation (Line(points={{-22,80},{-22,
          80},{-22,68},{-24.4,68},{-24.4,52}},     color={0,127,255},
      thickness=1));
  connect(OutDoor.ports[2], AHU.port_Fre) annotation (Line(points={{-18,80},{
          -18,80},{-18,68},{-15.3333,68},{-15.3333,52}}, color={0,127,255},
      thickness=1));
  connect(ramp.y, QSou.Q_flow)
    annotation (Line(points={{64.6,-48},{64.6,-50},{72,-50}},
                                                            color={0,0,127}));
  connect(QSou.port, rooVol.heatPort)
    annotation (Line(points={{92,-50},{109,-50}},          color={191,0,0},
      pattern=LinePattern.Dash));
  connect(res2.port_b, TSen.port_a) annotation (Line(
      points={{46,-80},{46,-80},{20,-80}},
      color={0,127,255},
      thickness=1));
  connect(dp.port_a, val.port_a) annotation (Line(
      points={{80,50},{80,27},{82,27},{94,27}},
      color={0,127,255},
      thickness=1));
  connect(dp.port_b, PressureReference.ports[1]) annotation (Line(
      points={{80,70},{80,70},{80,82},{88,82}},
      color={0,127,255},
      thickness=1));
  connect(dp.p_rel, AHU.Pre_Mea) annotation (Line(
      points={{71,60},{40,60},{40,37},{32.2667,37}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(const4.y, AHU.Pre_Set) annotation (Line(
      points={{53.5,51},{44,51},{44,47},{32.2667,47}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(val.port_b, senSFFlo.port_a) annotation (Line(
      points={{116,27},{120,27},{120,6}},
      color={0,127,255},
      thickness=1));
  connect(senSFFlo.port_b, rooVol.ports[2]) annotation (Line(
      points={{120,-14},{120,-40},{119,-40}},
      color={0,127,255},
      thickness=1));
  connect(TSen.port_b, senRFFlo.port_a) annotation (Line(
      points={{0,-80},{-18,-80},{-38,-80}},
      color={0,127,255},
      thickness=1));
  connect(senRFFlo.port_b, AHU.port_a) annotation (Line(
      points={{-58,-80},{-120,-80},{-120,27},{-38,27}},
      color={0,127,255},
      thickness=1));
  connect(res3.port_a, rooVol.ports[3]) annotation (Line(
      points={{124,-24},{120,-24},{120,-40},{121.667,-40}},
      color={0,127,255},
      thickness=1));
  connect(conPID.y, val.y) annotation (Line(
      points={{137,60},{105,60},{105,40.2}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(const5.y, conPID.u_s) annotation (Line(
      points={{167.4,100},{167.4,60},{160,60}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(TSen.T, conPID.u_m) annotation (Line(
      points={{10,-91},{10,-102},{148,-102},{148,48}},
      color={0,0,127},
      pattern=LinePattern.Dash));

  connect(PressureReference1.ports[1], res3.port_b) annotation (Line(
      points={{162,-24},{158,-24},{152,-24},{144,-24}},
      color={0,127,255},
      thickness=1));
  connect(ramp1.y, OutDoor.T_in) annotation (Line(
      points={{19.4,112},{-24,112},{-24,102}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(const2.y, AHU.CoolOn) annotation (Line(
      points={{-119,70},{-80,70},{-80,22},{-40.2667,22}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(const1.y, AHU.SetPoi) annotation (Line(
      points={{-125,40},{-92,40},{-92,7},{-40.2667,7}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(const3.y, AHU.Mix_Set) annotation (Line(
      points={{-119,100},{-60,100},{-60,47},{-40.2667,47}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(extent={{-160,-120},{180,120}}, preserveAspectRatio=false),
        graphics),
    experiment(StopTime=100000),
    __Dymola_experimentSetupOutput,
    __Dymola_Commands(file="modelica://PNNL_building_system/Resources/Scripts/Air_side_system/Air_Handling_Unit/AHU/Examples/AHU.mos"
        "Simulate and plot"));
end AHU;
