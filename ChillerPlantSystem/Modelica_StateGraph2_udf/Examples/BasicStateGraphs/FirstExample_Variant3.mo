within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model FirstExample_Variant3
  "Same as FirstExample, but formulating the transition condition of T2 with logical blocks"
  extends Modelica.Icons.Example;
  Modelica_StateGraph2_udf.Step initialStep(
    nIn=1,
    initialStep=true,
    use_activePort=false,
    nOut=1) annotation (Placement(transformation(extent={{-4,44},{4,52}})));
  Modelica_StateGraph2_udf.Transition T1(use_conditionPort=false, condition=
        time > 2)
    annotation (Placement(transformation(extent={{-4,26},{4,34}})));
  Modelica_StateGraph2_udf.Step step2(
    use_activePort=true,
    nIn=1,
    nOut=1) annotation (Placement(transformation(extent={{4,10},{-4,18}})));
  Modelica_StateGraph2_udf.Transition T2(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-4,-8},{4,0}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-4,-26},{4,-18}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{26,18},{34,10}})));
Blocks.MathBoolean.OnDelay onDelay(delayTime=1)
  annotation (Placement(transformation(extent={{-26,-10},{-14,2}})));
equation
  connect(step3.outPort[1], T3.inPort) annotation (Line(
      points={{0,-26.6},{0,-30},{7.76367,-30},{17.3183,-30},{30,-30},{30,
        -18.2422},{30,10}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(T3.outPort, initialStep.inPort[1])
                                       annotation (Line(
      points={{30,19},{30,46.8672},{30,60},{14.2383,60},{0,60},{0,52}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(initialStep.outPort[1], T1.inPort) annotation (Line(
    points={{0,43.4},{0,38.7},{0,34}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T1.outPort, step2.inPort[1]) annotation (Line(
    points={{0,25},{0,21.5},{0,18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step2.outPort[1], T2.inPort) annotation (Line(
    points={{0,9.4},{0,4.7},{0,0}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T2.outPort, step3.inPort[1]) annotation (Line(
    points={{0,-9},{0,-9},{0,-13.5},{0,-18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(onDelay.y, T2.conditionPort) annotation (Line(
    points={{-12.8,-4},{-5,-4}},
    color={255,0,255},
    smooth=Smooth.None));
connect(step2.activePort, onDelay.u) annotation (Line(
    points={{-4.72,14},{-28.18,14},{-36,14},{-36,5.22852},{-36,-4},{-27.8,
        -4}},
    color={255,0,255},
    smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),         graphics),
    experiment(StopTime=10));
end FirstExample_Variant3;
