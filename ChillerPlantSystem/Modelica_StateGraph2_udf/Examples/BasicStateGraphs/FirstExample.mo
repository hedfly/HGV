within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model FirstExample "A first simple Modelica_StateGraph2 example"
  extends Modelica.Icons.Example;
  Modelica_StateGraph2_udf.Step initialStep(
    nIn=1,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-4,44},{4,52}})));
Modelica_StateGraph2_udf.Transition T1(condition=time > 2)
    annotation (Placement(transformation(extent={{-4,26},{4,34}})));
Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-4,10},{4,18}})));
Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-4,-6},{4,2}})));
Modelica_StateGraph2_udf.Step step3(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-4,-24},{4,-16}})));
Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{26,18},{34,10}})));
equation
connect(initialStep.outPort[1], T1.inPort) annotation (Line(
    points={{0,43.4},{0,34}},
    color={0,0,0},
    smooth=Smooth.None));
connect(T1.outPort, step2.inPort[1]) annotation (Line(
    points={{0,25},{0,18}},
    color={0,0,0},
    smooth=Smooth.None));
connect(step2.outPort[1], T2.inPort) annotation (Line(
    points={{0,9.4},{0,2}},
    color={0,0,0},
    smooth=Smooth.None));
connect(T2.outPort, step3.inPort[1]) annotation (Line(
    points={{0,-7},{0,-16}},
    color={0,0,0},
    smooth=Smooth.None));
connect(step3.outPort[1], T3.inPort) annotation (Line(
    points={{0,-24.6},{0,-36},{15.0879,-36},{30,-36},{30,-19.1543},{30,10}},
    color={0,0,0},
    smooth=Smooth.Bezier));

connect(T3.outPort, initialStep.inPort[1]) annotation (Line(
    points={{30,19},{30,52.6436},{30,66},{16,66},{0,66},{0,52}},
    color={0,0,0},
    smooth=Smooth.Bezier));
annotation (
  Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
          {100,100}}), graphics),
  experiment(StopTime=10),
  Documentation(info="<html>

</html>"));
end FirstExample;
