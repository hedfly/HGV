within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks.Internal;
model MakeProduct
  extends Modelica_StateGraph2_udf.PartialParallel(
    final use_inPort=true,
    final use_suspend=true,
    final use_activePort=false,
    final use_outPort=false,
    nEntry=1,
    nExit=1);
  parameter Modelica.SIunits.Height limit1(min=0) = 0.98
    "Maximum level of tank 1";
  parameter Modelica.SIunits.Height limit2(min=0) = 0.98
    "Maximum level of tank 2";
  parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
    "Minimum fill level of a tank";
  parameter Modelica.SIunits.Time waitTime=3 "Wait time to newly open a valve";

  SignalBus bus annotation (Placement(transformation(
        extent={{-20,20},{20,-20}},
        rotation=90,
        origin={100,0}), iconTransformation(
        extent={{-20,20},{20,-20}},
        rotation=90,
        origin={200,0})));
  Modelica_StateGraph2_udf.Step startStep(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{-24,72},{-16,80}})));
  Modelica_StateGraph2_udf.Transition T1(
    waitTime=0.01,
    delayedTransition=false,
    use_conditionPort=false,
    condition=bus.start)
    annotation (Placement(transformation(extent={{-24,60},{-16,68}})));
  Modelica_StateGraph2_udf.Step fillTank1(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-24,46},{-16,54}})));
  Modelica_StateGraph2_udf.Transition T2(condition=bus.level1 > limit1)
    annotation (Placement(transformation(extent={{-24,32},{-16,40}})));
  Modelica_StateGraph2_udf.Step wait1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,16},{-16,24}})));
  Modelica_StateGraph2_udf.Step fillTank2(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=
        waitTime)
    annotation (Placement(transformation(extent={{-24,1},{-16,9}})));
  Modelica_StateGraph2_udf.Transition T4(condition=bus.level1 < minLevel)
    annotation (Placement(transformation(extent={{-24,-27},{-16,-19}})));
  Modelica_StateGraph2_udf.Step wait2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-40},{-16,-32}})));
  Modelica_StateGraph2_udf.Transition T5(delayedTransition=true, waitTime=
        waitTime)
    annotation (Placement(transformation(extent={{-24,-54},{-16,-46}})));
  Modelica_StateGraph2_udf.Step emptyTanks(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-24,-70},{-16,-62}})));
  Modelica_StateGraph2_udf.Transition T6(condition=bus.level2 < minLevel)
    annotation (Placement(transformation(extent={{-24,-84},{-16,-76}})));
  Modelica.Blocks.Interfaces.BooleanOutput valve1 "Value of Boolean output"
                              annotation (Placement(transformation(
          extent={{100,70},{120,90}}), iconTransformation(extent={{200,
            144},{220,164}})));
  Modelica.Blocks.Interfaces.BooleanOutput valve2 "Value of Boolean output"
                              annotation (Placement(transformation(
          extent={{100,50},{120,70}}), iconTransformation(extent={{200,
            96},{220,116}})));
  Modelica.Blocks.Interfaces.BooleanOutput valve3 "Value of Boolean output"
                              annotation (Placement(transformation(
          extent={{100,30},{120,50}}), iconTransformation(extent={{200,
            50},{220,70}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or1(nu=2)
    annotation (Placement(transformation(extent={{45,54},{57,66}})));
equation
  connect(fillTank1.outPort[1], T2.inPort) annotation (Line(
      points={{-20,45.4},{-20,40}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, wait1.inPort[1]) annotation (Line(
      points={{-20,31},{-20,24}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait1.outPort[1], T3.inPort) annotation (Line(
      points={{-20,15.4},{-20,9}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, fillTank2.inPort[1]) annotation (Line(
      points={{-20,0},{-20,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(fillTank2.outPort[1], T4.inPort) annotation (Line(
      points={{-20,-14.6},{-20,-19}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort, wait2.inPort[1]) annotation (Line(
      points={{-20,-28},{-20,-32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait2.outPort[1], T5.inPort) annotation (Line(
      points={{-20,-40.6},{-20,-46}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T5.outPort, emptyTanks.inPort[1]) annotation (Line(
      points={{-20,-55},{-20,-62}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(emptyTanks.outPort[1], T6.inPort) annotation (Line(
      points={{-20,-70.6},{-20,-76}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, fillTank1.inPort[1]) annotation (Line(
      points={{-20,59},{-20,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(startStep.outPort[1], T1.inPort) annotation (Line(
      points={{-20,71.4},{-20,68}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T6.outPort, startStep.inPort[2]) annotation (Line(
      points={{-20,-85},{-20,-90},{-13.1895,-90},{2,-90},{2,-75.9486},{
          2,71.6699},{2,85},{-11.5762,85},{-19,85},{-19,80}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(entry[1], startStep.inPort[1]) annotation (Line(
      points={{0,100},{0,93},{-20,93},{-20,80},{-21,80}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(fillTank1.activePort, valve1) annotation (Line(
      points={{-15.28,50},{10,50},{10,65.2051},{10,80},{24.9414,80},{
          110,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(emptyTanks.activePort, valve3) annotation (Line(
      points={{-15.28,-66},{-15.28,-66},{10,-66},{30,-66},{30,-45.0898},
          {30,19.974},{30,40},{50.625,40},{110,40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.y, valve2) annotation (Line(
      points={{58.2,60},{110,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(fillTank2.activePort, or1.u[1]) annotation (Line(
      points={{-15.28,-10},{-15.28,-10},{-5.68828,-10},{16,-10},{16,
          10.2175},{16,41.1178},{16,62.1},{45,62.1}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(emptyTanks.activePort, or1.u[2]) annotation (Line(
      points={{-15.28,-66},{-15.28,-66},{2,-66},{21,-66},{21,-44.8607},
          {21,35.1527},{21,57.9},{45,57.9}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{
            -200,-200},{200,200}}), graphics={Text(
                    extent={{130,118},{182,94}},
                    lineColor={0,0,0},
                    textString="2"),Text(
                    extent={{130,70},{182,46}},
                    lineColor={0,0,0},
                    textString="3"),Text(
                    extent={{128,170},{180,146}},
                    lineColor={0,0,0},
                    textString="1"),Text(
                    extent={{-174,16},{148,-34}},
                    lineColor={0,0,0},
                    textString="MakeProduct"),Text(
                    extent={{-22,124},{120,96}},
                    lineColor={0,0,0},
                    textString="valves")}), Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics));
end MakeProduct;
