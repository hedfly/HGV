within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks.Internal;
model TankController1
  "Controller 1 for tank system (using expressions to control the valves)"
  extends Modelica.Blocks.Interfaces.BlockIcon;
  parameter Modelica.SIunits.Height limit1(min=0) = 0.98
    "Maximum level of tank 1";
  parameter Modelica.SIunits.Height limit2(min=0) = 0.98
    "Maximum level of tank 2";
  parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
    "Minimum fill level of a tank";

  parameter Modelica.SIunits.Time waitTime=3 "Wait time to newly open a valve";

  Modelica.Blocks.Interfaces.BooleanInput start annotation (Placement(
        transformation(extent={{-130,50},{-110,70}}, rotation=0),
        iconTransformation(extent={{-120,50},{-100,70}})));
  Modelica.Blocks.Interfaces.BooleanInput stop annotation (Placement(
        transformation(extent={{-130,-10},{-110,10}}, rotation=0),
        iconTransformation(extent={{-120,-10},{-100,10}})));
  Modelica.Blocks.Interfaces.BooleanInput shut annotation (Placement(
        transformation(extent={{-130,-70},{-110,-50}}, rotation=0),
        iconTransformation(extent={{-120,-70},{-100,-50}})));
  Modelica.Blocks.Interfaces.RealInput level1 annotation (Placement(
        transformation(
        origin={-60,-150},
        extent={{-10,-10},{10,10}},
        rotation=90), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,-110})));
  Modelica.Blocks.Interfaces.RealInput level2 annotation (Placement(
        transformation(
        origin={60,-150},
        extent={{-10,-10},{10,10}},
        rotation=90), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={60,-110})));
  Modelica.Blocks.Interfaces.BooleanOutput valve1 annotation (Placement(
        transformation(extent={{100,55},{110,65}}, rotation=0)));
  Modelica.Blocks.Interfaces.BooleanOutput valve2 annotation (Placement(
        transformation(extent={{100,-5},{110,5}}, rotation=0)));
  Modelica.Blocks.Interfaces.BooleanOutput valve3 annotation (Placement(
        transformation(extent={{100,-65},{110,-55}}, rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression setValve1(y=fillTank1.active
         and level1 <= 1.01*limit1) annotation (Placement(
        transformation(extent={{-14,-99},{67,-83}}, rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression setValve2(y=(fillTank2.active
         or emptyTanks.active or shutTank1.active) and level2 <= 1.01*
        limit2) annotation (Placement(transformation(extent={{-78,-119},
            {67,-101}}, rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression setValve3(y=emptyTanks.active
         or shutTank2.active) annotation (Placement(transformation(
          extent={{-23,-136},{67,-120}}, rotation=0)));

  Parallel makeProduct(
    use_suspend=true,
    nIn=2,
    nEntry=1,
    nExit=0,
    nOut=0,
    use_outPort=false,
    use_inPort=true,
    nSuspend=1,
    nResume=1,
    initialStep=false)
    annotation (Placement(transformation(extent={{23,-71},{73,126}})));
  Modelica_StateGraph2_udf.Step startStep(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{37,96},{45,104}})));
  Modelica_StateGraph2_udf.Transition T1(
    use_conditionPort=true,
    waitTime=0.01,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{37,84},{45,92}})));
  Modelica_StateGraph2_udf.Step fillTank1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{37,69},{45,77}})));
  Modelica_StateGraph2_udf.Transition T2(condition=level1 > limit1)
    annotation (Placement(transformation(extent={{37,56},{45,64}})));
  Modelica_StateGraph2_udf.Step wait1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{37,40},{45,48}})));
  Modelica_StateGraph2_udf.Step fillTank2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{37,10},{45,18}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=
        waitTime)
    annotation (Placement(transformation(extent={{37,25},{45,33}})));
  Modelica_StateGraph2_udf.Transition T4(condition=level1 < minLevel)
    annotation (Placement(transformation(extent={{37,-3},{45,5}})));
  Modelica_StateGraph2_udf.Step wait2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{37,-16},{45,-8}})));
  Modelica_StateGraph2_udf.Transition T5(delayedTransition=true, waitTime=
        waitTime)
    annotation (Placement(transformation(extent={{37,-30},{45,-22}})));
  Modelica_StateGraph2_udf.Step emptyTanks(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{37,-46},{45,-38}})));
  Modelica_StateGraph2_udf.Transition T6(condition=level2 < minLevel)
    annotation (Placement(transformation(extent={{37,-60},{45,-52}})));
  Modelica_StateGraph2_udf.Step initialStep(initialStep=true, nOut=1)
    annotation (Placement(transformation(extent={{44,148},{52,156}})));
  Modelica_StateGraph2_udf.Transition T7
    annotation (Placement(transformation(extent={{44,137},{52,145}})));
  Modelica_StateGraph2_udf.Step stopStep1(nIn=1, nOut=2)
    annotation (Placement(transformation(extent={{-33,53},{-25,61}})));
  Modelica_StateGraph2_udf.Transition T8(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-33,68},{-25,76}})));
  Modelica_StateGraph2_udf.Transition T9(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-34,40},{-26,48}})));
  Modelica_StateGraph2_udf.Transition T10(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{6,26},{14,34}})));
  Modelica_StateGraph2_udf.Step shutTank1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-50,-14},{-42,-6}})));
  Modelica_StateGraph2_udf.Transition T13(delayedTransition=false, condition=
        level1 < minLevel)
    annotation (Placement(transformation(extent={{-50,-29},{-42,-21}})));
  Parallel shutStep(
    use_inPort=true,
    use_outPort=true,
    use_suspend=true,
    nEntry=2,
    nExit=2,
    nOut=1,
    nSuspend=1,
    use_activePort=false,
    initialStep=false,
    nIn=1,
    nResume=1)
    annotation (Placement(transformation(extent={{-58,-63},{-2,6}})));
  Modelica_StateGraph2_udf.Step shutTank2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-23,-14},{-15,-6}})));
  Modelica_StateGraph2_udf.Step tank1Empty(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-50,-47},{-42,-39}})));
  Modelica_StateGraph2_udf.Step tank2Empty(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-23,-47},{-15,-39}})));
  Modelica_StateGraph2_udf.Transition T11(condition=level2 < minLevel,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-23,-29},{-15,-21}})));
  Modelica_StateGraph2_udf.Transition T12(delayedTransition=false)
    annotation (Placement(transformation(extent={{-1,-62},{7,-70}})));
  Modelica_StateGraph2_udf.Transition T14(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-85,-20},{-77,-12}})));
  Modelica_StateGraph2_udf.Step stopStep2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-85,-32},{-77,-24}})));
  Modelica_StateGraph2_udf.Transition T15(
    use_conditionPort=true,
    delayedTransition=false,
    waitTime=0)
    annotation (Placement(transformation(extent={{-85,-43},{-77,-35}})));
  Modelica_StateGraph2_udf.Step startWait(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{6,9},{14,17}})));
  Modelica_StateGraph2_udf.Transition T16(
    delayedTransition=true,
    waitTime=0.01,
    use_conditionPort=false)
    annotation (Placement(transformation(extent={{6,-7},{14,1}})));
  Modelica_StateGraph2_udf.Step shutWait(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-34,27},{-26,35}})));
  Modelica_StateGraph2_udf.Transition T17(delayedTransition=true, waitTime=0.01)
    annotation (Placement(transformation(extent={{-34,14},{-26,22}})));
  Modelica_StateGraph2_udf.Step shutWait2(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{-85,-57},{-77,-49}})));
  Modelica_StateGraph2_udf.Transition T18(
    waitTime=0.01,
    delayedTransition=true,
    use_conditionPort=false)
    annotation (Placement(transformation(extent={{-85,-71},{-77,-63}})));
