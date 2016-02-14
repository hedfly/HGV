within GreenVillage.Buildings.Obsolete.Media.GasesConstantDensity.MoistAirUnsaturated;
function h_pTX
  "Compute specific enthalpy from pressure, temperature and mass fraction"
  extends Modelica.Icons.Function;

  input SI.Pressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction X[nX] "Mass fractions of moist air";
  output SI.SpecificEnthalpy h "Specific enthalpy at p, T, X";
algorithm
 h := (T - 273.15)*dryair.cp * (1 - X[Water]) + ((T-273.15) * steam.cp + 2501014.5) * X[Water];

  annotation(smoothOrder=5);
end h_pTX;
