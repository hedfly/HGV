within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model FirstExample_Variant2
  "Same as FirstExample, but using an autonomous Parallel step to start the graph and not an initial step"
  extends Modelica.Icons.Example;

  Parallel parallel(                               use_inPort=true,
                    nEntry=1, nIn=1,
    initialStep=false)
    annotation (Placement(transformation(extent={{-60,-80},{60,40}})));
  Modelica_StateGraph2_udf.Step initialStep(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{-4,6},{4,14}})));
  Modelica_StateGraph2_udf.Transition T1(condition=time > 2)
    annotation (Placement(transformation(extent={{-4,-12},{4,-4}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-4,-28},{4,-20}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
  Modelica_StateGraph2_udf.Step step3(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-4,-62},{4,-54}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{26,-20},{34,-28}})));
Modelica_StateGraph2_udf.Step step1(initialStep=true, nOut=1)
    annotation (Placement(transformation(extent={{-4,76},{4,84}})));
Modelica_StateGraph2_udf.Transition T4
    annotation (Placement(transformation(extent={{-4,56},{4,64}})));
equation

connect(parallel.entry[1], initialStep.inPort[1])
                                              annotation (Line(
      points={{0,34},{0,14},{-1,14}},
      color={0,0,0},
      smooth=Smooth.None));
connect(initialStep.outPort[1], T1.inPort)
                                       annotation (Line(
      points={{0,5.4},{0,0.8},{0,0.8},{0,-4}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T1.outPort, step2.inPort[1]) annotation (Line(
      points={{0,-13},{0,-20}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T2.inPort) annotation (Line(
      points={{0,-28.6},{0,-36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step3.inPort[1]) annotation (Line(
      points={{0,-45},{0,-50.8333},{0,-54},{0,-54}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(step3.outPort[1], T3.inPort) annotation (Line(
      points={{0,-62.6},{0,-68},{8.64258,-68},{15.9842,-68},{30,-68},{30,
        -52.9219},{30,-28}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(T3.outPort, initialStep.inPort[2])
                                       annotation (Line(
      points={{30,-19},{30,7.5459},{30,22},{14.0273,22},{1,22},{1,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(step1.outPort[1], T4.inPort) annotation (Line(
    points={{0,75.4},{0,64},{0,64}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T4.outPort, parallel.inPort[1]) annotation (Line(
    points={{0,55},{0,40}},
    color={0,0,0},
    smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),         graphics),
    experiment(StopTime=10));
end FirstExample_Variant2;
