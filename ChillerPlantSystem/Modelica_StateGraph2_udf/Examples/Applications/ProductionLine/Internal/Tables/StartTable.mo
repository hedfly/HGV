within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables;
model StartTable "Generates cars that are sent on to the production line"

  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
    tableComNext annotation (Placement(transformation(extent={{76,-73},{84,-65}},
          rotation=0), iconTransformation(extent={{76,-74},{84,-66}})));
  Modelica.Blocks.Interfaces.BooleanInput next_ready annotation (
      Placement(transformation(extent={{-122,-10},{-100,10}},
          rotation=0)));
  Modelica.Blocks.Interfaces.BooleanOutput next_idle annotation (
      Placement(transformation(
        origin={-110,-40},
        extent={{-10,-10},{10,10}},
        rotation=180)));
  Modelica.Blocks.Interfaces.BooleanOutput next_transport annotation (
     Placement(transformation(
        origin={-110,-80},
        extent={{-10,-10},{10,10}},
        rotation=180)));
equation
  connect(next_ready, tableComNext.Ready) annotation (Line(
      points={{-111,0},{55.9385,0},{80,0},{80,-22.8428},{80,-69}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(next_idle, tableComNext.Idle) annotation (Line(
      points={{-110,-40},{45.8594,-40},{80,-40},{80,-69}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(next_transport, tableComNext.Transport) annotation (Line(
      points={{-110,-80},{63.4863,-80},{80,-80},{80,-69}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics={Rectangle(
                      extent={{100,-100},{-100,100}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid),Text(
                      extent={{-58,100},{54,46}},
                      lineColor={0,0,0},
                      fillColor={255,255,255},
                      fillPattern=FillPattern.Solid,
                      textString="Start"),Rectangle(
                      extent={{-100,46},{100,-46}},
                      lineColor={95,95,95},
                      fillColor={135,135,135},
                      fillPattern=FillPattern.Solid)}));
end StartTable;
