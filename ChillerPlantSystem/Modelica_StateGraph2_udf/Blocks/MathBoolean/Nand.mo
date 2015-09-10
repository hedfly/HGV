within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block Nand "Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )"
  extends Modelica_StateGraph2_udf.Blocks.Interfaces.PartialBooleanMISO;

equation
  y = not Modelica_StateGraph2_udf.Blocks.BooleanFunctions.allTrue(u);
  annotation (defaultComponentName="nand1", Icon(graphics={Text(
                extent={{-80,40},{60,-40}},
                lineColor={0,0,0},
                textString="nand")}));
end Nand;
