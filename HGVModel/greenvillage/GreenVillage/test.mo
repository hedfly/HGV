within GreenVillage;
package test
  model HeatPump
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

    parameter Modelica.SIunits.Temperature TEva_nominal
      "Evaporator temperature";

    parameter Real a[:] = {1}
      "Coefficients for efficiency curve (need p(a=a, y=1)=1)";

    parameter Modelica.SIunits.Pressure dp_nominal
      "Nominal pressure difference";

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
    Demanding_Side.HeatPump.HeatPump
                      heatPump(
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
      ti=ti)                   annotation (Placement(transformation(extent={{10,-4},
              {-18,16}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
          Medium)
      "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
                                                                                                          annotation (Placement(transformation(extent={{26,-104},
              {46,-84}})));
    Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
          Medium)
      "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
                                                                                                          annotation (Placement(transformation(extent={{-54,
              -104},{-34,-84}})));
    Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow QSou
      "Heat source of the room"
      annotation (Placement(transformation(extent={{-72,56},{-52,76}})));
    Modelica.Blocks.Interfaces.RealInput Q annotation (Placement(transformation(extent={{-144,26},
              {-104,66}})));
    Modelica.Blocks.Interfaces.RealInput CoolOn
      "Actuator position (0: closed, 1: open)"                                           annotation (Placement(transformation(extent={{-144,
              -54},{-104,-14}})));
    Modelica.Blocks.Interfaces.RealInput TSetPoi
      "Connector of setpoint input signal"                                            annotation (Placement(transformation(extent={{-144,
              -94},{-104,-54}})));
    Buildings.Fluid.Movers.FlowControlled_dp     fan(redeclare package Medium
        = Medium, m_flow_nominal=m2_flow_nominal,
      motorCooledByFluid=false,
      per(motorCooledByFluid=false))                 annotation (Placement(transformation(
          extent={{-6,6},{6,-6}},
          rotation=90,
          origin={16,32})));
    Modelica.Blocks.Interfaces.RealInput On
      "Actuator position (0: closed, 1: open)"
      annotation (Placement(transformation(extent={{130,46},{90,86}})));
    Modelica.Blocks.Math.Gain gain(k=dpWater_CC_nominal)
      annotation (Placement(transformation(extent={{40,42},{32,50}})));
    Buildings.Fluid.Movers.FlowControlled_dp     fan1(
                                                     redeclare package Medium
        = Medium,
      motorCooledByFluid=false,
      m_flow_nominal=m1_flow_nominal,
      per(motorCooledByFluid=false))                 annotation (Placement(transformation(
          extent={{-6,6},{6,-6}},
          rotation=90,
          origin={-44,-72})));
    Modelica.Blocks.Math.Gain gain1(k=dpPum_nominal)
      annotation (Placement(transformation(extent={{52,-48},{44,-40}})));
    Demanding_Side.UserSide.Air_Handling_Unit.Air_side
                               air_side(redeclare package Medium_Water = Medium,
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
      annotation (Placement(transformation(extent={{-20,66},{16,94}})));
    Modelica.Blocks.Interfaces.RealInput T_in "Prescribed boundary temperature"
      annotation (Placement(transformation(extent={{-144,66},{-104,106}})));
    Modelica.Blocks.Sources.Constant const2(k=0.5)
                                           annotation (Placement(transformation(extent={{-90,90},
              {-80,100}})));
    Modelica.Blocks.Interfaces.RealInput SetPoi
      "Connector of setpoint input signal"
      annotation (Placement(transformation(extent={{-144,-14},{-104,26}})));
    Modelica.Blocks.Math.Add3 add3_1
      annotation (Placement(transformation(extent={{144,-4},{164,16}})));
    Buildings.Fluid.Sources.FixedBoundary souDem(
      redeclare package Medium = Medium,
      nPorts=1,
      T=302.59) annotation (Placement(transformation(extent={{-10,-10},{10,10}},
            origin={-64,-128})));
    Buildings.Fluid.Sources.FixedBoundary sinDem(redeclare package Medium =
          Medium, nPorts=1) annotation (Placement(transformation(extent={{10,-10},
              {-10,10}}, origin={66,-128})));
    Modelica.Blocks.Sources.CombiTimeTable TemOutside
      annotation (Placement(transformation(extent={{-200,80},{-180,100}})));
    Modelica.Blocks.Sources.CombiTimeTable CoolingLoad "CoolingLoad"
      annotation (Placement(transformation(extent={{-200,40},{-180,60}})));
    Modelica.Blocks.Sources.CombiTimeTable TemSetPoint
      annotation (Placement(transformation(extent={{-200,-6},{-180,14}})));
    Modelica.Blocks.Sources.CombiTimeTable ONOFFControl
      annotation (Placement(transformation(extent={{-200,-44},{-180,-24}})));
    Modelica.Blocks.Sources.CombiTimeTable TemHeatPumpOutlet
      annotation (Placement(transformation(extent={{-200,-86},{-180,-66}})));
    Modelica.Blocks.Interfaces.RealOutput PHeatPump
      "Electric power consumed by compressor"
      annotation (Placement(transformation(extent={{180,-4},{200,16}})));
  equation
    connect(heatPump.port_b1,port_b)  annotation (Line(
        points={{2,-4},{2,-54},{36,-54},{36,-94}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(port_b,port_b)  annotation (Line(
        points={{36,-94},{36,-94}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(QSou.Q_flow,Q)  annotation (Line(
        points={{-72,66},{-98,66},{-98,46},{-124,46}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(heatPump.CoolOn,CoolOn)  annotation (Line(
        points={{12,14},{-36,14},{-36,-34},{-124,-34}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(heatPump.TSetPoi,TSetPoi)  annotation (Line(
        points={{12,-2},{34,-2},{34,-74},{-124,-74}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(heatPump.port_b2,fan. port_a) annotation (Line(
        points={{2,16},{2,26},{16,26}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(heatPump.On,On)  annotation (Line(
        points={{12,6},{52,6},{52,66},{110,66}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(gain.u,On)  annotation (Line(
        points={{40.8,46},{72,46},{72,66},{110,66}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(heatPump.port_a1,fan1. port_b) annotation (Line(
        points={{-10,-4},{-10,-54},{-44,-54},{-44,-66}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(fan1.port_a,port_a)  annotation (Line(
        points={{-44,-78},{-44,-94}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(fan1.dp_in,gain1. y) annotation (Line(
        points={{-36.8,-72.12},{40,-72.12},{40,-44},{43.6,-44}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(gain1.u,On)  annotation (Line(
        points={{52.8,-44},{52,-44},{52,66},{110,66}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(QSou.port,air_side. heatPort) annotation (Line(
        points={{-52,66},{-38,66},{-38,68},{-20,68}},
        color={191,0,0},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(air_side.CoolOn,CoolOn)  annotation (Line(
        points={{-22,84},{-84,84},{-84,-34},{-124,-34}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(heatPump.port_a2,air_side. port_b_Cold_Water) annotation (Line(
        points={{-10,16},{-10,26},{-24,26},{-24,46},{-8,46},{-8,66}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(air_side.port_a_Cold_Water,fan. port_b) annotation (Line(
        points={{0,66},{0,46},{16,46},{16,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(air_side.T_in,T_in)  annotation (Line(
        points={{-22,92},{-64,92},{-64,86},{-124,86}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(const2.y,air_side. Mix_Set) annotation (Line(
        points={{-79.5,95},{-44,95},{-44,88},{-22,88}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(air_side.SetPoi,SetPoi)  annotation (Line(
        points={{-22,76},{-44,76},{-44,6},{-124,6}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(gain.y,fan. dp_in) annotation (Line(
        points={{31.6,46},{26,46},{26,31.88},{23.2,31.88}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(souDem.ports[1], port_a) annotation (Line(
        points={{-54,-128},{-44,-128},{-44,-94}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(port_b, sinDem.ports[1]) annotation (Line(
        points={{36,-94},{36,-128},{56,-128}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=1));
    connect(add3_1.y, PHeatPump) annotation (Line(
        points={{165,6},{190,6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(air_side.PFan, add3_1.u1) annotation (Line(
        points={{17,80},{128,80},{128,14},{142,14}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(heatPump.P, add3_1.u2) annotation (Line(
        points={{-19,6},{-24,6},{-24,-16},{96,-16},{96,6},{142,6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(fan1.P, add3_1.u3) annotation (Line(
        points={{-39.2,-65.4},{-39.2,-58},{128,-58},{128,-2},{142,-2}},
        color={0,0,127},
        smooth=Smooth.None));
    annotation (Diagram(coordinateSystem(extent={{-200,-140},{200,140}},
            preserveAspectRatio=false), graphics), Icon(coordinateSystem(extent={{
              -200,-140},{200,140}})));
  end HeatPump;
end test;
