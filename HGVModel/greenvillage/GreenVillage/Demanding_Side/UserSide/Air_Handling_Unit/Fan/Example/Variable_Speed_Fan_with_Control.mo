within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan.Example;
model Variable_Speed_Fan_with_Control

  extends Modelica.Icons.Example;
  package Medium = Buildings.Media.Air;
  parameter Boolean add_heat_to_fluid = false
    "Set to true to add heat to the fluid";
  parameter Real P[:]={0,50^2,100^2} "Power array";
  parameter Real v_flow[:]={0,50,100} "Volume flow rate array";
  parameter Real p_flow[:]={200,100,0} "Pressure array";
  parameter Real p_RF_flow[:]={100,50,0} "Pressure array";
  Air_Handling_Unit.Fan.Variable_Speed_Fan Supply_Fan(
    add_heat_to_fluid=false,
    redeclare package Medium = Medium,
    p_flow=p_flow,
    P=P,
    v_flow=v_flow) annotation (Placement(transformation(extent={{-90,0},{-70,20}})));
    Modelica.Blocks.Sources.Ramp yRam(
    offset=1,
    duration=3600,
    startTime=1000,
    height=-0.5) annotation (Placement(transformation(extent={{0,40},{20,60}})));
  Air_Handling_Unit.Fan.Controller.Pressure_based_SF_control pressure_based_SF_control(
    S_min=0.3,
    ti=60,
    k=1)                                                                                                     annotation (Placement(transformation(extent={{-30,40},
            {-40,48}})));
  Buildings.Fluid.Sensors.RelativePressure dp(redeclare package Medium =
                       Medium) "Pressure difference over return fan"
    annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=90,
        origin={40,-10})));
  Modelica.Blocks.Sources.Constant const(k=50)
                                         annotation (Placement(transformation(extent={{20,70},
            {0,90}})));
  Buildings.Fluid.Sensors.VolumeFlowRate senSFFlo(
      redeclare package Medium = Medium, m_flow_nominal=50*1.2)
    "Sensor for return fan flow rate"
    annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
  Buildings.Fluid.Actuators.Valves.TwoWayQuickOpening val(
    redeclare package Medium = Medium,
    m_flow_nominal=50*1.2,
    dpValve_nominal=50)
    annotation (Placement(transformation(extent={{62,0},{82,20}})));
  Air_Handling_Unit.Fan.Variable_Speed_Fan Return_Fan(
    add_heat_to_fluid=false,
    redeclare package Medium = Medium,
    P=P,
    v_flow=v_flow,
    p_flow=p_RF_flow)
    annotation (Placement(transformation(extent={{-70,-60},{-90,-40}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res31(
    redeclare package Medium = Medium,
    m_flow_nominal=50*1.2,
    dp_nominal=25) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-112,-20})));
  Buildings.Fluid.Sensors.VolumeFlowRate senRFFlo(
      redeclare package Medium = Medium, m_flow_nominal=50*1.2)
    "Sensor for return fan flow rate"
    annotation (Placement(transformation(extent={{-20,-60},{-40,-40}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res2(
    redeclare package Medium = Medium,
    m_flow_nominal=50*1.2,
    dp_nominal=25) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={10,-50})));
  Buildings.Fluid.MixingVolumes.MixingVolume rooVol(
    nPorts=3,
    redeclare each package Medium = Medium,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    final T_start=293.15,
    m_flow_nominal=50*1.2,
    V=10) "Volume of air in the room"
    annotation (Placement(transformation(extent={{87,-50},{107,-70}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res1(
    redeclare package Medium = Medium,
    dp_nominal=10,
    m_flow_nominal=1.45) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={60,-70})));
  Buildings.Fluid.Sources.Boundary_pT Inflitration(
    redeclare package Medium = Medium,
    nPorts=1,
    use_p_in=false,
    T=293.15) annotation (Placement(transformation(extent={{20,-82},{40,-62}})));
  Buildings.Fluid.Sources.Boundary_pT Freshair(
    redeclare package Medium = Medium,
    nPorts=1,
    use_p_in=false,
    T=293.15)
    annotation (Placement(transformation(extent={{-154,-88},{-134,-68}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res3(
    redeclare package Medium = Medium,
    dp_nominal=10,
    m_flow_nominal=1.45) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-112,-64})));
 Air_Handling_Unit.Fan.Controller.Pressure_based_RF_control
    pressure_based_RF_control(
    S_min=0.3,
    ti=60,
    k=1,
    offset=0.8)
    annotation (Placement(transformation(extent={{-46,-24},{-56,-16}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res4(
    redeclare package Medium = Medium,
    m_flow_nominal=50*1.2,
    dp_nominal=50) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={10,10})));
  Buildings.Fluid.Sources.Boundary_pT Outdoor(
    redeclare package Medium = Medium,
    nPorts=1,
    use_p_in=false,
    T=293.15) annotation (Placement(transformation(extent={{80,-40},{60,-20}})));
equation

  connect(const.y, pressure_based_SF_control.u_s) annotation (Line(
      points={{-1,80},{-16,80},{-16,46.4},{-29,46.4}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(dp.p_rel, pressure_based_SF_control.u_m) annotation (Line(
      points={{31,-10},{-10,-10},{-10,41.6},{-29,41.6}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(pressure_based_SF_control.y, Supply_Fan.y) annotation (Line(
      points={{-40.5,44},{-100,44},{-100,30},{-100,14},{-91,14}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(val.y, yRam.y)
    annotation (Line(points={{72,22},{72,50},{21,50}}, color={0,0,127},
      pattern=LinePattern.Dash));
  connect(Supply_Fan.port_b, senSFFlo.port_a)
    annotation (Line(points={{-70,10},{-40,10}},
                                               color={0,127,255},
      thickness=1));
  connect(Return_Fan.port_a, senRFFlo.port_b) annotation (Line(
      points={{-70,-50},{-70,-50},{-40,-50}},
      color={0,127,255},
      thickness=1));
  connect(Supply_Fan.port_a, res31.port_b) annotation (Line(
      points={{-90,10},{-112,10},{-112,-10}},
      color={0,127,255},
      thickness=1));
  connect(res31.port_a, Return_Fan.port_b) annotation (Line(
      points={{-112,-30},{-112,-50},{-90,-50}},
      color={0,127,255},
      thickness=1));
  connect(senRFFlo.port_a, res2.port_b) annotation (Line(points={{-20,-50},{-20,
          -50},{0,-50}},   color={0,127,255},
      thickness=1));
  connect(rooVol.ports[1], res2.port_a) annotation (Line(
      points={{94.3333,-50},{94.3333,-50},{20,-50}},
      color={0,127,255},
      thickness=1));
  connect(rooVol.ports[2], val.port_b) annotation (Line(
      points={{97,-50},{97,-50},{120,-50},{120,10},{82,10}},
      color={0,127,255},
      thickness=1));
  connect(res1.port_a, rooVol.ports[3]) annotation (Line(
      points={{70,-70},{82,-70},{82,-50},{99.6667,-50}},
      color={0,127,255},
      thickness=1));
  connect(Inflitration.ports[1], res1.port_b) annotation (Line(
      points={{40,-72},{40,-70},{50,-70}},
      color={0,127,255},
      thickness=1));
  connect(Freshair.ports[1], res3.port_a) annotation (Line(
      points={{-134,-78},{-112,-78},{-112,-74}},
      color={0,127,255},
      thickness=1));
  connect(res3.port_b, Return_Fan.port_b) annotation (Line(
      points={{-112,-54},{-112,-50},{-90,-50}},
      color={0,127,255},
      thickness=1));
  connect(senSFFlo.V_flow, pressure_based_RF_control.m_SF) annotation (Line(
      points={{-30,21},{-30,28},{-40,28},{-40,-17.6},{-45,-17.6}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(senRFFlo.V_flow, pressure_based_RF_control.m_RF) annotation (Line(
      points={{-30,-39},{-34,-39},{-34,-24},{-34,-22.4},{-45,-22.4}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(pressure_based_RF_control.s_RF, Return_Fan.y) annotation (Line(
      points={{-56.5,-20},{-60,-20},{-60,-46},{-69,-46}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(val.port_a, res4.port_b) annotation (Line(
      points={{62,10},{22,10},{20,10}},
      color={0,127,255},
      thickness=1));
  connect(res4.port_a, senSFFlo.port_b) annotation (Line(
      points={{0,10},{-10,10},{-20,10}},
      color={0,127,255},
      thickness=1));
  connect(dp.port_a, res4.port_b) annotation (Line(
      points={{40,0},{40,10},{22,10},{20,10}},
      color={0,127,255},
      thickness=1));
  connect(Outdoor.ports[1], dp.port_b) annotation (Line(
      points={{60,-30},{40,-30},{40,-20}},
      color={0,127,255},
      thickness=1));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-160,
            -100},{160,100}})),
    experiment(StopTime=6000),
__Dymola_Commands(file="modelica://PNNL_building_system/Resources/Scripts/Air_side_system/Air_Handling_Unit/Fan/Examples/Variable_Speed_Fan_with_Control/Variable_Speed_Fan_with_Control.mos"
        "Simulate and plot"),
    __Dymola_experimentSetupOutput);
end Variable_Speed_Fan_with_Control;
