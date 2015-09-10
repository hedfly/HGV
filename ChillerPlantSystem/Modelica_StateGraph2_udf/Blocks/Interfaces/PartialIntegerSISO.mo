within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialIntegerSISO
  "Partial block with a IntegerInput and an IntegerOutput signal"

  Modelica.Blocks.Interfaces.IntegerOutput y
    annotation (Placement(transformation(extent={{100,-20},{140,20}})));
  Modelica.Blocks.Interfaces.IntegerInput u
    annotation (Placement(transformation(extent={{-160,-30},{-100,30}})));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.06), graphics), Icon(coordinateSystem(
        preserveAspectRatio=false,
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
                lineColor={0,0,0},
                fillColor={255,213,170},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised)}));
end PartialIntegerSISO;
