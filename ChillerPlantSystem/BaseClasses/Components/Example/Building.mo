within ChillerPlantSystem.BaseClasses.Components.Example;
model Building
  import ChillerPlantSystem;
  extends Modelica.Icons.Example;
  package Medium = Buildings.Media.ConstantPropertyLiquidWater "Medium model";
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=10
    "Nominal mass flow rate ";
  parameter Modelica.SIunits.Pressure dP_nominal=1000
    "Nominal Pressure difference";
  parameter Real Motor_eta[:] = {1} "Motor efficiency";
  parameter Real Hydra_eta[:] = {1} "Hydraulic efficiency";
  ChillerPlantSystem.BaseClasses.Components.Building
                                         bui(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = Medium,
    dP_nominal=dP_nominal)
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  ChillerPlantSystem.BaseClasses.Components.PumpConstantSpeed pum(
    m_flow_nominal=m_flow_nominal,
    Motor_eta=Motor_eta,
    Hydra_eta=Hydra_eta,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Buildings.Fluid.Sources.Boundary_pT sou(
    redeclare package Medium = Medium,
    use_p_in=false,
    nPorts=2,
    p=0,
    T(displayUnit="K") = 273.15 + 6.67)
                                 annotation (Placement(transformation(extent={{
            -90,-12},{-70,8}}, rotation=0)));
  Modelica.Blocks.Sources.Constant On(k=1)
    annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
  inner Modelica.Fluid.System system(T_ambient=298.15)
    annotation (Placement(transformation(extent={{60,-80},{80,-60}})));
  Modelica.Blocks.Sources.Ramp CooLoa(
    height=4200*m_flow_nominal*5,
    duration=18000,
    startTime=0)
    annotation (Placement(transformation(extent={{-20,60},{0,80}})));
equation

  connect(sou.ports[1], pum.port_a) annotation (Line(
      points={{-70,0},{-40,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pum.port_b, bui.port_a) annotation (Line(
      points={{-20,0},{20,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(bui.port_b, sou.ports[2]) annotation (Line(
      points={{40,0},{60,0},{60,-40},{-60,-40},{-60,-4},{-70,-4}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(CooLoa.y, bui.CooLoa) annotation (Line(
      points={{1,70},{10,70},{10,4},{19.1,4}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(On.y, pum.On) annotation (Line(
      points={{-59,70},{-48,70},{-48,6},{-40.9,6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (__Dymola_Commands(file=
          "Resources\Scripts\Dymola\BaseClasses\Components\Example\Building.mos"
        "Simulate and plot"),
  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),            graphics),
    experiment(StopTime=21600),
    __Dymola_experimentSetupOutput);
end Building;
