within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model ParallelWithInfiniteLoop
  "A wrong Modelica_StateGraph2 to demonstrate parallel execution paths with infinite looping ((translates with an error))"
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    initialStep=true,
    nIn=1) annotation (Placement(transformation(extent={{-4,68},{4,76}})));
  Parallel parallel(
    use_inPort=true,
    use_outPort=true,
    nIn=1,
    nEntry=2,
    nOut=1,
    nExit=2)
    annotation (Placement(transformation(extent={{-38,-46},{38,44}})));
  Modelica_StateGraph2_udf.Transition T1(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{-4,54},{4,62}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{12,16},{20,24}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{12,-4},{20,4}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{12,-24},{20,-16}})));
  Modelica_StateGraph2_udf.Transition T3(
    waitTime=1,
    use_conditionPort=false,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{52,6},{60,-2}})));
equation
  connect(step1.outPort[1], T1.inPort) annotation (Line(
      points={{0,67.4},{0,62}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, parallel.inPort[1]) annotation (Line(
      points={{0,53},{0,44}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{16,15.4},{16,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-1.9,39.5},{-1.9,34},{-9.5536,34},{-20,34},{-20,25.5625},{-20,
          4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{1.9,39.5},{1.9,34},{9.10146,34},{16,34},{16,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{16,-5},{16,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1], T3.inPort) annotation (Line(
      points={{0,-47.125},{0,-54},{9.7754,-54},{39.1016,-54},{56,-54},{56,-38.918},
          {56,-2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{56,7},{56,73.502},{56,86},{41.1434,86},{12.0313,86},{0,86},{
          0,76}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-20,-4.6},{-20,-21.7518},{-20,-32},{-10.4551,-32},{-1.9,-32},
          {-1.9,-42.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
      points={{16,-24.6},{16,-32},{10.2306,-32},{1.9,-32},{1.9,-42.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics));
end ParallelWithInfiniteLoop;
