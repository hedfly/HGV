within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block And "Logical 'and': y = u[1] and u[2] and ... and u[nu]"
  extends Modelica_StateGraph2_udf.Blocks.Interfaces.PartialBooleanMISO;

equation
  y = Modelica_StateGraph2_udf.Blocks.BooleanFunctions.allTrue(u);
  annotation (defaultComponentName="and1", Icon(graphics={Text(
                extent={{-76,40},{60,-40}},
                lineColor={0,0,0},
                textString="and")}));
end And;
