within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model AutonomousWithSuspendAndNoInitialStep
  "Autonomous parallel with suspend/resume (either the parallel should have initialStep= true or an initial step is missing in the resume branch)"
  extends Modelica.Icons.Example;

  Parallel parallel(
    nIn=0,
    nEntry=1,
    nOut=0,
    use_suspend=true,
    nSuspend=1,
    nResume=1,
    nExit=2,
    use_outPort=false,
    use_inPort=false)
    annotation (Placement(transformation(extent={{-38,-48},{38,52}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{-4,18},{4,26}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,4},{4,12}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-4,-12},{4,-4}})));
  Modelica_StateGraph2_udf.Transition T4(condition=time > 2.5 and time <= 4)
    annotation (Placement(transformation(
        extent={{-4,4},{4,-4}},
        rotation=180,
        origin={-66,20})));
  Modelica_StateGraph2_udf.Step step5(
    nIn=1,
    nOut=1,
    initialStep=false) annotation (Placement(transformation(
        extent={{-4,4},{4,-4}},
        rotation=180,
        origin={-66,2})));
  Modelica_StateGraph2_udf.Transition T5(delayedTransition=true, waitTime=2)
    annotation (Placement(transformation(
        extent={{-4,4},{4,-4}},
        rotation=180,
        origin={-66,-12})));
  Modelica_StateGraph2_udf.Transition T6(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,-26},{4,-18}})));
equation
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{0,17.4},{0,12}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(parallel.entry[1], step3.inPort[1]) annotation (Line(
      points={{0,47},{0,26},{-1,26}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{0,3},{0,-4}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(step5.outPort[1], T5.inPort) annotation (Line(
      points={{-66,-2.6},{-66,-8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T4.outPort, step5.inPort[1]) annotation (Line(
      points={{-66,15},{-66,6}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(parallel.suspend[1], T4.inPort) annotation (Line(
      points={{-39.9,30.125},{-39.9,30.125},{-59.7554,30.125},{-66,30.125},
          {-66,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], T6.inPort) annotation (Line(
      points={{0,-12.6},{0,-18}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T5.outPort, parallel.resume[1]) annotation (Line(
      points={{-66,-17},{-66,-17},{-66,-26.125},{-57.3594,-26.125},{-38,-26.125}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(T6.outPort, step3.inPort[2]) annotation (Line(
      points={{0,-27},{0,-27},{0,-38},{9.76428,-38},{14.8789,-38},{26,-38},
          {26,-27.1695},{26,25.7383},{26,36},{15.3409,36},{9.12988,36},{1,
          36},{1,26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end AutonomousWithSuspendAndNoInitialStep;
