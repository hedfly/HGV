within GreenVillage.Buildings.Obsolete.Media.GasesConstantDensity.MoistAirUnsaturated;
function saturationPressureLiquid =
  Buildings.Obsolete.Media.PerfectGases.MoistAir.saturationPressureLiquid
  "Saturation curve valid for 273.16 <= T <= 373.16. Outside of these limits a (less accurate) result is returned"
annotation(smoothOrder=5,derivative=saturationPressureLiquid_der);
