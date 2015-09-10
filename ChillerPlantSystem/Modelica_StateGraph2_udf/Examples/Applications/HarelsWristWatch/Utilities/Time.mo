within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities;
model Time

  SignalBus signalBus annotation (Placement(transformation(extent={{-98,
            -14},{-58,26}}), iconTransformation(extent={{-26,-124},{14,
            -84}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd clock(use_reset=true,
      use_set=true)
    annotation (Placement(transformation(extent={{-40,74},{-28,86}})));
  Modelica.Blocks.Sources.IntegerConstant time_scale(k=1)
    annotation (Placement(transformation(extent={{-94,70},{-74,90}})));
  Modelica.Blocks.Sources.SampleTrigger time_update_frequency(period=1)
    annotation (Placement(transformation(extent={{-100,40},{-80,60}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch time_to_display(
    nu=4,
    use_pre_as_default=false,
    expr={clock_time,update_time,alarm1_time,alarm2_time})
    annotation (Placement(transformation(extent={{52,-10},{92,10}})));
protected
  Modelica.Blocks.Interfaces.IntegerOutput update_time
    annotation (Placement(transformation(extent={{2,-4},{22,16}})));
  Modelica.Blocks.Interfaces.IntegerOutput alarm1_time
    annotation (Placement(transformation(extent={{2,-24},{22,-4}})));
  Modelica.Blocks.Interfaces.IntegerOutput alarm2_time
    annotation (Placement(transformation(extent={{2,-44},{22,-24}})));
  Modelica.Blocks.Interfaces.IntegerOutput clock_time
    annotation (Placement(transformation(extent={{2,16},{22,36}})));
protected
  SignalBus bus_node annotation (Placement(transformation(extent={{6,-74},
            {26,-54}}), iconTransformation(extent={{-26,-124},{14,-84}})));
public
  Modelica.Blocks.Interfaces.IntegerOutput y
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.And and1(nu=2) annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={-32,42})));
  Modelica.Blocks.Logical.Pre pre1
    annotation (Placement(transformation(extent={{-56,24},{-44,36}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or1(nu=2) annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={-30,60})));
public
  Modelica.Blocks.Sources.BooleanExpression T_hits_T1(y=abs(mod(
        clock_time, 3600*24) - alarm1_time) == 0) annotation (Placement(
        transformation(extent={{-100,-80},{-20,-60}})));
public
  Modelica.Blocks.Sources.BooleanExpression T_hits_T2(y=abs(mod(
        clock_time, 3600*24) - alarm2_time) == 0) annotation (Placement(
        transformation(extent={{-100,-100},{-20,-80}})));
public
  Modelica.Blocks.Sources.BooleanExpression T_IS_WHOLE_HOUR(y=mod(
        clock_time, 3600) == 0) annotation (Placement(transformation(
        extent={{22,-11},{-28,9}},
        rotation=0,
        origin={68,-79})));
equation

  connect(clock.u, time_scale.y) annotation (Line(
      points={{-41.8,80},{-41.8,80},{-73,80}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(time_update_frequency.y, clock.trigger) annotation (Line(
      points={{-79,50},{-79,50},{-37.6,50},{-37.6,72.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update_time, signalBus.update_time) annotation (Line(
      points={{12,6},{12,6},{-15.389,6},{-78,6}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(clock_time, clock.y) annotation (Line(
      points={{12,26},{-12,26},{-12,47.1465},{-12,71.8508},{-12,80},{-26.8,
          80}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(alarm1_time, signalBus.T1) annotation (Line(
      points={{12,-14},{-10,-14},{-78,-14},{-78,6}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(alarm2_time, signalBus.T2) annotation (Line(
      points={{12,-34},{12,-34},{-4,-34},{-78,-34},{-78,6}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(time_to_display.u[1], bus_node.time_active) annotation (Line(
      points={{52,2.25},{52,2},{36,2},{36,-15.8535},{36,-43.7352},{36,-64},
          {16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_to_display.u[2], bus_node.show_time) annotation (Line(
      points={{52,0.75},{41,0.75},{41,-13.7302},{41,-43.7252},{41,-64},
          {16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_to_display.u[3], bus_node.in_alarm1) annotation (Line(
      points={{52,-0.75},{44,-1},{44,-19.9492},{44,-40.641},{44,-64},{
          16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_to_display.u[4], bus_node.in_alarm2) annotation (Line(
      points={{52,-2.25},{52,-2},{50,-2},{50,-13.0127},{50,-39.6663},{
          50,-65},{16,-65},{16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(bus_node, signalBus) annotation (Line(
      points={{16,-64},{16,-50},{-1.53198,-50},{-59.75,-50},{-80,-50},{
          -80,-27.1406},{-80,6},{-78,6}},
      color={255,255,0},
      smooth=Smooth.Bezier));
  connect(time_to_display.y, y) annotation (Line(
      points={{93,0},{110,0}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(update_time, clock.set) annotation (Line(
      points={{12,6},{36,6},{36,28.1165},{36,75.2578},{36,96},{14.2875,
          96},{-19.3578,96},{-32.32,96},{-32.32,85.88}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(pre1.u, signalBus.update_active) annotation (Line(
      points={{-57.2,30},{-78,30},{-78,6},{-78,6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(pre1.y, and1.u[1]) annotation (Line(
      points={{-43.4,30},{-34.1,30},{-34.1,36}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.u[2], signalBus.time_active) annotation (Line(
      points={{-29.9,36},{-30,36},{-30,10},{-78,10},{-78,6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.y, clock.reset) annotation (Line(
      points={{-30,67.2},{-30,72.8},{-30.4,72.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, or1.u[1]) annotation (Line(
      points={{-32,49.2},{-32,54},{-32.1,54}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u[2], signalBus.dead_active) annotation (Line(
      points={{-27.9,54},{-27.9,50},{-20,50},{-20,41.3047},{-20,8},{-72,
          8},{-72,6},{-78,6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(clock_time, bus_node.main_time) annotation (Line(
      points={{12,26},{30,26},{30,12.5527},{30,-47.53},{30,-60},{20,-60},
          {20,-64},{16,-64}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(T_hits_T1.y, bus_node.T_hits_T1) annotation (Line(
      points={{-16,-70},{-16,-70},{7.5,-70},{16,-70},{16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(T_hits_T2.y, bus_node.T_hits_T2) annotation (Line(
      points={{-16,-90},{-4.01367,-90},{18,-90},{18,-64},{16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(T_IS_WHOLE_HOUR.y, bus_node.T_is_whole_hour) annotation (Line(
      points={{37.5,-80},{24,-80},{24,-64},{16,-64}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (
    Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        initialScale=0.1), graphics={Rectangle(
                    extent={{100,100},{-100,-100}},
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillColor={127,191,255},
                    fillPattern=FillPattern.Solid),Ellipse(
                    extent={{-98,80},{62,-80}},
                    lineColor={0,0,0},
                    fillColor={135,135,135},
                    fillPattern=FillPattern.Solid),Ellipse(
                    extent={{-94,76},{66,-84}},
                    lineColor={0,0,0},
                    fillColor={255,255,255},
                    fillPattern=FillPattern.Solid),Line(points={{-14,-4},
          {16,58}}, color={0,0,0}),Line(points={{-14,-4},{20,-28}},
          color={0,0,0})}),
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        initialScale=0.1), graphics),
    Documentation(info="<html>
<p>Outputs a time integer signal depending on what mode the watch is currently in. As all four time signals, current time, time setting, alarm1 setting and alarm2 setting should be decoded in the exact same fashion, the output of Time is handled the same in DisplayDecoder. This model also contains the actual clock that makes one tick every second. when a user sets a new time, the discrete state in TriggeredAdd will be reset and the output will re-set to that value and continue ticking.</p>
</html>"));
end Time;
