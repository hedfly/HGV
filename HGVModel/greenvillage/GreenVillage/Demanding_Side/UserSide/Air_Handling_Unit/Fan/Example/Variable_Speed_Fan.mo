within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan.Example;
model Variable_Speed_Fan

  extends Modelica.Icons.Example;
  package Medium = Buildings.Media.Air;
  parameter Boolean add_heat_to_fluid = false
    "Set to true to add heat to the fluid";
  parameter Real P[:]={0,50^2,100^2} "Power array";
  parameter Real motorEfficiency[:]={1} "Motor efficiecny array";
  parameter Real v_flow[:]={0,50,100} "Volume flow rate array";
  parameter Real p_flow[:]={200,100,0} "Pressure array";
  Air_Handling_Unit.Fan.Variable_Speed_Fan constant_Speed_Fan(add_heat_to_fluid=false, redeclare
      package Medium =                                                                              Medium,
    p_flow=p_flow,
    P=P,
    v_flow=v_flow)                                                            annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Sources.Ramp yRam(
    offset=0,
    height=1,
    duration=40,
    startTime=0) annotation (Placement(transformation(extent={{0,20},{20,40}})));
  Buildings.Fluid.Actuators.Dampers.VAVBoxExponential vavDam(
    redeclare package Medium = Medium,
    m_flow_nominal=50*1.2,
    dp_nominal=100)
    annotation (Placement(transformation(extent={{32,-10},{52,10}})));
    Modelica.Blocks.Sources.Ramp y(
    offset=0,
    height=1,
    duration=40,
    startTime=0) annotation (Placement(transformation(extent={{-100,20},{-80,40}})));
equation

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
  connect(y.y, constant_Speed_Fan.y) annotation (Line(
      points={{-79,30},{-20,30},{-20,4},{-11,4}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})),
    experiment(StopTime=50),
__Dymola_Commands(file="modelica://PNNL_building_system/Resources/Scripts/Air_side_system/Air_Handling_Unit/Fan/Examples/Variable_Speed_Fan/Variable_Speed_Fan.mos"
        "Simulate and plot"),
    __Dymola_experimentSetupOutput);
end Variable_Speed_Fan;
