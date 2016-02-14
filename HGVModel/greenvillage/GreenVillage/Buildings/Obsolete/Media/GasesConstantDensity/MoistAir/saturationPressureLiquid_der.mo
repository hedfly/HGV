within GreenVillage.Buildings.Obsolete.Media.GasesConstantDensity.MoistAir;
function saturationPressureLiquid_der =
    Buildings.Obsolete.Media.PerfectGases.MoistAir.saturationPressureLiquid_der
  "Saturation curve valid for 273.16 <= T <= 373.16. Outside of these limits a (less accurate) result is returned"
  annotation (Documentation(info="<html>
This function declares the first derivative of
<a href=\"modelica://Buildings.Obsolete.Media.GasesConstantDensity.MoistAir.saturationPressureLiquid\">
Buildings.Obsolete.Media.GasesConstantDensity.MoistAir.saturationPressureLiquid</a>.
It is required since otherwise, Dymola 7.3 cannot find the derivative of the inherited function
<code>saturationPressureLiquid</code>.
</html>"));
