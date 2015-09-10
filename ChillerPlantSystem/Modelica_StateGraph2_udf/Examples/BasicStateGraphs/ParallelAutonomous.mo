within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model ParallelAutonomous "Demonstrates Parallel that runs autonomously"
    extends Modelica.Icons.Example;

  Parallel parallel(
    use_inPort=false,
    use_outPort=false,
    initialStep=true,
  nEntry=2) annotation (Placement(transformation(extent={{-60,-40},{60,40}})));
  Modelica_StateGraph2_udf.Step step2(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{-24,10},{-16,18}})));
  Modelica_StateGraph2_udf.Step step3(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{16,10},{24,18}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{16,-4},{24,4}})));
  Modelica_StateGraph2_udf.Step step4(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{16,-18},{24,-10}})));
  Modelica_StateGraph2_udf.Transition T1(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
  Modelica_StateGraph2_udf.Step step1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-18},{-16,-10}})));
  Modelica_StateGraph2_udf.Transition T3(waitTime=1, delayedTransition=true)
    annotation (Placement(transformation(extent={{-44,4},{-36,-4}})));
  Modelica_StateGraph2_udf.Transition T4(waitTime=1, delayedTransition=true)
    annotation (Placement(transformation(extent={{36,4},{44,-4}})));
equation

connect(step2.outPort[1], T1.inPort) annotation (Line(
    points={{-20,9.4},{-20,6.7},{-20,4}},
    color={0,0,0},
    smooth=Smooth.Bezier));

connect(T1.outPort, step1.inPort[1]) annotation (Line(
    points={{-20,-5},{-20,-7.5},{-20,-10}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step1.outPort[1], T3.inPort) annotation (Line(
    points={{-20,-18.6},{-20,-30},{-29.3164,-30},{-40,-30},{-40,-18.6758},
        {-40,-4}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T3.outPort, step2.inPort[1]) annotation (Line(
    points={{-40,5},{-40,5},{-40,12},{-40,26},{-29.5703,26},{-21,26},{-21,
        18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(parallel.entry[1], step2.inPort[2]) annotation (Line(
    points={{-3,36},{-3,26},{-10,26},{-19,26},{-19,18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
    points={{3,36},{3,26},{12.4297,26},{19,26},{19,18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step3.outPort[1], T2.inPort) annotation (Line(
    points={{20,9.4},{20,4},{20,4}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T2.outPort, step4.inPort[1]) annotation (Line(
    points={{20,-5},{20,-7.5},{20,-10}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step4.outPort[1], T4.inPort) annotation (Line(
    points={{20,-18.6},{20,-28},{30.4297,-28},{40,-28},{40,-18.4609},{40,
        -4}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T4.outPort, step3.inPort[2]) annotation (Line(
    points={{40,5},{40,18},{40,26},{30.4629,26},{21,26},{21,18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),      graphics),
  experiment(StopTime=6));
end ParallelAutonomous;
