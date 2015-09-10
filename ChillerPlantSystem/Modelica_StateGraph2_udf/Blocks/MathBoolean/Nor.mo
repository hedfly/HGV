within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block Nor "Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )"
  extends Modelica_StateGraph2_udf.Blocks.Interfaces.PartialBooleanMISO;

equation
  y = not Modelica_StateGraph2_udf.Blocks.BooleanFunctions.anyTrue(u);
  annotation (defaultComponentName="or1", Icon(graphics={Text(
                extent={{-80,40},{60,-40}},
                lineColor={0,0,0},
                textString="nor")}));
end Nor;