equation

  connect(start, T1.conditionPort) annotation (Line(
      points={{-120,60},{-85,60},{-70,60},{-70,74},{-70,88},{-54.2656,
          88},{36,88}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(fillTank1.outPort[1], T2.inPort) annotation (Line(
      points={{41,68.4},{41,64}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, wait1.inPort[1]) annotation (Line(
      points={{41,55},{41,48}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait1.outPort[1], T3.inPort) annotation (Line(
      points={{41,39.4},{41,33}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, fillTank2.inPort[1]) annotation (Line(
      points={{41,24},{41,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(fillTank2.outPort[1], T4.inPort) annotation (Line(
      points={{41,9.4},{41,5}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, wait2.inPort[1]) annotation (Line(
      points={{41,-4},{41,-8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait2.outPort[1], T5.inPort) annotation (Line(
      points={{41,-16.6},{41,-22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, emptyTanks.inPort[1]) annotation (Line(
      points={{41,-31},{41,-38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(emptyTanks.outPort[1], T6.inPort) annotation (Line(
      points={{41,-46.6},{41,-52}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, fillTank1.inPort[1]) annotation (Line(
      points={{41,83},{41,77}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(startStep.inPort[1], makeProduct.entry[1]) annotation (Line(
      points={{40,104},{40,116.15},{48,116.15}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(startStep.outPort[1], T1.inPort) annotation (Line(
      points={{41,95.4},{41,92}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.outPort, startStep.inPort[2]) annotation (Line(
      points={{41,-61},{41,-66},{47.2443,-66},{50.7324,-66},{63,-66},{
          63,-52.3225},{63,94.9863},{63,109},{52.0055,109},{48.0088,109},
          {42,109},{42,104}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(T7.outPort, makeProduct.inPort[1]) annotation (Line(
      points={{48,136},{48,126},{45.5,126}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T8.outPort, stopStep1.inPort[1]) annotation (Line(
      points={{-29,67},{-29,61}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(makeProduct.suspend[1], T8.inPort) annotation (Line(
      points={{21.75,82.9063},{-10.4644,82.9063},{-29,82.9063},{-29,76}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(stop, T8.conditionPort) annotation (Line(
      points={{-120,0},{-100,0},{-100,13.2324},{-100,36.7148},{-100,50},
          {-87.2871,50},{-64.0121,50},{-54,50},{-54,60},{-34,60},{-34,
          72}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(initialStep.outPort[1], T7.inPort) annotation (Line(
      points={{48,147.4},{48,145}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopStep1.outPort[1], T9.inPort) annotation (Line(
      points={{-30,52.4},{-30,48}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T10.inPort, stopStep1.outPort[2]) annotation (Line(
      points={{10,34},{10,48},{-2.41211,48},{-21,48},{-28,48},{-28,52.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(setValve1.y, valve1) annotation (Line(
      points={{71.05,-91},{80,-91},{80,-78.7792},{80,39.3555},{80,60},{
          105,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(setValve2.y, valve2) annotation (Line(
      points={{74.25,-110},{85,-110},{85,-98.0166},{85,-16.3281},{85,0},
          {105,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(setValve3.y, valve3) annotation (Line(
      points={{71.5,-128},{78.4917,-128},{90,-128},{90,-116.313},{90,-72.2635},
          {90,-60},{105,-60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(start, T10.conditionPort) annotation (Line(
      points={{-120,60},{-120,60},{-70.0195,60},{-60,60},{-60,70},{-50.5273,
          70},{-24.0104,70},{-10,70},{-10,57.7539},{-10,42.5},{-10,30},
          {5,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(shutStep.entry[1], shutTank1.inPort[1]) annotation (Line(
      points={{-31.4,2.55},{-31.4,-1},{-35.7486,-1},{-41.2447,-1},{-46,
          -1},{-46,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutStep.entry[2], shutTank2.inPort[1]) annotation (Line(
      points={{-28.6,2.55},{-28.6,-1},{-25.2531,-1},{-23.2502,-1},{-19,
          -1},{-19,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutTank1.outPort[1], T13.inPort) annotation (Line(
      points={{-46,-14.6},{-46,-21}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T13.outPort, tank1Empty.inPort[1]) annotation (Line(
      points={{-46,-30},{-46,-39}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutTank2.outPort[1], T11.inPort) annotation (Line(
      points={{-19,-14.6},{-19,-21}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T11.outPort, tank2Empty.inPort[1]) annotation (Line(
      points={{-19,-30},{-19,-39}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(tank1Empty.outPort[1], shutStep.exit[1]) annotation (Line(
      points={{-46,-47.6},{-46,-52},{-41,-52},{-31.4,-52},{-31.4,-59.9813}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(tank2Empty.outPort[1], shutStep.exit[2]) annotation (Line(
      points={{-19,-47.6},{-19,-52},{-23.2469,-52},{-28.6,-52},{-28.6,-59.9813}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(shutStep.outPort[1], T12.inPort) annotation (Line(
      points={{-30,-63.8625},{-30,-74},{-20.0098,-74},{-3.51645,-74},{3,
          -74},{3,-70}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutStep.suspend[1], T14.inPort) annotation (Line(
      points={{-59.4,-9.09375},{-76.2328,-9.09375},{-81,-9.09375},{-81,
          -12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T14.outPort, stopStep2.inPort[1]) annotation (Line(
      points={{-81,-21},{-81,-24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopStep2.outPort[1], T15.inPort) annotation (Line(
      points={{-81,-32.6},{-81,-35}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T12.outPort, makeProduct.inPort[2]) annotation (Line(
      points={{3,-61},{3,117.654},{3,133},{17.2461,133},{34.9912,133},{
          44,133},{44,126},{50.5,126}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shut, T9.conditionPort) annotation (Line(
      points={{-120,-60},{-103.758,-60},{-96,-60},{-96,-47},{-96,
          9.44531},{-96,43},{-46,43},{-46,44},{-35,44}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stop, T14.conditionPort) annotation (Line(
      points={{-120,0},{-100,0},{-100,-8},{-100,-16},{-91.5098,-16},{-86,
          -16}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(shut, T15.conditionPort) annotation (Line(
      points={{-120,-60},{-105,-60},{-96,-60},{-96,-48.7617},{-96,-39},
          {-86,-39}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(startWait.outPort[1], T16.inPort) annotation (Line(
      points={{10,8.4},{10,1}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T16.outPort, makeProduct.resume[1]) annotation (Line(
      points={{10,-8},{10,-14.9983},{10,-27.9062},{23,-27.9062}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T10.outPort, startWait.inPort[1]) annotation (Line(
      points={{10,25},{10,17}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T9.outPort, shutWait.inPort[1]) annotation (Line(
      points={{-30,39},{-30,35}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(shutWait.outPort[1], T17.inPort) annotation (Line(
      points={{-30,26.4},{-30,22}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T17.outPort, shutStep.inPort[1]) annotation (Line(
      points={{-30,13},{-30,6}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T15.outPort, shutWait2.inPort[1]) annotation (Line(
      points={{-81,-44},{-81,-49}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutWait2.outPort[1], T18.inPort) annotation (Line(
      points={{-81,-57.6},{-81,-63}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T18.outPort, shutStep.resume[1]) annotation (Line(
      points={{-81,-72},{-81,-79},{-72.1514,-79},{-64,-79},{-64,-69.1522},
          {-64,-56.5907},{-64,-47.9063},{-58,-47.9063}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-110,-150},{100,170}},
        grid={1,1}), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics={Text(
                    extent={{-100,68},{-32,54}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="start"),Text(
                    extent={{-100,6},{-32,-8}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="stop"),Text(
                    extent={{-100,-54},{-32,-68}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="shut"),Text(
                    extent={{-94,-82},{-18,-96}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="level1"),Text(
                    extent={{24,-84},{96,-98}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="level2"),Text(
                    extent={{31,68},{99,54}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="valve1"),Text(
                    extent={{33,9},{101,-5}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="valve2"),Text(
                    extent={{34,-53},{102,-67}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid,
                    textString="valve3"),Text(
                    extent={{-33,18},{31,-32}},
                    lineColor={0,0,255},
                    textString="1")}));
end TankController1;
