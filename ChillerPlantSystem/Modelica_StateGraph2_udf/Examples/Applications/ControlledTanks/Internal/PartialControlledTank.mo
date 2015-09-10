within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks.Internal;
partial model PartialControlledTank
  extends Modelica.Icons.Example;
  package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater;
  Modelica.Fluid.Valves.ValveDiscrete valve1(
    redeclare package Medium = Medium,
    m_flow_nominal=40,
    dp_nominal=100000) annotation (Placement(transformation(
        origin={-6,80},
        extent={{10,-10},{-10,10}},
        rotation=180)));
  Modelica.Fluid.Vessels.OpenTank tank1(
    level_start=0.05,
    redeclare package Medium = Medium,
    crossArea=6,
    height=4,
    nPorts=2,
    portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                  diameter=0.2,
                  height=4,
                  zeta_out=0,
                  zeta_in=1),
        Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                  diameter=0.2,
                  height=0,
                  zeta_out=0,
                  zeta_in=1)},
    T_start=system.T_ambient,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial)
    annotation (Placement(transformation(extent={{10,40},{50,80}},
          rotation=0)));
  Modelica.Fluid.Valves.ValveDiscrete valve2(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa") = 1,
    m_flow_nominal=100) annotation (Placement(transformation(
        origin={34,10},
        extent={{10,-10},{-10,10}},
        rotation=90)));
  Modelica.Fluid.Valves.ValveDiscrete valve3(
    redeclare package Medium = Medium,
    dp_nominal(displayUnit="Pa") = 1,
    m_flow_nominal=10) annotation (Placement(transformation(
        origin={35,-70},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  Modelica.Fluid.Vessels.OpenTank tank2(
    level_start=0.05,
    redeclare package Medium = Medium,
    height=5,
    crossArea=6,
    nPorts=2,
    portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                  diameter=0.2,
                  height=5,
                  zeta_out=0,
                  zeta_in=1),
        Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                  diameter=0.2,
                  height=0,
                  zeta_out=0,
                  zeta_in=1)},
    T_start=system.T_ambient,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial)
    annotation (Placement(transformation(extent={{50,-50},{90,-10}},
          rotation=0)));
  Modelica.Fluid.Sources.Boundary_pT ambient(
    redeclare package Medium = Medium,
    nPorts=1,
    p=system.p_ambient,
    T=system.T_ambient) annotation (Placement(transformation(extent={{-10,
            -80},{10,-60}}, rotation=0)));
  Modelica.Fluid.Sources.Boundary_pT reservoir(
    redeclare package Medium = Medium,
    nPorts=1,
    T=system.T_ambient,
    p=2500000) annotation (Placement(transformation(
        origin={-34,80},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  inner Modelica.Fluid.System system annotation (Placement(
        transformation(extent={{-73,70},{-53,90}}, rotation=0)));
equation
  connect(reservoir.ports[1], valve1.port_a) annotation (Line(
      points={{-24,80},{-16,80}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(valve3.port_b, ambient.ports[1]) annotation (Line(
      points={{25,-70},{10,-70}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(tank2.ports[2], valve3.port_a) annotation (Line(
      points={{74,-50},{74,-70},{45,-70}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(valve2.port_b, tank2.ports[1]) annotation (Line(
      points={{34,0},{34,-10},{50,-10},{50,-50},{66,-50}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(valve1.port_b, tank1.ports[1]) annotation (Line(
      points={{4,80},{10,80},{10,40},{26,40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(tank1.ports[2], valve2.port_a) annotation (Line(
      points={{34,40},{34,20}},
      color={0,127,255},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1})), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1})));
end PartialControlledTank;
