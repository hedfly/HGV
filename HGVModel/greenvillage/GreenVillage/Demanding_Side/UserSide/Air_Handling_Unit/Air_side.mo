within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit;
model Air_side
  import GreenVillage;
   replaceable package Medium_Air =
      Modelica.Media.Interfaces.PartialMedium;
   replaceable package Medium_Water =
      Modelica.Media.Interfaces.PartialMedium;
   parameter Real P_SF[:] "Supply fan power array";
   parameter Real v_flow[:]={0,mOut_flow_nominal/1.2,mOut_flow_nominal*2/1.2}
    "Volume flow rate curve";
   parameter Real p_flow[:]={600,300,0} "Pressure curve";
   parameter Real ti_SF "ti for supply fan controller";
   parameter Real k_SF "k for supply fan controller";
   parameter Real S_min_SF "The minimum speed for supply fan";
   parameter Modelica.SIunits.MassFlowRate mOut_flow_nominal
    "Mass flow rate of the outside air damper";
   parameter Modelica.SIunits.MassFlowRate mRec_flow_nominal
    "Mass flow rate of the recirculation air damper";
   parameter Modelica.SIunits.MassFlowRate mExh_flow_nominal
    "Mass flow rate of the exhaust air damper";
   parameter Modelica.SIunits.MassFlowRate mAir_CC_flow_nominal
    "The nominal mass flow rate of the cooling air";
   parameter Modelica.SIunits.MassFlowRate mWater_CC_flow_nominal
    "The nominal mass flow rate of the cooling water";
   parameter Modelica.SIunits.Pressure dpWater_CC_nominal
    "The pressure drop of the cooling water";
   parameter Modelica.SIunits.Temperature TAir_CC_a_nominal
    "The nominal temperature of the air entering the cooling water coil";
   parameter Modelica.SIunits.Temperature TAir_CC_b_nominal
    "The nominal temperature of the air leaving the cooling water coil";
   parameter Modelica.SIunits.Temperature TWater_CC_a_nominal
    "The nominal temperature of the water entering the cooling water coil";
   parameter Modelica.SIunits.Temperature TWater_CC_b_nominal
    "The nominal temperature of the water leaving the cooling water coil";
   parameter Real k;
   parameter Real ti;
  GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.AHU.Air_Handling_Unit Air_side(
    redeclare package Medium_Air = Medium_Air,
    P_SF=P_SF,
    ti_SF=ti_SF,
    k_SF=k_SF,
    S_min_SF=S_min_SF,
    mOut_flow_nominal=mOut_flow_nominal,
    mRec_flow_nominal=mRec_flow_nominal,
    mExh_flow_nominal=mExh_flow_nominal,
    mAir_CC_flow_nominal=mAir_CC_flow_nominal,
    mWater_CC_flow_nominal=mWater_CC_flow_nominal,
    dpWater_CC_nominal(displayUnit="Pa") = dpWater_CC_nominal,
    TAir_CC_a_nominal=TAir_CC_a_nominal,
    TAir_CC_b_nominal=TAir_CC_b_nominal,
    TWater_CC_a_nominal=TWater_CC_a_nominal,
    TWater_CC_b_nominal=TWater_CC_b_nominal,
    k=k,
    ti=ti,
    redeclare package Medium_ColdWater = Medium_Water,
    dpOut_nominal=50,
    dpRec_nominal=100,
    dpExh_nominal=50,
    v_flow_SF=v_flow,
    p_flow_SF=p_flow,
    dpAir_CC_nominal(displayUnit="Pa") = 100)
    annotation (Placement(transformation(extent={{-40,-14},{28,36}})));
  Buildings.Fluid.Actuators.Valves.TwoWayQuickOpening val(
    dpValve_nominal=200,
    redeclare package Medium = Medium_Air,
    m_flow_nominal=mOut_flow_nominal)
    annotation (Placement(transformation(extent={{92,0},{114,22}})));
  Buildings.Fluid.MixingVolumes.MixingVolume rooVol(
    nPorts=3,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    redeclare each package Medium = Medium_Air,
    V=1,
    final T_start=293.15,
    m_flow_nominal=mOut_flow_nominal) "Volume of air in the room"
    annotation (Placement(transformation(extent={{107,-56},{127,-76}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res1(
    dp_nominal=50,
    redeclare package Medium = Medium_Air,
    m_flow_nominal=mOut_flow_nominal)
                   annotation (Placement(transformation(
        extent={{12,-11},{-12,11}},
        rotation=180,
        origin={56,11})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res2(
    dp_nominal=50,
    redeclare package Medium = Medium_Air,
    m_flow_nominal=mOut_flow_nominal)
                   annotation (Placement(transformation(
        extent={{-13,-12},{13,12}},
        rotation=180,
        origin={57,-96})));
  Buildings.Fluid.Sources.Boundary_pT OutDoor(
    nPorts=2,
    p(displayUnit="Pa") = 101325 + 250,
    T=273.15 + 25,
    X={0,1},
    use_T_in=true,
    redeclare package Medium = Medium_Air)
                   annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-24,100})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TSen(m_flow_nominal=
        mOut_flow_nominal, redeclare package Medium = Medium_Air)
    "Temperature of condenser water leaving the cooling tower" annotation (
      Placement(transformation(extent={{10,10},{-10,-10}}, origin={8,-96})));
  Buildings.Fluid.Sensors.RelativePressure dp(redeclare package Medium =
        Medium_Air) "Pressure difference over return fan"
    annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={78,44})));
  Buildings.Fluid.Sources.Boundary_pT PressureReference(
    use_T_in=false,
    p(displayUnit="Pa") = 101325,
    nPorts=1,
    X={0,1},
    redeclare package Medium = Medium_Air)
             annotation (Placement(transformation(extent={{106,56},{86,76}})));
  Modelica.Blocks.Sources.Constant const4(k=250)
                                         annotation (Placement(transformation(extent={{62,30},
            {52,40}})));
  Buildings.Fluid.Sensors.VolumeFlowRate senSFFlo(                  redeclare
      package Medium = Medium_Air, m_flow_nominal=mOut_flow_nominal)
    "Sensor for return fan flow rate" annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=-90,
        origin={118,-20})));
  Buildings.Fluid.Sensors.VolumeFlowRate senRFFlo(
                                            m_flow_nominal=0.1*4.2, redeclare
      package Medium = Medium_Air) "Sensor for return fan flow rate"
                                      annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-50,-96})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM res3(
    dp_nominal=50,
    redeclare package Medium = Medium_Air,
    m_flow_nominal=mOut_flow_nominal*0.1)
                                annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={132,-40})));
  Buildings.Controls.Continuous.LimPID conPID(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    yMin=0,
    reverseAction=true,
    k=0.5,
    Ti=120) annotation (Placement(transformation(extent={{156,34},{136,54}})));
  Modelica.Blocks.Sources.Constant const5(k=273.15 + 20)
                                         annotation (Placement(transformation(extent={{178,78},
            {166,90}})));
  Buildings.Fluid.Sources.Boundary_pT PressureReference1(
    use_T_in=false,
    p(displayUnit="Pa") = 101325,
    nPorts=1,
    X={0,1},
    redeclare package Medium = Medium_Air)
    annotation (Placement(transformation(extent={{180,-50},{160,-30}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_Cold_Water(redeclare package
      Medium = Medium_Water)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-50,-150},{-30,-130}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_Cold_Water(redeclare package
      Medium = Medium_Water)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{30,-150},{50,-130}})));
  Modelica.Blocks.Interfaces.RealInput T_in "Prescribed boundary temperature"
    annotation (Placement(transformation(extent={{-200,100},{-160,140}})));
  Modelica.Blocks.Interfaces.RealInput Mix_Set
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-200,60},{-160,100}})));
  Modelica.Blocks.Interfaces.RealInput CoolOn
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-200,20},{-160,60}})));
  Modelica.Blocks.Interfaces.RealInput SetPoi
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-200,-60},{-160,-20}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort
    "Heat port for sensible heat input"
    annotation (Placement(transformation(extent={{-170,-130},{-150,-110}})));
  Modelica.Blocks.Interfaces.RealOutput PFan "Electrical power consumed"
    annotation (Placement(transformation(extent={{200,-10},{220,10}})));
