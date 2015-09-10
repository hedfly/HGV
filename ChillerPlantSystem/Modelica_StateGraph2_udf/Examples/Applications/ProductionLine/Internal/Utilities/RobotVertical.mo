within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities;
model RobotVertical "Robot than can be connected with vertical table"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.Robot;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot annotation (Placement(transformation(extent={{-73,-4},{-81,4}},
          rotation=0), iconTransformation(extent={{-66,-24},{-74,-16}})));

  Modelica.Blocks.Sources.BooleanExpression Work_Done(y=WorkDone.active)
    annotation (Placement(transformation(
        origin={-37,84},
        extent={{-29,-14},{29,14}},
        rotation=180)));
equation
  if robotComRobot.StartWork then
    PolOnePoints = [100, 34; 92, 52; 44, -18; 54, -22; 100, 34];
    PolTwoPoints = [54, -22; 46, -12; 18, -24; 24, -26; 54, -22];
    PolThreePoints = [24, -18; 24, -26; 6, -26; 8, -24; 12, -24; 24,
      -18];
  else
    PolOnePoints = [94, 58; 92, 28; 148, -6; 156, 4; 94, 58];
    PolTwoPoints = [154, 4; 146, -4; 148, -38; 152, -36; 154, 4];
    PolThreePoints = [150, -30; 150, -38; 132, -38; 134, -36; 138, -36;
      150, -30];
  end if;
  connect(Work_Done.y, robotComRobot.WorkDone) annotation (Line(
      points={{-68.9,84},{-77,84},{-77,76.3711},{-77,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{160,100}},
        initialScale=0.1), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{160,100}},
        initialScale=0.1), graphics={Rectangle(
                      extent={{100,-100},{162,100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent={{56,28},{96,58}},
                      lineColor={0,0,0},
                      fillPattern=FillPattern.HorizontalCylinder,
                      fillColor={255,128,0}),Ellipse(
                      extent={{90,58},{100,26}},
                      lineColor={0,0,0},
                      fillColor={255,128,0},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect({{94,58},{92,28},{148,-6},
            {156,4},{94,58}}, PolOnePoints),
                      lineColor={0,0,0},
                      fillColor={255,128,0},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect({{154,4},{146,-4},{148,-38},
            {152,-36},{154,4}}, PolTwoPoints),
                      lineColor={0,0,0},
                      fillColor={255,128,0},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect({{150,-30},{150,-38},{132,
            -38},{134,-36},{138,-36},{150,-30}}, PolThreePoints),
                      lineColor={0,0,0},
                      fillColor={0,0,0},
                      fillPattern=FillPattern.Solid),Ellipse(
                      extent={{60,4},{50,84}},
                      lineColor={0,0,0},
                      fillPattern=FillPattern.VerticalCylinder,
                      fillColor={255,128,0}),Rectangle(
                      extent={{54,62},{70,24}},
                      lineColor={0,0,0},
                      fillPattern=FillPattern.HorizontalCylinder,
                      fillColor={255,128,0})}));
end RobotVertical;
