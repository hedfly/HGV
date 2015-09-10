within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
connector BooleanVectorInput = input Boolean "Vector of Boolean inputs"
  annotation (
  defaultComponentName="u",
  Icon(graphics={Ellipse(
              extent={{-100,-100},{100,100}},
              lineColor={255,0,255},
              fillColor={255,0,255},
              fillPattern=FillPattern.Solid)}, coordinateSystem(
      extent={{-100,-100},{100,100}},
      preserveAspectRatio=false,
      initialScale=0.2)),
  Diagram(coordinateSystem(
      preserveAspectRatio=false,
      initialScale=0.2,
      extent={{-100,-100},{100,100}},
      grid={1,1}), graphics={Text(
              extent={{-10,85},{-10,60}},
              lineColor={255,0,255},
              textString="%name"),Ellipse(
              extent={{-50,50},{50,-50}},
              lineColor={255,0,255},
              fillColor={255,0,255},
              fillPattern=FillPattern.Solid)}),
  Documentation(info="<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
