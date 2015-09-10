within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors;
connector RobotComRobot "Connects robot to table"
  input Modelica.Blocks.Interfaces.BooleanInput StartWork
    "Receives signal when car is in place and work can be commenced";
  output Modelica.Blocks.Interfaces.BooleanOutput WorkDone
    "Sends signal when work is done";
  annotation (Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-200,-200},{200,200}},
        initialScale=1), graphics={Ellipse(
                      extent={{-198,198},{198,-198}},
                      lineColor={0,0,0},
                      fillColor={255,255,0},
                      fillPattern=FillPattern.Solid)}));
end RobotComRobot;
