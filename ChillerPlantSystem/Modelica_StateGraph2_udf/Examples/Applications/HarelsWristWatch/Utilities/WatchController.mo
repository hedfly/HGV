within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities;
model WatchController
  import Modelica_StateGraph2 =
    ChillerPlantSystem.RickoverPlant.Modelica_StateGraph2_udf;
  Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.Time
    Time
    annotation (Placement(transformation(extent={{-24,-46},{-4,-26}})));
  DisplayDecoder displayController
    annotation (Placement(transformation(extent={{34,-22},{74,18}})));
public
  Modelica_StateGraph2.Blocks.MathBoolean.Or time_mode(nu=5)
    annotation (Placement(transformation(extent={{-18,10},{-6,22}})));
public
  Modelica_StateGraph2.Blocks.MathBoolean.Or date_mode(nu=2)
    annotation (Placement(transformation(extent={{0,2},{12,14}})));
public
  SignalBus display_node annotation (Placement(transformation(extent={{
            -76,44},{-36,84}}), iconTransformation(extent={{-32,-120},{
            8,-80}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit1
    annotation (Placement(transformation(extent={{100,70},{120,90}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit2
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit3
    annotation (Placement(transformation(extent={{100,10},{120,30}})));
  Modelica.Blocks.Interfaces.IntegerOutput large_digit4
    annotation (Placement(transformation(extent={{100,-20},{120,0}})));
  Modelica.Blocks.Interfaces.IntegerOutput small_digit annotation (
      Placement(transformation(extent={{100,-50},{120,-30}})));
  Modelica.Blocks.Interfaces.IntegerOutput text_digit annotation (
      Placement(transformation(extent={{100,-80},{120,-60}})));
equation
  connect(time_mode.u[1], display_node.time_active) annotation (Line(
      points={{-18,19.36},{-44,19.36},{-50,40},{-50,62},{-56,62},{-56,
          64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_mode.u[2], display_node.show_time) annotation (Line(
      points={{-18,17.68},{-52,17.68},{-52,64},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_mode.u[3], display_node.in_alarm1) annotation (Line(
      points={{-18,16},{-40,16},{-52,22},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_mode.u[4], display_node.in_alarm2) annotation (Line(
      points={{-18,14.32},{-32,14},{-54,20},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_mode.u[5], display_node.in_chime) annotation (Line(
      points={{-18,12.64},{-18,14},{-56,14},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(displayController.time_mode, time_mode.y) annotation (Line(
      points={{31.5,15.5},{0,15.5},{0,16},{-4.8,16}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(displayController.year_mode, display_node.show_year)
    annotation (Line(
      points={{31.5,0.5},{31.5,0.5},{-30.1553,0.5},{-60,0.5},{-60,
          25.3511},{-60,64},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Time.y, displayController.time_signal) annotation (Line(
      points={{-3,-36},{-3,-36},{23.701,-36},{35.25,-36},{35.25,-24.5}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(date_mode.y, displayController.date_mode) annotation (Line(
      points={{13.2,8},{13.2,8},{31.5,8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode.u[1], display_node.date_active) annotation (Line(
      points={{4.44089e-016,10.1},{4.44089e-016,10.1},{-35.875,10.1},{-56,
          10.1},{-56,28},{-56,46},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_mode.u[2], display_node.show_date) annotation (Line(
      points={{4.44089e-016,5.9},{-30,6},{-58,6},{-58,27.6934},{-58,64},
          {-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(displayController.stopwatch_mode, display_node.stopwatch_mode)
    annotation (Line(
      points={{31.5,-7},{-24.9619,-6},{-64,-6},{-64,27.0078},{-64,59},{
          -56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Time.signalBus, display_node) annotation (Line(
      points={{-14.6,-46.4},{-14.6,-50},{-22.0791,-50},{-66,-50},{-66,-1.54688},
          {-66,49.6506},{-66,62},{-56,62},{-56,64}},
      color={255,204,51},
      smooth=Smooth.Bezier,
      thickness=0.5));
  connect(displayController.mode_signal, display_node.mode_setting)
    annotation (Line(
      points={{42.75,-24.5},{42.75,-42},{42,-54},{30.0781,-54},{-48.4011,
          -54},{-70,-54},{-70,-31.875},{-70,46.3043},{-70,64},{-56,64}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(displayController.date_signal, display_node.date_setting)
    annotation (Line(
      points={{50.25,-24.5},{50,-42},{50,-58},{34.3122,-58},{-47.3592,-58},
          {-76,-58},{-76,-33.3652},{-76,45.3853},{-76,64},{-56,64}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(displayController.year_signal, display_node.year_setting)
    annotation (Line(
      points={{57.75,-24.5},{57.75,-24.5},{57.75,-64},{37.9612,-64},{-53.2983,
          -64},{-82,-64},{-82,-35.875},{-82,45.0784},{-82,64},{-56,64}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(displayController.stopwatch_signal, display_node.stopwatch_time)
    annotation (Line(
      points={{65.25,-24.5},{65.25,-24.5},{65.25,-70},{31.5417,-70},{0,
          -70},{-54.2266,-70},{-88,-70},{-88,-41.8652},{-88,36.2931},{-88,
          64},{-56,64}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(displayController.day_signal, display_node.day_setting)
    annotation (Line(
      points={{72.75,-24.5},{72.75,-24.5},{72.75,-76},{34.946,-76},{-66,
          -76},{-94,-76},{-94,-50.0234},{-94,32.3763},{-94,64},{-56,64}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(displayController.large_digit_1, large_digit1) annotation (
      Line(
      points={{75.25,13},{80,13},{80,20.8909},{80,59.9785},{80,80},{110,
          80}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(displayController.large_digit_2, large_digit2) annotation (
      Line(
      points={{75.25,8},{82,8},{82,17.2655},{82,29.3691},{82,50},{110,
          50}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(displayController.large_digit_3, large_digit3) annotation (
      Line(
      points={{75.25,3},{84,3},{84,11.8154},{84,20},{94.5371,20},{110,
          20}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(displayController.large_digit_4, large_digit4) annotation (
      Line(
      points={{75.25,-2},{84,-2},{84,-10},{92.0996,-10},{110,-10}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(displayController.small_digit, small_digit) annotation (Line(
      points={{75.25,-7},{82,-7},{82,-16},{82,-25.1406},{82,-40},{
          96.0547,-40},{110,-40}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(displayController.text_digit, text_digit) annotation (Line(
      points={{75.25,-12},{80,-12},{80,-20.2695},{80,-52.0795},{80,-70},
          {96.3477,-70},{110,-70}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(time_mode.u[5], display_node.in_chime) annotation (Line(
      points={{-18,12.64},{-22,12.64},{-22,12},{-56,12},{-56,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics),
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics={Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={95,95,95},
                    fillColor={175,175,175},
                    fillPattern=FillPattern.Solid),Text(
                    extent={{0,60},{0,20}},
                    lineColor={95,95,95},
                    textString="Watch"),Text(
                    extent={{0,0},{0,-40}},
                    lineColor={95,95,95},
                    textString="Controller")}),
    Documentation(info="<html>
<p>The watch controller contains the clock functionality, gathering of stopwatch signals, time settings and modes from different parts of the wristwatch that are gathered, grouped together and finally decoded into outputs to the LED display.</p>
</html>"));
end WatchController;
