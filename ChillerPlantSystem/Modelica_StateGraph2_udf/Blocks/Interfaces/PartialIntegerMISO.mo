within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialIntegerMISO
  "Partial block with an IntegerVectorInput and an IntegerOutput signal"

  parameter Integer nu(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
  Modelica_StateGraph2_udf.Blocks.Interfaces.IntegerVectorInput u[nu]
    annotation (Placement(transformation(extent={{-120,70},{-80,-70}})));
  Modelica.Blocks.Interfaces.IntegerOutput y
    annotation (Placement(transformation(extent={{100,-17},{134,17}})));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.06), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.06), graphics={Text(
                extent={{110,-50},{250,-70}},
                lineColor={0,0,0},
                textString=DynamicSelect(" ", realString(
                  y,
                  1,
                  0))),Text(
                extent={{-250,170},{250,110}},
                textString="%name",
                lineColor={0,0,255}),Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={255,137,0},
                fillColor={255,213,170},
                borderPattern=BorderPattern.Raised,
                fillPattern=FillPattern.Solid)}));
end PartialIntegerMISO;
