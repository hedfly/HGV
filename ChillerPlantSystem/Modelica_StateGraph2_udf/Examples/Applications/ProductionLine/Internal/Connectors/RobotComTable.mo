within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors;
connector RobotComTable "Connects table to robot"
  output Modelica.Blocks.Interfaces.BooleanOutput StartWork
    "Sends signal when car is in place and robot can start working";
  input Modelica.Blocks.Interfaces.BooleanInput WorkDone
    "Receives signal when robot has finished working";
  annotation (Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        initialScale=0.1), graphics={Ellipse(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={255,255,0},
                      fillPattern=FillPattern.Solid)}));
end RobotComTable;
