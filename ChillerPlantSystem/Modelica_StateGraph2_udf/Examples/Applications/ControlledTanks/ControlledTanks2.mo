within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks;
model ControlledTanks2
  extends Internal.PartialControlledTank;
  Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource start(reset={
        stop.on,shut.on}, buttonTimeTable={20,280}) annotation (Placement(
        transformation(extent={{-80,20},{-60,40}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource stop(reset={
        start.on,shut.on}, buttonTimeTable={220,650}) annotation (Placement(
        transformation(extent={{-80,-10},{-60,10}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource shut(reset={
        start.on,stop.on}, buttonTimeTable={700}) annotation (Placement(
        transformation(extent={{-80,-40},{-60,-20}}, rotation=0)));
protected
  Internal.SignalBus bus annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-32,0})));
public
  Internal.TankController2 tankController(
    limit1=0.9*tank1.height,
    limit2=0.9*tank2.height,
    minLevel=0.01,
    waitTime=50)
    annotation (Placement(transformation(extent={{9,-30},{-11,-10}})));
  Modelica.Blocks.Sources.RealExpression level1(y=tank1.level)
    annotation (Placement(transformation(extent={{-78,-63},{-53,-43}},
          rotation=0)));
  Modelica.Blocks.Sources.RealExpression level2(y=tank2.level)
    annotation (Placement(transformation(extent={{-79,-81},{-54,-61}},
          rotation=0)));
equation
  connect(level1.y, bus.level1) annotation (Line(
      points={{-51.75,-53},{-34,-53},{-34,-2},{-30,-2},{-30,-1},{-32,-1},
          {-32,0}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));

  connect(level2.y, bus.level2) annotation (Line(
      points={{-52.75,-71},{-32,-71},{-32,0}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(shut.on, bus.shut) annotation (Line(
      points={{-59,-30},{-37,-30},{-37,-2},{-31,-2},{-31,0},{-32,0}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(stop.on, bus.stop) annotation (Line(
      points={{-59,0},{-32,0}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(start.on, bus.start) annotation (Line(
      points={{-59,30},{-37,30},{-37,4},{-32,4},{-32,0}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(valve1.open, bus.valve1) annotation (Line(
      points={{-6,72},{-6,2},{-33,2},{-33,0},{-32,0}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(valve2.open, bus.valve2) annotation (Line(
      points={{26,10},{5,10},{5,0},{-32,0}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(valve3.open, bus.valve3) annotation (Line(
      points={{35,-62},{35,-20},{20,-20},{20,-2},{-31,-2},{-31,0},{-32,0}},
      color={255,0,255},
      smooth=Smooth.None));

  connect(tankController.bus, bus) annotation (Line(
      points={{-11,-20.9091},{-25,-20.9091},{-25,-4},{-32,-4},{-32,0}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  annotation (
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1})),
    experiment(StopTime=900),
    Documentation(info="<html>
<p>
This is the same model as
<a href=\"modelica://Modelica_StateGraph2.Examples.Applications.ControlledTanks.ControlledTanks1\">
\"ControlledTanks1\"</a>. The only difference is how the tank controller is implemented:
</p>
<ul>
<li> All signals are reported via a signal bus.</li>
<li> The controller is hierarchically structured for the different tasks.</li>
</ul>
</html>"));
end ControlledTanks2;
