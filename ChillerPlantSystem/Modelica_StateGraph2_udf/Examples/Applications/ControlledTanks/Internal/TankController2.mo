within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks.Internal;
model TankController2
  "Controller 2 for tank system (using expressions to control the valves)"
  extends Modelica.Blocks.Interfaces.BlockIcon;
  parameter Modelica.SIunits.Height limit1(min=0) = 0.98
    "Maximum level of tank 1";
  parameter Modelica.SIunits.Height limit2(min=0) = 0.98
    "Maximum level of tank 2";
  parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
    "Minimum fill level of a tank";
  parameter Modelica.SIunits.Time waitTime=3 "Wait time to newly open a valve";

  Modelica_StateGraph2_udf.Step stopStep1(nIn=1, nOut=2)
    annotation (Placement(transformation(extent={{-23,4},{-15,12}})));
  Modelica_StateGraph2_udf.Transition T8(use_conditionPort=false, condition=bus.stop)
    annotation (Placement(transformation(extent={{-23,19},{-15,27}})));
  Modelica_StateGraph2_udf.Transition T9(
    use_conditionPort=false,
    condition=bus.shut,
    delayedTransition=false,
    waitTime=0)
    annotation (Placement(transformation(extent={{-24,-9},{-16,-1}})));
  Modelica_StateGraph2_udf.Transition T10(
    use_conditionPort=false,
    condition=bus.start,
    waitTime=0,
    delayedTransition=false)
    annotation (Placement(transformation(extent={{2,-11},{10,-3}})));
  Modelica_StateGraph2_udf.Transition T12(delayedTransition=false)
    annotation (Placement(transformation(extent={{-80,6},{-72,-2}})));
  Modelica_StateGraph2_udf.Transition T14(
    delayedTransition=false,
    use_conditionPort=false,
    condition=bus.stop)
    annotation (Placement(transformation(extent={{-69,-35},{-61,-27}})));
  Modelica_StateGraph2_udf.Step stopStep2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-69,-49},{-61,-41}})));
  Modelica_StateGraph2_udf.Transition T15(
    use_conditionPort=false,
    condition=bus.shut,
    delayedTransition=false,
    waitTime=0)
    annotation (Placement(transformation(extent={{-69,-61},{-61,-53}})));
  MakeProduct makeProduct(
    nIn=1,
    nSuspend=1,
    limit1=limit1,
    limit2=limit2,
    waitTime=waitTime,
    initialStep=true,
    minLevel=minLevel,
    nResume=1)
    annotation (Placement(transformation(extent={{20,-20},{60,20}})));
  ShutStep shutStep(
    nSuspend=1,
    nOut=1,
    initialStep=false,
    nIn=1,
    nResume=1,
    minLevel=minLevel)
    annotation (Placement(transformation(extent={{-40,-85},{0,-45}})));
  SignalBus bus annotation (Placement(transformation(
        extent={{-20,20},{20,-20}},
        rotation=90,
        origin={100,0})));
  Modelica.Blocks.Sources.BooleanExpression setValve1(y=makeProduct.valve1
         and bus.level1 <= 1.01*limit1)
    annotation (Placement(transformation(extent={{-52,68},{41,89}})));
  Modelica.Blocks.Sources.BooleanExpression setValve2(y=(makeProduct.valve2
         or shutStep.valve2) and bus.level2 <= 1.01*limit2)
    annotation (Placement(transformation(extent={{-53,51},{69,71}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or setValve3(nu=2)
    annotation (Placement(transformation(extent={{51,-62},{63,-50}})));
  Modelica_StateGraph2_udf.Step waitShut(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-22},{-16,-14}})));
  Modelica_StateGraph2_udf.Transition T1(delayedTransition=true, waitTime=0.01)
    annotation (Placement(transformation(extent={{-24,-35},{-16,-27}})));
  Modelica_StateGraph2_udf.Step waitStop(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{2,-25},{10,-17}})));
  Modelica_StateGraph2_udf.Transition T2(delayedTransition=true, waitTime=0.01)
    annotation (Placement(transformation(extent={{2,-37},{10,-29}})));
  Modelica_StateGraph2_udf.Step waitShut2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-69,-76},{-61,-68}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=0.01)
    annotation (Placement(transformation(extent={{-69,-89},{-61,-81}})));
