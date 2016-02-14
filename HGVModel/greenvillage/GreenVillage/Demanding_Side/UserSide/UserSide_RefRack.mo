within GreenVillage.Demanding_Side.UserSide;
model UserSide_RefRack
 package Medium = Buildings.Media.Water "Medium model";

  parameter Modelica.SIunits.Power P_nominal
    "Nominal compressor power (at y=1)";

  parameter Real COPc_nominal "Chiller COP";

  parameter Real a[:] = {1}
    "Coefficients for efficiency curve (need p(a=a, y=1)=1)";

  parameter Modelica.SIunits.Pressure dp_nominal "Nominal pressure difference";

  parameter Modelica.SIunits.Pressure dpPum_nominal
    "Nominal pump pressure difference";

  Buildings.Fluid.MixingVolumes.MixingVolume rooVol(
    redeclare each package Medium = Medium,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    V=1,
    m_flow_nominal=chi.m2_flow_nominal,
    nPorts=3,
    final T_start=293.15) "Volume of air in the room"
    annotation (Placement(transformation(extent={{-9,50},{11,70}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow QSou
    "Heat source of the room"
    annotation (Placement(transformation(extent={{-68,50},{-48,70}})));
  Buildings.Fluid.Movers.FlowControlled_dp     fan(redeclare package Medium =
        Medium,
    motorCooledByFluid=false,
    m_flow_nominal=chi.m2_flow_nominal,
    addPowerToMedium=false)                        annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=90,
        origin={-20,20})));
  Modelica.Blocks.Math.Gain gain(k=100)
    annotation (Placement(transformation(extent={{44,16},{36,24}})));
  Modelica.Blocks.Interfaces.RealInput Q annotation (Placement(transformation(extent={{-120,50},
            {-100,70}})));
  Modelica.Blocks.Interfaces.RealInput On
    "Actuator position (0: closed, 1: open)"
    annotation (Placement(transformation(extent={{120,50},{100,70}})));
  Buildings.Fluid.Chillers.Carnot chi(
    redeclare package Medium1 = Medium,
    redeclare package Medium2 = Medium,
    P_nominal=P_nominal,
    m1_flow_nominal=chi.m2_flow_nominal*(COPc_nominal + 1)/COPc_nominal,
    dp1_nominal=dp_nominal,
    dTEva_nominal=7,
    dTCon_nominal=5,
    use_eta_Carnot=false,
    a=a,
    m2_flow_nominal=P_nominal*COPc_nominal/7/4200,
    COP_nominal=COPc_nominal,
    dp2_nominal=0,
    TCon_nominal=575.74,
    TEva_nominal=551.3)
    annotation (Placement(transformation(extent={{10,-10},{-10,-30}})));
  Buildings.Fluid.Movers.FlowControlled_dp     fan1(
                                                   redeclare package Medium =
        Medium,
    motorCooledByFluid=false,
    m_flow_nominal=chi.m1_flow_nominal,
    addPowerToMedium=false)                        annotation (Placement(transformation(
        extent={{6,6},{-6,-6}},
        rotation=180,
        origin={-60,-60})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,-70},{-90,-50}})));
  Buildings.Controls.Continuous.LimPID conPID(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=1,
    Ti=60,
    reverseAction=true)
    annotation (Placement(transformation(extent={{52,-4},{40,-16}})));
  Modelica.Blocks.Sources.Constant const2(k=273.15 + 5)
                                         annotation (Placement(transformation(extent={{98,6},{
            90,14}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTem(redeclare package Medium =
        Medium, m_flow_nominal=chi.m2_flow_nominal) annotation (Placement(
        transformation(
        extent={{-6,6},{6,-6}},
        rotation=90,
        origin={20,0})));
  Modelica.Blocks.Math.Gain gain1(k=dpPum_nominal)
    annotation (Placement(transformation(extent={{44,-44},{36,-36}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res15(
    dp_nominal=100,
    redeclare package Medium = Medium,
    m_flow_nominal=chi.m2_flow_nominal)
    annotation (Placement(transformation(extent={{6,-6},{-6,6}},
        rotation=-90,
        origin={20,34})));
  Buildings.Fluid.Storage.ExpansionVessel expVes(
    V_start=1,
    redeclare package Medium = Medium,
    p(displayUnit="Pa") = 0)
    annotation (Placement(transformation(extent={{-36,41},{-24,50}})));
equation

  connect(QSou.port,rooVol. heatPort) annotation (Line(
      points={{-48,60},{-9,60}},
      color={191,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(QSou.Q_flow,Q)  annotation (Line(
      points={{-68,60},{-110,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(gain.u,On)  annotation (Line(
      points={{44.8,20},{80,20},{80,60},{110,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(const2.y, conPID.u_s) annotation (Line(
      points={{89.6,10},{80,10},{80,-10},{53.2,-10}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPID.y, chi.y) annotation (Line(
      points={{39.4,-10},{30,-10},{30,-29},{12,-29}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chi.port_a1, fan1.port_b) annotation (Line(
      points={{10,-26},{20,-26},{20,-60},{-54,-60}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(fan1.port_a, port_a) annotation (Line(
      points={{-66,-60},{-100,-60}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(chi.port_b1, port_b) annotation (Line(
      points={{-10,-26},{-60,-26},{-60,40},{-100,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(gain1.u, On) annotation (Line(
      points={{44.8,-40},{60,-40},{60,20},{80,20},{80,60},{110,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(gain1.y, fan1.dp_in) annotation (Line(
      points={{35.6,-40},{-60.12,-40},{-60.12,-52.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(chi.port_b2, senTem.port_a) annotation (Line(
      points={{10,-14},{20,-14},{20,-6}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTem.T, conPID.u_m) annotation (Line(
      points={{26.6,-4.44089e-016},{34,-4.44089e-016},{34,0},{46,0},{46,-2.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(gain.y, fan.dp_in) annotation (Line(
      points={{35.6,20},{32,20},{32,20.12},{-12.8,20.12}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(chi.port_a2, fan.port_b) annotation (Line(
      points={{-10,-14},{-20,-14},{-20,14}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(fan.port_a, rooVol.ports[1]) annotation (Line(
      points={{-20,26},{-20,50},{-1.66667,50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(senTem.port_b, res15.port_a) annotation (Line(
      points={{20,6},{20,28}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res15.port_b, rooVol.ports[2]) annotation (Line(
      points={{20,40},{20,50},{1,50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(expVes.port_a, rooVol.ports[3]) annotation (Line(
      points={{-30,41},{-30,36},{-20,36},{-20,50},{3.66667,50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),                                                                     graphics), Icon(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                    graphics={Bitmap(
          extent={{-92,62},{88,-84}},
          imageSource="iVBORw0KGgoAAAANSUhEUgAAAL4AAACBCAYAAAB+WADlAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAX8SURBVHhe7ZjBqlxJDEP7p7OeT+9pJ1wYQhsqscaSKB2o3gSujp+0yusdwoVk+OFKMvxwJRl+uJIMP1xJhh+uJMMPV5Lhhyt5vV+f7eflbT0RXu8fP95XvqeIb/+m/hzdH2cRdEy2ESvij3B0F3M2bR6A43geHN3FnE2bB+A4ngdHdzFn0+YBOI7nwdFdzNm0eQCO43lwdBdzNm0egON4HhzdxZxNmwfgOJ4HR3cxZ9PmATiO58HRXczZtHkAjuN5cHQXczZtHoDjeB4c3cWcTZsH4DieB0d3MWfT5gE4jufB0V3M2bR5AI7jeXB0F3M2bR6A43geHN3FnE2bB+A4ngdHdzFn0+Z/8fr8IZlvwrfvbb6/4dt3Nh8S2+F/+8Nsvwnfvrf5/oZv39l8SOyHzwCRzfKf5Do6d+xfAYJVQoHIZvlPch2dO/avAMEqoUBks/wnuY7OHftXgGCVUCCyWf6TXEfnjv0rQLBKKBDZLP9JrqNzx/4VIFglFIhslv8k19G5Y/8KEKwSCkQ2y3+S6+jcsX8FCFYJBSKb5T/JdXTu2L8CBKuEApHN8p/kOjp37F8BglVCgchm+U9yHZ079q8AwSqhQGSz/Ce5js4d+1eAYJVQILJZ/pNcR+eO/StAsEooENks/0muo3PH/hUgWCUUiGyW/yTX0blj/woQrBIKRDbLf5Lr6NyxfwUIVgkFIpvlP8l1dO7YvwIEq4QCkc3yn+Q6OnfsXwGCVUKByGb5T3IdnTv2rwDBKqFAZLP8J7mOzh37V4BglVAgsln+k1xH5479K0CwSigQ2Sz/Sa6jc8f+FSBYJRSIbJb/JNfRuWP/ChCsEgpENst/kuvo3LF/BQhWCQUim+U/yXV07ti/AgSrhAKRzfKf5Do6d+xfAYJVQoHIZvlPch2dO/avAMEqoUBks/wnuY7OHftXgGCVUCCyWf6TXEfnjv0rQLBKKBDZLP9JrqNzx/4VIFglFIhslv8k19G5Y/8KEKwSCkQ2y3+S6+jcsX8FCFYJBSKb5T/JdXTu2L8CBKuEApHN8p/kOjp37F8BglVCgchm+U9yHZ079q8AwSqhQGSz/Ce5js4d+1eAYJVQILJZ/pNcR+eO/StAsEooENks/0muo3PH/hUgWCUUiGyW/yTX0blj/woQrBIKRDbLf5Lr6NyxfwUIVgkFIpvlP8l1dO7YvwIEq4QCkc3yn+Q6OnfsXwGCVUKByGb5T3IdnTv2rwDBKqFAZLP8J7mOzh37V4BglVAgsln+k1xH5479K0CwSigQ2Sz/Sa6jc8f+FSBYJRSIbJb/JNfRuWP/ChCsEgpENst/kuvo3LF/BQhWCQUim+U/yXV07ti/AgSrhAKRzfKf5Do6d+xfAYJVQoHIZvlPch2dO/avAMEqoUBks/wnuY7OHftXgGCVUCCyWf6TXEfnjv0rQLBKKBDZLP9JrqNzx/4VIFglFIhslv8k19G5Y/8KEM8f42/f5+fn+/Zvp2/Ct++dvs8Pxf3bd07f54fi3IH92iLf/jB/8j4/1CK+fe/0fX4o7t++c/o+PxTnDuzXnKg/JPiPuYaju5izafMAHMfz4Ogu5mza/JzXP/XjeX65//Q3Qs35yuE/JbiNp/ivu4u/ovN1w/+9BJUiTnF0V3TO8EWKOMXRXdE5wxcp4hRHd0XnDF+kiFMc3RWdM3yRIk5xdFd0zvBFijjF0V3ROcMXKeIUR3dF5wxfpIhTHN0VnTN8kSJOcXRXdM7wRYo4xdFd0TnDFyniFEd3RecMX6SIUxzdFZ0zfJEiTnF0V3TO8EWKOMXRXdE5wxcp4hRHd0XnDF+kiFMc3RWdM3yRIk5xdFd0zvBFijjF0V3ROcMXKeIUR3dF5wxfpIhTHN0VnTN8kSJOcXRXdM7wRYo4xdFd0TnDFyniFEd3RecMX6SIUxzdFZ1fv0vl5f3fT4EMP2/9KZDh560/BTL8vPWnQIaft/pUuO5/dUIoMvxwJRl+uJIMP1xJhh+uJMMPV5LhhyvJ8MOVZPjhSjL8cCUZfriSDD9cSYYfLuT9/hcdu1Po501N0gAAAABJRU5ErkJggg==",
          fileName="modelica://GreenVillage/../../../Desktop/Capture.PNG")}));
end UserSide_RefRack;
