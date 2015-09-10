within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces;
partial model TurnTable "Table which turns the track"
  extends Task;
  parameter Real transportLength=2*100 "Length of the track in pixels";
  parameter Real transportTime=4 "Desired time to travel through table length";
  Real pos(start=-transportLength, fixed=true) "Current position of the car";
  Real[4, 2] newPoints "Coordinates for animation of the car";
  Real[2, 2] rectangle1 "Coordinates for animation of bottom track rectangle";
  Real[2, 2] rectangle2 "Coordinates for animation of top track rectangle";
  parameter Real carLength=286 "Length of the car";
  Boolean carInPosition "Signal that car is in position";

  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
    tableComNext;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
    tableComPrev;

  Modelica.Blocks.Sources.BooleanExpression Prev_Ready(y=tableComPrev.Ready)
    annotation (Placement(transformation(extent={{10,52},{40,72}},
          rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Next_Idle(y=tableComNext.Idle)
    annotation (Placement(transformation(extent={{10,-58},{40,-38}},
          rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Next_Transport(y=
        tableComNext.Transport) annotation (Placement(transformation(
          extent={{8,-98},{38,-78}}, rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Robot_WorkDone(y=true)
    annotation (Placement(transformation(extent={{-10,-22},{20,-2}},
          rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression CarInPosition(y=
        carInPosition) annotation (Placement(transformation(extent={{
            10,12},{40,32}}, rotation=0)));
  Modelica.Blocks.Logical.Not Not annotation (Placement(
        transformation(extent={{44,-92},{52,-84}}, rotation=0)));
  Modelica_StateGraph2_udf.Step InTransport(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{56,38},{64,46}})));
  Modelica_StateGraph2_udf.Transition limit_switch(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{56,18},{64,26}})));
  Modelica_StateGraph2_udf.Transition prev_ready(use_conditionPort=true)
    annotation (Placement(transformation(extent={{56,58},{64,66}})));
  Modelica_StateGraph2_udf.Step Empty(
    initialStep=true,
    nOut=2,
    nIn=2) annotation (Placement(transformation(extent={{36,78},{44,86}})));
  Modelica_StateGraph2_udf.Transition prev_receive(condition=false, loopCheck=
        false) annotation (Placement(transformation(extent={{-4,38},{4,46}})));
  Modelica_StateGraph2_udf.Step Occupied(nIn=2, nOut=1)
    annotation (Placement(transformation(extent={{36,-2},{44,6}})));
  Modelica_StateGraph2_udf.Transition robot_work_done(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{36,-16},{44,-8}})));
  Modelica_StateGraph2_udf.Step Waiting(nIn=1, nOut=2)
    annotation (Placement(transformation(extent={{36,-32},{44,-24}})));
  Modelica_StateGraph2_udf.Transition next_idle(use_conditionPort=true)
    annotation (Placement(transformation(extent={{56,-52},{64,-44}})));
  Modelica_StateGraph2_udf.Transition next_remove(condition=false)
    annotation (Placement(transformation(extent={{-4,-70},{4,-62}})));
  Modelica_StateGraph2_udf.Step OutTransport(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{56,-72},{64,-64}})));
  Modelica_StateGraph2_udf.Transition next_transport(use_conditionPort=true)
    annotation (Placement(transformation(extent={{56,-92},{64,-84}})));
equation
  connect(prev_ready.outPort, InTransport.inPort[1]) annotation (Line(
      points={{60,57},{60,46}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Empty.outPort[1], prev_receive.inPort) annotation (Line(
      points={{39,77.4},{39,74},{21.8994,74},{0,74},{0,46}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Empty.outPort[2], prev_ready.inPort) annotation (Line(
      points={{41,77.4},{41,74},{50.6113,74},{60,74},{60,66}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(limit_switch.inPort, InTransport.outPort[1]) annotation (
      Line(
      points={{60,26},{60,37.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Prev_Ready.y, prev_ready.conditionPort) annotation (Line(
      points={{41.5,62},{55,62}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(prev_receive.outPort, Occupied.inPort[1]) annotation (Line(
      points={{0,37},{0,12},{17.7227,12},{26,12},{39,12},{39,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(limit_switch.outPort, Occupied.inPort[2]) annotation (Line(
      points={{60,17},{60,12},{52.0586,12},{41,12},{41,6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(CarInPosition.y, limit_switch.conditionPort) annotation (
      Line(
      points={{41.5,22},{41.5,22},{55,22}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(robot_work_done.inPort, Occupied.outPort[1]) annotation (
      Line(
      points={{40,-8},{40,-2.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Waiting.inPort[1], robot_work_done.outPort) annotation (
      Line(
      points={{40,-24},{40,-17}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OutTransport.inPort[1], next_idle.outPort) annotation (Line(
      points={{60,-64},{60,-56},{60,-53}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_transport.inPort, OutTransport.outPort[1]) annotation (
     Line(
      points={{60,-84},{60,-72.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_remove.inPort, Waiting.outPort[1]) annotation (Line(
      points={{0,-62},{0,-38},{20,-38},{39,-38},{39,-32.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Waiting.outPort[2], next_idle.inPort) annotation (Line(
      points={{41,-32.6},{41,-38},{50.4443,-38},{60,-38},{60,-44}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_transport.outPort, Empty.inPort[1]) annotation (Line(
      points={{60,-93},{60,-98},{50.9766,-98},{-32.4726,-98},{-60,-98},
          {-60,-68},{-60,80.4922},{-60,98},{-40,98},{30.8994,98},{39,
          98},{39,86}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(next_remove.outPort, Empty.inPort[2]) annotation (Line(
      points={{0,-71},{0,-85.2646},{0,-98},{-9.7422,-98},{-34.0858,-98},
          {-60,-98},{-60,-74},{-60,58.0234},{-60,78.7925},{-60,98},{-35.2432,
          98},{29.3104,98},{41,98},{41,86}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(Robot_WorkDone.y, robot_work_done.conditionPort)
    annotation (Line(
      points={{21.5,-12},{35,-12}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Next_Idle.y, next_idle.conditionPort) annotation (Line(
      points={{41.5,-48},{55,-48}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Not.y, next_transport.conditionPort) annotation (Line(
      points={{52.4,-88},{52.4,-88},{55,-88}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Not.u, Next_Transport.y) annotation (Line(
      points={{43.2,-88},{39.5,-88}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}}), graphics));
end TurnTable;
