within GreenVillage.Waterloop.Examples;
model Water_loop
  extends Modelica.Icons.Example;
 package Medium = Buildings.Media.Water "Medium model";
  Demanding_Side.UserSide.UserSide heatPump_with_load_input(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-220,40},{-198,64}})));
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
  Demanding_Side.UserSide.UserSide heatPump_with_load_input1(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-180,40},{-158,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input2(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-140,40},{-118,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input3(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-92,40},{-70,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input4(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-52,40},{-30,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input5(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{-12,40},{10,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input6(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{36,40},{58,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input7(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{76,40},{98,64}})));
  Demanding_Side.UserSide.UserSide heatPump_with_load_input8(
    P_nominal=1000,
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    k=1,
    ti=60,
    TCon_nominal=302.59,
    TEva_nominal=278.15)
    annotation (Placement(transformation(extent={{116,40},{138,64}})));
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
  Buildings.Fluid.Movers.FlowControlled_dp fan(redeclare package Medium =
        Medium, m_flow_nominal=9*heatPump_with_load_input.m1_flow_nominal)
                                               annotation (Placement(transformation(extent={{170,-42},{150,-22}})));
  Buildings.Fluid.Storage.ExpansionVessel expVesChi(
                 V_start=1,
    redeclare package Medium = Medium,
    p(displayUnit="Pa") = 0)
    annotation (Placement(transformation(extent={{172,-27},{188,-14}})));
  Modelica.Blocks.Sources.Constant CoolOn(k=1)
    annotation (Placement(transformation(extent={{-280,-10},{-260,10}})));
  Modelica.Blocks.Sources.Constant SetPoi(k=273.15 + 5)
    annotation (Placement(transformation(extent={{-280,-40},{-260,-20}})));
  Modelica.Blocks.Sources.Ramp ramp(height=1000*3, duration=1e+06)
    annotation (Placement(transformation(extent={{-280,30},{-260,50}})));
  Modelica.Blocks.Sources.Constant Speed1(k=2000)
    annotation (Placement(transformation(extent={{186,2},{174,14}})));
  Modelica.Blocks.Sources.Constant On(k=1)
    annotation (Placement(transformation(extent={{200,40},{180,60}})));
equation

  connect(heatPump_with_load_input.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{-204.6,40},{-206,40},{-206,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input1.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{-164.6,40},{-164,40},{-164,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input2.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{-124.6,40},{-124,40},{-124,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input3.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{-76.6,40},{-76,40},{-76,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input4.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{-36.6,40},{-36,40},{-36,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input5.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{3.4,40},{4,40},{4,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input6.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{51.4,40},{52,40},{52,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input7.port_b, heatPump_with_load_input8.port_b) annotation (Line(
      points={{91.4,40},{92,40},{92,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(hex.port_a1, heatPump_with_load_input8.port_b) annotation (Line(
      points={{192,-70},{192,-80},{-232,-80},{-232,0},{131.4,0},{131.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input1.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{-173.4,40},{-174,40},{-174,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input2.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{-133.4,40},{-134,40},{-134,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input3.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{-85.4,40},{-86,40},{-86,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input4.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{-45.4,40},{-44,40},{-44,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input5.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{-5.4,40},{-6,40},{-6,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input6.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{42.6,40},{42.6,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input7.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{82.6,40},{82,40},{82,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input8.port_a, heatPump_with_load_input.port_a) annotation (Line(
      points={{122.6,40},{122,40},{122,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
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
  connect(hex.port_b1, fan.port_a) annotation (Line(
      points={{192,-50},{192,-32},{170,-32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(fan.port_b, heatPump_with_load_input.port_a) annotation (Line(
      points={{150,-32},{-213.4,-32},{-213.4,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(expVesChi.port_a, fan.port_a) annotation (Line(
      points={{180,-27},{180,-32},{170,-32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(CoolOn.y, heatPump_with_load_input.CoolOn) annotation (Line(
      points={{-259,0},{-240,0},{-240,52},{-222.2,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(SetPoi.y, heatPump_with_load_input.TSetPoi) annotation (Line(
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

  connect(heatPump_with_load_input5.Q, heatPump_with_load_input.Q) annotation (
      Line(
      points={{-14.2,59.2},{-28,59.2},{-28,68},{-240,68},{-240,60},{-222.2,59.2}},
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

  connect(Speed1.y, fan.dp_in) annotation (Line(
      points={{173.4,8},{160.2,8},{160.2,-20}},
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
  connect(On.y, heatPump_with_load_input8.On) annotation (Line(
      points={{179,50},{160,50},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input7.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{99.98,59.2},{110,59.2},{110,74},{160,74},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input6.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{59.98,59.2},{70,59.2},{70,74},{160,74},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input5.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{11.98,59.2},{18,59.2},{18,74},{160,74},{160,59.2},{139.98,59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input4.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-28.02,59.2},{-18,59.2},{-18,74},{160,74},{160,59.2},{139.98,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input3.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-68.02,59.2},{-58,59.2},{-58,74},{160,74},{160,59.2},{139.98,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input2.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-116.02,59.2},{-104,59.2},{-104,74},{160,74},{160,59.2},{139.98,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input1.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-156.02,59.2},{-148,59.2},{-148,74},{160,74},{160,59.2},{139.98,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-196.02,59.2},{-186,59.2},{-186,74},{160,74},{160,59.2},{139.98,
          59.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-280,-100},{
            320,100}}),                                                                  graphics),
    experiment(StopTime=1e+006),
    __Dymola_experimentSetupOutput);
end Water_loop;
