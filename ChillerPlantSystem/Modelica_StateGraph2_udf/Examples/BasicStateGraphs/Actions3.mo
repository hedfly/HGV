within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model Actions3 "Demonstrates usage of TriggeredAdd action block"
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
    use_activePort=true)
    annotation (Placement(transformation(extent={{-34,30},{-26,38}})));
  Modelica_StateGraph2_udf.Transition T2(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1,
    use_firePort=true)
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
    waitTime=1,
    use_firePort=true)
    annotation (Placement(transformation(extent={{-34,-60},{-26,-52}})));
  Modelica_StateGraph2_udf.Step step1(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-34,-78},{-26,-70}})));
Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd add1(use_reset=true)
    annotation (Placement(transformation(extent={{68,44},{80,56}})));
Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch set1(nu=2, expr={11,12})
    annotation (Placement(transformation(extent={{12,40},{52,60}})));
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
      points={{-60,19},{-60,69.5156},{-60,80},{-46.6863,80},{-37.3535,80},
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
connect(step4.outPort[1],T5. inPort) annotation (Line(
    points={{-30,-42.6},{-30,-52}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T5.outPort,step1. inPort[1]) annotation (Line(
    points={{-30,-61},{-30,-70}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step1.outPort[1],T3. inPort) annotation (Line(
    points={{-30,-78.6},{-30,-84},{-38.6573,-84},{-47.3145,-84},{-60,-84},
        {-60,-69.5879},{-60,10}},
    color={0,0,0},
    smooth=Smooth.Bezier));

connect(T2.firePort, add1.trigger) annotation (Line(
    points={{-25.8,16},{61.9449,16},{70.4,16},{70.4,23.8542},{70.4,42.8}},
    color={255,0,255},
    smooth=Smooth.Bezier));

connect(T5.firePort, add1.reset) annotation (Line(
    points={{-25.8,-56},{55.2842,-56},{77.6,-56},{77.6,-34.3875},{77.6,
        42.8}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(initialStep.activePort, set1.u[1]) annotation (Line(
    points={{-25.28,70},{-20.2364,70},{-10,70},{-10,60.6958},{-10,51.5},{
        0.677734,51.5},{12,51.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(step2.activePort, set1.u[2]) annotation (Line(
    points={{-25.28,34},{-18.4159,34},{-10,34},{-10,42},{-10,48.5},{
        -3.42578,48.5},{12,48.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(set1.y, add1.u) annotation (Line(
    points={{53,50},{66.2,50}},
    color={255,127,0},
    smooth=Smooth.Bezier));
annotation (
  Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
          {100,100}}), graphics),
  experiment(StopTime=10));
end Actions3;
