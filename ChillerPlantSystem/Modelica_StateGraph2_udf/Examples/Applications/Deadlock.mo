within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications;
model Deadlock
  "Example with two processes sharing two resources ending up in a deadlock situation after 5 seconds"
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step free1(
    nOut=2,
    nIn=2,
    initialStep=true)
    annotation (Placement(transformation(extent={{-4,50},{4,58}})));
  Modelica_StateGraph2_udf.Step s1(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-16,16},{-24,24}})));
  Modelica_StateGraph2_udf.Transition request1(
    use_conditionPort=true,
    waitTime=0.001,
    loopCheck=true,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{-24,30},{-16,38}})));
  Modelica_StateGraph2_udf.Step requesting1(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-80,16},{-72,24}})));
  Modelica_StateGraph2_udf.Step requesting3(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-80,-20},{-72,-12}})));
  Modelica_StateGraph2_udf.Step s2(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{16,16},{24,24}})));
  Modelica_StateGraph2_udf.Transition request2(
    use_conditionPort=true,
    waitTime=0.001,
    loopCheck=true,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{24,30},{16,38}})));
  Modelica_StateGraph2_udf.Transition release2(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{24,2},{16,10}})));
  Modelica_StateGraph2_udf.Transition release1(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-24,2},{-16,10}})));
  Modelica_StateGraph2_udf.Step free2(
    nOut=2,
    nIn=2,
    initialStep=true)
    annotation (Placement(transformation(extent={{-4,-36},{4,-28}})));
  Modelica_StateGraph2_udf.Step s3(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-16,-70},{-24,-62}})));
  Modelica_StateGraph2_udf.Transition reqest3(
    use_conditionPort=true,
    use_firePort=false,
    waitTime=0.001,
    loopCheck=true,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{-24,-56},{-16,-48}})));
  Modelica_StateGraph2_udf.Step s4(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{16,-70},{24,-62}})));
  Modelica_StateGraph2_udf.Transition request4(
    use_conditionPort=true,
    use_firePort=false,
    waitTime=0.001,
    loopCheck=true,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{24,-56},{16,-48}})));
  Modelica_StateGraph2_udf.Transition release4(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{24,-84},{16,-76}})));
  Modelica_StateGraph2_udf.Transition release3(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-24,-84},{-16,-76}})));
  Modelica_StateGraph2_udf.Step busy1(
    nIn=1,
    nOut=1,
    initialStep=false,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-80,-60},{-72,-52}})));
  Modelica_StateGraph2_udf.Transition start1(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-80,36},{-72,44}})));
  Modelica_StateGraph2_udf.Transition reserved1(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-72,0},{-80,8}})));
  Modelica_StateGraph2_udf.Transition reserved3(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-72,-40},{-80,-32}})));
  Modelica_StateGraph2_udf.Transition ready1(
    delayedTransition=true,
    use_firePort=false,
    waitTime=1)
    annotation (Placement(transformation(extent={{-80,-80},{-72,-72}})));
  Modelica_StateGraph2_udf.Step idle1(
    nIn=1,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-80,56},{-72,64}})));
  Modelica_StateGraph2_udf.Step requesting2(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{80,16},{72,24}})));
  Modelica_StateGraph2_udf.Step requesting4(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{80,-20},{72,-12}})));
  Modelica_StateGraph2_udf.Step busy2(
    nIn=1,
    nOut=1,
    initialStep=false,
    use_activePort=true)
    annotation (Placement(transformation(extent={{80,-60},{72,-52}})));
  Modelica_StateGraph2_udf.Transition start2(delayedTransition=true, waitTime=2)
    annotation (Placement(transformation(extent={{72,36},{80,44}})));
  Modelica_StateGraph2_udf.Transition reserved2(use_conditionPort=true)
    annotation (Placement(transformation(extent={{72,0},{80,8}})));
  Modelica_StateGraph2_udf.Transition reserved4(use_conditionPort=true)
    annotation (Placement(transformation(extent={{72,-40},{80,-32}})));
  Modelica_StateGraph2_udf.Transition ready2(
    delayedTransition=true,
    use_firePort=false,
    waitTime=1)
    annotation (Placement(transformation(extent={{80,-80},{72,-72}})));
  Modelica_StateGraph2_udf.Step idle2(
    nIn=1,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{72,56},{80,64}})));
  Modelica.Blocks.Logical.FallingEdge fallingEdge
    annotation (Placement(transformation(extent={{-64,-64},{-56,-56}})));
  Modelica.Blocks.Logical.FallingEdge fallingEdge1
    annotation (Placement(transformation(extent={{64,-64},{56,-56}})));
