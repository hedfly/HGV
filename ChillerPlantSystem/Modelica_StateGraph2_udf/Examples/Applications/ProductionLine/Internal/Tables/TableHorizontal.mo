within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables;
model TableHorizontal "Horizontal table operating in eastbound direction"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.Table(
    Occupied(use_activePort=false),
    Prev_Ready(y=tableComPrev.Ready),
    CarInPosition(y=carInPosition),
    Next_Transport(y=tableComNext.Transport),
    Robot_WorkDone(y=robotComTable.WorkDone),
    Next_Idle(y=tableComNext.Idle));

  Modelica.Blocks.Sources.BooleanExpression OutTransport_active(y=
        OutTransport.active) annotation (Placement(transformation(
          extent={{-100,-10},{-76,10}})));
  Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
        InTransport.active) annotation (Placement(transformation(
          extent={{-100,-30},{-76,-10}})));
  Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
    annotation (Placement(transformation(extent={{-100,-50},{-76,-30}})));
  Modelica.Blocks.Sources.BooleanExpression Robot_StartWork(y=
        Occupied.active) annotation (Placement(transformation(extent=
            {{-40,-100},{-20,-80}})));
  Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
    annotation (Placement(transformation(extent={{40,-100},{60,-80}})));
  Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=90,
        origin={-68,16})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp
    annotation (Placement(transformation(
        extent={{-14,-14},{6,6}},
        rotation=90,
        origin={-72,50})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
    tableComPrev annotation (Placement(transformation(extent={{-86,-96},{-74,-84}}),
        iconTransformation(extent={{-84,-74},{-76,-66}})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.RobotComTable
    robotComTable annotation (Placement(transformation(extent={{-6,-96},{6,-84}}),
        iconTransformation(extent={{-24,-74},{-16,-66}})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
    tableComNext annotation (Placement(transformation(extent={{74,-96},{86,-84}}),
        iconTransformation(extent={{76,-74},{84,-66}})));
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
    newPoints = {{-50,25},{-50,-25},{50,-25},{50,25}} + pos*[ones(4),
      zeros(4)];
  end if;

  when Empty.active then
    reinit(pos, -transportLength);
  end when;

  connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
      points={{61,-90},{80,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Robot_StartWork.y, robotComTable.StartWork) annotation (
      Line(
      points={{-19,-90},{-19,-90},{0,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
      points={{-74.8,-40},{-72,-40},{-72,-52.9433},{-72,-76.8164},{-72,
          -90},{-80,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
      points={{-74.8,-20},{-62,-20},{-62,-33.3984},{-62,-74.0808},{-62,
          -90},{-80,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u1, OutTransport_active.y) annotation (Line(
      points={{-68,8.8},{-68,0},{-74.8,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Transport.y, or1.u2) annotation (Line(
      points={{-74.8,-20},{-63,-20},{-63,8.8},{-63.2,8.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp.activePort, or1.y) annotation (Line(
      points={{-68,34.5},{-68,34.5},{-68,22.6}},
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
                      extent={{-100,46},{100,-46}},
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect([zeros(4), zeros(4)],
            newPoints),
                      lineColor={0,0,0},
                      fillColor={255,0,0},
                      fillPattern=FillPattern.Solid),Ellipse(
                      extent=DynamicSelect({{0,0},{0,0}},
            newBlinkPoints),
                      lineColor={255,0,0},
                      fillColor={255,17,0},
                      fillPattern=FillPattern.Solid)}));
end TableHorizontal;
