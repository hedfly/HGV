within HGV;
package ACGroundLoop
  model ACGroundLoop1
    import Buildings;
    BaseClasses.Components.FCU FCU1 "FCU1"
      annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
    BaseClasses.Components.FCU FCU2 "FCU1"
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    BaseClasses.Components.FCU FCU3 "FCU1"
      annotation (Placement(transformation(extent={{0,40},{20,60}})));
    BaseClasses.Components.FCU FCU4 "FCU1"
      annotation (Placement(transformation(extent={{40,40},{60,60}})));
    BaseClasses.Components.FCU FCU5 "FCU1"
      annotation (Placement(transformation(extent={{80,40},{100,60}})));
    BaseClasses.Components.FCU FCU6 "FCU1"
      annotation (Placement(transformation(extent={{120,40},{140,60}})));
    BaseClasses.Components.FCU FCU7 "FCU1"
      annotation (Placement(transformation(extent={{160,40},{180,60}})));
    BaseClasses.Components.FCU FCU8 "FCU1"
      annotation (Placement(transformation(extent={{200,40},{220,60}})));
    BaseClasses.Components.FCU FCU9 "FCU1"
      annotation (Placement(transformation(extent={{240,40},{260,60}})));
    Buildings.Fluid.Sources.Boundary_pT Source(nPorts=2) annotation (
        Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=0,
          origin={324,-56})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={-60,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val1 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={-20,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val2 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={20,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val3 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={60,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val4 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={100,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val5 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={140,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val6 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={180,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val7 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={220,10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val8 annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={260,10})));
    BaseClasses.Components.Compressor compressor annotation (Placement(
          transformation(
          extent={{10,-4},{-10,4}},
          rotation=90,
          origin={322,22})));
    Buildings.Fluid.HeatExchangers.ConstantEffectiveness hex annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={276,-54})));
  equation
    connect(FCU1.port_a, val.port_a) annotation (Line(
        points={{-60,45.7143},{-60,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU2.port_a, val1.port_a) annotation (Line(
        points={{-20,45.7143},{-20,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU3.port_a, val2.port_a) annotation (Line(
        points={{20,45.7143},{20,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU4.port_a, val3.port_a) annotation (Line(
        points={{60,45.7143},{60,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU5.port_a, val4.port_a) annotation (Line(
        points={{100,45.7143},{100,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU6.port_a, val5.port_a) annotation (Line(
        points={{140,45.7143},{140,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU7.port_a, val6.port_a) annotation (Line(
        points={{180,45.7143},{180,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU8.port_a, val7.port_a) annotation (Line(
        points={{220,45.7143},{220,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU9.port_a, val8.port_a) annotation (Line(
        points={{260,45.7143},{260,20}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(hex.port_a2, Source.ports[1]) annotation (Line(
        points={{282,-44},{308,-44},{308,-54},{314,-54}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(hex.port_b2, Source.ports[2]) annotation (Line(
        points={{282,-64},{308,-64},{308,-58},{314,-58}},
        color={0,127,255},
        smooth=Smooth.None));
    annotation (Diagram(coordinateSystem(extent={{-80,-80},{340,80}},
            preserveAspectRatio=false), graphics), Icon(coordinateSystem(
            extent={{-80,-80},{340,80}})));
  end ACGroundLoop1;
end ACGroundLoop;
