within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model SeveralInfiniteLoops
  "Several loops that have wrongly only one delayed transition in one of the loops, but not in all"
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step initialStep(
    nIn=3,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-44,28},{-36,36}})));
  Modelica_StateGraph2_udf.Transition T1(condition=time > 2)
    annotation (Placement(transformation(extent={{-44,10},{-36,18}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-44,-6},{-36,2}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-44,-22},{-36,-14}})));
  Modelica_StateGraph2_udf.Step step3(nIn=1, nOut=3)
    annotation (Placement(transformation(extent={{-44,-40},{-36,-32}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-14,2},{-6,-6}})));
  Modelica_StateGraph2_udf.Transition T4(waitTime=1.5, delayedTransition=false)
    annotation (Placement(transformation(extent={{12,2},{20,-6}})));
  Modelica_StateGraph2_udf.Transition T5(waitTime=1.7, delayedTransition=false)
    annotation (Placement(transformation(extent={{38,2},{46,-6}})));
  Modelica_StateGraph2_udf.Step step1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-14,20},{-6,12}})));
  Modelica_StateGraph2_udf.Step step4(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{12,20},{20,12}})));
  Modelica_StateGraph2_udf.Step step5(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{38,20},{46,12}})));
  Modelica_StateGraph2_udf.Transition T6(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-14,34},{-6,26}})));
  Modelica_StateGraph2_udf.Transition T7(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{12,34},{20,26}})));
  Modelica_StateGraph2_udf.Transition T8(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{38,34},{46,26}})));
equation

  connect(initialStep.outPort[1], T1.inPort) annotation (Line(
      points={{-40,27.4},{-40,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step2.inPort[1]) annotation (Line(
      points={{-40,9},{-40,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T2.inPort) annotation (Line(
      points={{-40,-6.6},{-40,-14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step3.inPort[1]) annotation (Line(
      points={{-40,-23},{-40,-32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T3.inPort) annotation (Line(
      points={{-41.3333,-40.6},{-41.3333,-46},{-31.3581,-46},{-10,-46},{-10,
          -27.7969},{-10,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(step3.outPort[2], T4.inPort) annotation (Line(
      points={{-40,-40.6},{-40,-48},{-30.0469,-48},{-6.93351,-48},{16,-48},
          {16,-31.1426},{16,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[3], T5.inPort) annotation (Line(
      points={{-38.6667,-40.6},{-38.6667,-52},{-25.1172,-52},{21.9435,-52},
          {42,-52},{42,-34},{42,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step1.inPort[1], T3.outPort) annotation (Line(
      points={{-10,12},{-10,3}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.inPort[1], T4.outPort) annotation (Line(
      points={{16,12},{16,3}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step5.inPort[1], T5.outPort) annotation (Line(
      points={{42,12},{42,3}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.inPort, step1.outPort[1]) annotation (Line(
      points={{-10,26},{-10,20.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T7.inPort, step4.outPort[1]) annotation (Line(
      points={{16,26},{16,20.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T8.inPort, step5.outPort[1]) annotation (Line(
      points={{42,26},{42,20.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.outPort, initialStep.inPort[1]) annotation (Line(
      points={{-10,35},{-10,46},{-21.5385,46},{-31.3275,46},{-41.3333,46},{
          -41.3333,36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T7.outPort, initialStep.inPort[2]) annotation (Line(
      points={{16,35},{16,48},{0.701172,48},{-26,48},{-40,48},{-40,36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T8.outPort, initialStep.inPort[3]) annotation (Line(
      points={{42,35},{42,50},{24.716,50},{-23.069,50},{-38.6667,50},{-38.6667,
          36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics));
end SeveralInfiniteLoops;
