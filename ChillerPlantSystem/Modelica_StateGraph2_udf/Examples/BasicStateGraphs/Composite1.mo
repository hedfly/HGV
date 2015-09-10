within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model Composite1 "Example of a composite step"
   extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    initialStep=true,
    nIn=1,
    nOut=1) annotation (Placement(transformation(extent={{-4,66},{4,74}})));
  Parallel parallel(
    initialStep=false,
    use_inPort=true,
    use_outPort=true,
    nEntry=1,
    nOut=1,
    use_suspend=true,
    nResume=1,
    nExit=1,
    nSuspend=1,
  nIn=1)    annotation (Placement(transformation(extent={{-40,-60},{40,40}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,52},{4,60}})));
  Modelica_StateGraph2_udf.Step step3(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{-4,18},{4,26}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,4},{4,12}})));
  Modelica_StateGraph2_udf.Step step4(nOut=2, nIn=1)
    annotation (Placement(transformation(extent={{-4,-12},{4,-4}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{56,4},{64,-4}})));
  Modelica_StateGraph2_udf.Transition T4(condition=time > 3.5 and time <= 4.5)
    annotation (Placement(transformation(extent={{-64,2},{-56,10}})));
  Modelica_StateGraph2_udf.Step step5(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-64,-14},{-56,-6}})));
  Modelica_StateGraph2_udf.Transition T5(delayedTransition=true, waitTime=2)
    annotation (Placement(transformation(extent={{-64,-28},{-56,-20}})));
  Modelica_StateGraph2_udf.Transition T6(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,-28},{4,-20}})));
  Modelica_StateGraph2_udf.Step step6(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-4,-42},{4,-34}})));
  Modelica_StateGraph2_udf.Transition T7(
    waitTime=1,
    delayedTransition=false,
    condition=time > 2.5 and time < 4.5)
    annotation (Placement(transformation(extent={{22,12},{30,4}})));
equation
  connect(parallel.entry[1], step3.inPort[1]) annotation (Line(
      points={{0,35},{0,26},{-1,26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1], T3.inPort) annotation (Line(
      points={{0,-61.25},{0,-80},{24.4292,-80},{39.9609,-80},{60,-80},{60,-58.6992},
          {60,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{60,5},{60,66.873},{60,84},{40.4601,84},{13.3594,84},{0,84},{0,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, parallel.resume[1]) annotation (Line(
      points={{-60,-29},{-60,-38.125},{-48.0078,-38.125},{-40,-38.125}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.inPort, step4.outPort[1]) annotation (Line(
      points={{0,-20},{0,-12.6},{-1,-12.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[2], T7.inPort) annotation (Line(
      points={{1,-12.6},{1,-16},{6.88379,-16},{15.3218,-16},{26,-16},{26,-5.78516},
          {26,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T7.outPort, step3.inPort[2]) annotation (Line(
      points={{26,13},{26,21.5498},{26,30},{14.8906,30},{8,30},{1,30},{1,26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.inPort, parallel.suspend[1]) annotation (Line(
      points={{-60,10},{-60,18.125},{-50.0156,18.125},{-42,18.125}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step5.outPort[1], T5.inPort) annotation (Line(
      points={{-60,-14.6},{-60,-14.6},{-60,-17.3},{-60,-20}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, step5.inPort[1]) annotation (Line(
      points={{-60,1},{-60,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.outPort, step6.inPort[1]) annotation (Line(
      points={{0,-29},{0,-31.5},{0,-34}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step6.outPort[1], parallel.exit[1]) annotation (Line(
      points={{0,-42.6},{0,-55.625},{0,-55.625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{0,17.4},{0,14.7},{0,12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{0,3},{0,-4},{0,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(T1.outPort, parallel.inPort[1]) annotation (Line(
    points={{0,51},{0,40}},
    color={0,0,0},
    smooth=Smooth.None));
connect(step1.outPort[1], T1.inPort) annotation (Line(
    points={{0,65.4},{0,60}},
    color={0,0,0},
    smooth=Smooth.None));
annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}), graphics), experiment(StopTime=12));
end Composite1;
