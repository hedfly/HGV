within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model SimpleInfiniteLoop
  "A wrong Modelica_StateGraph2 that has an infinite loop (translates with an error)"
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
  Modelica_StateGraph2_udf.Step step3(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-38},{-16,-30}})));
  Modelica_StateGraph2_udf.Transition T3
    annotation (Placement(transformation(extent={{2,4},{10,-4}})));

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
      points={{-20,-38.6},{-20,-50},{-4,-50},{6,-50},{6,-40.3418},{6,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step1.inPort[1]) annotation (Line(
      points={{6,5},{6,38},{6,50},{-6,50},{-20,50},{-20,38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
end SimpleInfiniteLoop;
