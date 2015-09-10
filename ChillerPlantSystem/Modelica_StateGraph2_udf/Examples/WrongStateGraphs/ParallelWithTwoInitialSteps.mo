within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model ParallelWithTwoInitialSteps
  "Wrong Modelica_StateGraph2 with two initial steps"
  extends Modelica.Icons.Example;

  Parallel parallel(
    nIn=0,
    nEntry=2,
    nOut=0,
    use_inPort=false,
    use_outPort=false,
    initialStep=true)
    annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
  Modelica_StateGraph2_udf.Step step2(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{-24,0},{-16,8}})));
  Modelica_StateGraph2_udf.Step step3(
    nOut=1,
    nIn=2,
    initialStep=true)
    annotation (Placement(transformation(extent={{6,14},{14,22}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{6,-2},{14,6}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,-18},{14,-10}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{6,-34},{14,-26}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-24,-16},{-16,-8}})));
equation
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{10,13.4},{10,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37.5},{-7.9,32},{-14.2197,32},{-21,32},{-21,24.6875},{-21,
          8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37.5},{-4.1,32},{3.33271,32},{9,32},{9,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{10,-3},{10,-10}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], T1.inPort) annotation (Line(
      points={{10,-18.6},{10,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step3.inPort[2]) annotation (Line(
      points={{10,-35},{10,-40},{17.1094,-40},{24,-40},{24,-33.6158},{24,
          22.8594},{24,32},{17.1191,32},{11,32},{11,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step2.inPort[2]) annotation (Line(
      points={{-20,-17},{-20,-22},{-25.5469,-22},{-30,-22},{-30,-15.3571},{
          -30,7.32031},{-30,14},{-24.2314,14},{-19,14},{-19,8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T3.inPort) annotation (Line(
      points={{-20,-0.6},{-20,-8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end ParallelWithTwoInitialSteps;
