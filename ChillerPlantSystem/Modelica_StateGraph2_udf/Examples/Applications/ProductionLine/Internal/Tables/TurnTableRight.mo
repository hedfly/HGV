within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables;
model TurnTableRight "Table which turns the track direction southbound"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.TurnTable;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
    tableComPrev annotation (Placement(transformation(extent={{-96,-66},{-84,-54}},
          rotation=0), iconTransformation(extent={{-92,-74},{-84,-66}})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
    tableComNext annotation (Placement(transformation(extent={{-66,-96},{-54,-84}},
          rotation=0), iconTransformation(extent={{-74,-92},{-66,-84}})));
  Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
    annotation (Placement(transformation(
        origin={-47,-54},
        extent={{-27,-14},{5,6}},
        rotation=180)));
  Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
    annotation (Placement(transformation(
        origin={-31,-84},
        extent={{-27,-14},{5,6}},
        rotation=180)));
  Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
        InTransport.active) annotation (Placement(transformation(
        origin={-47,-34},
        extent={{-27,-14},{5,6}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp "Motor"
    annotation (Placement(transformation(
        origin={-88,74},
        extent={{-18,-18},{2,2}},
        rotation=90)));
  Modelica.Blocks.Sources.BooleanExpression OutTransport_Active(y=
        OutTransport.active) annotation (Placement(transformation(
        origin={-47,-14},
        extent={{-27,-14},{9,6}},
        rotation=180)));
  Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
        origin={-78,26},
        extent={{-4,-4},{8,8}},
        rotation=90)));
equation
  carInPosition = pos >= -0.5 and pos < 0.5;

  if InTransport.active or OutTransport.active then
    der(pos) = transportLength/transportTime;
  else
    der(pos) = 0;
  end if;

  if Empty.active then
    rectangle1 = {{-46,100},{46,-100}};
    rectangle2 = {{-100,46},{100,-46}};
    newPoints = [zeros(4), zeros(4)];
  elseif Occupied.active or OutTransport.active then
    rectangle1 = {{-100,46},{100,-46}};
    rectangle2 = {{-46,100},{46,-100}};
    newPoints = {{25,-50},{-25,-50},{-25,50},{25,50}} - pos*[zeros(4),
      ones(4)];
  else
    newPoints = {{-50,25},{-50,-25},{50,-25},{50,25}} + pos*[ones(4),
      zeros(4)];
    rectangle1 = {{-46,100},{46,-100}};
    rectangle2 = {{-100,46},{100,-46}};
  end if;

  when Empty.active then
    reinit(pos, -transportLength);
  end when;
  connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
      points={{-37.6,-80},{-49.6,-80},{-49.6,-90},{-60,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
      points={{-53.6,-50},{-61.2395,-50},{-70,-50},{-70,-55},{-70,-60},
          {-79.0527,-60},{-88,-60},{-90,-60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
      points={{-53.6,-30},{-90,-30},{-90,-60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u1, Prev_Transport.y) annotation (Line(
      points={{-80,20.8},{-80,20.8},{-80,-5.88984},{-80,-30},{-53.6,-30}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(OutTransport_Active.y, or1.u2) annotation (Line(
      points={{-57.8,-10},{-75.2,-10},{-75.2,8.40781},{-75.2,20.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp.activePort, or1.y) annotation (Line(
      points={{-80,54.5},{-80,54.5},{-80,34.6},{-80,34.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics={Text(
                      extent={{-196,64},{-116,46}},
                      lineColor={0,0,0},
                      textString="Motor"),Text(
                      extent={{-96,78},{-64,68}},
                      lineColor={0,0,0},
                      textString="Motor")}), Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Rectangle(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent=DynamicSelect({{-46,100},{46,-100}},
            rectangle1),
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent=DynamicSelect({{-100,46},{100,-46}},
            rectangle2),
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect([zeros(4), zeros(4)],
            newPoints),
                      lineColor={0,0,0},
                      fillColor={255,0,0},
                      fillPattern=FillPattern.Solid)}));
end TurnTableRight;
