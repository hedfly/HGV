within ChillerPlantSystem.Buildings.Media.PerfectGases.MoistAirUnsaturated;
function T_phX "Compute temperature from specific enthalpy and mass fraction"
  input AbsolutePressure p "Pressure";
  input SpecificEnthalpy h "specific enthalpy";
  input MassFraction[:] X "mass fractions of composition";
  output Temperature T "temperature";

protected
  SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
  SI.MassFraction x_sat "steam water mass fraction of saturation boundary";

algorithm
  T := 273.15 + (h - 2501014.5 * X[Water])/((1 - X[Water])*dryair.cp + X[Water] * steam.cp);
  // check for saturation
  p_steam_sat :=saturationPressure(T);
  x_sat    :=k_mair*p_steam_sat/(p - p_steam_sat);
  /*
  assert(X[Water] < x_sat/(1 + x_sat), "The medium model '" + mediumName + "' must not be saturated.\n"
     + "To model a saturated medium, use 'Buildings.Media.PerfectGases.MoistAir' instead of this medium.\n"
     + " T         = " + String(T) + "\n"
     + " x_sat     = " + String(x_sat) + "\n"
     + " X[Water] = " + String(X[Water]) + "\n"
     + " phi       = " + String(X[Water]/((x_sat)/(1+x_sat))) + "\n"
     + " p         = " + String(p));
   */
  annotation(Inline=false, smoothOrder=5,
      Documentation(info="<html>
Temperature as a function of specific enthalpy and species concentration.
The pressure is input for compatibility with the medium models, but the temperature
is independent of the pressure.
</html>"));
end T_phX;
