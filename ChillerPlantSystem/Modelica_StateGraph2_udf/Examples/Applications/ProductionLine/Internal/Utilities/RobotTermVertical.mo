within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities;
model RobotTermVertical
  "Terminator for vertical tables used solely for transportation"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.RobotTerm;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot annotation (Placement(transformation(extent={{-81,4},{-73,-4}},
          rotation=0), iconTransformation(extent={{-74,-16},{-66,-24}})));
  Modelica.Blocks.Sources.BooleanExpression Start_Work(y=
        robotComRobot.StartWork) annotation (Placement(transformation(
        origin={9,0},
        extent={{-29,-14},{29,14}},
        rotation=180)));
equation
  connect(Start_Work.y, robotComRobot.WorkDone) annotation (Line(
      points={{-22.9,5.68298e-015},{-48.45,5.68298e-015},{-48.45,0},{
          -77,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{160,100}},
        initialScale=0.1), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{160,100}},
        initialScale=0.1), graphics={Rectangle(
                      extent={{120,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={255,255,0},
                      fillPattern=FillPattern.Solid)}));
end RobotTermVertical;
