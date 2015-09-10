within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialRealSISO
  "Partial block with a RealInput and an RealOutput signal"

  Modelica.Blocks.Interfaces.RealOutput y
    annotation (Placement(transformation(extent={{100,-20},{140,20}})));
  Modelica.Blocks.Interfaces.RealInput u
    annotation (Placement(transformation(extent={{-160,-30},{-100,30}})));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.06), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.06), graphics={Text(
                extent={{-250,170},{250,110}},
                textString="%name",
                lineColor={0,0,255}),Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,0},
                fillColor={170,213,255},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised)}));
end PartialRealSISO;
