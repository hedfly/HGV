within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialBooleanSISO
  "Partial block with a BooleanInput and a BooleanOutput signal"

  Modelica.Blocks.Interfaces.BooleanOutput y
    annotation (Placement(transformation(extent={{100,-20},{140,20}})));
  Modelica.Blocks.Interfaces.BooleanInput u
    annotation (Placement(transformation(extent={{-160,-30},{-100,30}})));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.04), graphics), Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1},
        initialScale=0.04), graphics={
        Text(
          extent={{-250,170},{250,110}},
          textString="%name",
          lineColor={0,0,255}),
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid,
          borderPattern=BorderPattern.Raised),
        Ellipse(
          extent={{60,10},{80,-10}},
          lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,255,0}
               else {235,235,235}),
          fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,255,0}
               else {235,235,235}),
          fillPattern=FillPattern.Solid)}));
end PartialBooleanSISO;
