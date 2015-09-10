within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model FirstExample_Variant4
  "Same as FirstExample_Variant3, but without a delayed transition (by switching the check off)"
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
  Modelica_StateGraph2_udf.Step step3(
    use_activePort=true,
    nIn=1,
    nOut=1) annotation (Placement(transformation(extent={{4,-26},{-4,-18}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=false, loopCheck=
        false) annotation (Placement(transformation(extent={{26,18},{34,10}})));
  Modelica.Blocks.Logical.Timer timer1
                                      annotation (Placement(transformation(
            extent={{-52,-10},{-40,2}},rotation=0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual(threshold=1)
    annotation (Placement(transformation(extent={{-32,-10},{-20,2}}, rotation=
             0)));
  Modelica_StateGraph2_udf.Step step4(
    nOut=1,
    use_activePort=false,
    nIn=1) annotation (Placement(transformation(extent={{-4,-62},{4,-54}})));
  Modelica_StateGraph2_udf.Transition T4(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
  Modelica.Blocks.Logical.Timer timer2
                                      annotation (Placement(transformation(
            extent={{-52,-46},{-40,-34}},
                                       rotation=0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual1(
                                                             threshold=1)
    annotation (Placement(transformation(extent={{-32,-46},{-20,-34}},
                                                                     rotation=
             0)));
equation

connect(T3.outPort, initialStep.inPort[1])
                                       annotation (Line(
      points={{30,19},{30,48.8691},{30,60},{16.2306,60},{10.2246,60},{0,
        60},{0,52}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(timer1.y, greaterEqual.u)
                                   annotation (Line(
      points={{-39.4,-4},{-33.2,-4}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(greaterEqual.y, T2.conditionPort) annotation (Line(
      points={{-19.4,-4},{-5,-4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(step2.activePort, timer1.u)
                                     annotation (Line(
      points={{-4.72,14},{-4.72,14},{-52.7121,14},{-60,14},{-60,4.56055},
        {-60,-4},{-53.2,-4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], T3.inPort) annotation (Line(
      points={{0,-62.6},{0,-70},{9.7741,-70},{15.7617,-70},{30,-70},{30,
        -54.4531},{30,10}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(timer2.y, greaterEqual1.u)
                                   annotation (Line(
      points={{-39.4,-40},{-33.2,-40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(greaterEqual1.y, T4.conditionPort) annotation (Line(
      points={{-19.4,-40},{-5,-40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(step3.activePort, timer2.u) annotation (Line(
      points={{-4.72,-22},{-49.3111,-22},{-60,-22},{-60,-31.123},{-60,-40},
        {-53.2,-40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
connect(initialStep.outPort[1], T1.inPort) annotation (Line(
    points={{0,43.4},{0,38.7},{0,34}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T1.outPort, step2.inPort[1]) annotation (Line(
    points={{0,25},{0,25},{0,21.5},{0,18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step2.outPort[1], T2.inPort) annotation (Line(
    points={{0,9.4},{0,4.7},{0,0}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T2.outPort, step3.inPort[1]) annotation (Line(
    points={{0,-9},{0,-13.5},{0,-18}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step3.outPort[1], T4.inPort) annotation (Line(
    points={{0,-26.6},{0,-31.3},{0,-36}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T4.outPort, step4.inPort[1]) annotation (Line(
    points={{0,-45},{0,-49.5},{0,-54}},
    color={0,0,0},
    smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),         graphics),
    experiment(StopTime=10));
end FirstExample_Variant4;
