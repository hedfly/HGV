within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.BasicStateGraphs;
model Actions1 "Demonstrates MultiSwitch and ShowValue"
     extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Step initialStep(
    nIn=1,
    nOut=1,
    initialStep=true,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-64,64},{-56,72}})));
  Modelica_StateGraph2_udf.Transition T1(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-64,46},{-56,54}})));
  Modelica_StateGraph2_udf.Step step2(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-64,30},{-56,38}})));
  Modelica_StateGraph2_udf.Transition T2(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-64,12},{-56,20}})));
  Modelica_StateGraph2_udf.Step step3(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-64,-6},{-56,2}})));
  Modelica_StateGraph2_udf.Transition T3(delayedTransition=true, waitTime=1)
    annotation (Placement(transformation(extent={{-94,18},{-86,10}})));
  Modelica_StateGraph2_udf.Step step4(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-64,-42},{-56,-34}})));
  Modelica_StateGraph2_udf.Transition T4(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-64,-24},{-56,-16}})));
  Modelica_StateGraph2_udf.Transition T5(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=1)
    annotation (Placement(transformation(extent={{-64,-60},{-56,-52}})));
  Modelica_StateGraph2_udf.Step step5(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-64,-78},{-56,-70}})));
Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or1(nu=2)
    annotation (Placement(transformation(extent={{86,38},{98,26}})));
Modelica_StateGraph2_udf.Blocks.MathReal.MultiSwitch multiSwitch1(nu=2, expr={
        2.2,4.4})
    annotation (Placement(transformation(extent={{16,62},{56,82}})));

Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch multiSwitch2(nu=2, expr=
       {2,4}) annotation (Placement(transformation(extent={{-1,-46},{39,-26}})));

Modelica_StateGraph2_udf.Blocks.MathBoolean.MultiSwitch multiSwitch3(nu=2, expr=
       {true,true})
    annotation (Placement(transformation(extent={{-1,-7},{39,13}})));
Modelica_StateGraph2_udf.Blocks.MathReal.ShowValue showValue1(use_numberPort=
        false, number=multiSwitch1.y)
    annotation (Placement(transformation(extent={{68,46},{88,66}})));
Modelica_StateGraph2_udf.Blocks.MathReal.ShowValue showValue
    annotation (Placement(transformation(extent={{68,62},{88,82}})));
Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue2(use_activePort=
       false, active=multiSwitch3.y)
    annotation (Placement(transformation(extent={{50,-18},{70,2}})));

Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue3
    annotation (Placement(transformation(extent={{50,-7},{70,13}})));
Modelica_StateGraph2_udf.Blocks.MathInteger.ShowValue showValue4
    annotation (Placement(transformation(extent={{48,-46},{68,-26}})));
Modelica_StateGraph2_udf.Blocks.MathInteger.ShowValue showValue5(use_numberPort=
       false, number=multiSwitch2.y)
    annotation (Placement(transformation(extent={{48,-60},{68,-40}})));

equation
connect(initialStep.outPort[1],T1. inPort)
                                       annotation (Line(
      points={{-60,63.4},{-60,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort,step2. inPort[1]) annotation (Line(
      points={{-60,45},{-60,38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1],T2. inPort) annotation (Line(
      points={{-60,29.4},{-60,20}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort,step3. inPort[1]) annotation (Line(
      points={{-60,11},{-60,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
connect(T3.outPort,initialStep. inPort[1])
                                       annotation (Line(
      points={{-90,19},{-90,68.6221},{-90,80},{-76.892,80},{-69.7852,80},
        {-60,80},{-60,72}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1],T4. inPort) annotation (Line(
      points={{-60,-6.6},{-60,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T4.outPort,step4. inPort[1]) annotation (Line(
      points={{-60,-25},{-60,-34}},
      color={0,0,0},
      smooth=Smooth.Bezier));

connect(step4.outPort[1], T5.inPort) annotation (Line(
    points={{-60,-42.6},{-60,-52}},
    color={0,0,0},
    smooth=Smooth.Bezier));

connect(T5.outPort, step5.inPort[1]) annotation (Line(
    points={{-60,-61},{-60,-70}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step5.outPort[1], T3.inPort) annotation (Line(
    points={{-60,-78.6},{-60,-86},{-69.9902,-86},{-75.9892,-86},{-90,-86},
        {-90,-74},{-90,10}},
    color={0,0,0},
    smooth=Smooth.Bezier));
connect(step5.activePort, or1.u[1]) annotation (Line(
    points={{-55.28,-74},{-55.28,-74},{52.4113,-74},{74,-74},{74,-51.1484},
        {74,16},{74,30},{86,30},{86,29.9}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(initialStep.activePort, multiSwitch1.u[1]) annotation (Line(
    points={{-55.28,68},{-28,68},{-20,68},{-20,73.5},{-13.2148,73.5},{16,
        73.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(step2.activePort, multiSwitch1.u[2]) annotation (Line(
    points={{-55.28,34},{-40,34},{-20,34},{-20,53.6045},{-20,70.5},{-0.488281,
        70.5},{16,70.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(step3.activePort, multiSwitch2.u[1]) annotation (Line(
    points={{-55.28,-2},{-34,-2},{-10,-2},{-10,-24},{-10,-34.5},{-1,-34.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));

connect(step5.activePort, multiSwitch2.u[2]) annotation (Line(
    points={{-55.28,-74},{-38,-74},{-12,-74},{-12,-48.8706},{-12,-37.5},{
        -1,-37.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(step2.activePort, multiSwitch3.u[1]) annotation (Line(
    points={{-55.28,34},{-40,34},{-24,34},{-24,19.3364},{-24,4.5},{-1,4.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));

connect(step3.activePort, multiSwitch3.u[2]) annotation (Line(
    points={{-55.28,-2},{-21.3772,-2},{-14,-2},{-14,1.5},{-8.18555,1.5},{
        -1,1.5}},
    color={255,0,255},
    smooth=Smooth.Bezier));
connect(multiSwitch1.y, showValue.numberPort) annotation (Line(
    points={{57,72},{66.5,72}},
    color={0,0,127},
    smooth=Smooth.Bezier));
connect(multiSwitch3.y, showValue3.activePort) annotation (Line(
    points={{40,3},{48.5,3}},
    color={255,0,255},
    smooth=Smooth.None));
connect(multiSwitch2.y, showValue4.numberPort) annotation (Line(
    points={{40,-36},{46.5,-36}},
    color={255,127,0},
    smooth=Smooth.None));
connect(initialStep.activePort, or1.u[2]) annotation (Line(
    points={{-55.28,68},{-4.32594,68},{16,68},{16,51.6128},{16,34.1},{
        33.1582,34.1},{86,34.1}},
    color={255,0,255},
    smooth=Smooth.Bezier));
annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}), graphics), experiment(StopTime=10));
end Actions1;
