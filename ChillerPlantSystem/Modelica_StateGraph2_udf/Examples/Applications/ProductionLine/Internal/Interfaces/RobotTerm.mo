within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces;
partial model RobotTerm
  "Terminator interface for tables used solely for transportation"
  extends Task;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot;
end RobotTerm;
