within GreenVillage.Buildings.Media.Examples.BaseClasses;
partial model TestTemperatureEnthalpyInversion
  "Model to check computation of h(T) and its inverse"
   replaceable package Medium =
        Modelica.Media.Interfaces.PartialCondensingGases;
     parameter Modelica.SIunits.Temperature T0=273.15+20 "Temperature";
     Modelica.SIunits.Temperature T "Temperature";
     Modelica.SIunits.SpecificEnthalpy h "Enthalpy";
     Medium.MassFraction Xi[:] = Medium.reference_X "Mass fraction";
equation
    h = Medium.specificEnthalpy_pTX(p=101325, T=T0, X=Xi);
    T = Medium.temperature_phX(p=101325, h=h,  X=Xi);
    if (time>0.1) then
    assert(abs(T-T0)<1E-8, "Error in implementation of functions.\n"
       + "   T0 = " + String(T0) + "\n"
       + "   T  = " + String(T));
    end if;
    annotation (preferredView="info", Documentation(info="<html>
This model computes <code>h=f(T0)</code> and
<code>T=g(h)</code>. It then checks whether <code>T=T0</code>.
Hence, it checks whether the function <code>T_phX</code> is
implemented correctly.
</html>", revisions="<html>
<ul>
<li>
February 12, 2015 by Michael Wetter:<br/>
Replaced <code>h_pTX</code> with <code>specificEnthalpy_pTX</code>
and
<code>T_phX</code> with <code>temperature_phX</code>
as the old names are not present in all media.
</li>
<li>
January 21, 2010 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end TestTemperatureEnthalpyInversion;
