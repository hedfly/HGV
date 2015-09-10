within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model Actions2 "Demonstrates rising and falling edge action blocks"
     extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step initialStep(
    nIn=1,
    nOut=1,
    initialStep=true,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-34,66},{-26,74}})));
  Modelica_StateGraph2_udf.Transition T1(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-34,46},{-26,54}})));
  Modelica_StateGraph2_udf.Step step2(
    nIn=1,
    nOut=1,
    use_activePort=false)
    annotation (Placement(transformation(extent={{-34,30},{-26,38}})));
  Modelica_StateGraph2_udf.Transition T2(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-34,12},{-26,20}})));
  Modelica_StateGraph2_udf.Step step3(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-34,-6},{-26,2}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-64,18},{-56,10}})));
  Modelica_StateGraph2_udf.Step step4(
    nIn=1,
    nOut=1,
    use_activePort=false)
    annotation (Placement(transformation(extent={{-34,-42},{-26,-34}})));
  Modelica_StateGraph2_udf.Transition T4(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-34,-24},{-26,-16}})));
  Modelica_StateGraph2_udf.Transition T5(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-34,-60},{-26,-52}})));
  Modelica_StateGraph2_udf.Step step1(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-34,-78},{-26,-70}})));
Blocks.MathBoolean.RisingEdge risingEdge
  annotation (Placement(transformation(extent={{-6,66},{2,74}})));
Blocks.MathBoolean.MultiSwitch set1(nu=2, expr={true,false})
  annotation (Placement(transformation(extent={{22,24},{62,44}})));
Blocks.MathBoolean.FallingEdge fallingEdge
  annotation (Placement(transformation(extent={{-4,-6},{4,2}})));
equation

connect(initialStep.outPort[1],T1. inPort)
                                       annotation (Line(
      points={{-30,65.4},{-30,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort,step2. inPort[1]) annotation (Line(
      points={{-30,45},{-30,38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1],T2. inPort) annotation (Line(
      points={{-30,29.4},{-30,20}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort,step3. inPort[1]) annotation (Line(
      points={{-30,11},{-30,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(T3.outPort,initialStep. inPort[1])
                                       annotation (Line(
      points={{-60,19},{-60,65.5244},{-60,80},{-45.1144,80},{-39.3457,80},
        {-30,80},{-30,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1],T4. inPort) annotation (Line(
      points={{-30,-6.6},{-30,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort,step4. inPort[1]) annotation (Line(
      points={{-30,-25},{-30,-34}},
      color={0,0,0},
      smooth=Smooth.Bezier));

connect(step4.outPort[1], T5.inPort) annotation (Line(
    points={{-30,-42.6},{-30,-52}},
    color={0,0,0},
    smooth=Smooth.Bezier));

connect(T5.outPort, step1.inPort[1]) annotation (Line(
    points={{-30,-61},{-30,-70}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step1.outPort[1], T3.inPort) annotation (Line(
    points={{-30,-78.6},{-30,-86},{-39.3164,-86},{-47.0929,-86},{-60,-86},
        {-60,-71.1875},{-60,10}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(initialStep.activePort, risingEdge.u) annotation (Line(
    points={{-25.28,70},{-7.2,70}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(risingEdge.y, set1.u[1]) annotation (Line(
    points={{2.8,70},{12,70},{12,59.7915},{12,47.2899},{12,35.5},{22,35.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(step3.activePort, fallingEdge.u) annotation (Line(
    points={{-25.28,-2},{-5.2,-2}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(fallingEdge.y, set1.u[2]) annotation (Line(
    points={{4.8,-2},{12,-2},{12,9.74987},{12,22.2578},{12,32.5},{22,32.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
annotation (
  Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
          {100,100}}), graphics),
  experiment(StopTime=10));
end Actions2;
