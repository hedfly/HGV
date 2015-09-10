within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model UnsafeParallel2
  "Wrong Modelica_StateGraph2 where not all parallel paths are synchronized (gives translation error)"
  extends Modelica.Icons.Example;

  Parallel parallel(
    nIn=1,
    nEntry=2,
    nOut=1,
    use_inPort=true,
    use_outPort=true,
    nExit=2)
    annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,8},{-16,16}})));
  Modelica_StateGraph2_udf.Step step3(
    nOut=1,
    nIn=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{6,8},{14,16}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{6,-8},{14,0}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,-24},{14,-16}})));
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
      points={{10,7.4},{10,0}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{10,-9},{10,-16}},
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
      points={{-6,-49.125},{-6,-60},{7.2989,-60},{36.4238,-60},{52,-60},{52,
          -43.8223},{52,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, step5.inPort[1]) annotation (Line(
      points={{52,15},{52,70},{52,90},{34,90},{9.11719,90},{-6,90},{-6,76}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37.5},{-8,37.5},{-8,30},{-13.332,30},{-20,30},{-20,
          21.7832},{-20,16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37.5},{-4,34},{-4,30},{3.3281,30},{10,30},{10,22.8906},
          {10,16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-20,-24.6},{-20,-31.1037},{-20,-38},{-13.1229,-38},{-7.9,-38},
          {-7.9,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
      points={{10,-24.6},{10,-29.5465},{10,-38},{3.3418,-38},{-4,-38},{-4,-44.0625},
          {-4.1,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end UnsafeParallel2;
