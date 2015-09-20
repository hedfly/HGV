within HGV;
package ACGroundLoop
  model ACGroundLoop1
    import Buildings;
    import HGV;
    replaceable package MediumA = Buildings.Media.Air "Medium model";
    replaceable package MediumW = Buildings.Media.Water "Medium model";
    BaseClasses.Components.FanCoil FCU1 "FCU1"
      annotation (Placement(transformation(extent={{-220,20},{-200,40}})));
    BaseClasses.Components.FanCoil FCU2 "FCU1"
      annotation (Placement(transformation(extent={{-180,20},{-160,40}})));
    BaseClasses.Components.FanCoil FCU3 "FCU1"
      annotation (Placement(transformation(extent={{-140,20},{-120,40}})));
    BaseClasses.Components.FanCoil FCU4 "FCU1"
      annotation (Placement(transformation(extent={{-100,20},{-80,40}})));
    BaseClasses.Components.FanCoil FCU5 "FCU1"
      annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
    BaseClasses.Components.FanCoil FCU6 "FCU1"
      annotation (Placement(transformation(extent={{-20,20},{0,40}})));
    BaseClasses.Components.FanCoil FCU7 "FCU1"
      annotation (Placement(transformation(extent={{20,20},{40,40}})));
    BaseClasses.Components.FanCoil FCU8 "FCU1"
      annotation (Placement(transformation(extent={{60,20},{80,40}})));
    BaseClasses.Components.FanCoil FCU9 "FCU1"
      annotation (Placement(transformation(extent={{100,20},{120,40}})));
    Buildings.Fluid.Sources.Boundary_pT Source(nPorts=2) annotation (
        Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=-90,
          origin={210,-28})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-220,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val1 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-180,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val2 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-140,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val3 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-100,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val4 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-60,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val5 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-20,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val6 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={20,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val7 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={60,-10})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val8 annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={100,-10})));
    Buildings.Fluid.HeatExchangers.ConstantEffectiveness hex annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={196,12})));
    BaseClasses.Components.Pump pump
      annotation (Placement(transformation(extent={{10,-10},{-10,10}},
          rotation=-90,
          origin={220,12})));
    BaseClasses.Components.SimplifiedRoom Room1(nPorts=2)
      annotation (Placement(transformation(extent={{-200,60},{-220,80}})));
    BaseClasses.Components.SimplifiedRoom Room2(nPorts=2)
      annotation (Placement(transformation(extent={{-160,60},{-180,80}})));
    BaseClasses.Components.SimplifiedRoom Room3(nPorts=2)
      annotation (Placement(transformation(extent={{-120,60},{-140,80}})));
    BaseClasses.Components.SimplifiedRoom Room4(nPorts=2)
      annotation (Placement(transformation(extent={{-80,60},{-100,80}})));
    BaseClasses.Components.SimplifiedRoom Room5(nPorts=2)
      annotation (Placement(transformation(extent={{-40,60},{-60,80}})));
    BaseClasses.Components.SimplifiedRoom Room6(nPorts=2)
      annotation (Placement(transformation(extent={{0,60},{-20,80}})));
    BaseClasses.Components.SimplifiedRoom Room7(nPorts=3)
      annotation (Placement(transformation(extent={{40,60},{20,80}})));
    BaseClasses.Components.SimplifiedRoom Room8(nPorts=2)
      annotation (Placement(transformation(extent={{80,60},{60,80}})));
    BaseClasses.Components.SimplifiedRoom Room9(nPorts=2)
      annotation (Placement(transformation(extent={{120,60},{100,80}})));
  equation
    connect(pump.port_a, Source.ports[1]) annotation (Line(
        points={{220,2},{220,-12},{212,-12},{212,-18}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU1.port_b1, val.port_a) annotation (Line(
        points={{-220,26},{-220,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU1.port_a2, Room1.airPorts[1]) annotation (Line(
        points={{-220,34},{-220,62},{-211.85,62},{-211.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU1.port_b2, Room1.airPorts[2]) annotation (Line(
        points={{-200,34},{-200,62},{-208.15,62},{-208.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(hex.port_b1, Source.ports[2]) annotation (Line(
        points={{202,2},{202,-12},{208,-12},{208,-18}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU1.port_a1, hex.port_b2) annotation (Line(
        points={{-200,26},{-190,26},{-190,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU2.port_b1, val1.port_a) annotation (Line(
        points={{-180,26},{-180,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU3.port_b1, val2.port_a) annotation (Line(
        points={{-140,26},{-140,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU2.port_a1, hex.port_b2) annotation (Line(
        points={{-160,26},{-150,26},{-150,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU4.port_b1, val3.port_a) annotation (Line(
        points={{-100,26},{-100,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU5.port_b1, val4.port_a) annotation (Line(
        points={{-60,26},{-60,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU6.port_b1, val5.port_a) annotation (Line(
        points={{-20,26},{-20,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU7.port_b1, val6.port_a) annotation (Line(
        points={{20,26},{20,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU8.port_b1, val7.port_a) annotation (Line(
        points={{60,26},{60,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU9.port_b1, val8.port_a) annotation (Line(
        points={{100,26},{100,0}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU3.port_a1, hex.port_b2) annotation (Line(
        points={{-120,26},{-110,26},{-110,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU4.port_a1, hex.port_b2) annotation (Line(
        points={{-80,26},{-70,26},{-70,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU5.port_a1, hex.port_b2) annotation (Line(
        points={{-40,26},{-30,26},{-30,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU2.port_a2, Room2.airPorts[1]) annotation (Line(
        points={{-180,34},{-180,63},{-171.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU2.port_b2, Room2.airPorts[2]) annotation (Line(
        points={{-160,34},{-160,63},{-168.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU3.port_a2, Room3.airPorts[1]) annotation (Line(
        points={{-140,34},{-140,63},{-131.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU3.port_b2, Room3.airPorts[2]) annotation (Line(
        points={{-120,34},{-120,63},{-128.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU4.port_a2, Room4.airPorts[1]) annotation (Line(
        points={{-100,34},{-100,63},{-91.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU4.port_b2, Room4.airPorts[2]) annotation (Line(
        points={{-80,34},{-80,63},{-88.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU5.port_a2, Room5.airPorts[1]) annotation (Line(
        points={{-60,34},{-60,63},{-51.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU5.port_b2, Room5.airPorts[2]) annotation (Line(
        points={{-40,34},{-40,63},{-48.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU6.port_a2, Room6.airPorts[1]) annotation (Line(
        points={{-20,34},{-20,63},{-11.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU6.port_b2, Room6.airPorts[2]) annotation (Line(
        points={{0,34},{0,62},{-8.15,62},{-8.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU7.port_a2, Room7.airPorts[1]) annotation (Line(
        points={{20,34},{20,63},{27.5333,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU7.port_b2, Room7.airPorts[2]) annotation (Line(
        points={{40,34},{40,63},{30,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU8.port_a2, Room8.airPorts[1]) annotation (Line(
        points={{60,34},{60,63},{68.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU8.port_b2, Room8.airPorts[2]) annotation (Line(
        points={{80,34},{80,63},{71.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU9.port_a2, Room9.airPorts[1]) annotation (Line(
        points={{100,34},{100,63},{108.15,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU9.port_b2, Room9.airPorts[2]) annotation (Line(
        points={{120,34},{120,63},{111.85,63}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU6.port_a1, hex.port_b2) annotation (Line(
        points={{0,26},{10,26},{10,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU7.port_a1, hex.port_b2) annotation (Line(
        points={{40,26},{50,26},{50,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU8.port_a1, hex.port_b2) annotation (Line(
        points={{80,26},{90,26},{90,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(FCU9.port_a1, hex.port_b2) annotation (Line(
        points={{120,26},{130,26},{130,100},{190,100},{190,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(pump.port_b, hex.port_a1) annotation (Line(
        points={{220,22},{220,36},{202,36},{202,22}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val.port_b, hex.port_a2) annotation (Line(
        points={{-220,-20},{-220,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val1.port_b, hex.port_a2) annotation (Line(
        points={{-180,-20},{-180,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val2.port_b, hex.port_a2) annotation (Line(
        points={{-140,-20},{-140,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val3.port_b, hex.port_a2) annotation (Line(
        points={{-100,-20},{-100,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val4.port_b, hex.port_a2) annotation (Line(
        points={{-60,-20},{-60,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val5.port_b, hex.port_a2) annotation (Line(
        points={{-20,-20},{-20,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val6.port_b, hex.port_a2) annotation (Line(
        points={{20,-20},{20,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val7.port_b, hex.port_a2) annotation (Line(
        points={{60,-20},{60,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    connect(val8.port_b, hex.port_a2) annotation (Line(
        points={{100,-20},{100,-40},{190,-40},{190,2}},
        color={0,127,255},
        smooth=Smooth.None));
    annotation (Diagram(coordinateSystem(extent={{-240,-240},{240,240}},
            preserveAspectRatio=false), graphics), Icon(coordinateSystem(
            extent={{-240,-240},{240,240}}, preserveAspectRatio=false),
          graphics={
          Ellipse(lineColor = {75,138,73},
                  fillColor={255,255,255},
                  fillPattern = FillPattern.Solid,
                  extent={{-240,-240},{240,238}}),
          Polygon(lineColor = {0,0,255},
                  fillColor = {75,138,73},
                  pattern = LinePattern.None,
                  fillPattern = FillPattern.Solid,
                  points={{-76,128},{160,0},{-76,-156},{-76,128}})}));
  end ACGroundLoop1;

  model ACGroundLoop2
    import Buildings;
    import HGV;
    replaceable package MediumA = Buildings.Media.Air "Medium model";
    replaceable package MediumW = Buildings.Media.Water "Medium model";
    BaseClasses.Components.FanCoil FCU1(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{-240,18},{-220,38}})));
    BaseClasses.Components.FanCoil FCU2(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{-200,18},{-180,38}})));
    BaseClasses.Components.FanCoil FCU3(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{-160,18},{-140,38}})));
    BaseClasses.Components.FanCoil FCU4(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{-120,18},{-100,38}})));
    BaseClasses.Components.FanCoil FCU5(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{-80,18},{-60,38}})));
    BaseClasses.Components.FanCoil FCU6(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{-40,18},{-20,38}})));
    BaseClasses.Components.FanCoil FCU7(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{0,18},{20,38}})));
    BaseClasses.Components.FanCoil FCU8(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{40,18},{60,38}})));
    BaseClasses.Components.FanCoil FCU9(
      redeclare package MediumW = MediumW,
      redeclare package MediumA = MediumA,
      mAir_flow_nominal=1,
      mWat_flow_nominal=3.5) "FCU1"
      annotation (Placement(transformation(extent={{80,18},{100,38}})));
    HGV.Buildings.Fluid.Sources.FixedBoundary
                                        Source(nPorts=2,
      redeclare package Medium = MediumW,
      T=302.15)                                          annotation (
        Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=-90,
          origin={218,-32})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                               annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-240,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val1(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-200,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val2(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-160,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val3(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-120,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val4(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-80,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val5(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-40,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val6(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={0,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val7(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={40,-12})));
    Buildings.Fluid.Actuators.Valves.TwoWayLinear val8(
      redeclare package Medium = MediumW,
      dpValve_nominal=20000,
      dpFixed_nominal=100000,
      m_flow_nominal=3)                                annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={80,-12})));
    Buildings.Fluid.HeatExchangers.ConstantEffectiveness hex(
      redeclare package Medium1 = MediumW,
      redeclare package Medium2 = MediumW,
      m1_flow_nominal=3,
      m2_flow_nominal=10)                                    annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={204,28})));
    BaseClasses.Components.Pump Pump(redeclare package MediumW = MediumW,
        m_flow_nominal=3)
      annotation (Placement(transformation(extent={{10,-10},{-10,10}},
          rotation=-90,
          origin={228,28})));
    HGV.BaseClasses.Components.SimplifiedRoom
                                          Room1(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{-220,58},{-240,78}})));
    BaseClasses.Components.SimplifiedRoom Room2(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{-180,58},{-200,78}})));
    BaseClasses.Components.SimplifiedRoom Room3(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{-140,58},{-160,78}})));
    BaseClasses.Components.SimplifiedRoom Room4(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{-100,58},{-120,78}})));
    BaseClasses.Components.SimplifiedRoom Room5(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{-60,58},{-80,78}})));
    BaseClasses.Components.SimplifiedRoom Room6(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{-20,58},{-40,78}})));
    BaseClasses.Components.SimplifiedRoom Room7(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{20,58},{0,78}})));
    BaseClasses.Components.SimplifiedRoom Room8(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{60,58},{40,78}})));
    BaseClasses.Components.SimplifiedRoom Room9(nPorts=2,
      redeclare package MediumA = MediumA,
      rooLen=4,
      rooWid=3,
      rooHei=2,
      QRoo_flow=1000,
      m_flow_nominal=0.5)
      annotation (Placement(transformation(extent={{100,58},{80,78}})));
    HGV.Buildings.Fluid.Chillers.ElectricEIR
                                        chi(
      redeclare package Medium1 = MediumW,
      redeclare package Medium2 = MediumW,
      dp1_nominal=0,
      dp2_nominal=0,
      per=per,
      m1_flow_nominal=10,
      m2_flow_nominal=8)                    annotation (Placement(transformation(
          extent={{10,10},{-10,-10}},
          rotation=90,
          origin={150,28})));
      Modelica.Blocks.Sources.Ramp y(
      height=1,
      offset=0,
      duration=10) "Control signal"
                   annotation (Placement(transformation(extent={{-250,-100},{
              -230,-80}})));
    Modelica.Blocks.Sources.Ramp TSet(
      duration=3600,
      startTime=3*3600,
      offset=273.15 + 10,
      height=8) "Set point for leaving chilled water temperature"
      annotation (Placement(transformation(extent={{10,120},{30,140}})));
    Modelica.Blocks.Sources.Pulse pulse(period=3600/2)
      annotation (Placement(transformation(extent={{10,160},{30,180}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=0.5)
      annotation (Placement(transformation(extent={{50,160},{70,180}})));
    Modelica.Blocks.Sources.Step On(startTime=10)
      annotation (Placement(transformation(extent={{212,-84},{232,-64}})));
    parameter
      HGV.Buildings.Fluid.Chillers.Data.ElectricEIR.ElectricEIRChiller_McQuay_WSC_471kW_5_89COP_Vanes
      per "Chiller performance data"
      annotation (Placement(transformation(extent={{200,140},{240,180}})));
  equation
    connect(Pump.port_a,Source. ports[1]) annotation (Line(
        points={{228,18},{228,-14},{220,-14},{220,-22}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU1.port_b1,val. port_a) annotation (Line(
        points={{-240,24},{-240,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU1.port_a2, Room1.airPorts[1]) annotation (Line(
        points={{-240,32},{-240,60},{-231.85,60},{-231.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU1.port_b2, Room1.airPorts[2]) annotation (Line(
        points={{-220,32},{-220,60},{-228.15,60},{-228.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(hex.port_b1,Source. ports[2]) annotation (Line(
        points={{210,18},{210,-14},{216,-14},{216,-22}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU2.port_b1,val1. port_a) annotation (Line(
        points={{-200,24},{-200,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU3.port_b1,val2. port_a) annotation (Line(
        points={{-160,24},{-160,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU4.port_b1,val3. port_a) annotation (Line(
        points={{-120,24},{-120,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU5.port_b1,val4. port_a) annotation (Line(
        points={{-80,24},{-80,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU6.port_b1,val5. port_a) annotation (Line(
        points={{-40,24},{-40,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU7.port_b1,val6. port_a) annotation (Line(
        points={{0,24},{0,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU8.port_b1,val7. port_a) annotation (Line(
        points={{40,24},{40,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU9.port_b1,val8. port_a) annotation (Line(
        points={{80,24},{80,-2}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU2.port_a2, Room2.airPorts[1]) annotation (Line(
        points={{-200,32},{-200,61},{-191.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU2.port_b2, Room2.airPorts[2]) annotation (Line(
        points={{-180,32},{-180,61},{-188.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU3.port_a2, Room3.airPorts[1]) annotation (Line(
        points={{-160,32},{-160,61},{-151.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU3.port_b2, Room3.airPorts[2]) annotation (Line(
        points={{-140,32},{-140,61},{-148.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU4.port_a2, Room4.airPorts[1]) annotation (Line(
        points={{-120,32},{-120,61},{-111.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU4.port_b2, Room4.airPorts[2]) annotation (Line(
        points={{-100,32},{-100,61},{-108.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU5.port_a2, Room5.airPorts[1]) annotation (Line(
        points={{-80,32},{-80,61},{-71.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU5.port_b2, Room5.airPorts[2]) annotation (Line(
        points={{-60,32},{-60,61},{-68.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU6.port_a2, Room6.airPorts[1]) annotation (Line(
        points={{-40,32},{-40,61},{-31.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU6.port_b2, Room6.airPorts[2]) annotation (Line(
        points={{-20,32},{-20,60},{-28.15,60},{-28.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU7.port_a2, Room7.airPorts[1]) annotation (Line(
        points={{0,32},{0,61},{8.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU8.port_a2, Room8.airPorts[1]) annotation (Line(
        points={{40,32},{40,61},{48.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU8.port_b2, Room8.airPorts[2]) annotation (Line(
        points={{60,32},{60,61},{51.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU9.port_a2, Room9.airPorts[1]) annotation (Line(
        points={{80,32},{80,61},{88.15,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU9.port_b2, Room9.airPorts[2]) annotation (Line(
        points={{100,32},{100,61},{91.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(Pump.port_b,hex. port_a1) annotation (Line(
        points={{228,38},{228,58},{210,58},{210,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(chi.port_b1, hex.port_a2) annotation (Line(
        points={{156,18},{156,-2},{198,-2},{198,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(chi.port_a1, hex.port_b2) annotation (Line(
        points={{156,38},{156,58},{198,58},{198,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU1.port_a1, chi.port_b2) annotation (Line(
        points={{-220,24},{-210,24},{-210,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU2.port_a1, chi.port_b2) annotation (Line(
        points={{-180,24},{-170,24},{-170,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU3.port_a1, chi.port_b2) annotation (Line(
        points={{-140,24},{-130,24},{-130,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU4.port_a1, chi.port_b2) annotation (Line(
        points={{-100,24},{-90,24},{-90,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU5.port_a1, chi.port_b2) annotation (Line(
        points={{-60,24},{-50,24},{-50,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU6.port_a1, chi.port_b2) annotation (Line(
        points={{-20,24},{-10,24},{-10,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU7.port_a1, chi.port_b2) annotation (Line(
        points={{20,24},{30,24},{30,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU8.port_a1, chi.port_b2) annotation (Line(
        points={{60,24},{70,24},{70,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(FCU9.port_a1, chi.port_b2) annotation (Line(
        points={{100,24},{110,24},{110,98},{144,98},{144,38}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val.port_b, chi.port_a2) annotation (Line(
        points={{-240,-22},{-240,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val1.port_b, chi.port_a2) annotation (Line(
        points={{-200,-22},{-200,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val2.port_b, chi.port_a2) annotation (Line(
        points={{-160,-22},{-160,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val3.port_b, chi.port_a2) annotation (Line(
        points={{-120,-22},{-120,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val4.port_b, chi.port_a2) annotation (Line(
        points={{-80,-22},{-80,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val5.port_b, chi.port_a2) annotation (Line(
        points={{-40,-22},{-40,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val6.port_b, chi.port_a2) annotation (Line(
        points={{0,-22},{0,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val7.port_b, chi.port_a2) annotation (Line(
        points={{40,-22},{40,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(val8.port_b, chi.port_a2) annotation (Line(
        points={{80,-22},{80,-42},{144,-42},{144,18}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    connect(y.y, val.y) annotation (Line(
        points={{-229,-90},{-220,-90},{-220,-12},{-228,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val1.y) annotation (Line(
        points={{-229,-90},{-180,-90},{-180,-12},{-188,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val2.y) annotation (Line(
        points={{-229,-90},{-140,-90},{-140,-12},{-148,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val3.y) annotation (Line(
        points={{-229,-90},{-100,-90},{-100,-12},{-108,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val4.y) annotation (Line(
        points={{-229,-90},{-60,-90},{-60,-12},{-68,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val5.y) annotation (Line(
        points={{-229,-90},{-20,-90},{-20,-12},{-28,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val6.y) annotation (Line(
        points={{-229,-90},{20,-90},{20,-12},{12,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val7.y) annotation (Line(
        points={{-229,-90},{60,-90},{60,-12},{52,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(y.y, val8.y) annotation (Line(
        points={{-229,-90},{100,-90},{100,-12},{92,-12}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(greaterThreshold.u,pulse. y) annotation (Line(
        points={{48,170},{31,170}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(chi.on, greaterThreshold.y) annotation (Line(
        points={{153,40},{154,40},{154,170},{71,170}},
        color={0,0,0},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(chi.TSet, TSet.y) annotation (Line(
        points={{147,40},{148,40},{148,130},{31,130}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(Pump.On, On.y) annotation (Line(
        points={{234,17.1},{242,17.1},{242,-74},{233,-74}},
        color={0,0,127},
        smooth=Smooth.None,
        pattern=LinePattern.Dash));
    connect(FCU7.port_b2, Room7.airPorts[2]) annotation (Line(
        points={{20,32},{20,61},{11.85,61}},
        color={0,127,255},
        smooth=Smooth.None,
        thickness=0.5));
    annotation (Diagram(coordinateSystem(extent={{-260,-260},{260,260}},
            preserveAspectRatio=false), graphics), Icon(coordinateSystem(extent={{-260,
              -260},{260,260}}), graphics={
          Ellipse(lineColor = {75,138,73},
                  fillColor={255,255,255},
                  fillPattern = FillPattern.Solid,
                  extent={{-258,-260},{260,260}}),
          Polygon(lineColor = {0,0,255},
                  fillColor = {75,138,73},
                  pattern = LinePattern.None,
                  fillPattern = FillPattern.Solid,
                  points={{-102,158},{188,4},{-102,-142},{-102,158}})}));
  end ACGroundLoop2;
  annotation (Icon(graphics={
        Rectangle(
          lineColor={200,200,200},
          fillColor={248,248,248},
          fillPattern=FillPattern.HorizontalCylinder,
          extent={{-100,-100},{100,100}},
          radius=25.0),
        Rectangle(
          lineColor={128,128,128},
          fillPattern=FillPattern.None,
          extent={{-100,-100},{100,100}},
          radius=25.0),
        Polygon(
          origin={8,14},
          lineColor={78,138,73},
          fillColor={78,138,73},
          pattern=LinePattern.None,
          fillPattern=FillPattern.Solid,
          points={{-58.0,46.0},{42.0,-14.0},{-58.0,-74.0},{-58.0,46.0}})}));
end ACGroundLoop;
