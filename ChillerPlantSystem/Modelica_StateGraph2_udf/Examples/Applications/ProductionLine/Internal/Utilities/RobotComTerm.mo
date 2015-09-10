within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities;
model RobotComTerm "Connects to table RobotCom, used for testing"

  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot annotation (Placement(transformation(extent={{40,-60},{60,-40}},
          rotation=0)));
  Modelica.Blocks.Interfaces.BooleanInput u annotation (Placement(
        transformation(
        origin={70,-111},
        extent={{-11,-12},{11,12}},
        rotation=90)));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
        transformation(
        origin={30,-110},
        extent={{-10,-10},{10,10}},
        rotation=270)));
equation
  connect(y, robotComRobot.StartWork) annotation (Line(
      points={{30,-110},{30,-50},{50,-50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(u, robotComRobot.WorkDone) annotation (Line(
      points={{70,-111},{70,-50},{50,-50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics={Ellipse(
                      extent={{30,-30},{70,-70}},
                      lineColor={0,0,0},
                      fillColor={0,0,0},
                      fillPattern=FillPattern.Solid)}));
end RobotComTerm;
