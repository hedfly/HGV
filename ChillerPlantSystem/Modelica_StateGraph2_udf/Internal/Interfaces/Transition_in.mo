within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Transition_in "Input port of a transition"
  extends Transition_in_base;

  annotation (
    defaultComponentName="inPort",
    Icon(coordinateSystem(extent={{-100,-100},{100,100}},
          preserveAspectRatio=false), graphics={Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
          preserveAspectRatio=false), graphics={Ellipse(
          extent={{-40,40},{40,-40}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid), Text(
          extent={{51,22},{134,-16}},
          lineColor={0,0,0},
          textString="%name")}),
    Documentation(info="<html>

</html>"));
end Transition_in;
