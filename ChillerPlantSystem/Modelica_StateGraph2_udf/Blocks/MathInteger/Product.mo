within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathInteger;
block Product "Product of Integer: y = u[1]*u[2]* ... *u[n]"
  extends Modelica_StateGraph2_udf.Blocks.Interfaces.PartialIntegerMISO;
equation
  y = product(u);

  annotation (Icon(graphics={Text(
                extent={{-74,50},{94,-94}},
                lineColor={0,0,0},
                fillColor={255,213,170},
                fillPattern=FillPattern.Solid,
                textString="*")}));
end Product;
