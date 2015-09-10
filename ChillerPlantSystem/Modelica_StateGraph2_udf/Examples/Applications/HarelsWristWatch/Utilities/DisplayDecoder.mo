within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities;
block DisplayDecoder

  Modelica.Blocks.Interfaces.IntegerInput time_signal "Raw input signal"
                       annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-100,-120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-150,-180})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit_1 annotation (
      Placement(transformation(extent={{100,70},{120,90}}),
        iconTransformation(extent={{160,110},{180,130}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit_2 annotation (
      Placement(transformation(extent={{100,40},{120,60}}),
        iconTransformation(extent={{160,70},{180,90}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit_3 annotation (
      Placement(transformation(extent={{100,10},{120,30}}),
        iconTransformation(extent={{160,30},{180,50}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit_4 annotation (
      Placement(transformation(extent={{100,-20},{120,0}}),
        iconTransformation(extent={{160,-10},{180,10}})));
  Modelica.Blocks.Interfaces.IntegerOutput small_digit annotation (
      Placement(transformation(extent={{100,-50},{120,-30}}),
        iconTransformation(extent={{160,-50},{180,-30}})));
  Modelica.Blocks.Interfaces.IntegerOutput text_digit annotation (
      Placement(transformation(extent={{100,-80},{120,-60}}),
        iconTransformation(extent={{160,-90},{180,-70}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch digit1_decoder(
    use_pre_as_default=false,
    nu=5,
    expr={div(mod(div(time_signal, 3600), 12), 10),div(mod(div(time_signal,
        3600), 24), 10),div(mod(div(date_signal, 100), 12), 10),div(mod(
        year_signal, 10000), 1000),div(mod(div(div(stopwatch_signal, 100), 60),
        60), 10)})
    annotation (Placement(transformation(extent={{50,70},{90,90}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch digit2_decoder(
    use_pre_as_default=false,
    nu=5,
    expr={mod(mod(div(time_signal, 3600), 12), 10),mod(mod(div(time_signal,
        3600), 24), 10),mod(mod(div(date_signal, 100), 12), 10),div(mod(
        year_signal, 1000), 100),mod(mod(div(div(stopwatch_signal, 100), 60),
        60), 10)})
    annotation (Placement(transformation(extent={{50,40},{90,60}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch digit3_decoder(
    use_pre_as_default=false,
    nu=5,
    expr={div(mod(div(time_signal, 60), 60), 10),div(mod(div(time_signal, 60),
        60), 10),div(mod(mod(date_signal, 100), 30), 10),div(mod(year_signal,
        100), 10),div(mod(div(stopwatch_signal, 100), 60), 10)})
    annotation (Placement(transformation(extent={{50,10},{90,30}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch digit4_decoder(
    use_pre_as_default=false,
    nu=5,
    expr={mod(mod(div(time_signal, 60), 10), 10),mod(mod(div(time_signal, 60),
        10), 10),mod(mod(mod(date_signal, 100), 30), 10),mod(year_signal, 10),
        mod(mod(div(stopwatch_signal, 100), 60), 10)})
    annotation (Placement(transformation(extent={{50,-20},{90,0}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch text_digit_decoder(
    use_pre_as_default=false,
    nu=5,
    expr={if mod(div(time_signal, 3600), 24) < 12 then 8 else 9,-1,day_signal,-1,
        11}) annotation (Placement(transformation(extent={{50,-80},{90,-60}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch small_digit_decoder(
    use_pre_as_default=false,
    nu=5,
    expr={12,24,-1,-1,mod(stopwatch_signal, 100)})
    annotation (Placement(transformation(extent={{50,-50},{90,-30}})));
  Modelica.Blocks.Interfaces.BooleanInput time_mode "Raw input signal"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}}),
        iconTransformation(extent={{-200,120},{-160,160}})));
  Modelica.Blocks.Interfaces.BooleanInput date_mode "Raw input signal"
    annotation (Placement(transformation(extent={{-140,0},{-100,40}}),
        iconTransformation(extent={{-200,60},{-160,100}})));
  Modelica.Blocks.Interfaces.BooleanInput year_mode "Raw input signal"
    annotation (Placement(transformation(extent={{-140,-40},{-100,0}}),
        iconTransformation(extent={{-200,0},{-160,40}})));
  Modelica.Blocks.Interfaces.BooleanInput stopwatch_mode "Raw input signal"
                       annotation (Placement(transformation(extent={{-140,
            -80},{-100,-40}}), iconTransformation(extent={{-200,-60},{-160,
            -20}})));
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{0,78},{20,98}})));
  Modelica.Blocks.Logical.And and2
    annotation (Placement(transformation(extent={{-20,50},{0,70}})));
  Modelica.Blocks.Logical.Not not1
    annotation (Placement(transformation(extent={{-56,54},{-36,74}})));
  Modelica.Blocks.Interfaces.IntegerInput day_signal "Raw input signal"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={100,-120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={150,-180})));
  Modelica.Blocks.Interfaces.IntegerInput date_signal "Raw input signal"
                       annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-20,-120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-30,-180})));
  Modelica.Blocks.Interfaces.IntegerInput year_signal "Raw input signal"
                       annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={20,-120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={30,-180})));
  Modelica.Blocks.Interfaces.IntegerInput stopwatch_signal "Raw input signal"
                       annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={60,-120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={90,-180})));
  Modelica.Blocks.Interfaces.IntegerInput mode_signal "Raw input signal"
                       annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-60,-120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-90,-180})));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y=mod(
        mode_signal, 2) < 0.5)
    annotation (Placement(transformation(extent={{-100,78},{-40,98}})));
equation
  connect(large_digit_1, digit1_decoder.y) annotation (Line(
      points={{110,80},{91,80}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(digit2_decoder.y, large_digit_2) annotation (Line(
      points={{91,50},{110,50}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(digit3_decoder.y, large_digit_3) annotation (Line(
      points={{91,20},{91,20},{110,20}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(digit4_decoder.y, large_digit_4) annotation (Line(
      points={{91,-10},{91,-10},{110,-10}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(small_digit_decoder.y, small_digit) annotation (Line(
      points={{91,-40},{110,-40}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(text_digit_decoder.y, text_digit) annotation (Line(
      points={{91,-70},{110,-70}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(and1.u2, time_mode) annotation (Line(
      points={{-2,80},{-2,80},{-62,80},{-120,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not1.y, and2.u1) annotation (Line(
      points={{-35,64},{-30,64},{-30,60},{-22,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, digit1_decoder.u[1]) annotation (Line(
      points={{21,88},{40,88},{40,82.4},{50,82.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, digit2_decoder.u[1]) annotation (Line(
      points={{21,88},{21,88},{40,88},{40,52.4},{50,52.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, digit3_decoder.u[1]) annotation (Line(
      points={{21,88},{40,88},{40,22.4},{50,22.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, digit4_decoder.u[1]) annotation (Line(
      points={{21,88},{40,88},{40,-7.6},{50,-7.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, small_digit_decoder.u[1]) annotation (Line(
      points={{21,88},{40,88},{40,-37.6},{50,-37.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, text_digit_decoder.u[1]) annotation (Line(
      points={{21,88},{40,88},{40,-67.6},{50,-67.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, digit1_decoder.u[2]) annotation (Line(
      points={{1,60},{30,60},{30,81.2},{50,81.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, digit2_decoder.u[2]) annotation (Line(
      points={{1,60},{30,60},{30,51.2},{50,51.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, digit3_decoder.u[2]) annotation (Line(
      points={{1,60},{1,58},{30,58},{30,21.2},{50,21.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, digit4_decoder.u[2]) annotation (Line(
      points={{1,60},{1,58},{30,58},{30,-8.8},{50,-8.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, small_digit_decoder.u[2]) annotation (Line(
      points={{1,60},{30,60},{30,-38.8},{50,-38.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, text_digit_decoder.u[2]) annotation (Line(
      points={{1,60},{30,60},{30,-68.8},{50,-68.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_mode, and2.u2) annotation (Line(
      points={{-120,80},{-84,80},{-84,52},{-22,52}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode, digit1_decoder.u[3]) annotation (Line(
      points={{-120,20},{20,20},{20,80},{50,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode, digit2_decoder.u[3]) annotation (Line(
      points={{-120,20},{20,20},{20,50},{50,50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode, digit3_decoder.u[3]) annotation (Line(
      points={{-120,20},{22,20},{50,20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode, digit4_decoder.u[3]) annotation (Line(
      points={{-120,20},{20,20},{20,-10},{50,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode, small_digit_decoder.u[3]) annotation (Line(
      points={{-120,20},{-120,20},{20,20},{20,-40},{50,-40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode, text_digit_decoder.u[3]) annotation (Line(
      points={{-120,20},{-120,20},{20,20},{20,-70},{50,-70}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_mode, digit1_decoder.u[4]) annotation (Line(
      points={{-120,-20},{12,-20},{12,78.8},{50,78.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_mode, digit2_decoder.u[4]) annotation (Line(
      points={{-120,-20},{12,-20},{12,48.8},{50,48.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_mode, digit3_decoder.u[4]) annotation (Line(
      points={{-120,-20},{12,-20},{12,18.8},{50,18.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_mode, digit4_decoder.u[4]) annotation (Line(
      points={{-120,-20},{12,-20},{12,-11},{50,-11},{50,-11.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_mode, small_digit_decoder.u[4]) annotation (Line(
      points={{-120,-20},{10,-20},{10,-41.2},{50,-41.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_mode, text_digit_decoder.u[4]) annotation (Line(
      points={{-120,-20},{12,-20},{12,-71.2},{50,-71.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_mode, digit1_decoder.u[5]) annotation (Line(
      points={{-120,-60},{0,-60},{0,77.6},{50,77.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_mode, digit2_decoder.u[5]) annotation (Line(
      points={{-120,-60},{0,-60},{0,47.6},{50,47.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_mode, digit3_decoder.u[5]) annotation (Line(
      points={{-120,-60},{0,-60},{0,17.6},{50,17.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_mode, digit4_decoder.u[5]) annotation (Line(
      points={{-120,-60},{0,-60},{0,-12.4},{50,-12.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_mode, small_digit_decoder.u[5]) annotation (Line(
      points={{-120,-60},{0,-60},{0,-42.4},{50,-42.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(stopwatch_mode, text_digit_decoder.u[5]) annotation (Line(
      points={{-120,-60},{0,-60},{0,-72.4},{50,-72.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(booleanExpression.y, and1.u1) annotation (Line(
      points={{-37,88},{-2,88}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not1.u, booleanExpression.y) annotation (Line(
      points={{-58,64},{-64.4063,64},{-74,64},{-74,71.1504},{-74,78},{-63.9765,
          78},{-39.3242,78},{-30,78},{-30,83.2539},{-30,88},{-37,88}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-160,-160},
            {160,160}}), graphics={Rectangle(
                    extent={{-160,160},{160,-160}},
                    lineColor={95,95,95},
                    fillColor={175,175,175},
                    fillPattern=FillPattern.Solid),Text(
                    extent={{-4,110},{-4,32}},
                    lineColor={95,95,95},
                    textString="Display"),Text(
                    extent={{-2,6},{-2,-72}},
                    lineColor={95,95,95},
                    textString="Decoder")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics),
    Documentation(info="<html>
<p>Decodes a number of integer signals (input at the bottom) into six digits to be displayed on a LED display according to definition in the WatchDisplay. Depending on the selected mode, the signals are masked in order to show the chosen entity correctly.</p>
</html>"));
end DisplayDecoder;
