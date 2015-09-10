within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces;
partial model Robot "Robot that can be connected to a horizontal table"
  extends Task;
  Modelica.Blocks.Sources.BooleanExpression StartWork(y=robotComRobot.StartWork)
    annotation (Placement(transformation(extent={{-80,20},{-50,40}},
          rotation=0)));

  Real[5, 2] PolOnePoints "Coordinates of polygon number one";
  Real[5, 2] PolTwoPoints "Coordinates of polygon number two";
  Real[6, 2] PolThreePoints "Coordinates of polygon number three";
  parameter Real[18, 2] weldPoints={{16,24},{30,16},{30.2285,22.627},
      {32,74},{32,25.1191},{32,16},{40,22},{32,16},{34.5977,13.7734},
      {46,4},{33.2656,13.5508},{30,16},{26,2},{30,16},{18,12},{30,16},
      {30,16},{16,24}};
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
    robotComRobot;

  Modelica_StateGraph2_udf.Step Waiting(
    initialStep=true,
    nOut=1,
    nIn=1) annotation (Placement(transformation(extent={{16,46},{24,54}})));
  Modelica_StateGraph2_udf.Transition start_work(use_conditionPort=true)
    annotation (Placement(transformation(extent={{16,26},{24,34}})));
  Modelica_StateGraph2_udf.Step Working(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{16,6},{24,14}})));
  Modelica_StateGraph2_udf.Transition finished_work(delayedTransition=true,
      waitTime=3)
    annotation (Placement(transformation(extent={{16,-14},{24,-6}})));
  Modelica_StateGraph2_udf.Step WorkDone(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{16,-34},{24,-26}})));
  Modelica_StateGraph2_udf.Transition return_to_wait
    annotation (Placement(transformation(extent={{16,-54},{24,-46}})));
equation
  connect(Waiting.outPort[1], start_work.inPort) annotation (Line(
      points={{20,45.4},{20,34}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(start_work.outPort, Working.inPort[1]) annotation (Line(
      points={{20,25},{20,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Working.outPort[1], finished_work.inPort) annotation (Line(
      points={{20,5.4},{20,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(finished_work.outPort, WorkDone.inPort[1]) annotation (Line(
      points={{20,-15},{20,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(WorkDone.outPort[1], return_to_wait.inPort) annotation (
      Line(
      points={{20,-34.6},{20,-46}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Waiting.inPort[1], return_to_wait.outPort) annotation (Line(
      points={{20,54},{20,60},{1.17188,60},{-20,60},{-20,41.6172},{-20,
          -38.5547},{-20,-60},{0,-60},{20,-60},{20,-55}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(StartWork.y, start_work.conditionPort) annotation (Line(
      points={{-48.5,30},{15,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics));
end Robot;
