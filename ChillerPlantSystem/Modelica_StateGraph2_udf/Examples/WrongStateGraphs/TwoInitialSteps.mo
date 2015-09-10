within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model TwoInitialSteps
  "A wrong Modelica_StateGraph2 that has two initial steps (gives an error during initialization)"
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step step1(
    initialStep=true,
    nOut=1,
    nIn=1) annotation (Placement(transformation(extent={{-24,30},{-16,38}})));
  Modelica_StateGraph2_udf.Transition T1
    annotation (Placement(transformation(extent={{-24,12},{-16,20}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
  Modelica_StateGraph2_udf.Transition T2
    annotation (Placement(transformation(extent={{-24,-20},{-16,-12}})));
  Modelica_StateGraph2_udf.Step step3(
    nIn=1,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-24,-38},{-16,-30}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{16,4},{24,-4}})));
equation
  connect(step1.outPort[1], T1.inPort) annotation (Line(
      points={{-20,29.4},{-20,20}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step2.inPort[1]) annotation (Line(
      points={{-20,11},{-20,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T2.inPort) annotation (Line(
      points={{-20,-4.6},{-20,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step3.inPort[1]) annotation (Line(
      points={{-20,-21},{-20,-30}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T3.inPort) annotation (Line(
      points={{-20,-38.6},{-20,-50},{-11.126,-50},{5.74219,-50},{20,-50},{
          20,-35.5801},{20,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{20,5},{20,35.9814},{20,50},{4.91268,50},{-7.53906,50},{-20,
          50},{-20,38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end TwoInitialSteps;
