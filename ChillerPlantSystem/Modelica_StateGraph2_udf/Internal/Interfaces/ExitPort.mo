within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector ExitPort "Exit connector of a composite, same as transition inPort"
  extends Transition_in_base;

  annotation (
    defaultComponentName="exit",
    Icon(coordinateSystem(
        extent={{-60,-20},{60,20}},
        preserveAspectRatio=true,
        grid={0.5,0.5}), graphics={Polygon(
          points={{-60,20},{0,-20},{60,20},{-60,20}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(
        extent={{-60,-20},{60,20}},
        preserveAspectRatio=false,
        grid={0.5,0.5}), graphics={Polygon(
          points={{-45,20},{0,-18},{45,20},{-45,20}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>

  </html>"));

end ExitPort;
