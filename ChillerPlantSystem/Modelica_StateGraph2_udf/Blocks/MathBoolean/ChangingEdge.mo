within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block ChangingEdge
  "Output y is true, if the input u has either a rising or a falling edge and otherwise it is false (y=change(u))"
  parameter Boolean pre_u_start=false "Value of pre(u) at initial time";
  extends Interfaces.PartialBooleanSISO;
initial equation
  pre(u) = pre_u_start;
equation
  y = change(u);
  annotation (
    defaultComponentName="changing1",
    Icon(graphics={Line(points={{-80,-68},{-36,-68},{-36,-24},{22,-24},{22,
          -68},{66,-68}}, color={0,0,0}),Line(points={{-80,32},{-36,32},{-36,
          76},{-36,76},{-36,32},{66,32}}, color={255,0,255}),Line(
                points={{24,32},{24,76}},
                color={255,0,255},
                smooth=Smooth.None)}),
    Documentation(info="<html>
<p>
A changing edge, i.e., either rising or falling,
of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

</html>"));
end ChangingEdge;
