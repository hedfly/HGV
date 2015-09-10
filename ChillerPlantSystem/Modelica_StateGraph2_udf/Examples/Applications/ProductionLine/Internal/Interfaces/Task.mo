within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces;
partial block Task
  parameter String processor="" "The processor that will execute the task";
  parameter String container="" "The task in which the controller will run";
  parameter Integer priority=1 "Priority of the task";
  parameter Real sampleTime=0.01 "Sample time of the task";
  parameter Real phase=0 "Phase of the task";
end Task;
