within ChillerPlantSystem.Buildings.Media.PerfectGases.MoistAirUnsaturated;
function h_pTX
  "Compute specific enthalpy from pressure, temperature and mass fraction"
  extends Modelica.Icons.Function;
  input SI.Pressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction X[:] "Mass fractions of moist air";
  output SI.SpecificEnthalpy h "Specific enthalpy at p, T, X";

protected
  SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
  SI.MassFraction x_sat "steam water mass fraction of saturation boundary";
  SI.SpecificEnthalpy hDryAir "Enthalpy of dry air";
algorithm
  p_steam_sat :=saturationPressure(T);
  x_sat    :=k_mair*p_steam_sat/(p - p_steam_sat);
  /*
  assert(X[Water] < x_sat/(1 + x_sat), "The medium model '" + mediumName + "' must not be saturated.\n"
     + "To model a saturated medium, use 'Buildings.Media.PerfectGases.MoistAir' instead of this medium.\n"
     + " T         = " + String(T) + "\n"
     + " x_sat     = " + String(x_sat) + "\n"
     + " X[Water] = "  + String(X[Water]) + "\n"
     + " phi       = " + String(X[Water]/((x_sat)/(1+x_sat))) + "\n"
     + " p         = " + String(p));
  */
  hDryAir := (T - 273.15)*dryair.cp;
  h := hDryAir * (1 - X[Water]) +
       ((T-273.15) * steam.cp + 2501014.5) * X[Water];
  annotation(Inline=false,smoothOrder=5);
end h_pTX;
