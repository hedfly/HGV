within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables;
model EndTable "Ends the line"

  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
    tableComPrev annotation (Placement(transformation(extent={{-84,-73},{-76,-65}},
          rotation=0), iconTransformation(extent={{-84,-74},{-76,-66}})));
  Modelica.Blocks.Interfaces.BooleanOutput prev_ready annotation (
      Placement(transformation(extent={{100,-10},{120,10}}, rotation=
            0)));
  Modelica.Blocks.Interfaces.BooleanInput prev_idle annotation (
      Placement(transformation(
        origin={112,-40},
        extent={{-12,-12},{12,12}},
        rotation=180)));
  Modelica.Blocks.Interfaces.BooleanInput prev_transport annotation (
      Placement(transformation(
        origin={112,-80},
        extent={{-12,-12},{12,12}},
        rotation=180)));
  Modelica.Blocks.Logical.Not Not annotation (Placement(
        transformation(
        origin={-10,-80},
        extent={{-10,-10},{10,10}},
        rotation=180)));
equation
  connect(prev_ready, tableComPrev.Ready) annotation (Line(
      points={{110,0},{-54.3945,0},{-80,0},{-80,-25.6729},{-80,-69}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(prev_idle, tableComPrev.Idle) annotation (Line(
      points={{112,-40},{-50.375,-40},{-80,-40},{-80,-69}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Not.y, tableComPrev.Transport) annotation (Line(
      points={{-21,-80},{-66.8633,-80},{-80,-80},{-80,-69}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(Not.u, prev_transport) annotation (Line(
      points={{2,-80},{112,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics={Rectangle(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Text(
                      extent={{-54,100},{56,38}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid,
                      textString="End"),Rectangle(
                      extent={{-100,46},{100,-46}},
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid)}));
end EndTable;
