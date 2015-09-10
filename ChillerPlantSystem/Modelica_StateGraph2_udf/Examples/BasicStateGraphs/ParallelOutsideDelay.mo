within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model ParallelOutsideDelay
  "Demonstrates that a delay outside of a Parallel is sufficient so that no infinite event looping occurs"
   extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    initialStep=true,
    nIn=1) annotation (Placement(transformation(extent={{-4,66},{4,74}})));
  Parallel parallel(
    initialStep=false,
    use_inPort=true,
    use_outPort=true,
    nIn=1,
    nEntry=2,
    nOut=1,
    nExit=2)
            annotation (Placement(transformation(extent={{-40,-60},{40,40}})));
  Modelica_StateGraph2_udf.Transition T1(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-4,48},{4,56}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,6},{-16,14}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{16,6},{24,14}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=false)
    annotation (Placement(transformation(extent={{16,-14},{24,-6}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{16,-34},{24,-26}})));
  Modelica_StateGraph2_udf.Transition T3(waitTime=1, delayedTransition=true)
    annotation (Placement(transformation(extent={{56,-6},{64,-14}})));
  Modelica_StateGraph2_udf.Transition T4(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
  Modelica_StateGraph2_udf.Step step5(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-32},{-16,-24}})));
equation

  connect(step1.outPort[1],T1. inPort) annotation (Line(
      points={{0,65.4},{0,56}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(T1.outPort,parallel. inPort[1]) annotation (Line(
      points={{0,47},{0,47},{0,40}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1],T2. inPort) annotation (Line(
      points={{20,5.4},{20,5.4},{20,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1],step2. inPort[1]) annotation (Line(
      points={{-2,35},{-2,22},{-10.666,22},{-20,22},{-20,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2],step3. inPort[1]) annotation (Line(
      points={{2,35},{2,22},{11.7734,22},{20,22},{20,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort,step4. inPort[1]) annotation (Line(
      points={{20,-15},{20,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1],T3. inPort) annotation (Line(
      points={{0,-61.25},{0,-72},{15.5273,-72},{42.8884,-72},{60,-72},{60,
        -51.6094},{60,-14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort,step1. inPort[1]) annotation (Line(
      points={{60,-5},{60,-5},{60,66.4434},{60,84},{41.3594,84},{15.6094,
        84},{0,84},{0,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(step2.outPort[1],T4. inPort) annotation (Line(
    points={{-20,5.4},{-20,5.4},{-20,-6}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T4.outPort,step5. inPort[1]) annotation (Line(
    points={{-20,-15},{-20,-20},{-20,-24}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step5.outPort[1],parallel. exit[1]) annotation (Line(
    points={{-20,-32.6},{-20,-42},{-12.459,-42},{-2,-42},{-2,-55.625}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step4.outPort[1],parallel. exit[2]) annotation (Line(
    points={{20,-34.6},{20,-42},{11.334,-42},{2,-42},{2,-55.625}},
    color={0,0,0},
    smooth=Smooth.Bezier));
annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),      graphics),
  experiment(StopTime=10));
end ParallelOutsideDelay;
