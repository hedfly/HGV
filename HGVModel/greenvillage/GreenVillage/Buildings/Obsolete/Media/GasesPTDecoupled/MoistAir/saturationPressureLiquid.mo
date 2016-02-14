within GreenVillage.Buildings.Obsolete.Media.GasesPTDecoupled.MoistAir;
function saturationPressureLiquid =
    Buildings.Obsolete.Media.PerfectGases.MoistAir.saturationPressureLiquid
  "Saturation curve valid for 273.16 <= T <= 373.16. Outside of these limits a (less accurate) result is returned"
  annotation(Inline=false,smoothOrder=5,derivative=Buildings.Obsolete.Media.PerfectGases.MoistAir.saturationPressureLiquid_der);
