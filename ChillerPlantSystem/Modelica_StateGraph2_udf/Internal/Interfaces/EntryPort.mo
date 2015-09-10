within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector EntryPort "Entry port of a composite, same as a transition outPort"
  extends Transition_out_base;

  annotation (
    defaultComponentName="entry",
    Icon(coordinateSystem(
        extent={{-60,-20},{60,20}},
        preserveAspectRatio=true,
        grid={0.5,0.5}), graphics={Ellipse(
          extent={{-60,15},{60,-15}},
          lineColor={0,0,0},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(
        extent={{-60,-20},{60,20}},
        preserveAspectRatio=false,
        grid={0.5,0.5}), graphics={Ellipse(
          extent={{-30,12.5},{30,-13}},
          lineColor={0,0,0},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>

  </html>"));
end EntryPort;