equation
  connect(Air_side.port_b, res1.port_a) annotation (Line(
      points={{28,11},{36,11},{44,11}},
      color={0,127,255},
      thickness=1));
  connect(res1.port_b,val. port_a) annotation (Line(
      points={{68,11},{80,11},{92,11}},
      color={0,127,255},
      thickness=1));
  connect(rooVol.ports[1],res2. port_a) annotation (Line(
      points={{114.333,-56},{114.333,-56},{98,-56},{98,-96},{70,-96}},
      color={0,127,255},
      thickness=1));
  connect(OutDoor.ports[1], Air_side.port_Exh) annotation (Line(
      points={{-26,90},{-26,90},{-26,54},{-26.4,54},{-26.4,36}},
      color={0,127,255},
      thickness=1));
  connect(OutDoor.ports[2], Air_side.port_Fre) annotation (Line(
      points={{-22,90},{-22,90},{-22,38},{-16,38},{-18,38},{-17.3333,38},{
          -17.3333,36}},
      color={0,127,255},
      thickness=1));
  connect(res2.port_b,TSen. port_a) annotation (Line(
      points={{44,-96},{44,-96},{18,-96}},
      color={0,127,255},
      thickness=1));
  connect(dp.port_a,val. port_a) annotation (Line(
      points={{78,34},{78,11},{80,11},{92,11}},
      color={0,127,255},
      thickness=1));
  connect(dp.port_b,PressureReference. ports[1]) annotation (Line(
      points={{78,54},{78,54},{78,66},{86,66}},
      color={0,127,255},
      thickness=1));
  connect(dp.p_rel, Air_side.Pre_Mea) annotation (Line(
      points={{69,44},{38,44},{38,21},{30.2667,21}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(const4.y, Air_side.Pre_Set) annotation (Line(
      points={{51.5,35},{42,35},{42,31},{30.2667,31}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(val.port_b,senSFFlo. port_a) annotation (Line(
      points={{114,11},{118,11},{118,-10}},
      color={0,127,255},
      thickness=1));
  connect(senSFFlo.port_b,rooVol. ports[2]) annotation (Line(
      points={{118,-30},{118,-56},{117,-56}},
      color={0,127,255},
      thickness=1));
  connect(TSen.port_b,senRFFlo. port_a) annotation (Line(
      points={{-2,-96},{-20,-96},{-40,-96}},
      color={0,127,255},
      thickness=1));
  connect(senRFFlo.port_b, Air_side.port_a) annotation (Line(
      points={{-60,-96},{-122,-96},{-122,11},{-40,11}},
      color={0,127,255},
      thickness=1));
  connect(res3.port_a,rooVol. ports[3]) annotation (Line(
      points={{122,-40},{118,-40},{118,-56},{119.667,-56}},
      color={0,127,255},
      thickness=1));
  connect(conPID.y,val. y) annotation (Line(
      points={{135,44},{103,44},{103,24.2}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(const5.y,conPID. u_s) annotation (Line(
      points={{165.4,84},{165.4,44},{158,44}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(TSen.T,conPID. u_m) annotation (Line(
      points={{8,-107},{8,-118},{146,-118},{146,32}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(PressureReference1.ports[1],res3. port_b) annotation (Line(
      points={{160,-40},{156,-40},{150,-40},{142,-40}},
      color={0,127,255},
      thickness=1));
  connect(Air_side.port_b_Cold_Water, port_b_Cold_Water) annotation (Line(
      points={{-8.72,-14},{-8.72,-120},{-40,-120},{-40,-140}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(Air_side.port_a_Cold_Water, port_a_Cold_Water) annotation (Line(
      points={{0.8,-14},{0.8,-120},{40,-120},{40,-140}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(OutDoor.T_in, T_in) annotation (Line(
      points={{-28,112},{-28,120},{-180,120}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Air_side.Mix_Set, Mix_Set) annotation (Line(
      points={{-42.2667,31},{-60,31},{-60,80},{-180,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Air_side.CoolOn, CoolOn) annotation (Line(
      points={{-42.2667,6},{-80,6},{-80,40},{-180,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Air_side.SetPoi, SetPoi) annotation (Line(
      points={{-42.2667,-9},{-80,-9},{-80,-40},{-180,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(rooVol.heatPort, heatPort) annotation (Line(
      points={{107,-66},{-82,-66},{-82,-120},{-160,-120}},
      color={191,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Air_side.PFan, PFan) annotation (Line(
      points={{30.2667,-4},{118,-4},{118,0},{210,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(extent={{-160,-140},{200,140}},
          preserveAspectRatio=false), graphics), Icon(coordinateSystem(extent={{-160,
            -140},{200,140}}, preserveAspectRatio=false), graphics={Bitmap(
          extent={{-186,142},{210,-140}},
          imageSource="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",
          fileName="modelica://GreenVillage/../../../Desktop/images.png")}));
end Air_side;
