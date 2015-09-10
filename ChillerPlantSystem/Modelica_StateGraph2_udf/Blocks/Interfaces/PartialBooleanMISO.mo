within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialBooleanMISO
  "Partial block with a BooleanVectorInput and a BooleanOutput signal"

  parameter Integer nu(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
  Modelica_StateGraph2_udf.Blocks.Interfaces.BooleanVectorInput u[nu]
    annotation (Placement(transformation(extent={{-120,70},{-80,-70}})));
  Modelica.Blocks.Interfaces.BooleanOutput y
    annotation (Placement(transformation(extent={{100,-20},{140,20}})));
initial equation
  pre(u) = fill(false, nu);
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
                fillColor={215,215,215},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised),Ellipse(
                extent={{60,10},{80,-10}},
                lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
            255,0} else {235,235,235}),
                fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
            255,0} else {235,235,235}),
                fillPattern=FillPattern.Solid)}));
end PartialBooleanMISO;
