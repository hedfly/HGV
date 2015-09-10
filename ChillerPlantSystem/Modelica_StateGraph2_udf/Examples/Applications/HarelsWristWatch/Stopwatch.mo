within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch;
model Stopwatch
  extends Modelica_StateGraph2_udf.PartialParallel(nEntry=1, use_outPort=false);
  Parallel displayrun(
    nIn=1,
    nEntry=2,
    use_outPort=true,
    nExit=2,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-60,-72},{60,20}})));
  Modelica_StateGraph2_udf.Step reg(
    nIn=2,
    use_activePort=true,
    nOut=2) annotation (Placement(transformation(extent={{-34,-4},{-26,4}})));
  Modelica_StateGraph2_udf.Step lap(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-25,-44},{-33,-36}})));
  Modelica_StateGraph2_udf.Step on(
    nIn=2,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{26,-4},{34,4}})));
  Modelica_StateGraph2_udf.Step off(nIn=1, nOut=2)
    annotation (Placement(transformation(extent={{26,-44},{34,-36}})));
  Modelica_StateGraph2_udf.Transition reg_d(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-33,-24},{-25,-16}})));
  Modelica_StateGraph2_udf.Transition lap_d(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-14,-16},{-6,-24}})));
  Modelica_StateGraph2_udf.Step zero(
    nOut=1,
    nIn=2,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-4,46},{4,54}})));
  Modelica_StateGraph2_udf.Transition zero_b(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-4,26},{4,34}})));
  Modelica_StateGraph2_udf.Transition on_b(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{26,-24},{34,-16}})));
  Modelica_StateGraph2_udf.Transition off_b(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{46,-16},{54,-24}})));
  Modelica_StateGraph2_udf.Transition displayrun_d(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-4,-90},{4,-82}})));
protected
  outer
    Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    signalBus
    annotation (Placement(transformation(extent={{-100,60},{-60,100}})));
