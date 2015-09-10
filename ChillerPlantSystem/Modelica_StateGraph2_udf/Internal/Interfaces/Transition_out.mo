within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Transition_out "Output port of a transition"
  extends Transition_out_base;

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
          preserveAspectRatio=false), graphics={Polygon(
          points={{-40,100},{0,20},{40,100},{-40,100}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid), Text(
          extent={{44,100},{138,68}},
          lineColor={0,0,0},
          textString="%name")}),
    Documentation(info="<html>

</html>"));
end Transition_out;
