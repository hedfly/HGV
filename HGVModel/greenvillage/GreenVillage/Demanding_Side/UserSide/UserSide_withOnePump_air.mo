within GreenVillage.Demanding_Side.UserSide;
model UserSide_withOnePump_air
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

  parameter Modelica.SIunits.Pressure dpPum_nominal
    "Nominal pump pressure difference";

  parameter Real k;

  parameter Real ti;

   replaceable package Medium_Air =
      Modelica.Media.Interfaces.PartialMedium;
   parameter Real P_SF[:] "Supply fan power array";
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
   parameter Real k_air;
   parameter Real ti_air;

  HeatPump.HeatPump heatPump(
    P_nominal=P_nominal,
    dTEva_nominal=dTEva_nominal,
    dTCon_nominal=dTCon_nominal,
    COPc_nominal=COPc_nominal,
    m2_flow_nominal=m2_flow_nominal,
    m1_flow_nominal=m1_flow_nominal,
    TCon_nominal=TCon_nominal,
    TEva_nominal=TEva_nominal,
    a=a,
    dp_nominal=dp_nominal,
    k=k,
    ti=ti)                   annotation (Placement(transformation(extent={{14,-10},
            {-14,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
                                                                                                        annotation (Placement(transformation(extent={{30,-110},
            {50,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
                                                                                                        annotation (Placement(transformation(extent={{-50,
            -110},{-30,-90}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow QSou
    "Heat source of the room"
    annotation (Placement(transformation(extent={{-68,50},{-48,70}})));
  Modelica.Blocks.Interfaces.RealInput Q annotation (Placement(transformation(extent={{-140,20},
            {-100,60}})));
  Modelica.Blocks.Interfaces.RealInput CoolOn
    "Actuator position (0: closed, 1: open)"                                           annotation (Placement(transformation(extent={{-140,
            -60},{-100,-20}})));
  Modelica.Blocks.Interfaces.RealInput TSetPoi
    "Connector of setpoint input signal"                                            annotation (Placement(transformation(extent={{-140,
            -100},{-100,-60}})));
  Buildings.Fluid.Movers.FlowControlled_dp     fan(redeclare package Medium =
        Medium, m_flow_nominal=m2_flow_nominal,
    motorCooledByFluid=false,
    per(motorCooledByFluid=false))                 annotation (Placement(transformation(
        extent={{-6,6},{6,-6}},
        rotation=90,
        origin={20,26})));
  Modelica.Blocks.Interfaces.RealOutput P
    "Electric power consumed by compressor"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealInput On
    "Actuator position (0: closed, 1: open)"
    annotation (Placement(transformation(extent={{138,40},{98,80}})));
  Modelica.Blocks.Math.Gain gain(k=dpWater_CC_nominal)
    annotation (Placement(transformation(extent={{44,36},{36,44}})));
  Buildings.Fluid.Movers.FlowControlled_dp     fan1(
                                                   redeclare package Medium =
        Medium,
    motorCooledByFluid=false,
    m_flow_nominal=m1_flow_nominal,
    per(motorCooledByFluid=false))                 annotation (Placement(transformation(
        extent={{-6,6},{6,-6}},
        rotation=90,
        origin={-40,-78})));
  Modelica.Blocks.Math.Gain gain1(k=dpPum_nominal)
    annotation (Placement(transformation(extent={{56,-54},{48,-46}})));
  Air_Handling_Unit.Air_side air_side(redeclare package Medium_Water = Medium,
    redeclare package Medium_Air = Medium_Air,
    P_SF=P_SF,
    ti_SF=ti_SF,
    k_SF=k_SF,
    S_min_SF=S_min_SF,
    mOut_flow_nominal=mOut_flow_nominal,
    mRec_flow_nominal=mRec_flow_nominal,
    mExh_flow_nominal=mExh_flow_nominal,
    mAir_CC_flow_nominal=mAir_CC_flow_nominal,
    dpWater_CC_nominal=dpWater_CC_nominal,
    TAir_CC_a_nominal=TAir_CC_a_nominal,
    TAir_CC_b_nominal=TAir_CC_b_nominal,
    TWater_CC_a_nominal=TWater_CC_a_nominal,
    TWater_CC_b_nominal=TWater_CC_b_nominal,
    k=k_air,
    ti=ti_air,
    mWater_CC_flow_nominal=m2_flow_nominal)
    annotation (Placement(transformation(extent={{-16,60},{20,88}})));
  Modelica.Blocks.Interfaces.RealInput T_in "Prescribed boundary temperature"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}})));
  Modelica.Blocks.Sources.Constant const2(k=0.5)
                                         annotation (Placement(transformation(extent={{-86,84},
            {-76,94}})));
  Modelica.Blocks.Interfaces.RealInput SetPoi
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.RealOutput P_Pum "Electrical power consumed"
    annotation (Placement(transformation(extent={{100,-70},{120,-50}})));
  Modelica.Blocks.Interfaces.RealOutput PFan "Electrical power consumed"
    annotation (Placement(transformation(extent={{100,70},{120,90}})));
equation
  connect(heatPump.port_b1, port_b) annotation (Line(
      points={{6,-10},{6,-60},{40,-60},{40,-100}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(port_b, port_b) annotation (Line(
      points={{40,-100},{40,-100}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(QSou.Q_flow, Q) annotation (Line(
      points={{-68,60},{-94,60},{-94,40},{-120,40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump.CoolOn, CoolOn) annotation (Line(
      points={{16,8},{-32,8},{-32,-40},{-120,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump.TSetPoi, TSetPoi) annotation (Line(
      points={{16,-8},{38,-8},{38,-80},{-120,-80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump.port_b2, fan.port_a) annotation (Line(
      points={{6,10},{6,20},{20,20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump.P, P) annotation (Line(
      points={{-15,0},{-20,0},{-20,-40},{80,-40},{80,0},{110,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump.On, On) annotation (Line(
      points={{16,0},{60,0},{60,60},{118,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(gain.u, On) annotation (Line(
      points={{44.8,40},{80,40},{80,60},{118,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump.port_a1, fan1.port_b) annotation (Line(
      points={{-6,-10},{-6,-60},{-40,-60},{-40,-72}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(fan1.port_a, port_a) annotation (Line(
      points={{-40,-84},{-40,-100}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(fan1.dp_in, gain1.y) annotation (Line(
      points={{-32.8,-78.12},{44,-78.12},{44,-50},{47.6,-50}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(gain1.u, On) annotation (Line(
      points={{56.8,-50},{60,-50},{60,60},{118,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(QSou.port, air_side.heatPort) annotation (Line(
      points={{-48,60},{-34,60},{-34,63.5},{-11.3043,63.5}},
      color={191,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(air_side.CoolOn, CoolOn) annotation (Line(
      points={{-12.8696,77.5},{-80,77.5},{-80,-40},{-120,-40}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump.port_a2, air_side.port_b_Cold_Water) annotation (Line(
      points={{-6,10},{-6,20},{-20,20},{-20,40},{-1.91304,40},{-1.91304,61.75}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(air_side.port_a_Cold_Water, fan.port_b) annotation (Line(
      points={{4.34783,61.75},{4.34783,40},{20,40},{20,32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(air_side.T_in, T_in) annotation (Line(
      points={{-12.8696,84.5},{-60,84.5},{-60,80},{-120,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(const2.y, air_side.Mix_Set) annotation (Line(
      points={{-75.5,89},{-40,89},{-40,81},{-12.8696,81}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(air_side.SetPoi, SetPoi) annotation (Line(
      points={{-12.8696,70.5},{-40,70.5},{-40,0},{-120,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(fan1.P, P_Pum) annotation (Line(
      points={{-35.2,-71.4},{-35.2,-60},{110,-60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(air_side.PFan, PFan) annotation (Line(
      points={{17.6522,73.125},{64,73.125},{64,80},{110,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(gain.y, fan.dp_in) annotation (Line(
      points={{35.6,40},{30,40},{30,25.88},{27.2,25.88}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-140,
            -120},{140,120}}),                                                                     graphics), Icon(
        coordinateSystem(preserveAspectRatio=false, extent={{-140,-120},{140,
            120}}), graphics={Bitmap(
          extent={{-112,88},{108,-82}},
          imageSource=
              "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",
          fileName="modelica://GreenVillage/../../../Desktop/Capture.PNG")}));
end UserSide_withOnePump_air;
