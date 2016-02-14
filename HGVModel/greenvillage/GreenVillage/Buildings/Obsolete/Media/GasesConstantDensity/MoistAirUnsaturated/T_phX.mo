within GreenVillage.Buildings.Obsolete.Media.GasesConstantDensity.MoistAirUnsaturated;
function T_phX "Compute temperature from specific enthalpy and mass fraction"
  extends Modelica.Icons.Function;

  input AbsolutePressure p "Pressure";
  input SpecificEnthalpy h "specific enthalpy";
  input MassFraction[:] X "mass fractions of composition";
  output Temperature T "temperature";
algorithm
  T := 273.15 + (h-2501014.5 * X[Water])/(dryair.cp * (1 - X[Water])+steam.cp*X[Water]);
  annotation(smoothOrder=5);
end T_phX;
