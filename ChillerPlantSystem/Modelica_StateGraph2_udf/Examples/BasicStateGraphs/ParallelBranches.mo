within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model ParallelBranches "Example to demonstrate parallel execution paths"
   extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    initialStep=true,
    nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
  Parallel parallel(
    initialStep=false,
    use_inPort=true,
    use_outPort=true,
    nIn=1,
    nEntry=2,
    nOut=1,
    nExit=2)
            annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-32,-6},{-24,2}})));
  Modelica_StateGraph2_udf.Step step3(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,14},{14,22}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{6,-4},{14,4}})));
  Modelica_StateGraph2_udf.Step step4(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,-26},{14,-18}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{64,4},{72,-4}})));
equation
  connect(step1.outPort[1], T1.inPort) annotation (Line(
      points={{-6,65.4},{-6,60}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, parallel.inPort[1]) annotation (Line(
      points={{-6,51},{-6,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{10,13.4},{10,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37.5},{-7.9,32},{-16.8704,32},{-28,32},{-28,20.457},{-28,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37.5},{-4.1,32},{3,32},{10,32},{10,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{10,-5},{10,-18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.outPort[1], T3.inPort) annotation (Line(
      points={{-6,-49.125},{-6,-56.4298},{-6,-72},{14.2104,-72},{49.9336,-72},{68,
          -72},{68,-52.4766},{68,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{68,5},{68,74.3945},{68,90},{48.009,90},{9.17578,90},{-6,90},{-6,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], parallel.exit[1]) annotation (Line(
      points={{-28,-6.6},{-28,-19.7713},{-28,-32},{-17.5574,-32},{-7.9,
        -32},{-7.9,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
      points={{10,-26.6},{10,-32},{3.78994,-32},{-4.1,-32},{-4.1,-44.0625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}),   graphics),
    experiment(StopTime=10));
end ParallelBranches;
