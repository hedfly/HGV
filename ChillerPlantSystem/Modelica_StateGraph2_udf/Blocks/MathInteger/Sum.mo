within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathInteger;
block Sum "Sum of Integers: y = k[1]*u[1] + k[2]*u[2] + ... + k[n]*u[n]"
  extends Modelica_StateGraph2_udf.Blocks.Interfaces.PartialIntegerMISO;
  parameter Integer k[nu]=fill(1, nu) "Input gains";
equation
  y = k*u;

  annotation (Icon(graphics={Text(
                extent={{-200,-110},{200,-140}},
                lineColor={0,0,0},
                fillColor={255,213,170},
                fillPattern=FillPattern.Solid,
                textString="%k"),Text(
                extent={{-72,68},{92,-68}},
                lineColor={0,0,0},
                fillColor={255,213,170},
                fillPattern=FillPattern.Solid,
                textString="+")}));
end Sum;
