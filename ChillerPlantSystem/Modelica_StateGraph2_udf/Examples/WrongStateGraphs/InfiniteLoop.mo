within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model InfiniteLoop
  "A wrong Modelica_StateGraph2 with infinite looping of a composite step (translates with an error)"
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    initialStep=true,
    nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
  Parallel parallel(
    use_inPort=true,
    use_outPort=true,
    nIn=1,
    nEntry=1,
    nOut=1,
    nExit=1)
    annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
  Modelica_StateGraph2_udf.Transition T1(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-10,14},{-2,22}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-10,-6},{-2,2}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-10,-26},{-2,-18}})));
  Modelica_StateGraph2_udf.Transition T3(
    waitTime=1,
    use_conditionPort=false,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{46,4},{54,-4}})));
equation
  connect(step1.outPort[1], T1.inPort) annotation (Line(
      points={{-6,65.4},{-6,60}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, parallel.inPort[1]) annotation (Line(
      points={{-6,51},{-6,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{-6,13.4},{-6,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step3.inPort[1]) annotation (Line(
      points={{-6,37.5},{-6,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{-6,-7},{-6,-18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1], T3.inPort) annotation (Line(
      points={{-6,-49.125},{-6,-56},{2.21733,-56},{33.3203,-56},{50,-56},{
          50,-40.2578},{50,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{50,5},{50,68.416},{50,84},{34.0159,84},{9.58594,84},{-6,84},
          {-6,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-6,-26.6},{-6,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics));
end InfiniteLoop;
