within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model Composite2 "Example of a composite step as submodel"
   extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    initialStep=true,
    nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{36,32},{44,24}})));
  Modelica_StateGraph2_udf.Transition T4(condition=time > 3.5 and time <= 4.5)
    annotation (Placement(transformation(extent={{-52,40},{-44,48}})));
  Modelica_StateGraph2_udf.Step step5(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-52,24},{-44,32}})));
  Modelica_StateGraph2_udf.Transition T5(delayedTransition=true, waitTime=2)
    annotation (Placement(transformation(extent={{-52,8},{-44,16}})));
  Utilities.Composite2_Subgraph step2(
    initialStep=false,
    use_suspend=true,
    nIn=1,
    nOut=1,
    nSuspend=1,
    nResume=1)
    annotation (Placement(transformation(extent={{-16,16},{4,36}})));
equation
  connect(step1.outPort[1], T1.inPort) annotation (Line(
      points={{-6,65.4},{-6,60}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{40,33},{40,33},{40,67.3154},{40,84},{22.6961,84},{5.59375,
        84},{-6,84},{-6,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step5.outPort[1], T5.inPort) annotation (Line(
      points={{-48,23.4},{-48,16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, step5.inPort[1]) annotation (Line(
      points={{-48,39},{-48,32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step2.inPort[1]) annotation (Line(
      points={{-6,51},{-6,46}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T3.inPort) annotation (Line(
      points={{-5.9,5.3},{-5.9,-10},{10.656,-10},{24,-10},{40,-10},{40,6},
        {40,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.suspend[1], T4.inPort) annotation (Line(
      points={{-26.8,38},{-32,38},{-32,46},{-32,54},{-40.2188,54},{-48,54},
        {-48,48}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.resume[1], T5.outPort) annotation (Line(
      points={{-26.05,14},{-32,14},{-32,6.89063},{-32,0},{-40,0},{-48,0},
        {-48,7}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),   graphics),
    experiment(StopTime=12));
end Composite2;
