within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities;
block AlarmTrigger

  Modelica.Blocks.Interfaces.BooleanInput alarm1_enabled annotation (
      Placement(transformation(extent={{-140,60},{-100,100}}),
        iconTransformation(extent={{-180,110},{-140,150}})));
  Modelica.Blocks.Interfaces.BooleanInput alarm2_enabled annotation (
      Placement(transformation(extent={{-140,10},{-100,50}}),
        iconTransformation(extent={{-180,10},{-140,50}})));
  Modelica.Blocks.Interfaces.IntegerInput T1 annotation (Placement(
        transformation(extent={{-140,-50},{-100,-10}}),
        iconTransformation(extent={{-180,-100},{-140,-60}})));
  Modelica.Blocks.Interfaces.IntegerInput T2 annotation (Placement(
        transformation(extent={{-140,-100},{-100,-60}}),
        iconTransformation(extent={{-180,-150},{-140,-110}})));
  Modelica.Blocks.Interfaces.BooleanOutput P1 annotation (Placement(
        transformation(extent={{100,70},{120,90}}), iconTransformation(
          extent={{140,90},{160,110}})));
  Modelica.Blocks.Interfaces.BooleanOutput P2 annotation (Placement(
        transformation(extent={{100,30},{120,50}}), iconTransformation(
          extent={{140,30},{160,50}})));
  Modelica.Blocks.Interfaces.BooleanOutput P annotation (Placement(
        transformation(extent={{100,-10},{120,10}}), iconTransformation(
          extent={{140,-28},{160,-8}})));
  Modelica.Blocks.Interfaces.BooleanOutput alarms_beep annotation (
      Placement(transformation(extent={{100,-70},{120,-50}}),
        iconTransformation(extent={{140,-108},{160,-88}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or1(nu=2)
    annotation (Placement(transformation(extent={{-20,50},{0,70}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.And and1(nu=3)
    annotation (Placement(transformation(extent={{24,70},{44,90}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.And and3(nu=4)
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.Sum sum(k={1,-1}, nu=2)
    annotation (Placement(transformation(extent={{-84,-70},{-64,-50}})));
  Modelica.Blocks.Math.IntegerToBoolean integerToBoolean annotation (
      Placement(transformation(extent={{-54,-70},{-34,-50}})));
  Modelica.Blocks.Logical.Not not1
    annotation (Placement(transformation(extent={{-54,54},{-34,74}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or2(nu=1)
    annotation (Placement(transformation(extent={{10,10},{30,30}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.And and2(nu=3)
    annotation (Placement(transformation(extent={{46,30},{66,50}})));
  Modelica.Blocks.Logical.Not not2
    annotation (Placement(transformation(extent={{-18,10},{2,30}})));
  Modelica.Blocks.Logical.Not not3
    annotation (Placement(transformation(extent={{2,-70},{22,-50}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or3(nu=3)
    annotation (Placement(transformation(extent={{66,-70},{86,-50}})));
  Modelica.Blocks.Interfaces.BooleanInput T_hits_T1 annotation (
      Placement(transformation(extent={{-140,34},{-100,74}}),
        iconTransformation(extent={{-180,60},{-140,100}})));
  Modelica.Blocks.Interfaces.BooleanInput T_hits_T2 annotation (
      Placement(transformation(extent={{-140,-20},{-100,20}}),
        iconTransformation(extent={{-180,-40},{-140,0}})));
equation
  connect(integerToBoolean.u, sum.y) annotation (Line(
      points={{-56,-60},{-56,-60},{-62.3,-60}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(alarm2_enabled, not1.u) annotation (Line(
      points={{-120,30},{-80,30},{-80,48.627},{-80,64},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not1.y, or1.u[1]) annotation (Line(
      points={{-33,64},{-33,64},{-20,64},{-20,63.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, P1) annotation (Line(
      points={{46,80},{110,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, P2) annotation (Line(
      points={{68,40},{110,40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm2_enabled, and2.u[1]) annotation (Line(
      points={{-120,30},{-42.0547,30},{-32,30},{-32,36.1304},{-32,43.5},
          {-25.6016,43.5},{46,43.5},{46,44.6667}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not2.u, alarm1_enabled) annotation (Line(
      points={{-20,20},{-20,20},{-40.8301,20},{-70,20},{-70,50},{-70,80},
          {-94,80},{-120,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not2.y, or2.u[1]) annotation (Line(
      points={{3,20},{3,20},{10,20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not3.u, integerToBoolean.y) annotation (Line(
      points={{0,-60},{-14,-60},{-33,-60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm1_enabled, and1.u[1]) annotation (Line(
      points={{-120,80},{-120,80},{-76.1523,80},{-70,80},{-70,84},{-64.4102,
          84},{24,84},{24,84.6667}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.y, and1.u[2]) annotation (Line(
      points={{2,60},{14,60},{14,69.3135},{14,80},{24,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(integerToBoolean.y, or1.u[2]) annotation (Line(
      points={{-33,-60},{-24,-60},{-24,-48.0781},{-24,-4},{-24,8.0518},
          {-24,47.4633},{-24,56.5},{-20,56.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm1_enabled, and3.u[1]) annotation (Line(
      points={{-120,80},{-102,80},{-92.7813,80},{-70,80},{-70,53.6628},
          {-70,25.5762},{-70,4.66667},{-48.1641,4.66667},{60,4.66667},{
          60,5.25}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(alarm2_enabled, and3.u[2]) annotation (Line(
      points={{-120,30},{-102,30},{-80,30},{-80,16.1133},{-80,
          2.22045e-016},{-64.2773,2.22045e-016},{60,2.22045e-016},{60,
          1.75}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not3.y, and3.u[3]) annotation (Line(
      points={{23,-60},{38,-60},{38,-41.9626},{38,-22.2285},{38,-1.75},
          {60,-1.75}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(or3.y, alarms_beep) annotation (Line(
      points={{88,-60},{110,-60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or3.u[1], and1.y) annotation (Line(
      points={{66,-55.3333},{62,-55.3333},{62,-48},{62,-38},{76.9414,-38},
          {96,-38},{96,-18.6406},{96,59.0967},{96,80},{76,80},{46,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(or3.u[2], and2.y) annotation (Line(
      points={{66,-60},{60,-60},{60,-48.0703},{60,-36},{76,-36},{94,-36},
          {94,-15.612},{94,23.8203},{94,40},{68,40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or3.u[3], and3.y) annotation (Line(
      points={{66,-64.6667},{58,-64.6667},{58,-48.9076},{58,-34},{78,-34},
          {92,-34},{92,-8.34375},{92,0},{82,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(P, and3.y) annotation (Line(
      points={{110,0},{96,0},{82,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(T1, sum.u[1]) annotation (Line(
      points={{-120,-30},{-110,-30},{-92,-30},{-92,-41.1021},{-92,-56.5},
          {-84,-56.5}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(T2, sum.u[2]) annotation (Line(
      points={{-120,-80},{-108,-80},{-92,-80},{-92,-72.2334},{-92,-63.5},
          {-84,-63.5}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(T_hits_T1, and1.u[3]) annotation (Line(
      points={{-120,54},{-104,54},{-64.2031,54},{-56,54},{-56,46},{-47.2623,
          46},{-3.67578,46},{20,46},{20,66.6536},{20,75.3333},{24,
          75.3333}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(or2.y, and2.u[2]) annotation (Line(
      points={{32,20},{36,20},{36,25.2765},{36,28.8867},{36,40},{46,40}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(T_hits_T2, and2.u[3]) annotation (Line(
      points={{-120,0},{-96.9688,0},{-88,0},{-88,-6.09766},{-88,-14},{-80.0117,
          -14},{3.5332,-14},{42,-14},{42,28.2995},{42,35.3333},{46,
          35.3333}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(T_hits_T1, and3.u[4]) annotation (Line(
      points={{-120,54},{-108,54},{-77.5313,54},{-56,54},{-56,27.5574},
          {-56,15.0304},{-56,-5.25},{-35.8359,-5.25},{60,-5.25}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-140,-140},
            {140,140}}), graphics={Rectangle(
                    extent={{-140,140},{140,-140}},
                    lineColor={95,95,95},
                    fillColor={175,175,175},
                    fillPattern=FillPattern.Solid),Text(
                    extent={{0,80},{0,20}},
                    lineColor={95,95,95},
                    textString="Alarm"),Text(
                    extent={{0,0},{0,-60}},
                    lineColor={95,95,95},
                    textString="Trigger")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics),
    Documentation(info="<html>
<p>Logic for deciding whether any alarm should sound. The logic is defined in D. Harel&apos;s paper (see reference on package level) as:</p>
<p><br/>T1 is the time set when alarm1 will sound.</p>
<p>T2 is the time set when alarm1 will sound.</p>
<p>P1 = alarm1 enabled <b>and</b> (alarm2 disabled <b>or</b> <b>not</b> T1 == T2)</p>
<p>P2 = alarm2 enabled <b>and</b> (alarm1 disabled <b>or</b> <b>not</b> T1 == T2)</p>
<p>P = alarm1 enabled <b>and</b> alarm2 enabled <b>and</b> T1 == T2</p>
<p><br/>Alarm 1 will beep when time becomes equal to T1 and P1 is true.</p>
<p>Alarm 2 will beep when time becomes equal to T2 and P2 is true.</p>
<p>Both alarms will beep when time becomes equal to T1 and P is true.</p>
</html>"));
end AlarmTrigger;
