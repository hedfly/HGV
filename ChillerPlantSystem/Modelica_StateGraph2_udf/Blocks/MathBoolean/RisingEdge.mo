within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block RisingEdge
  "Output y is true, if the input u has a rising edge, otherwise it is false (y = edge(u))"
  parameter Boolean pre_u_start=false "Value of pre(u) at initial time";
  extends Interfaces.PartialBooleanSISO;
initial equation
  pre(u) = pre_u_start;
equation
  y = edge(u);
  annotation (
    defaultComponentName="rising1",
    Icon(graphics={Line(points={{-80,-68},{-36,-68},{-36,-24},{22,-24},{22,
          -68},{66,-68}}, color={0,0,0}),Line(points={{-80,32},{-36,32},{-36,
          76},{-36,76},{-36,32},{66,32}}, color={255,0,255})}),
    Documentation(info="<html>
<p>
A rising edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

</html>"));
end RisingEdge;
