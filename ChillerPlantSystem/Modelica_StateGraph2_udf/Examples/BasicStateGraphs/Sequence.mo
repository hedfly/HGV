within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model Sequence "Example to demonstrate a sequence of simple steps"
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(initialStep=true, nOut=1)
    annotation (Placement(transformation(extent={{6,46},{14,54}})));
  Modelica_StateGraph2_udf.Transition T1(condition=time > 1)
    annotation (Placement(transformation(extent={{6,32},{14,40}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{6,16},{14,24}})));
  Modelica_StateGraph2_udf.Transition T2(condition=time > 2)
    annotation (Placement(transformation(extent={{6,2},{14,10}})));
  Modelica_StateGraph2_udf.Step step3(nIn=1)
    annotation (Placement(transformation(extent={{6,-12},{14,-4}})));
equation
connect(step1.outPort[1], T1.inPort) annotation (Line(
    points={{10,45.4},{10,42.7},{10,40}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T1.outPort, step2.inPort[1]) annotation (Line(
    points={{10,31},{10,27.5},{10,24}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step2.outPort[1], T2.inPort) annotation (Line(
    points={{10,15.4},{10,12.7},{10,10}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(T2.outPort, step3.inPort[1]) annotation (Line(
    points={{10,1},{10,-4},{10,-4}},
    color={0,0,0},
    smooth=Smooth.Bezier));
    annotation (
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),
              graphics),
      experiment(StopTime=3));
end Sequence;
