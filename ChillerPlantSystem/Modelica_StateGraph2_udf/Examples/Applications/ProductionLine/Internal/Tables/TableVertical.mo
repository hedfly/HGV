within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables;
model TableVertical "Vertical table operating in southbound direction"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.Table(
    Prev_Ready(y=tableComPrev.Ready),
    CarInPosition(y=carInPosition),
    Robot_WorkDone(y=robotComTable.WorkDone),
    Next_Idle(y=tableComNext.Idle),
    Next_Transport(y=tableComNext.Transport));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComTable
    robotComTable annotation (Placement(transformation(extent={{-96,-6},{-84,6}}),
        iconTransformation(extent={{-74,16},{-66,24}})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
    tableComNext annotation (Placement(transformation(extent={{-96,-86},{-84,-74}}),
        iconTransformation(extent={{-74,-84},{-66,-76}})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
    tableComPrev annotation (Placement(transformation(extent={{-96,74},{-84,86}}),
        iconTransformation(extent={{-74,76},{-66,84}})));
  Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
        InTransport.active) annotation (Placement(transformation(
          extent={{-34,60},{-60,80}})));
  Modelica.Blocks.Sources.BooleanExpression OutTransport_active(y=
        OutTransport.active) annotation (Placement(transformation(
          extent={{-34,40},{-60,60}})));
  Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-72,30})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp
    annotation (Placement(transformation(
        extent={{-6,-6},{14,14}},
        rotation=0,
        origin={-44,26})));
  Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
    annotation (Placement(transformation(extent={{-34,80},{-60,100}})));
  Modelica.Blocks.Sources.BooleanExpression Robot_StartWork(y=
        Occupied.active) annotation (Placement(transformation(extent=
            {{-40,-10},{-60,10}})));
  Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
    annotation (Placement(transformation(extent={{-40,-90},{-60,-70}})));
equation
  carInPosition = pos >= -0.5 and pos < 0.5;
  if InTransport.active or OutTransport.active then
    der(pos) = transportLength/transportTime;
  else
    der(pos) = 0;
  end if;

  if Empty.active then
    newPoints = [zeros(4), zeros(4)];
  else
    newPoints = {{25,-50},{-25,-50},{-25,50},{25,50}} - pos*[zeros(4),
      ones(4)];
  end if;

  when Empty.active then
    reinit(pos, -transportLength);
  end when;
  connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
      points={{-61.3,90},{-80.2185,90},{-90,90},{-90,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
      points={{-61.3,70},{-68,70},{-90,70},{-90,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u1, OutTransport_active.y) annotation (Line(
      points={{-79.2,30},{-84,30},{-84,40},{-84,50},{-71.3643,50},{-61.3,
          50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u2, Prev_Transport.y) annotation (Line(
      points={{-79.2,25.2},{-90,25.2},{-90,39.5414},{-90,60},{-90,70},
          {-76.3787,70},{-61.3,70}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Robot_StartWork.y, robotComTable.StartWork) annotation (
      Line(
      points={{-61,0},{-75.5,0},{-90,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
      points={{-61,-80},{-76,-80},{-75.5,-80},{-90,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp.activePort, or1.y) annotation (Line(
      points={{-51.5,30},{-58,30},{-65.4,30},{-65.4,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics={Rectangle(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent={{-46,100},{46,-100}},
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect([zeros(4), zeros(4)],
            newPoints),
                      lineColor={0,0,0},
                      fillColor={255,0,0},
                      fillPattern=FillPattern.Solid)}));
end TableVertical;
