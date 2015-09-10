within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model UnsafeParallel3
  "Wrong Modelica_StateGraph2 where not all parallel paths are synchronized (gives translation error)"
  extends Modelica.Icons.Example;

  Parallel parallel(
    nIn=1,
    nEntry=2,
    nOut=1,
    use_inPort=true,
    use_outPort=true,
    nExit=1)
    annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,8},{-16,16}})));
  Modelica_StateGraph2_udf.Step step3(
    nOut=1,
    nIn=2,
    initialStep=false)
    annotation (Placement(transformation(extent={{6,14},{14,22}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{6,-2},{14,6}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,-18},{14,-10}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{6,-34},{14,-26}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-24,-8},{-16,0}})));
  Modelica_StateGraph2_udf.Step step1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-24},{-16,-16}})));
  Modelica_StateGraph2_udf.Step step5(
    nIn=1,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-10,68},{-2,76}})));
  Modelica_StateGraph2_udf.Transition T4(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
  Modelica_StateGraph2_udf.Transition T5(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{48,14},{56,6}})));
equation
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{10,13.4},{10,6}},
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
  connect(step2.outPort[1], T3.inPort) annotation (Line(
      points={{-20,7.4},{-20,0}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{-20,-9},{-20,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, parallel.inPort[1]) annotation (Line(
      points={{-6,51},{-6,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step5.outPort[1], T4.inPort) annotation (Line(
      points={{-6,67.4},{-6,60}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1], T5.inPort) annotation (Line(
      points={{-6,-49.125},{-6,-60},{6.42188,-60},{34,-60},{52,-60},{52,-43.3711},
          {52,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, step5.inPort[1]) annotation (Line(
      points={{52,15},{52,77.5488},{52,90},{35.5601,90},{8.5,90},{-6,90},{-6,
          76}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37.5},{-8,37.5},{-8,30},{-13.1094,30},{-20,30},{-20,16}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37.5},{-4,34},{-4,30},{3.55371,30},{9,30},{9,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step3.inPort[2]) annotation (Line(
      points={{10,-35},{10,-42},{18,-42},{26,-42},{26,-33.8289},{26,17.7656},
          {26,30},{18.6758,30},{11,30},{11,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-20,-24.6},{-20,-29.9914},{-20,-38},{-12.4531,-38},{-6,-38},
          {-6,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end UnsafeParallel3;
