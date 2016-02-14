within GreenVillage.Buildings.HeatTransfer.Data;
package Glasses "Package with thermophysical properties for window glas"
    extends Modelica.Icons.MaterialPropertiesPackage;


annotation(preferredView="info",
Documentation(info="<html>
<p>
This package implements thermophysical properties for window glas.
</p>
<p>
Since the infrared transmissivity is part of the Window 5 data and since
it depends on the glass thickness, the glass thickness is a parameter
that is set for all glass layers.
This configuration is different from the records fo gas properties,
which do not yet set the value for the thickness of the gas gap.
</p>
</html>",
revisions="<html>
<ul>
<li>
September 9, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Glasses;
