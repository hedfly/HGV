within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialRealMISO
  "Partial block with a RealVectorInput and a RealOutput signal"

  parameter Integer precision(min=0) = 3
    "Number of significant digits to be shown in dynamic diagram layer for y"
    annotation (Dialog(tab="Advanced"));
  parameter Integer nu(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
  Modelica_StateGraph2_udf.Blocks.Interfaces.RealVectorInput u[nu]
    annotation (Placement(transformation(extent={{-120,70},{-80,-70}})));
  Modelica.Blocks.Interfaces.RealOutput y
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
                  integer(precision)))),Text(
                extent={{-250,170},{250,110}},
                textString="%name",
                lineColor={0,0,255}),Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={255,137,0},
                fillColor={170,213,255},
                borderPattern=BorderPattern.Raised,
                fillPattern=FillPattern.Solid)}));
end PartialRealMISO;
