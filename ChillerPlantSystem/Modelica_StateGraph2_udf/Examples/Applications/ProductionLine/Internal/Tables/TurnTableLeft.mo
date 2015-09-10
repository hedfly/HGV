within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables;
model TurnTableLeft "Table which turns the track direction eastbound"
  extends
    Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Interfaces.TurnTable;
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
    tableComPrev annotation (Placement(transformation(extent={{-86,86},{-74,74}},
          rotation=0), iconTransformation(extent={{-82,82},{-74,74}})));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
    tableComNext annotation (Placement(transformation(extent={{86,-74},{74,-86}},
          rotation=0), iconTransformation(extent={{84,-66},{76,-74}})));
  Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
    annotation (Placement(transformation(
        origin={-19,94},
        extent={{1,-6},{27,14}},
        rotation=180)));
  Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
    annotation (Placement(transformation(extent={{60,-18},{86,2}},
          rotation=0)));
  Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
        InTransport.active) annotation (Placement(transformation(
        origin={-19,74},
        extent={{1,-6},{27,14}},
        rotation=180)));
  Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
        origin={-80,30},
        extent={{-10,-10},{10,10}},
        rotation=270)));
  Modelica.Blocks.Sources.BooleanExpression OutTransport_Active(y=
        OutTransport.active) annotation (Placement(transformation(
        origin={-19,54},
        extent={{1,-6},{27,14}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-80,-10})));
equation
  carInPosition = pos >= -0.5 and pos < 0.5;

  if InTransport.active or OutTransport.active then
    der(pos) = transportLength/transportTime;
  else
    der(pos) = 0;
  end if;

  if Empty.active then
    rectangle1 = {{-100,46},{100,-46}};
    rectangle2 = {{-46,100},{46,-100}};
    newPoints = [zeros(4), zeros(4)];
  elseif Occupied.active or OutTransport.active then
    rectangle1 = {{-46,100},{46,-100}};
    rectangle2 = {{-100,46},{100,-46}};
    newPoints = {{-50,25},{-50,-25},{50,-25},{50,25}} + pos*[ones(4),
      zeros(4)];
  else
    rectangle1 = {{-100,46},{100,-46}};
    rectangle2 = {{-46,100},{46,-100}};
    newPoints = {{25,-50},{-25,-50},{-25,50},{25,50}} - pos*[zeros(4),
      ones(4)];
  end if;

  when Empty.active then
    reinit(pos, -transportLength);
  end when;
  connect(OutTransport_Active.y, or1.u1) annotation (Line(
      points={{-47.3,50},{-47.3,50},{-70.4519,50},{-80,50},{-80,42}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(Prev_Transport.y, or1.u2) annotation (Line(
      points={{-47.3,70},{-88,70},{-88,42}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
      points={{87.3,-8},{94,-8},{94,-19.5},{94,-72},{94,-80},{80,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(showValue.activePort, or1.y) annotation (Line(
      points={{-80,1.5},{-80,19},{-80,19}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
      points={{-47.3,90},{-52,90},{-66.9023,90},{-80,90},{-80,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
      points={{-47.3,70},{-69.2703,70},{-80,70},{-80,80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics={Text(
                      extent={{-96,-16},{-64,-26}},
                      lineColor={0,0,0},
                      textString="Motor")}), Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Rectangle(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent=DynamicSelect({{-100,46},{100,-46}},
            rectangle1),
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid),Rectangle(
                      extent=DynamicSelect({{-46,100},{46,-100}},
            rectangle2),
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid),Polygon(
                      points=DynamicSelect([zeros(4), zeros(4)],
            newPoints),
                      lineColor={0,0,0},
                      fillColor={255,0,0},
                      fillPattern=FillPattern.Solid)}));
end TurnTableLeft;
