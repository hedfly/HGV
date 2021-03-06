within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model UnsafeParallel4
  "Wrong Modelica_StateGraph2 where not all parallel paths are synchronized and a wrong initial step is added to compensate for this (gives an error during initialization)"
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
    annotation (Placement(transformation(extent={{-34,8},{-26,16}})));
  Modelica_StateGraph2_udf.Step step3(
    nOut=1,
    nIn=1,
    initialStep=false)
    annotation (Placement(transformation(extent={{12,14},{20,22}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{12,0},{20,8}})));
  Modelica_StateGraph2_udf.Step step4(nOut=0, nIn=1)
    annotation (Placement(transformation(extent={{12,-14},{20,-6}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-34,-10},{-26,-2}})));
  Modelica_StateGraph2_udf.Step step1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-34,-24},{-26,-16}})));
  Modelica_StateGraph2_udf.Step step5(
    nIn=1,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-10,68},{-2,76}})));
  Modelica_StateGraph2_udf.Transition T4(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
  Modelica_StateGraph2_udf.Transition T5(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{48,14},{56,6}})));
  Modelica_StateGraph2_udf.Step step6(nOut=1, initialStep=true)
    annotation (Placement(transformation(extent={{-8,-32},{0,-24}})));
equation
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{16,13.4},{16,8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{16,-1},{16,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T3.inPort) annotation (Line(
      points={{-30,7.4},{-30,-2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{-30,-11},{-30,-16}},
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
      points={{-6,-49.125},{-6,-60},{6.18895,-60},{35.7441,-60},{52,-60},{
          52,-46.0137},{52,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, step5.inPort[1]) annotation (Line(
      points={{52,15},{52,77.7686},{52,90},{36.678,90},{8.89648,90},{-6,90},
          {-6,76}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37.5},{-8,37.5},{-8,30},{-17.5391,30},{-30,30},{-30,16}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37.5},{-4,34},{-4,30},{2.875,30},{16,30},{16,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-30,-24.6},{-30,-38},{-18.6694,-38},{-14.8938,-38},{-7.9,-38},
          {-7.9,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step6.outPort[1], parallel.exit[2]) annotation (Line(
      points={{-4,-32.6},{-4,-32},{-4.1,-32},{-4.1,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end UnsafeParallel4;
