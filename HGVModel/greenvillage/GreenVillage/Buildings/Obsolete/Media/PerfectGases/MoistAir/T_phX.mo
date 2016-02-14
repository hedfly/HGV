within GreenVillage.Buildings.Obsolete.Media.PerfectGases.MoistAir;
function T_phX "Compute temperature from specific enthalpy and mass fraction"
  input AbsolutePressure p "Pressure";
  input SpecificEnthalpy h "Specific enthalpy";
  input MassFraction X[:] "Mass fractions of composition";
  output Temperature T "Temperature";

protected
package Internal
    "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
  extends Modelica.Media.Common.OneNonLinearEquation;

  redeclare record extends f_nonlinear_Data
      "Data to be passed to non-linear function"
    extends Modelica.Media.IdealGases.Common.DataRecord;
  end f_nonlinear_Data;

  redeclare function extends f_nonlinear
  algorithm
      y := h_pTX(p,x,X);
  end f_nonlinear;

  // Dummy definition has to be added for current Dymola
  redeclare function extends solve
  end solve;
end Internal;
protected
constant Modelica.Media.IdealGases.Common.DataRecord steam=
              Modelica.Media.IdealGases.Common.SingleGasesData.H2O;
protected
 SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
 SI.MassFraction x_sat "steam water mass fraction of saturation boundary";

algorithm
  T := 273.15 + (h - 2501014.5*X[Water])/((1 - X[Water])*dryair.cp + X[Water]*
    Buildings.Obsolete.Media.PerfectGases.Common.SingleGasData.H2O.cp);
  // check for saturation
  p_steam_sat :=saturationPressure(T);
  x_sat    :=k_mair*p_steam_sat/(p - p_steam_sat);
  // If the state is in the fog region, then the above equation is not valid, and
  // T is computed by inverting h_pTX(), which is much more costly.
  // For Buildings.Fluid.HeatExchangers.Examples.WetEffectivenessNTUPControl, the
  // computation above reduces the computing time by about a factor of 2.
  if (X[Water] > x_sat/(1 + x_sat)) then
     T := Internal.solve(h, TMin, TMax, p, X[1:nXi], steam);
  end if;
    annotation (Documentation(info="<html>
Temperature is computed from pressure, specific enthalpy and composition via numerical inversion of function <a href=modelica://Modelica.Media.Air.MoistAir.h_pTX>h_pTX</a>.
</html>"));
end T_phX;
