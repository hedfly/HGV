within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities;
model RobotTermHorizontal
  "Terminator for horizontal tables used solely for transportation"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.RobotTerm;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot annotation (Placement(transformation(extent={{-4,-80},{4,-72}},
          rotation=0), iconTransformation(extent={{16,-74},{24,-66}})));

  Modelica.Blocks.Sources.BooleanExpression Start_Work(y=
        robotComRobot.StartWork) annotation (Placement(transformation(
          extent={{-98,-74},{-40,-46}}, rotation=0)));
equation
  connect(Start_Work.y, robotComRobot.WorkDone) annotation (Line(
      points={{-37.1,-60},{-30.0028,-60},{-20,-60},{-20,-68.1719},{-20,
          -76},{-11.8359,-76},{0,-76}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,160}},
        initialScale=0.1), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,160}},
        initialScale=0.1), graphics={Rectangle(
                      extent={{-100,120},{100,100}},
                      lineColor={0,0,0},
                      fillColor={255,255,0},
                      fillPattern=FillPattern.Solid)}));
end RobotTermHorizontal;
