within ChillerPlantSystem.Buildings.HeatTransfer.Data.Gases;
record Generic "Thermal properties of fill gas for windows"
    extends Modelica.Icons.Record;
    parameter Modelica.SIunits.Length x "Gas layer thickness";
    parameter Modelica.SIunits.ThermalConductivity a_k
    "Constant coefficient for thermal conductivity";
    parameter Real b_k(unit="W/(m.K2)")
    "Temperature dependent coefficient for thermal conductivity";
    parameter Modelica.SIunits.DynamicViscosity a_mu
    "Constant coefficient for dynamic viscosity";
    parameter Real b_mu(unit="N.s/(m2.K)")
    "Temperature dependent coefficient for dynamic viscosity";
    parameter Modelica.SIunits.SpecificHeatCapacity a_c
    "Constant coefficient for specific heat capacity";
    parameter Real b_c(unit="J/(kg.K2)")
    "Temperature dependent coefficient for specific heat capacity";

    parameter Modelica.SIunits.MolarMass MM
    "Molar mass (of mixture or single fluid)";

    constant Modelica.SIunits.Pressure P0 = 101325 "Normal pressure";

  annotation (defaultComponentName="gas", Documentation(info=
                 "<html>
Generic record for thermophysical properties for window
gas fills.
The implementation is according to 
<a href=\"http://www.iso.org/iso/catalogue_detail.htm?csnumber=26425\">ISO 15099:2003, 
Thermal performance of windows, doors and shading devices -- Detailed calculations</a>.
</html>",
revisions="<html>
<ul>
<li>
August 18 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
