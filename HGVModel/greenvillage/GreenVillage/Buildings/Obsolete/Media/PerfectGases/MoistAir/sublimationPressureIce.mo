within GreenVillage.Buildings.Obsolete.Media.PerfectGases.MoistAir;
function sublimationPressureIce =
    Modelica.Media.Air.MoistAir.sublimationPressureIce
  "Saturation curve valid for 223.16 <= T <= 273.16. Outside of these limits a (less accurate) result is returned"
  annotation(Inline=false,smoothOrder=5,derivative=Modelica.Media.Air.MoistAir.sublimationPressureIce_der);
