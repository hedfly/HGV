within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities;
model RobotHorizontal "Robot that can be connected to a horizontal table"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.Robot;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot annotation (Placement(transformation(extent={{-4,-84},{4,-76}},
          rotation=0), iconTransformation(extent={{16,-74},{24,-66}})));

  Modelica.Blocks.Sources.BooleanExpression Work_Done(y=WorkDone.active)
    annotation (Placement(transformation(extent={{-98,-94},{-40,-66}},
          rotation=0)));
equation

  if robotComRobot.StartWork then
    PolOnePoints = [-34, 100; -52, 92; 18, 44; 22, 54; -34, 100];
    PolTwoPoints = [22, 54; 12, 46; 24, 18; 26, 24; 22, 54];
    PolThreePoints = [18, 24; 26, 24; 26, 6; 24, 8; 24, 12; 18, 24];
  else
    PolOnePoints = [-58, 94; -28, 92; 6, 148; -4, 156; -58, 94];
    PolTwoPoints = [-4, 154; 4, 146; 38, 148; 36, 152; -4, 154];
    PolThreePoints = [30, 150; 38, 150; 38, 132; 36, 134; 36, 138; 30,
      150];
  end if;
  connect(Work_Done.y, robotComRobot.WorkDone) annotation (Line(
      points={{-37.1,-80},{-18,-80},{0,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,160}},
        initialScale=0.1), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,160}},
        initialScale=0.1), graphics={Rectangle(
                      extent={{-100,162},{100,100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent={{-58,56},{-28,96}},
                      lineColor={0,0,0},
                      fillPattern=FillPattern.VerticalCylinder,
                      fillColor={255,128,0}),Ellipse(
                      extent={{-58,100},{-26,90}},
                      lineColor={0,0,0},
                      fillColor={255,128,0},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect({{-58,94},{-28,92},{6,148},
            {-4,156},{-58,94}}, PolOnePoints),
                      lineColor={0,0,0},
                      fillColor={255,128,0},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect({{-4,154},{4,146},{38,148},
            {36,152},{-4,154}}, PolTwoPoints),
                      lineColor={0,0,0},
                      fillColor={255,128,0},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect({{30,150},{38,150},{38,132},
            {36,134},{36,138},{30,150}}, PolThreePoints),
                      lineColor={0,0,0},
                      fillColor={0,0,0},
                      fillPattern=FillPattern.Solid),Ellipse(
                      extent={{-84,50},{-4,60}},
                      lineColor={0,0,0},
                      fillPattern=FillPattern.VerticalCylinder,
                      fillColor={255,128,0}),Rectangle(
                      extent={{-62,54},{-24,70}},
                      lineColor={0,0,0},
                      fillPattern=FillPattern.VerticalCylinder,
                      fillColor={255,128,0})}));
end RobotHorizontal;
