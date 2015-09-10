within ChillerPlantSystem.Buildings.Fluid.Chillers.Data.ElectricEIR;
record Generic "Generic data record for chiller ElectricEIR"
  extends Buildings.Fluid.Chillers.Data.BaseClasses.Chiller(
    final nCapFunT=6,
    final nEIRFunT=6,
    final nEIRFunPLR=3);
  parameter Modelica.SIunits.Temperature TConEnt_nominal
    "Temperature of fluid entering condenser at nominal condition";

  parameter Modelica.SIunits.Temperature TConEntMin
    "Minimum value for entering condenser temperature"
    annotation (Dialog(group="Performance curves"));
  parameter Modelica.SIunits.Temperature TConEntMax
    "Maximum value for entering condenser temperature"
    annotation (Dialog(group="Performance curves"));

  annotation (defaultComponentName="per", Documentation(info=
                 "<html>
This record is used as a template for performance data
for the chiller model
<a href=\"Buildings.Fluid.Chillers.ElectricEIR\">
Buildings.Fluid.Chillers.ElectricEIR</a>.
</html>",
        revisions="<html>
<ul>
<li>
September 17, 2010 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
