within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks.Internal;
model ShutStep

  extends Modelica_StateGraph2_udf.PartialParallel(
    final use_suspend=true,
    final use_activePort=false,
    final use_inPort=true,
    final use_outPort=true,
    final nEntry=2,
    final nExit=2);
  parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
    "Minimum fill level of a tank";

  SignalBus bus annotation (Placement(transformation(
        extent={{-20,20},{20,-20}},
        rotation=90,
        origin={100,0}), iconTransformation(
        extent={{-20,20},{20,-20}},
        rotation=90,
        origin={200,0})));
  Modelica_StateGraph2_udf.Step shutTank1(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-20,52},{-12,60}})));
  Modelica_StateGraph2_udf.Transition T13(delayedTransition=false, condition=
        bus.level1 < minLevel)
    annotation (Placement(transformation(extent={{-20,37},{-12,45}})));
  Modelica_StateGraph2_udf.Step shutTank2(
    nIn=1,
    nOut=1,
    initialStep=false,
    use_activePort=true)
    annotation (Placement(transformation(extent={{16,52},{24,60}})));
  Modelica_StateGraph2_udf.Step tank1Empty(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-20,19},{-12,27}})));
  Modelica_StateGraph2_udf.Step tank2Empty(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{16,19},{24,27}})));
  Modelica_StateGraph2_udf.Transition T11(delayedTransition=false, condition=
        bus.level2 < minLevel)
    annotation (Placement(transformation(extent={{16,37},{24,45}})));
  Modelica.Blocks.Interfaces.BooleanOutput valve2 "Value of Boolean output"
                              annotation (Placement(transformation(
          extent={{100,70},{120,90}}), iconTransformation(extent={{200,
            124},{220,144}})));
  Modelica.Blocks.Interfaces.BooleanOutput valve3 "Value of Boolean output"
                              annotation (Placement(transformation(
          extent={{100,40},{120,60}}), iconTransformation(extent={{200,
            68},{220,88}})));
equation
  connect(shutTank1.outPort[1], T13.inPort) annotation (Line(
      points={{-16,51.4},{-16,45}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T13.outPort, tank1Empty.inPort[1]) annotation (Line(
      points={{-16,36},{-16,27}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutTank2.outPort[1], T11.inPort) annotation (Line(
      points={{20,51.4},{20,45}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T11.outPort, tank2Empty.inPort[1]) annotation (Line(
      points={{20,36},{20,27}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutTank1.inPort[1], entry[1]) annotation (Line(
      points={{-16,60},{-16,87.9297},{-16,100},{-30,100}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutTank2.inPort[1], entry[2]) annotation (Line(
      points={{20,60},{20,91},{20,99},{30,99},{30,100}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(tank1Empty.outPort[1], exit[1]) annotation (Line(
      points={{-16,18.4},{-16,-40.8},{-16,-79.483},{-16,-105},{-30,-105}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(tank2Empty.outPort[1], exit[2]) annotation (Line(
      points={{20,18.4},{20,-79.6934},{20,-105},{30,-105}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutTank1.activePort, valve2) annotation (Line(
      points={{-11.28,56},{-11.28,56},{-7.95723,56},{5,56},{5,67.9531},
          {5,80},{19,80},{110,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(shutTank2.activePort, valve3) annotation (Line(
      points={{24.72,56},{24.72,56},{52.9371,56},{60,56},{60,52.959},{
          60,50},{65.4199,50},{110,50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
        graphics={Text(
                    extent={{132,146},{184,122}},
                    lineColor={0,0,0},
                    textString="2"),Text(
                    extent={{136,88},{188,64}},
                    lineColor={0,0,0},
                    textString="3"),Text(
                    extent={{-166,26},{156,-22}},
                    lineColor={0,0,0},
                    textString="ShutStep"),Text(
                    extent={{-2,120},{140,92}},
                    lineColor={0,0,0},
                    textString="valves")}));
end ShutStep;
