within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs.Utilities;
model Composite2_Subgraph
  extends Modelica_StateGraph2_udf.PartialParallel(
    final use_inPort,
    final use_outPort,
    nEntry=1,
    nExit=1);

  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{-4,24},{4,32}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,6},{4,14}})));
  Modelica_StateGraph2_udf.Step step4(nOut=2, nIn=1)
    annotation (Placement(transformation(extent={{-4,-10},{4,-2}})));
  Modelica_StateGraph2_udf.Transition T6(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,-26},{4,-18}})));
  Modelica_StateGraph2_udf.Step step6(nOut=nExit, nIn=1)
    annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
  Modelica_StateGraph2_udf.Transition T7(
    waitTime=1,
    delayedTransition=false,
    condition=time > 2.5 and time < 4.5)
    annotation (Placement(transformation(extent={{24,14},{32,6}})));
equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{0,23.4},{0,14}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{0,5},{0,-2}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T6.outPort, step6.inPort[1]) annotation (Line(
        points={{0,-27},{0,-36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T6.inPort, step4.outPort[1]) annotation (Line(
        points={{0,-18},{0,-10.6},{-1,-10.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[2], T7.inPort) annotation (Line(
        points={{1,-10.6},{1,-14},{7.24902,-14},{15.6791,-14},{28,-14},{
          28,-1.59766},{28,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.inPort[1], entry[1]) annotation (Line(
        points={{-1,32},{-1,72},{0,72},{0,100}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T7.outPort, step3.inPort[2]) annotation (Line(
        points={{28,15},{28,15},{28,31.5771},{28,40},{14,40},{1,40},{1,32}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step6.outPort[1], exit[1]) annotation (Line(
        points={{0,-44.6},{0,-44.6},{0,-105}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={1,1}),  graphics), Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={1,1})));
end Composite2_Subgraph;