equation
  connect(request1.inPort, free1.outPort[1]) annotation (Line(
      points={{-20,38},{-20,44},{-1,44},{-1,49.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(request2.inPort, free1.outPort[2]) annotation (Line(
      points={{20,38},{20,44},{1,44},{1,49.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(request2.outPort, s2.inPort[1]) annotation (Line(
      points={{20,29},{20,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(request1.outPort, s1.inPort[1]) annotation (Line(
      points={{-20,29},{-20,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release1.inPort, s1.outPort[1]) annotation (Line(
      points={{-20,10},{-20,15.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release2.inPort, s2.outPort[1]) annotation (Line(
      points={{20,10},{20,15.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release1.outPort, free1.inPort[1]) annotation (Line(
      points={{-20,1},{-20,-4},{-36,-4},{-36,2.416},{-36,51.3459},{-36,66},
          {-1,66},{-1,58}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release2.outPort, free1.inPort[2]) annotation (Line(
      points={{20,1},{20,-4},{36,-4},{36,4.7075},{36,44.459},{36,66},{1,66},
          {1,58}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reqest3.inPort, free2.outPort[1]) annotation (Line(
      points={{-20,-48},{-20,-42},{-1,-42},{-1,-36.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(request4.inPort, free2.outPort[2]) annotation (Line(
      points={{20,-48},{20,-42},{1,-42},{1,-36.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reqest3.outPort, s3.inPort[1]) annotation (Line(
      points={{-20,-57},{-20,-62}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release3.inPort, s3.outPort[1]) annotation (Line(
      points={{-20,-76},{-20,-70.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release3.outPort, free2.inPort[1]) annotation (Line(
      points={{-20,-85},{-20,-90},{-36,-90},{-36,-74},{-36,-40.6719},{-36,-20},
          {-1,-20},{-1,-28}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(release4.outPort, free2.inPort[2]) annotation (Line(
      points={{20,-85},{20,-90},{36,-90},{36,-82},{36,-33.8047},{36,-20},{1,
          -20},{1,-28}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(idle1.outPort[1], start1.inPort) annotation (Line(
      points={{-76,55.4},{-76,44}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(start1.outPort, requesting1.inPort[1]) annotation (Line(
      points={{-76,35},{-76,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(requesting1.outPort[1], reserved1.inPort) annotation (Line(
      points={{-76,15.4},{-76,11.7},{-76,8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reserved1.outPort, requesting3.inPort[1]) annotation (Line(
      points={{-76,-1},{-76,-6.5},{-76,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(requesting3.outPort[1], reserved3.inPort) annotation (Line(
      points={{-76,-20.6},{-76,-26.3},{-76,-32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reserved3.outPort, busy1.inPort[1]) annotation (Line(
      points={{-76,-41},{-76,-46.5},{-76,-52}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(busy1.outPort[1], ready1.inPort) annotation (Line(
      points={{-76,-60.6},{-76,-66.3},{-76,-72}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(ready1.outPort, idle1.inPort[1]) annotation (Line(
      points={{-76,-81},{-76,-88},{-96,-88},{-96,-75.0213},{-96,-61.3129},{
          -96,57.3594},{-96,80},{-76,80},{-76,64}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(idle2.outPort[1], start2.inPort) annotation (Line(
      points={{76,55.4},{76,44}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(start2.outPort, requesting2.inPort[1]) annotation (Line(
      points={{76,35},{76,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(requesting2.outPort[1], reserved2.inPort) annotation (Line(
      points={{76,15.4},{76,11.7},{76,8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reserved2.outPort, requesting4.inPort[1]) annotation (Line(
      points={{76,-1},{76,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(requesting4.outPort[1], reserved4.inPort) annotation (Line(
      points={{76,-20.6},{76,-26.3},{76,-32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(reserved4.outPort, busy2.inPort[1]) annotation (Line(
      points={{76,-41},{76,-46.5},{76,-52}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(busy2.outPort[1], ready2.inPort) annotation (Line(
      points={{76,-60.6},{76,-66.3},{76,-72}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(ready2.outPort, idle2.inPort[1]) annotation (Line(
      points={{76,-81},{76,-88},{96,-88},{96.0535,-65.5869},{96.334,51.9453},
          {96,80},{76,80},{76,64}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(requesting1.activePort, request1.conditionPort) annotation (Line(
      points={{-71.28,20},{-71.28,20},{-60,20},{-60,34},{-44.79,34},{-25,34}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(request4.outPort, s4.inPort[1]) annotation (Line(
      points={{20,-57},{20,-59.5},{20,-62}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(s4.outPort[1], release4.inPort) annotation (Line(
      points={{20,-70.6},{20,-73.3},{20,-76}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(requesting3.activePort, reqest3.conditionPort) annotation (Line(
      points={{-71.28,-16},{-71.28,-16},{-40,-16},{-40,-35.2305},{-40,-52},
          {-25,-52}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(s1.activePort, reserved1.conditionPort) annotation (Line(
      points={{-24.72,20},{-24.72,20},{-42.6012,20},{-60,20},{-60,4},{-71,4}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(s3.activePort, reserved3.conditionPort) annotation (Line(
      points={{-24.72,-66},{-24.72,-66},{-44,-66},{-44,-51.6738},{-44,-36},
          {-63.0898,-36},{-71,-36}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(fallingEdge.u, busy1.activePort) annotation (Line(
      points={{-64.8,-60},{-68,-60},{-68,-56},{-71.28,-56}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(fallingEdge.y, release3.conditionPort) annotation (Line(
      points={{-55.6,-60},{-50,-60},{-50,-70},{-50,-80},{-36.8164,-80},{-25,
          -80}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(fallingEdge.y, release1.conditionPort) annotation (Line(
      points={{-55.6,-60},{-50,-60},{-50,-44.5481},{-50,-12.4063},{-50,6},{
          -25,6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(fallingEdge1.u, busy2.activePort) annotation (Line(
      points={{64.8,-60},{68,-60},{68,-56},{71.28,-56}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(requesting2.activePort, request4.conditionPort) annotation (Line(
      points={{71.28,20},{40,20},{40,-13.3281},{40,-27.1125},{40,-52},{25,-52}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(s4.activePort, reserved2.conditionPort) annotation (Line(
      points={{24.72,-66},{24.72,-66},{44,-66},{44,-30},{44,4},{71,4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(requesting4.activePort, request2.conditionPort) annotation (Line(
      points={{71.28,-16},{64,-16},{64,8.80469},{64,34},{25,34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(reserved4.conditionPort, s2.activePort) annotation (Line(
      points={{71,-36},{60,-36},{60,-10.1094},{60,20},{24.72,20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(fallingEdge1.y, release2.conditionPort) annotation (Line(
      points={{55.6,-60},{48,-60},{48,-39.0564},{48,-12.4063},{48,6},{25,6}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(fallingEdge1.y, release4.conditionPort) annotation (Line(
      points={{55.6,-60},{50,-60},{50,-70},{50,-80},{37.8662,-80},{25,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
            -100},{100,100}}), graphics={Text(
                extent={{-74,94},{-74,82}},
                lineColor={0,0,0},
                textString="Process 1"),Text(
                extent={{76,94},{76,82}},
                lineColor={0,0,0},
                textString="Process 2"),Text(
                extent={{0,80},{0,68}},
                lineColor={0,0,0},
                textString="Resource 1"),Text(
                extent={{0,-6},{0,-18}},
                lineColor={0,0,0},
                textString="Resource 2")}), experiment(StopTime=10));
end Deadlock;
