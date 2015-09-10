within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Step_in "Input port of a step"
  extends Step_in_base;

  annotation (
    defaultComponentName="inPort",
    Icon(coordinateSystem(extent={{-100,-100},{100,100}},
          preserveAspectRatio=false), graphics={Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
          preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{0,0},{0,0}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-40,40},{40,-40}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{47,58},{112,20}},
          lineColor={0,0,0},
          textString="%name")}));
end Step_in;
