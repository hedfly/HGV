within GreenVillage.Waterloop.Examples;
model Water_loop_withResistance_onepump
  import GreenVillage;
  extends Modelica.Icons.Example;
 package Medium = Buildings.Media.Water "Medium model";
 parameter Real v[:]={0,9*heatPump_with_load_input.m1_flow_nominal/1000,9*heatPump_with_load_input.m1_flow_nominal*2/1000};
 parameter Real pressure[:]={2*2000,2000,0};

  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                    heatPump_with_load_input(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 3000,
    TCon_nominal=302.59,
    TEva_nominal=278.15) annotation (Placement(transformation(extent={{-220,40},{-198,64}})));
  Buildings.Fluid.Sources.FixedBoundary sinDem(redeclare package Medium = Medium, nPorts=1) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        origin={256,-90},
        rotation=90)));
  Buildings.Fluid.Sources.MassFlowSource_T souDem(
    redeclare package Medium = Medium,
    use_T_in=false,
    nPorts=1,
    m_flow=9*heatPump_with_load_input.m1_flow_nominal,
    T=292.59) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={294,-90})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input1(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 3000,
    TCon_nominal=302.59,
    TEva_nominal=278.15) annotation (Placement(transformation(extent={{-180,40},{-158,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input2(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 3000,
    TCon_nominal=302.59,
    TEva_nominal=278.15) annotation (Placement(transformation(extent={{-140,40},{-118,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input3(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 3000,
    TCon_nominal=302.59,
    TEva_nominal=278.15) annotation (Placement(transformation(extent={{-92,40},{-70,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input4(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    dpPum_nominal(displayUnit="Pa") = 3000)
                         annotation (Placement(transformation(extent={{-52,40},{-30,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input5(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 3000,
    TCon_nominal=302.59,
    TEva_nominal=278.15) annotation (Placement(transformation(extent={{-12,40},{10,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input6(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    dpPum_nominal(displayUnit="Pa") = 3000)
                         annotation (Placement(transformation(extent={{36,40},{58,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input7(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    dpPum_nominal(displayUnit="Pa") = 3000)
                         annotation (Placement(transformation(extent={{76,40},{98,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump
                             heatPump_with_load_input8(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    dpPum_nominal(displayUnit="Pa") = 3000,
    TCon_nominal=302.59,
    TEva_nominal=278.15) annotation (Placement(transformation(extent={{116,40},{138,64}})));
  Buildings.Fluid.HeatExchangers.ConstantEffectiveness hex(
    redeclare package Medium1 = Medium,
    redeclare package Medium2 = Medium,
    dp1_nominal=1000,
    dp2_nominal=1000,
    m1_flow_nominal=9*heatPump_with_load_input.m1_flow_nominal,
    m2_flow_nominal=9*heatPump_with_load_input.m1_flow_nominal)
                                                           annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={198,-60})));
  Buildings.Fluid.Storage.ExpansionVessel expVesChi(
                 V_start=1,
    redeclare package Medium = Medium,
    p(displayUnit="Pa") = 0)
    annotation (Placement(transformation(extent={{152,-27},{168,-14}})));
  Modelica.Blocks.Sources.Constant CoolOn(k=1)
    annotation (Placement(transformation(extent={{-280,-10},{-260,10}})));
  Modelica.Blocks.Sources.Constant TsetPoi(k=273.15 + 5) annotation (Placement(transformation(extent={{-280,-40},{-260,-20}})));
  Modelica.Blocks.Sources.Ramp ramp(height=1000*3, duration=1e+06)
    annotation (Placement(transformation(extent={{-280,30},{-260,50}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res1(
    m_flow_nominal=9*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium,
    dp_nominal=200)
    annotation (Placement(transformation(extent={{-40,-90},{-20,-70}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res2(
    dp_nominal=100,
    m_flow_nominal=8*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{116,-42},{96,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res3(
    dp_nominal=100,
    m_flow_nominal=7*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{72,-42},{52,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res4(
    dp_nominal=100,
    m_flow_nominal=6*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{32,-42},{12,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res5(
    dp_nominal=100,
    m_flow_nominal=5*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-16,-42},{-36,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res6(
    dp_nominal=100,
    m_flow_nominal=4*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-54,-42},{-74,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res7(
    dp_nominal=100,
    m_flow_nominal=3*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-100,-42},{-120,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res8(
    dp_nominal=100,
    m_flow_nominal=2*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-142,-42},{-162,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res9(
    dp_nominal=100,
    m_flow_nominal=heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-182,-42},{-202,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res10(
    dp_nominal=100,
    m_flow_nominal=heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{118,-10},{98,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res11(
    dp_nominal=100,
    m_flow_nominal=2*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{80,-10},{60,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res12(
    dp_nominal=100,
    m_flow_nominal=3*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{36,-10},{16,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res13(
    dp_nominal=100,
    m_flow_nominal=4*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-10,-10},{-30,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res14(
    dp_nominal=100,
    m_flow_nominal=5*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-52,-10},{-72,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res15(
    dp_nominal=100,
    m_flow_nominal=6*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-92,-10},{-112,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res16(
    dp_nominal=100,
    m_flow_nominal=7*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-140,-10},{-160,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res17(
    dp_nominal=100,
    m_flow_nominal=8*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-178,-10},{-198,10}})));
  Modelica.Blocks.Sources.Constant On(k=1)
    annotation (Placement(transformation(extent={{220,40},{200,60}})));
  Modelica.Blocks.Sources.Step step(
    height=-1,
    offset=1,
    startTime=5e+05)
    annotation (Placement(transformation(extent={{220,72},{200,92}})));
  Modelica.Blocks.Sources.Ramp ramp1(
    height=-1000*3,
    offset=1000*3,
    duration=5e+05)
    annotation (Placement(transformation(extent={{-280,70},{-260,90}})));
equation

  connect(souDem.ports[1], hex.port_a2) annotation (Line(
      points={{294,-80},{296,-80},{296,-32},{204,-32},{204,-50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(sinDem.ports[1], hex.port_b2) annotation (Line(
      points={{256,-80},{256,-76},{204,-76},{204,-70}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(CoolOn.y, heatPump_with_load_input.CoolOn) annotation (Line(
      points={{-259,0},{-240,0},{-240,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TsetPoi.y, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-259,-30},{-238,-30},{-238,44.8},{-222.2,44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(ramp.y, heatPump_with_load_input.Q) annotation (Line(
      points={{-259,40},{-240,40},{-240,59.2},{-222.2,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input1.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{-182.2,59.2},{-190,59.2},{-190,68},{-240,68},{-240,60},{-222.2,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input2.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{-142.2,59.2},{-152,59.2},{-152,68},{-240,68},{-240,60},{-222.2,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input3.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{-94.2,59.2},{-110,59.2},{-110,68},{-240,68},{-240,60},{-222.2,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{-54.2,59.2},{-68,59.2},{-68,68},{-240,68},{-240,60},{-222.2,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input6.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{33.8,59.2},{20,59.2},{20,68},{-240,68},{-240,59.2},{-222.2,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input7.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{73.8,59.2},{60,59.2},{60,68},{-240,68},{-240,60},{-222.2,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input8.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{113.8,59.2},{102,59.2},{102,68},{-240,68},{-240,60},{-222.2,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input1.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-182.2,52},{-190,52},{-190,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input2.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-142.2,52},{-150,52},{-150,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input3.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-94.2,52},{-108,52},{-108,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-54.2,52},{-66,52},{-66,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-14.2,52},{-22,52},{-22,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input6.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{33.8,52},{24,52},{24,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input7.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{73.8,52},{64,52},{64,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input8.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{113.8,52},{104,52},{104,36},{-232,36},{-232,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input1.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-182.2,44.8},{-200,44.8},{-200,18},{-238,18},{-238,44.8},{-222.2,
          44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input2.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-142.2,44.8},{-156,44.8},{-156,18},{-238,18},{-238,44.8},{-222.2,
          44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input3.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-94.2,44.8},{-114,44.8},{-114,18},{-238,18},{-238,44.8},{-222.2,
          44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-54.2,44.8},{-70,44.8},{-70,18},{-238,18},{-238,44.8},{-222.2,
          44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-14.2,44.8},{-28,44.8},{-28,18},{-238,18},{-238,44.8},{-222.2,
          44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input6.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{33.8,44.8},{18,44.8},{18,18},{-238,18},{-238,44.8},{-222.2,44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input7.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{73.8,44.8},{60,44.8},{60,18},{-238,18},{-238,44.8},{-222.2,44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input8.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{113.8,44.8},{100,44.8},{100,18},{-238,18},{-238,44.8},{-222.2,
          44.8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hex.port_a1, res1.port_b) annotation (Line(
      points={{192,-70},{192,-80},{-20,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res2.port_a, heatPump_with_load_input8.port_a) annotation (Line(
      points={{116,-32},{122.6,-32},{122.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res2.port_b, heatPump_with_load_input7.port_a) annotation (Line(
      points={{96,-32},{82.6,-32},{82.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res3.port_a, heatPump_with_load_input7.port_a) annotation (Line(
      points={{72,-32},{82.6,-32},{82.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res3.port_b, heatPump_with_load_input6.port_a) annotation (Line(
      points={{52,-32},{42.6,-32},{42.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res4.port_a, heatPump_with_load_input6.port_a) annotation (Line(
      points={{32,-32},{42.6,-32},{42.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res4.port_b, heatPump_with_load_input5.port_a) annotation (Line(
      points={{12,-32},{-5.4,-32},{-5.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res5.port_a, heatPump_with_load_input5.port_a) annotation (Line(
      points={{-16,-32},{-5.4,-32},{-5.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res5.port_b, heatPump_with_load_input4.port_a) annotation (Line(
      points={{-36,-32},{-45.4,-32},{-45.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res6.port_a, heatPump_with_load_input4.port_a) annotation (Line(
      points={{-54,-32},{-45.4,-32},{-45.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res6.port_b, heatPump_with_load_input3.port_a) annotation (Line(
      points={{-74,-32},{-85.4,-32},{-85.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res7.port_a, heatPump_with_load_input3.port_a) annotation (Line(
      points={{-100,-32},{-85.4,-32},{-85.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res7.port_b, heatPump_with_load_input2.port_a) annotation (Line(
      points={{-120,-32},{-133.4,-32},{-133.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res8.port_a, heatPump_with_load_input2.port_a) annotation (Line(
      points={{-142,-32},{-133.4,-32},{-133.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input1.port_a, res9.port_a) annotation (Line(
      points={{-173.4,40},{-174,40},{-174,-32},{-182,-32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res9.port_b, heatPump_with_load_input.port_a) annotation (Line(
      points={{-202,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res8.port_b, res9.port_a) annotation (Line(
      points={{-162,-32},{-182,-32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res10.port_a, heatPump_with_load_input8.port_b) annotation (Line(
      points={{118,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res10.port_b, heatPump_with_load_input7.port_b) annotation (Line(
      points={{98,0},{91.4,0},{91.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res11.port_a, heatPump_with_load_input7.port_b) annotation (Line(
      points={{80,0},{91.4,0},{91.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res11.port_b, heatPump_with_load_input6.port_b) annotation (Line(
      points={{60,0},{51.4,0},{51.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res12.port_a, heatPump_with_load_input6.port_b) annotation (Line(
      points={{36,0},{51.4,0},{51.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res12.port_b, heatPump_with_load_input5.port_b) annotation (Line(
      points={{16,0},{3.4,0},{3.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res13.port_a, heatPump_with_load_input5.port_b) annotation (Line(
      points={{-10,0},{3.4,0},{3.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res13.port_b, heatPump_with_load_input4.port_b) annotation (Line(
      points={{-30,0},{-36.6,0},{-36.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res14.port_a, res13.port_b) annotation (Line(
      points={{-52,0},{-30,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res14.port_b, heatPump_with_load_input3.port_b) annotation (Line(
      points={{-72,0},{-76.6,0},{-76.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res15.port_a, res14.port_b) annotation (Line(
      points={{-92,0},{-72,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res15.port_b, heatPump_with_load_input2.port_b) annotation (Line(
      points={{-112,0},{-124.6,0},{-124.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res16.port_a, res15.port_b) annotation (Line(
      points={{-140,0},{-112,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res16.port_b, heatPump_with_load_input1.port_b) annotation (Line(
      points={{-160,0},{-164.6,0},{-164.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res17.port_a, res16.port_b) annotation (Line(
      points={{-178,0},{-160,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res17.port_b, heatPump_with_load_input.port_b) annotation (Line(
      points={{-198,0},{-204.6,0},{-204.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res17.port_b, res1.port_a) annotation (Line(
      points={{-198,0},{-230,0},{-230,-80},{-40,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(On.y, heatPump_with_load_input8.On) annotation (Line(
      points={{199,50},{160,50},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input7.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{99.98,59.2},{108,59.2},{108,76},{160,76},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input6.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{59.98,59.2},{70,59.2},{70,76},{160,76},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input4.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-28.02,59.2},{-20,59.2},{-20,76},{160,76},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input3.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-68.02,59.2},{-62,59.2},{-62,76},{156,76},{156,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input2.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-116.02,59.2},{-102,59.2},{-102,76},{160,76},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input1.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-156.02,59.2},{-146,59.2},{-146,76},{160,76},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-196.02,59.2},{-184,59.2},{-184,76},{160,76},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(step.y, heatPump_with_load_input5.On) annotation (Line(
      points={{199,82},{18,82},{18,59.2},{11.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.Q, ramp1.y) annotation (Line(
      points={{-14.2,59.2},{-46,59.2},{-46,80},{-259,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hex.port_b1, heatPump_with_load_input8.port_a) annotation (Line(
      points={{192,-50},{192,-32},{122.6,-32},{122.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(expVesChi.port_a, heatPump_with_load_input8.port_a) annotation (Line(
      points={{160,-27},{160,-32},{122.6,-32},{122.6,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-280,-100},{
            320,100}}),                                                                  graphics),
    experiment(StopTime=1e+006),
    __Dymola_experimentSetupOutput);
end Water_loop_withResistance_onepump;
