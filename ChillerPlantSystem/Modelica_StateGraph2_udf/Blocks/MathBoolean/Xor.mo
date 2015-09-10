within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block Xor
  "Logical 'xor': y = oneTrue(u)  (y is true, if exactly one element of u is true, otherwise it is false)"
  extends Modelica_StateGraph2_udf.Blocks.Interfaces.PartialBooleanMISO;

equation
  y = Modelica_StateGraph2_udf.Blocks.BooleanFunctions.oneTrue(u);
  annotation (defaultComponentName="xor1", Icon(graphics={Text(
                extent={{-80,40},{60,-40}},
                lineColor={0,0,0},
                textString="xor")}));
end Xor;
