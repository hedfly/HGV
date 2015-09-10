within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Step_out "Output port of a step"
  extends Step_out_base;

  annotation (
    defaultComponentName="outPort",
    Icon(coordinateSystem(extent={{-100,-100},{100,100}},
          preserveAspectRatio=false), graphics={Polygon(
          points={{-100,100},{0,-100},{100,100},{-100,100}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
          preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{0,0},{0,0}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-40,100},{0,20},{40,100},{-40,100}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{40,66},{116,30}},
          lineColor={0,0,0},
          textString="%name")}));
end Step_out;
