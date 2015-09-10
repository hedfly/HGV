within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model ParallelWithActions
  "Demonstrates usage of MultiSwitch block for branches executing in parallel"
    extends Modelica.Icons.Example;

Parallel parallel(
  initialStep=false,
  use_outPort=true,
  nEntry=2,
  nOut=1,
  nIn=1,
  nExit=2,
  use_inPort=true)
  annotation (Placement(transformation(extent={{-60,-72},{60,48}})));
Modelica_StateGraph2_udf.Step step1(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-44,16},{-36,24}})));
Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch set1(
    use_pre_as_default=false,
    nu=2,
    expr={2,3})
    annotation (Placement(transformation(extent={{-14,-56},{26,-36}})));
Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-44,-2},{-36,6}})));
Modelica_StateGraph2_udf.Step step2(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-44,-20},{-36,-12}})));
Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=4)
    annotation (Placement(transformation(extent={{-44,-36},{-36,-28}})));
Modelica_StateGraph2_udf.Step step3(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-44,-52},{-36,-44}})));
Modelica_StateGraph2_udf.Step step4(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{44,14},{36,22}})));
Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=2)
    annotation (Placement(transformation(extent={{36,-2},{44,6}})));
Modelica_StateGraph2_udf.Step step5(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{36,-20},{44,-12}})));
Modelica_StateGraph2_udf.Transition T4(delayedTransition=true, waitTime=4)
    annotation (Placement(transformation(extent={{36,-36},{44,-28}})));
Modelica_StateGraph2_udf.Step step6(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{36,-52},{44,-44}})));
Modelica_StateGraph2_udf.Transition T5
    annotation (Placement(transformation(extent={{86,-16},{94,-24}})));
Modelica_StateGraph2_udf.Step step7(
    nOut=1,
    nIn=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-4,70},{4,78}})));
Modelica_StateGraph2_udf.Transition T6
    annotation (Placement(transformation(extent={{-4,56},{4,64}})));
equation

connect(step1.outPort[1], T1.inPort) annotation (Line(
    points={{-40,15.4},{-40,6}},
    color={0,0,0},
    smooth=Smooth.None));

connect(T1.outPort, step2.inPort[1]) annotation (Line(
    points={{-40,-3},{-40,-12}},
    color={0,0,0},
    smooth=Smooth.None));
connect(step2.outPort[1], T2.inPort) annotation (Line(
    points={{-40,-20.6},{-40,-28}},
    color={0,0,0},
    smooth=Smooth.None));
connect(T2.outPort, step3.inPort[1]) annotation (Line(
    points={{-40,-37},{-40,-44}},
    color={0,0,0},
    smooth=Smooth.None));
connect(step1.inPort[1], parallel.entry[1]) annotation (Line(
    points={{-40,24},{-40,32},{-28.6504,32},{-14,32},{-3,32},{-3,42}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step4.inPort[1], parallel.entry[2]) annotation (Line(
    points={{40,22},{40,22},{40,32},{27.5128,32},{14.7793,32},{3,32},{3,
        42}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step4.outPort[1], T3.inPort) annotation (Line(
    points={{40,13.4},{40,13.4},{40,6}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T3.outPort, step5.inPort[1]) annotation (Line(
    points={{40,-3},{40,-6},{40,-8},{40,-12}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step5.outPort[1], T4.inPort) annotation (Line(
    points={{40,-20.6},{40,-20.6},{40,-28}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T4.outPort, step6.inPort[1]) annotation (Line(
    points={{40,-37},{40,-40},{40,-42},{40,-44}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step4.activePort, set1.u[1]) annotation (Line(
    points={{35.28,18},{-0.403672,18},{-20,18},{-20,-0.432617},{-20,
        -34.7312},{-20,-44.5},{-14,-44.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(step2.activePort, set1.u[2]) annotation (Line(
    points={{-35.28,-16},{-22,-16},{-22,-25.9053},{-22,-38.3897},{-22,
        -47.5},{-14,-47.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(parallel.outPort[1], T5.inPort) annotation (Line(
    points={{0,-73.5},{0,-80},{11.5333,-80},{60.4072,-80},{90,-80},{90,
        -50.25},{90,-24}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step7.outPort[1], T6.inPort) annotation (Line(
    points={{0,69.4},{0,64}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T6.outPort, parallel.inPort[1]) annotation (Line(
    points={{0,55},{0,55},{0,48}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T5.outPort, step7.inPort[1]) annotation (Line(
    points={{90,-15},{90,-15},{90,60.1611},{90,90},{59.0934,90},{13.1836,
        90},{0,90},{0,78}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step3.outPort[1], parallel.exit[1]) annotation (Line(
    points={{-40,-52.6},{-40,-52.6},{-40,-60},{-29.124,-60},{-12.5159,-60},
        {-3,-60},{-3,-66.75}},
    color={0,0,0},
    smooth=Smooth.Bezier));

connect(step6.outPort[1], parallel.exit[2]) annotation (Line(
    points={{40,-52.6},{40,-60},{30.7053,-60},{13.1895,-60},{3,-60},{3,
        -66.75}},
    color={0,0,0},
    smooth=Smooth.Bezier));
annotation (
  Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
          {100,100}}), graphics),
  experiment(StopTime=12));
end ParallelWithActions;
