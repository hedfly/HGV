within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model ParallelWithSuspendAndNoResume
  "Same as example ParallelBranches, but the parallel execution path is suspended and then resumed from the inPort"
   extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    initialStep=true,
    nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
  Parallel parallel(
    initialStep=false,
    use_inPort=true,
    use_outPort=true,
    nIn=2,
    nEntry=2,
    nOut=1,
    use_suspend=true,
    nSuspend=1,
    nResume=0,
    nExit=2)
            annotation (Placement(transformation(extent={{-44,-58},{32,42}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-32,-12},{-24,-4}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,20},{14,28}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{6,6},{14,14}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,-8},{14,0}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{46,4},{54,-4}})));
  Modelica_StateGraph2_udf.Transition T4(condition=time > 2.5 and time <= 4)
    annotation (Placement(transformation(extent={{-76,34},{-68,26}})));
  Modelica_StateGraph2_udf.Step step5(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-76,48},{-68,40}})));
  Modelica_StateGraph2_udf.Transition T5(delayedTransition=true, waitTime=2)
    annotation (Placement(transformation(extent={{-76,62},{-68,54}})));
  Modelica_StateGraph2_udf.Transition T6(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{6,-22},{14,-14}})));
  Modelica_StateGraph2_udf.Step step6(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,-36},{14,-28}})));
equation
  connect(step1.outPort[1], T1.inPort) annotation (Line(
      points={{-6,65.4},{-6,60}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, parallel.inPort[1]) annotation (Line(
      points={{-6,51},{-6,42},{-9.8,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{10,19.4},{10,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37},{-7.9,32},{-16.203,32},{-28,32},{-28,-4},{-28,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37},{-4.1,32},{2.44053,32},{10,32},{10,28}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{10,5},{10,2.22045e-016}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1], T3.inPort) annotation (Line(
      points={{-6,-59.25},{-6,-66},{3.07045,-66},{36.2188,-66},{50,-66},{
        50,-49.5918},{50,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{50,5},{50,69.1104},{50,84},{30.0332,84},{8.27344,84},{-6,
        84},{-6,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step5.outPort[1], T5.inPort) annotation (Line(
      points={{-72,48.6},{-72,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, step5.inPort[1]) annotation (Line(
      points={{-72,35},{-72,40}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.suspend[1], T4.inPort) annotation (Line(
      points={{-45.9,20.125},{-54,20},{-62,20},{-72,20},{-72,26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], T6.inPort) annotation (Line(
      points={{10,-8.6},{10,-14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.outPort, step6.inPort[1]) annotation (Line(
      points={{10,-23},{10,-28}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, parallel.inPort[2]) annotation (Line(
      points={{-72,63},{-72,66},{-68,66},{-31.8125,66},{-20,66},{-20,56},
        {-20,46},{-12,46},{-12,42},{-2.2,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-28,-12.6},{-28,-31.765},{-28,-44},{-17.5574,-44},{-7.9,
        -44},{-7.9,-53.625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step6.outPort[1], parallel.exit[2]) annotation (Line(
      points={{10,-36.6},{10,-44},{4.45088,-44},{-4.1,-44},{-4.1,-53.625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),   graphics),
    experiment(StopTime=12));
end ParallelWithSuspendAndNoResume;