equation

  connect(T8.outPort, stopStep1.inPort[1]) annotation (Line(
      points={{-19,18},{-19,12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopStep1.outPort[1], T9.inPort) annotation (Line(
      points={{-20,3.4},{-20,-1}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T10.inPort, stopStep1.outPort[2]) annotation (Line(
      points={{6,-3},{6,0},{0.510128,0},{-12.4922,0},{-18,0},{-18,3.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(T14.outPort, stopStep2.inPort[1]) annotation (Line(
      points={{-65,-36},{-65,-39},{-65,-41}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopStep2.outPort[1], T15.inPort) annotation (Line(
      points={{-65,-49.6},{-65,-53}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(makeProduct.suspend[1], T8.inPort) annotation (Line(
      points={{19.2,12},{10,12},{10,21.9873},{10,33},{-0.494685,33},{-11.9766,
          33},{-19,33},{-19,27}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutStep.suspend[1], T14.inPort) annotation (Line(
      points={{-40.8,-53},{-46,-53},{-46,-41.2529},{-46,-27},{-46,-20},
          {-55.9824,-20},{-65,-20},{-65,-27}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(shutStep.outPort[1], T12.inPort) annotation (Line(
      points={{-19.9,-85.7},{-20,-92},{-26,-98},{-66,-98},{-75,-95},{-76,
          -86},{-76,-2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T12.outPort, makeProduct.inPort[1]) annotation (Line(
      points={{-76,7},{-76,7},{-76,27},{-76,43},{-57,43},{21,43},{40,42},
          {40,20}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(T9.outPort, waitShut.inPort[1]) annotation (Line(
      points={{-20,-10},{-20,-14}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(waitShut.outPort[1], T1.inPort) annotation (Line(
      points={{-20,-22.6},{-20,-27}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T1.outPort, shutStep.inPort[1]) annotation (Line(
      points={{-20,-36},{-20,-45}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T10.outPort, waitStop.inPort[1]) annotation (Line(
      points={{6,-12},{6,-17}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(waitStop.outPort[1], T2.inPort) annotation (Line(
      points={{6,-25.6},{6,-29}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T2.outPort, makeProduct.resume[1]) annotation (Line(
      points={{6,-38},{6,-41},{16,-41},{16,-35.3672},{16,-14.6621},{16,
          -12},{19.95,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T15.outPort, waitShut2.inPort[1]) annotation (Line(
      points={{-65,-62},{-65,-68},{-65,-68}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(waitShut2.outPort[1], T3.inPort) annotation (Line(
      points={{-65,-76.6},{-65,-81},{-65,-81}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, shutStep.resume[1]) annotation (Line(
      points={{-65,-90},{-65,-90},{-65,-95},{-60,-95},{-46,-95},{-46,-90},
          {-47,-76},{-40.05,-77}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(makeProduct.valve3, setValve3.u[1]) annotation (Line(
      points={{61,6},{77,6},{77,-30},{40,-30},{40,-55},{51,-55},{51,-53.9}},
      color={255,0,255},
      smooth=Smooth.None));

  connect(shutStep.valve3, setValve3.u[2]) annotation (Line(
      points={{1,-57.2},{20,-57},{51,-57},{51,-58.1}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(setValve3.y, bus.valve3) annotation (Line(
      points={{64.2,-56},{96,-56},{96,-5},{100,-5},{100,0}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(setValve1.y, bus.valve1) annotation (Line(
      points={{45.65,78.5},{100,78.5},{100,0}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(setValve2.y, bus.valve2) annotation (Line(
      points={{75.1,61},{96,61},{96,3},{100,3},{100,0}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(shutStep.bus, bus) annotation (Line(
      points={{0,-65},{0,-65},{101,-65},{101,0},{100,0}},
      color={255,128,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(makeProduct.bus, bus) annotation (Line(
      points={{60,0},{100,0}},
      color={255,128,0},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,120}},
        grid={1,1}), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,120}},
        grid={1,1}), graphics={Text(
                    extent={{-33,18},{31,-32}},
                    lineColor={0,0,255},
                    textString="2")}));
end TankController2;
