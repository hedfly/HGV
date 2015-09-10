within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model UnsafeParallel1
  "Wrong Modelica_StateGraph2 that branches out of the parallel step (gives error during initialization)"
  extends Modelica.Icons.Example;

  Parallel parallel(
    nIn=1,
    nEntry=2,
    nOut=0,
    use_outPort=false,
    use_inPort=true)
    annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
  Modelica_StateGraph2_udf.Step step2(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{-24,0},{-16,8}})));
  Modelica_StateGraph2_udf.Step step3(
    nOut=1,
    nIn=2,
    initialStep=false)
    annotation (Placement(transformation(extent={{6,14},{14,22}})));
  Modelica_StateGraph2_udf.Transition T2(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{6,-2},{14,6}})));
  Modelica_StateGraph2_udf.Step step4(nOut=2, nIn=1)
    annotation (Placement(transformation(extent={{6,-18},{14,-10}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{4,-34},{12,-26}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-24,-16},{-16,-8}})));
  Modelica_StateGraph2_udf.Step step1(
    nOut=1,
    nIn=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
  Modelica_StateGraph2_udf.Transition T4(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-10,50},{-2,58}})));
  Modelica_StateGraph2_udf.Transition T5(waitTime=1, delayedTransition=false)
    annotation (Placement(transformation(extent={{48,-2},{56,-10}})));
equation
  connect(step3.outPort[1], T2.inPort) annotation (Line(
      points={{10,13.4},{10,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
      points={{-7.9,37.5},{-7.9,32},{-21,32},{-21,8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
      points={{-4.1,37.5},{-4.1,32},{9,32},{9,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step4.inPort[1]) annotation (Line(
      points={{10,-3},{10,-10}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[1], T1.inPort) annotation (Line(
      points={{9,-18.6},{9,-22.3},{8,-22.3},{8,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step3.inPort[2]) annotation (Line(
      points={{8,-35},{8,-40},{15.5469,-40},{24,-40},{24,-33.6016},{24,
          25.5295},{24,32},{16.8906,32},{11,32},{11,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step2.inPort[2]) annotation (Line(
      points={{-20,-17},{-20,-22},{-24.8828,-22},{-30,-22},{-30,-16.4556},{
          -30,8.19922},{-30,14},{-23.5654,14},{-19,14},{-19,8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T3.inPort) annotation (Line(
      points={{-20,-0.6},{-20,-8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, parallel.inPort[1]) annotation (Line(
      points={{-6,49},{-6,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step1.outPort[1], T4.inPort) annotation (Line(
      points={{-6,65.4},{-6,58}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.outPort[2], T5.inPort) annotation (Line(
      points={{11,-18.6},{11,-22},{15.7578,-22},{40,-22},{52,-22},{52,-10}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(T5.outPort, step1.inPort[1]) annotation (Line(
      points={{52,-1},{52,70.8145},{52,82},{38.4603,82},{4.02539,82},{-6,82},
          {-6,74}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end UnsafeParallel1;
