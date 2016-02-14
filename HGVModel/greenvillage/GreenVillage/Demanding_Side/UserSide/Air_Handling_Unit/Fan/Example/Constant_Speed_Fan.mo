within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan.Example;
model Constant_Speed_Fan
  import GreenVillage;
  extends Modelica.Icons.Example;
  package Medium = Buildings.Media.Air;
  parameter Boolean add_heat_to_fluid = false
    "Set to true to add heat to the fluid";
  parameter Real hydraulicEfficiency[:]={1} "Hydraulic efficiecny";
  parameter Real motorEfficiency[:]={1} "Motor efficiecny";
  parameter Real v_flow[:]={0,50,100} "Volume flow rate curve";
  parameter Real p_flow[:]={200,100,0} "Pressure curve";
  GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan.Constant_Speed_Fan
    constant_Speed_Fan(
    add_heat_to_fluid=false,
    redeclare package Medium = Medium,
    hydraulicEfficiency=hydraulicEfficiency,
    motorEfficiency=motorEfficiency,
    p_flow=p_flow,
    v_flow=v_flow)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Sources.Ramp yRam(
    offset=0,
    height=1,
    duration=40,
    startTime=0) annotation (Placement(transformation(extent={{0,20},{20,40}})));
  Modelica.Blocks.Sources.Step step(height=1, startTime=10)
                                    annotation (Placement(transformation(extent={{-100,20},{-80,40}})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
  Buildings.Fluid.Actuators.Dampers.VAVBoxExponential vavDam(
    redeclare package Medium = Medium,
    m_flow_nominal=50*1.2,
    dp_nominal=100)
    annotation (Placement(transformation(extent={{32,-10},{52,10}})));
equation

  connect(step.y, realToBoolean.u) annotation (Line(points={{-79,30},{-75.5,30},{-72,30}}, color={0,0,127},
      pattern=LinePattern.Dash));
  connect(realToBoolean.y, constant_Speed_Fan.On) annotation (Line(points={{-49,30},{-20,30},{-20,4},{-11,4}}, color={255,0,255},
      pattern=LinePattern.Dash));
  connect(constant_Speed_Fan.port_b, vavDam.port_a) annotation (Line(
      points={{10,0},{32,0}},
      color={0,127,255},
      thickness=1));
  connect(vavDam.port_b, constant_Speed_Fan.port_a) annotation (Line(
      points={{52,0},{80,0},{80,-40},{-40,-40},{-40,0},{-10,0}},
      color={0,127,255},
      thickness=1));
  connect(yRam.y, vavDam.y) annotation (Line(
      points={{21,30},{42,30},{42,12}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})),
    experiment(StopTime=50),
__Dymola_Commands(file="modelica://PNNL_building_system/Resources/Scripts/Air_side_system/Air_Handling_Unit/Fan/Examples/Constant_Speed_Fan/Constant_Speed_Fan.mos"
        "Simulate and plot"),
    __Dymola_experimentSetupOutput);
end Constant_Speed_Fan;
