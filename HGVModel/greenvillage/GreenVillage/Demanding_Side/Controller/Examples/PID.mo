within GreenVillage.Demanding_Side.Controller.Examples;
model PID
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=1/3600)
    annotation (Placement(transformation(extent={{-80,-60},{-60,-40}})));
  Modelica.Blocks.Sources.Constant const(k=0)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  Modelica.Blocks.Sources.Step step(startTime=3600)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
  HP_PI hP_PI(k=1, ti=60)
    annotation (Placement(transformation(extent={{-12,-10},{8,10}})));
equation

  connect(step.y, hP_PI.CoolOn) annotation (Line(
      points={{-59,50},{-40,50},{-40,6},{-14,6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(const.y, hP_PI.SetPoi) annotation (Line(
      points={{-59,0},{-14,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(sine.y, hP_PI.MeaT) annotation (Line(
      points={{-59,-50},{-40,-50},{-40,-6},{-14,-6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}), graphics),
    experiment(StopTime=7200),
    __Dymola_experimentSetupOutput);
end PID;
