within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces;
partial model Table "Table Logic"
  extends Task;
  parameter Real transportLength=2*100 "Length of the table in pixels";
  parameter Real transportTime=4 "Desired time to travel through table length";
  Real pos(start=-2*transportLength, fixed=true) "Current position of the car";
  Real[4, 2] newPoints "Coordinates for animation of the car";
  parameter Real carLength=100 "Length of the car";
  Boolean carInPosition "Signal that car is in position";

  Modelica.Blocks.Sources.BooleanExpression Prev_Ready annotation (
      Placement(transformation(extent={{10,52},{40,72}}, rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Next_Idle annotation (
      Placement(transformation(extent={{10,-44},{40,-24}}, rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Next_Transport
    annotation (Placement(transformation(extent={{8,-72},{38,-52}},
          rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Robot_WorkDone
    annotation (Placement(transformation(extent={{-10,-10},{20,10}},
          rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression CarInPosition annotation (
     Placement(transformation(extent={{10,24},{40,44}}, rotation=0)));
  Modelica.Blocks.Logical.Not Not annotation (Placement(
        transformation(extent={{44,-66},{52,-58}}, rotation=0)));
  Modelica_StateGraph2_udf.Step InTransport(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{56,44},{64,52}})));
  Modelica_StateGraph2_udf.Transition limit_switch(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{56,30},{64,38}})));
  Modelica_StateGraph2_udf.Transition prev_ready(use_conditionPort=true)
    annotation (Placement(transformation(extent={{56,58},{64,66}})));
  Modelica_StateGraph2_udf.Step Empty(
    initialStep=true,
    nOut=2,
    nIn=2) annotation (Placement(transformation(extent={{36,76},{44,84}})));
  Modelica_StateGraph2_udf.Transition prev_receive(condition=false, loopCheck=
        false) annotation (Placement(transformation(extent={{-4,42},{4,50}})));
  Modelica_StateGraph2_udf.Step Occupied(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{36,10},{44,18}})));
  Modelica_StateGraph2_udf.Transition robot_work_done(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{36,-4},{44,4}})));
  Modelica_StateGraph2_udf.Step Waiting(nIn=1, nOut=2)
    annotation (Placement(transformation(extent={{36,-18},{44,-10}})));
  Modelica_StateGraph2_udf.Transition next_idle(use_conditionPort=true)
    annotation (Placement(transformation(extent={{56,-38},{64,-30}})));
  Modelica_StateGraph2_udf.Transition next_remove(condition=false)
    annotation (Placement(transformation(extent={{-4,-52},{4,-44}})));
  Modelica_StateGraph2_udf.Step OutTransport(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{56,-52},{64,-44}})));
  Modelica_StateGraph2_udf.Transition next_transport(use_conditionPort=true)
    annotation (Placement(transformation(extent={{56,-66},{64,-58}})));
equation
  connect(prev_ready.outPort, InTransport.inPort[1]) annotation (Line(
      points={{60,57},{60,52}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Empty.outPort[1], prev_receive.inPort) annotation (Line(
      points={{39,75.4},{39,72},{21.8994,72},{0,72},{0,50}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Empty.outPort[2], prev_ready.inPort) annotation (Line(
      points={{41,75.4},{41,72},{50.6113,72},{60,72},{60,66}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(limit_switch.inPort, InTransport.outPort[1]) annotation (
      Line(
      points={{60,38},{60,38},{60,43.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Prev_Ready.y, prev_ready.conditionPort) annotation (Line(
      points={{41.5,62},{48,62},{55,62}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(prev_receive.outPort, Occupied.inPort[1]) annotation (Line(
      points={{0,41},{0,24},{17.7227,24},{26,24},{39,24},{39,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(limit_switch.outPort, Occupied.inPort[2]) annotation (Line(
      points={{60,29},{60,24},{52.0586,24},{41,24},{41,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(CarInPosition.y, limit_switch.conditionPort) annotation (
      Line(
      points={{41.5,34},{41.5,34},{55,34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(robot_work_done.inPort, Occupied.outPort[1]) annotation (
      Line(
      points={{40,4},{40,9.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Waiting.inPort[1], robot_work_done.outPort) annotation (
      Line(
      points={{40,-10},{40,-5}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OutTransport.inPort[1], next_idle.outPort) annotation (Line(
      points={{60,-44},{60,-39}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_transport.inPort, OutTransport.outPort[1]) annotation (
     Line(
      points={{60,-58},{60,-52.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_remove.inPort, Waiting.outPort[1]) annotation (Line(
      points={{0,-44},{0,-24},{20,-24},{39,-24},{39,-18.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Waiting.outPort[2], next_idle.inPort) annotation (Line(
      points={{41,-18.6},{41,-24},{50.4443,-24},{60,-24},{60,-30}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Robot_WorkDone.y, robot_work_done.conditionPort)
    annotation (Line(
      points={{21.5,0},{28,0},{35,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Next_Idle.y, next_idle.conditionPort) annotation (Line(
      points={{41.5,-34},{55,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Not.y, next_transport.conditionPort) annotation (Line(
      points={{52.4,-62},{52.4,-62},{55,-62}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Not.u, Next_Transport.y) annotation (Line(
      points={{43.2,-62},{39.5,-62}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(next_transport.outPort, Empty.inPort[1]) annotation (Line(
      points={{60,-67},{60,-74},{44.3713,-74},{-4.53125,-74},{-20,-74},
          {-20,-56.6602},{-20,18},{-20,78.3418},{-20,92},{-1.85059,92},
          {32.4974,92},{39,92},{39,84}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_remove.outPort, Empty.inPort[2]) annotation (Line(
      points={{0,-53},{0,-74},{-9.53125,-74},{-20,-74},{-20,-52.6133},
          {-20,76},{-20,92},{-4,92},{30,92},{41,90},{41,84}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics));
end Table;