public
  Modelica.Blocks.Logical.Edge edge1
    annotation (Placement(transformation(extent={{-32,26},{-24,34}})));
  Modelica.Blocks.Logical.Edge edge2
    annotation (Placement(transformation(extent={{-84,-24},{-76,-16}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd stopwatch_clock(use_reset=
       true) annotation (Placement(transformation(extent={{44,78},{32,90}})));
  Modelica.Blocks.Sources.IntegerConstant unit_second(k=1)
    annotation (Placement(transformation(extent={{98,78},{86,90}})));
  Modelica.Blocks.Sources.SampleTrigger time_increment_trigger(period=
        0.01)
    annotation (Placement(transformation(extent={{98,56},{86,68}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.And increment_time(nu=2)
    annotation (Placement(transformation(extent={{66,54},{54,66}})));
  Blocks.MathInteger.MultiSwitch select_display_of_time_or_lap_time(nu=3,
      expr={stopwatch_clock.y,stopwatch_lap.y,0}) annotation (Placement(
        transformation(
        extent={{-29,-10},{29,10}},
        rotation=90,
        origin={-58,17})));
  Blocks.MathInteger.TriggeredAdd stopwatch_lap(use_reset=true, use_set=
        true)
    annotation (Placement(transformation(extent={{28,56},{16,68}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.And freeze_time(nu=2)
    annotation (Placement(transformation(extent={{50,32},{38,44}})));
equation
  connect(reg.inPort[1], displayrun.entry[1]) annotation (Line(
      points={{-31,4},{-31,12},{-20,12},{-3,12},{-3,15.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(zero_b.inPort, zero.outPort[1]) annotation (Line(
      points={{0,34},{0,45.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(zero_b.outPort, displayrun.inPort[1]) annotation (Line(
      points={{0,25},{0,20}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reg_d.outPort, lap.inPort[1]) annotation (Line(
      points={{-29,-25},{-29,-36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(on.inPort[1], displayrun.entry[2]) annotation (Line(
      points={{29,4},{29,10},{19.7695,10},{12,10},{3,10},{3,15.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(on_b.inPort, on.outPort[1]) annotation (Line(
      points={{30,-16},{30,-4.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(on_b.outPort, off.inPort[1]) annotation (Line(
      points={{30,-25},{30,-24},{30,-28},{30,-36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(lap_d.inPort, lap.outPort[1]) annotation (Line(
      points={{-10,-24},{-10,-36.365},{-10,-50},{-20,-50},{-29,-50},{-29,
          -44.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(lap_d.outPort, reg.inPort[2]) annotation (Line(
      points={{-10,-15},{-10,-2.5},{-10,10},{-17.985,10},{-29,10},{-29,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(off_b.outPort, on.inPort[2]) annotation (Line(
      points={{50,-15},{50,-2.231},{50,10},{40.834,10},{31,10},{31,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(displayrun_d.inPort, displayrun.outPort[1]) annotation (Line(
      points={{0,-82},{0,-73.15}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(zero.inPort[1], entry[1]) annotation (Line(
      points={{-1,54},{-1,92},{0,92},{0,100}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(displayrun_d.outPort, zero.inPort[2]) annotation (Line(
      points={{0,-91},{0,-98},{11.9148,-98},{50.209,-98},{82,-98},{82,-67.8758},
          {82,64.3535},{82,92},{56.8948,92},{12.707,92},{1,92},{1,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(on_b.conditionPort, off_b.conditionPort) annotation (Line(
      points={{25,-20},{16,-20},{16,-26},{16,-32},{22,-32},{33.8828,-32},
          {40,-32},{40,-26.6191},{40,-20},{45,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(lap_d.conditionPort, reg_d.conditionPort) annotation (Line(
      points={{-15,-20},{-20,-20},{-20,-26},{-20,-32},{-26.9334,-32},{-35.8125,
          -32},{-42,-32},{-42,-26.6191},{-42,-20},{-34,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(displayrun_d.conditionPort, reg_d.conditionPort) annotation (
      Line(
      points={{-5,-86},{-24.5117,-86},{-42,-86},{-42,-66.7227},{-42,-26},
          {-42,-20},{-34,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge1.u, signalBus.b) annotation (Line(
      points={{-32.8,30},{-40,30},{-40,38.5449},{-40,59.9607},{-40,80},{-60,
          80},{-80,80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(edge1.y, zero_b.conditionPort) annotation (Line(
      points={{-23.6,30},{-5,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.y, reg_d.conditionPort) annotation (Line(
      points={{-75.6,-20},{-75.6,-20},{-34,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.u, signalBus.d) annotation (Line(
      points={{-84.8,-20},{-90,-20},{-90,-12.412},{-90,67.3047},{-90,80},
          {-80,80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(displayrun.activePort, signalBus.show_stopwatch) annotation (
      Line(
      points={{62.5,-26},{70,-26},{70,-36},{70,-69.0215},{70,-94},{
          45.7949,-94},{-64.8178,-94},{-92,-94},{-92,-66.1328},{-92,
          66.4428},{-92,80},{-80,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(unit_second.y, stopwatch_clock.u) annotation (Line(
      points={{85.4,84},{85.4,84},{45.8,84}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(time_increment_trigger.y, increment_time.u[1]) annotation (Line(
      points={{85.4,62},{80,62},{80,62.1},{66,62.1}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(on.activePort, increment_time.u[2]) annotation (Line(
      points={{34.72,0},{63.0676,0},{74,0},{74,9.4629},{74,34},{74,
          46.8836},{74,57.9},{66,57.9}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(increment_time.y, stopwatch_clock.trigger) annotation (Line(
      points={{52.8,60},{41.6,60},{41.6,76.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(zero.activePort, stopwatch_clock.reset) annotation (Line(
      points={{4.72,50},{10,50},{10,56.8906},{10,74},{27.3809,74},{32,74},
          {34.4,74},{34.4,76.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(freeze_time.u[1], on.activePort) annotation (Line(
      points={{50,40.1},{74,40.1},{74,11.1549},{74,0},{63.8348,0},{34.72,
          0}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(stopwatch_lap.trigger, freeze_time.y) annotation (Line(
      points={{25.6,54.8},{25.6,38},{36.8,38}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_lap.u, stopwatch_clock.u) annotation (Line(
      points={{29.8,62},{29.8,62},{52,62},{52,75.457},{52,84},{45.8,84}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(stopwatch_clock.y, stopwatch_lap.set) annotation (Line(
      points={{30.8,84},{20,84},{20,67.88},{20.32,67.88}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(reg.activePort, select_display_of_time_or_lap_time.u[1])
    annotation (Line(
      points={{-25.28,0},{-22,0},{-22,-4.3262},{-22,-10},{-32.1074,-10},{
          -60.704,-10},{-74.5,-10},{-74.5,2.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(lap.activePort, select_display_of_time_or_lap_time.u[2])
    annotation (Line(
      points={{-33.72,-40},{-49.6295,-40},{-72.5,-40},{-72.5,2.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(select_display_of_time_or_lap_time.y, signalBus.stopwatch_time)
    annotation (Line(
      points={{-72.5,61.95},{-72.5,78},{-80,78},{-80,80}},
      color={255,127,0},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(reg.outPort[1], displayrun.exit[1]) annotation (Line(
      points={{-31,-4.6},{-31,-8.8082},{-31,-16},{-38,-16},{-38,-23.3047},
          {-38,-44.2683},{-38,-60},{-22.6422,-60},{-12.8779,-60},{-3,-60},
          {-3,-67.975}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(off.outPort[1], displayrun.exit[2]) annotation (Line(
      points={{29,-44.6},{28,-44.6},{28,-60},{10.959,-60},{3,-60},{3,-67.975}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(off.outPort[2], off_b.inPort) annotation (Line(
      points={{31,-44.6},{31,-44.6},{31,-45},{31,-50},{38.3291,-50},{50,-50},
          {50,-36.2129},{50,-24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reg.outPort[2], reg_d.inPort) annotation (Line(
      points={{-29,-4.6},{-29,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(zero_b.conditionPort, on_b.conditionPort) annotation (Line(
      points={{-5,30},{-14,30},{-14,20},{-14,1.19141},{-14,-10},{-2,-10},
          {4.04688,-10},{16,-10},{16,-20},{25,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(reg.activePort, freeze_time.u[2]) annotation (Line(
      points={{-25.28,0},{7.10812,0},{24,0},{24,11.8828},{24,24},{37.6133,
          24},{44.0439,24},{58,24},{58,36},{50,36},{50,35.9}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(lap.activePort, stopwatch_lap.reset) annotation (Line(
      points={{-33.72,-40},{-40,-40},{-40,-46.4258},{-40,-54},{-31.4453,-54},
          {3.5535,-54},{18.4,-54},{18.4,-39.7625},{18.4,54.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(zero.activePort, select_display_of_time_or_lap_time.u[3])
    annotation (Line(
      points={{4.72,50},{10,50},{10,43.1094},{10,2},{10,-8},{0.498854,-8},
          {-59.4941,-8},{-70.5,-8},{-70.5,2.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={
            {-100,-100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
        graphics={Bitmap(extent={{-180,180},{180,-180}}, fileName=
          "Images/StateGraph/Examples/stopwatch_sm.png")}));
end Stopwatch;
